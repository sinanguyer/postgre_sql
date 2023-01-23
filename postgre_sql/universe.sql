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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: blackholes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackholes (
    blackholes_id integer NOT NULL,
    name character varying(30),
    size integer,
    brightness character varying(20) DEFAULT 'redshift'::character varying,
    radius integer DEFAULT 300,
    supermasive character varying(20) DEFAULT 'yes'::character varying NOT NULL
);


ALTER TABLE public.blackholes OWNER TO freecodecamp;

--
-- Name: blackholes_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackholes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackholes_id_seq OWNER TO freecodecamp;

--
-- Name: blackholes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackholes_id_seq OWNED BY public.blackholes.blackholes_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    galaxy_types boolean,
    size integer,
    numbers_of_galaxy integer DEFAULT 300 NOT NULL,
    compounds character varying(20) DEFAULT 'organic'::character varying
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20),
    has_life text,
    size integer,
    radius integer DEFAULT 300 NOT NULL,
    atmoshpere character varying(20) DEFAULT 'Exist'::character varying NOT NULL,
    compounds character varying(20) DEFAULT 'organic'::character varying
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20),
    planet_types boolean,
    distance_from_earth integer,
    age_in_millions_year numeric,
    radius integer DEFAULT 300 NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20),
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    size integer,
    radius integer DEFAULT 300 NOT NULL,
    compounds character varying(20) DEFAULT 'Iron'::character varying
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: blackholes blackholes_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackholes ALTER COLUMN blackholes_id SET DEFAULT nextval('public.blackholes_id_seq'::regclass);


--
-- Data for Name: blackholes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackholes VALUES (1, '3c273', NULL, 'redshift', 300, 'yes');
INSERT INTO public.blackholes VALUES (2, 'Arp 151', NULL, 'redshift', 300, 'yes');
INSERT INTO public.blackholes VALUES (3, 'IC 1459', NULL, 'redshift', 300, 'yes');
INSERT INTO public.blackholes VALUES (4, 'M105', NULL, 'redshift', 300, 'yes');
INSERT INTO public.blackholes VALUES (5, 'M106', NULL, 'redshift', 300, 'yes');
INSERT INTO public.blackholes VALUES (6, 'M31', NULL, 'redshift', 300, 'yes');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', NULL, NULL, NULL, NULL, 300, 'organic');
INSERT INTO public.galaxy VALUES (2, 'Antennae', NULL, NULL, NULL, NULL, 300, 'organic');
INSERT INTO public.galaxy VALUES (3, 'Bacward', NULL, NULL, NULL, NULL, 300, 'organic');
INSERT INTO public.galaxy VALUES (4, 'Black Eye', NULL, NULL, NULL, NULL, 300, 'organic');
INSERT INTO public.galaxy VALUES (5, 'Bodes', NULL, NULL, NULL, NULL, 300, 'organic');
INSERT INTO public.galaxy VALUES (6, 'Butterfly', NULL, NULL, NULL, NULL, 300, 'organic');
INSERT INTO public.galaxy VALUES (7, 'Cigar', NULL, NULL, NULL, NULL, 300, 'organic');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Ganymede', NULL, NULL, 300, 'Exist', 'organic');
INSERT INTO public.moon VALUES (2, 'Callisto', NULL, NULL, 300, 'Exist', 'organic');
INSERT INTO public.moon VALUES (3, 'Io', NULL, NULL, 300, 'Exist', 'organic');
INSERT INTO public.moon VALUES (4, 'Europa', NULL, NULL, 300, 'Exist', 'organic');
INSERT INTO public.moon VALUES (5, 'Amalthea', NULL, NULL, 300, 'Exist', 'organic');
INSERT INTO public.moon VALUES (6, 'Himalia', NULL, NULL, 300, 'Exist', 'organic');
INSERT INTO public.moon VALUES (7, 'Thebe', NULL, NULL, 300, 'Exist', 'organic');
INSERT INTO public.moon VALUES (8, 'Elara', NULL, NULL, 300, 'Exist', 'organic');
INSERT INTO public.moon VALUES (9, 'Pasiphae', NULL, NULL, 300, 'Exist', 'organic');
INSERT INTO public.moon VALUES (10, 'Metis', NULL, NULL, 300, 'Exist', 'organic');
INSERT INTO public.moon VALUES (11, 'Carme', NULL, NULL, 300, 'Exist', 'organic');
INSERT INTO public.moon VALUES (12, 'Sinope', NULL, NULL, 300, 'Exist', 'organic');
INSERT INTO public.moon VALUES (13, 'Lysithea', NULL, NULL, 300, 'Exist', 'organic');
INSERT INTO public.moon VALUES (14, 'Ananke', NULL, NULL, 300, 'Exist', 'organic');
INSERT INTO public.moon VALUES (15, 'Adrastea', NULL, NULL, 300, 'Exist', 'organic');
INSERT INTO public.moon VALUES (16, 'Leda', NULL, NULL, 300, 'Exist', 'organic');
INSERT INTO public.moon VALUES (17, 'Callirhoe', NULL, NULL, 300, 'Exist', 'organic');
INSERT INTO public.moon VALUES (18, 'Themisto', NULL, NULL, 300, 'Exist', 'organic');
INSERT INTO public.moon VALUES (19, 'Praxidike', NULL, NULL, 300, 'Exist', 'organic');
INSERT INTO public.moon VALUES (20, 'Locaste', NULL, NULL, 300, 'Exist', 'organic');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', NULL, NULL, NULL, 300);
INSERT INTO public.planet VALUES (2, 'Venus', NULL, NULL, NULL, 300);
INSERT INTO public.planet VALUES (3, 'Earth', NULL, NULL, NULL, 300);
INSERT INTO public.planet VALUES (4, 'Mars', NULL, NULL, NULL, 300);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, NULL, NULL, 300);
INSERT INTO public.planet VALUES (6, 'Saturn', NULL, NULL, NULL, 300);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, NULL, NULL, 300);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, NULL, NULL, 300);
INSERT INTO public.planet VALUES (9, 'Pluto', NULL, NULL, NULL, 300);
INSERT INTO public.planet VALUES (10, 'Kuiper Belt', NULL, NULL, NULL, 300);
INSERT INTO public.planet VALUES (11, 'Delphini', NULL, NULL, NULL, 300);
INSERT INTO public.planet VALUES (12, 'Draconis', NULL, NULL, NULL, 300);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', NULL, NULL, NULL, 300, 'Iron');
INSERT INTO public.star VALUES (2, 'Alpha Centauri', NULL, NULL, NULL, 300, 'Iron');
INSERT INTO public.star VALUES (3, 'Barnards Star', NULL, NULL, NULL, 300, 'Iron');
INSERT INTO public.star VALUES (4, 'Wise', NULL, NULL, NULL, 300, 'Iron');
INSERT INTO public.star VALUES (5, 'Wolf', NULL, NULL, NULL, 300, 'Iron');
INSERT INTO public.star VALUES (6, 'Lalande', NULL, NULL, NULL, 300, 'Iron');
INSERT INTO public.star VALUES (7, 'Sirius', NULL, NULL, NULL, 300, 'Iron');


--
-- Name: blackholes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackholes_id_seq', 1, false);


--
-- Name: blackholes blackholes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackholes
    ADD CONSTRAINT blackholes_pkey PRIMARY KEY (blackholes_id);


--
-- Name: blackholes blackholes_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackholes
    ADD CONSTRAINT blackholes_size_key UNIQUE (size);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_size_key UNIQUE (size);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_size_key UNIQUE (size);


--
-- Name: planet planet_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_size_key UNIQUE (size);


--
-- Name: blackholes blackholes_blackholes_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackholes
    ADD CONSTRAINT blackholes_blackholes_id_fkey FOREIGN KEY (blackholes_id) REFERENCES public.blackholes(blackholes_id);


--
-- Name: galaxy galaxy_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: planet planet_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

