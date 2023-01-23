--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_of_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(30) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 13, 8);
INSERT INTO public.games VALUES (2, 41, 9);
INSERT INTO public.games VALUES (3, 480, 9);
INSERT INTO public.games VALUES (4, 61, 10);
INSERT INTO public.games VALUES (5, 245, 10);
INSERT INTO public.games VALUES (6, 301, 9);
INSERT INTO public.games VALUES (7, 884, 9);
INSERT INTO public.games VALUES (8, 600, 9);
INSERT INTO public.games VALUES (9, 748, 11);
INSERT INTO public.games VALUES (10, 881, 11);
INSERT INTO public.games VALUES (11, 147, 12);
INSERT INTO public.games VALUES (12, 917, 12);
INSERT INTO public.games VALUES (13, 862, 11);
INSERT INTO public.games VALUES (14, 263, 11);
INSERT INTO public.games VALUES (15, 545, 11);
INSERT INTO public.games VALUES (16, 214, 13);
INSERT INTO public.games VALUES (17, 328, 13);
INSERT INTO public.games VALUES (18, 532, 14);
INSERT INTO public.games VALUES (19, 78, 14);
INSERT INTO public.games VALUES (20, 260, 13);
INSERT INTO public.games VALUES (21, 973, 13);
INSERT INTO public.games VALUES (22, 546, 13);
INSERT INTO public.games VALUES (23, 10, 8);
INSERT INTO public.games VALUES (24, 754, 15);
INSERT INTO public.games VALUES (25, 469, 15);
INSERT INTO public.games VALUES (26, 218, 16);
INSERT INTO public.games VALUES (27, 351, 16);
INSERT INTO public.games VALUES (28, 40, 15);
INSERT INTO public.games VALUES (29, 295, 15);
INSERT INTO public.games VALUES (30, 257, 15);
INSERT INTO public.games VALUES (31, 115, 17);
INSERT INTO public.games VALUES (32, 557, 17);
INSERT INTO public.games VALUES (33, 115, 18);
INSERT INTO public.games VALUES (34, 9, 18);
INSERT INTO public.games VALUES (35, 866, 17);
INSERT INTO public.games VALUES (36, 858, 17);
INSERT INTO public.games VALUES (37, 768, 17);
INSERT INTO public.games VALUES (38, 10, 8);
INSERT INTO public.games VALUES (39, 191, 19);
INSERT INTO public.games VALUES (40, 684, 19);
INSERT INTO public.games VALUES (41, 932, 20);
INSERT INTO public.games VALUES (42, 121, 20);
INSERT INTO public.games VALUES (43, 839, 19);
INSERT INTO public.games VALUES (44, 770, 19);
INSERT INTO public.games VALUES (45, 788, 19);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1657096400214');
INSERT INTO public.users VALUES (3, 'user_1657096400213');
INSERT INTO public.users VALUES (8, 'sinan');
INSERT INTO public.users VALUES (9, 'user_1657098048445');
INSERT INTO public.users VALUES (10, 'user_1657098048444');
INSERT INTO public.users VALUES (11, 'user_1657098268870');
INSERT INTO public.users VALUES (12, 'user_1657098268869');
INSERT INTO public.users VALUES (13, 'user_1657098620185');
INSERT INTO public.users VALUES (14, 'user_1657098620184');
INSERT INTO public.users VALUES (15, 'user_1657098726055');
INSERT INTO public.users VALUES (16, 'user_1657098726054');
INSERT INTO public.users VALUES (17, 'user_1657098880601');
INSERT INTO public.users VALUES (18, 'user_1657098880600');
INSERT INTO public.users VALUES (19, 'user_1657098949117');
INSERT INTO public.users VALUES (20, 'user_1657098949116');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 45, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 20, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

