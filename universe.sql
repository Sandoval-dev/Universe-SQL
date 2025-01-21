--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: description; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.description (
    description_id integer NOT NULL,
    name character varying(30),
    content text,
    number integer NOT NULL
);


ALTER TABLE public.description OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_types text NOT NULL,
    sayi integer,
    adet integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth numeric,
    planet_id integer,
    moon_type text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth numeric,
    age_in_million_of_years integer,
    has_life boolean,
    star_id integer,
    planet_type text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_million_of_years integer,
    has_life boolean,
    galaxy_id integer,
    star_types text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: description; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.description VALUES (1, 'a', 'a,', 1);
INSERT INTO public.description VALUES (2, 'b', 'b', 2);
INSERT INTO public.description VALUES (3, 'c', 'c', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'samanyolu', 'iyi', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'atv', 'guzel', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'show', 'fena', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'turk', 'super', NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'arnavut', 'kotu', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'gevur', 'berbat', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'ay', 2, 1, 'gri');
INSERT INTO public.moon VALUES (2, 'titan', 3, 3, 'thanos');
INSERT INTO public.moon VALUES (3, 'sari ay', 2, 1, 'gri');
INSERT INTO public.moon VALUES (4, 'titan kirmizi', 3, 3, 'thanos');
INSERT INTO public.moon VALUES (5, 'eski ay', 65, 3, 'eski');
INSERT INTO public.moon VALUES (6, 'guzel titan', 3, 1, 'ceket');
INSERT INTO public.moon VALUES (7, 'eski ay iyiki', 65, 3, 'eski');
INSERT INTO public.moon VALUES (8, 'eski  titan', 3, 1, 'ceket');
INSERT INTO public.moon VALUES (9, 'a', 3, 3, 'a');
INSERT INTO public.moon VALUES (10, 'b', 33, 4, 'b');
INSERT INTO public.moon VALUES (11, 'c', 1, 1, 'c');
INSERT INTO public.moon VALUES (12, 'd', 5, 5, 'd');
INSERT INTO public.moon VALUES (13, 'e', 7, 7, 'e');
INSERT INTO public.moon VALUES (14, 'f', 6, 1, 'f');
INSERT INTO public.moon VALUES (15, 'h', 3, 1, 'h');
INSERT INTO public.moon VALUES (16, 'aa', 1, 1, 'aa');
INSERT INTO public.moon VALUES (17, 'BB', 2, 2, 'bb');
INSERT INTO public.moon VALUES (18, 'cc', 3, 3, 'cc');
INSERT INTO public.moon VALUES (19, 'dd', 4, 4, 'dd');
INSERT INTO public.moon VALUES (20, 'qq', 1, 1, 'qq');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'dunya', 0, 5, true, 1, 'yasam');
INSERT INTO public.planet VALUES (2, 'merkur', 3, 3, true, 1, 'uzak');
INSERT INTO public.planet VALUES (3, 'mars', 5, 1, true, 6, 'uzayli');
INSERT INTO public.planet VALUES (4, 'eski dunya', 4, 5, true, 1, 'yasam');
INSERT INTO public.planet VALUES (5, 'merkurTwo', 3, 3, true, 1, 'uzak degil');
INSERT INTO public.planet VALUES (6, 'pluton', 5, 1, true, 6, 'uzayli');
INSERT INTO public.planet VALUES (7, 'saturn', 4, 3, false, 2, 'buyuk');
INSERT INTO public.planet VALUES (8, 'saturn2', 4, 3, false, 2, 'buyuk');
INSERT INTO public.planet VALUES (9, 'jupiter', 4, 3, false, 2, 'buyukX');
INSERT INTO public.planet VALUES (10, 'jupiter2', 4, 3, false, 2, 'buyukX');
INSERT INTO public.planet VALUES (11, 'jupiter3', 4, 3, false, 2, 'buyukX');
INSERT INTO public.planet VALUES (12, 'jupiter4', 4, 3, false, 2, 'buyukX');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'gunes', 23, true, 1, 'guzel');
INSERT INTO public.star VALUES (2, 'atvstar', 14, true, 2, 'iyi');
INSERT INTO public.star VALUES (3, 'showstar', 4, false, 4, 'kotu');
INSERT INTO public.star VALUES (4, 'kanal7', 5, false, 4, 'kotu3');
INSERT INTO public.star VALUES (5, 'cnbce', 5, true, 5, 'iyi2');
INSERT INTO public.star VALUES (6, 'cartoon', 5, true, 5, 'iyi2');


--
-- Name: description description_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_name_key UNIQUE (name);


--
-- Name: description description_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_pkey PRIMARY KEY (description_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id) ON DELETE CASCADE;


--
-- Name: moon fk_planet_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

