#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess --no-align --tuples-only -c"

echo "Enter your username:"
read USERNAME

AVAILABLE_USERNAME=$($PSQL "select username from users where username='$USERNAME'")
GAMES_PLAYED=$($PSQL "select count(*) from users inner join games using(user_id) where username='$USERNAME' ")
BEST_GAME=$($PSQL "select min(number_of_guesses) from users inner join games using(user_id) where username='$USERNAME'")

if [[ -z $AVAILABLE_USERNAME ]]
then
  ADD_USER=$($PSQL "insert into users(username) values('$USERNAME')")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  echo Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses.

fi

RANDOM_NUMBER=$((1 + $RANDOM % 1000))
GUESS=1
echo "Guess the secret number between 1 and 1000:"

while read NUMBER
  do
    if [[ ! $NUMBER =~ ^[0-9]+$ ]]
    then
      echo "That is not an integer, guess again:"
      else
      if [[ $NUMBER -eq $RANDOM_NUMBER ]]
      then
        break;
        else 
          if [[ $NUMBER -gt $RANDOM_NUMBER ]]
          then
            echo -n "It's lower than that, guess again:"
          elif [[ $NUMBER -lt $RANDOM_NUMBER ]] 
          then
            echo -n "It's higher than that, guess again:"   
          fi  
        fi
      fi
      GUESS=$(( $GUESS + 1 ))
  done

if [[ $GUESS == 1 ]]
then
  echo "You guessed it in $GUESS tries. The secret number was $RANDOM_NUMBER. Nice job!"
else 
  echo "You guessed it in $GUESS tries. The secret number was $RANDOM_NUMBER. Nice job!"
fi

USER_ID=$($PSQL "select user_id from users where username='$USERNAME'")
INSERT_GAME=$($PSQL "insert into games(number_of_guesses, user_id) values($GUESS,$USER_ID)")