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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    galaxy_types character varying(30) NOT NULL,
    description text,
    is_enemy boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    is_spherical boolean NOT NULL,
    description text,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: notes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.notes (
    notes text NOT NULL,
    name character varying(30) NOT NULL,
    notes_id integer NOT NULL
);


ALTER TABLE public.notes OWNER TO freecodecamp;

--
-- Name: notes_notes_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.notes_notes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notes_notes_id_seq OWNER TO freecodecamp;

--
-- Name: notes_notes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.notes_notes_id_seq OWNED BY public.notes.notes_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    has_life boolean NOT NULL,
    description text,
    star_id integer NOT NULL,
    moons_num integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions_of_years numeric NOT NULL,
    distance_from_yearth numeric,
    description text,
    galaxy_id integer NOT NULL,
    planets_num integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: notes notes_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.notes ALTER COLUMN notes_id SET DEFAULT nextval('public.notes_notes_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'OUR GALAXY', 'HOME', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'DISKWORLD', 'FLAT', NULL, false);
INSERT INTO public.galaxy VALUES (3, 'AZEROTH', 'WARCRAFT', NULL, false);
INSERT INTO public.galaxy VALUES (4, 'DRAENOR', 'WARCRAFT', NULL, true);
INSERT INTO public.galaxy VALUES (5, 'MATOSINHOS', 'PORTO', NULL, false);
INSERT INTO public.galaxy VALUES (6, 'ESPINHO', 'PORTO', NULL, false);
INSERT INTO public.galaxy VALUES (7, 'PENTAKILL', 'LOL', NULL, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', true, NULL, 1);
INSERT INTO public.moon VALUES (2, 'asterix', false, NULL, 2);
INSERT INTO public.moon VALUES (3, 'Foboos', true, NULL, 4);
INSERT INTO public.moon VALUES (4, 'Deimos', true, NULL, 4);
INSERT INTO public.moon VALUES (5, 'Yo', true, NULL, 5);
INSERT INTO public.moon VALUES (6, 'Europa', true, NULL, 5);
INSERT INTO public.moon VALUES (7, 'Ganimedth', true, NULL, 5);
INSERT INTO public.moon VALUES (8, 'Kallisto', true, NULL, 5);
INSERT INTO public.moon VALUES (9, 'Mimas', true, NULL, 6);
INSERT INTO public.moon VALUES (10, 'Enselade', true, NULL, 6);
INSERT INTO public.moon VALUES (11, 'Tephiya', true, NULL, 6);
INSERT INTO public.moon VALUES (12, 'Diona', true, NULL, 6);
INSERT INTO public.moon VALUES (13, 'Reiha', true, NULL, 6);
INSERT INTO public.moon VALUES (14, 'Titan', true, NULL, 6);
INSERT INTO public.moon VALUES (15, 'Elena', true, NULL, 6);
INSERT INTO public.moon VALUES (16, 'Japedh', true, NULL, 6);
INSERT INTO public.moon VALUES (17, 'Miranda', true, NULL, 7);
INSERT INTO public.moon VALUES (18, 'Ariel', true, NULL, 7);
INSERT INTO public.moon VALUES (19, 'Umbriel', true, NULL, 7);
INSERT INTO public.moon VALUES (20, 'titania', true, NULL, 7);
INSERT INTO public.moon VALUES (21, 'Oberon', true, NULL, 7);


--
-- Data for Name: notes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.notes VALUES ('ewr', 'fkk', 1);
INSERT INTO public.notes VALUES ('eewr', 'fekk', 2);
INSERT INTO public.notes VALUES ('eewer', 'fekke', 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, NULL, 1, NULL);
INSERT INTO public.planet VALUES (2, 'Mercurius', false, NULL, 1, NULL);
INSERT INTO public.planet VALUES (3, 'Venus', false, NULL, 1, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', false, NULL, 1, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, NULL, 1, NULL);
INSERT INTO public.planet VALUES (6, 'Saturnus', false, NULL, 1, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', false, NULL, 1, NULL);
INSERT INTO public.planet VALUES (8, 'Neptunus', false, NULL, 1, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', false, NULL, 1, NULL);
INSERT INTO public.planet VALUES (10, 'Anus', false, NULL, 2, NULL);
INSERT INTO public.planet VALUES (11, 'Iridium', false, NULL, 2, NULL);
INSERT INTO public.planet VALUES (12, 'Lithium', false, NULL, 2, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 5, NULL, NULL, 1, NULL);
INSERT INTO public.star VALUES (2, 'Taurus', 20, NULL, NULL, 1, NULL);
INSERT INTO public.star VALUES (3, 'Marco', 22, NULL, NULL, 1, NULL);
INSERT INTO public.star VALUES (4, 'Kalimdor', 2, NULL, NULL, 3, NULL);
INSERT INTO public.star VALUES (5, 'Rift', 666, NULL, NULL, 7, NULL);
INSERT INTO public.star VALUES (6, 'Nashor', 13, NULL, NULL, 7, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: notes_notes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.notes_notes_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: notes notes_notes_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.notes
    ADD CONSTRAINT notes_notes_key UNIQUE (notes);


--
-- Name: notes notes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.notes
    ADD CONSTRAINT notes_pkey PRIMARY KEY (notes_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

