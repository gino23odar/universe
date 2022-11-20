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
-- Name: cooltable; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.cooltable (
    cooltable_id integer NOT NULL,
    col2 integer NOT NULL,
    col3 integer,
    col4 integer,
    name character varying(20)
);


ALTER TABLE public.cooltable OWNER TO freecodecamp;

--
-- Name: cooltable_cool_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.cooltable_cool_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cooltable_cool_id_seq OWNER TO freecodecamp;

--
-- Name: cooltable_cool_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.cooltable_cool_id_seq OWNED BY public.cooltable.cooltable_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    size_in_light_years numeric(6,1),
    age integer,
    short_desc text NOT NULL
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
    name character varying(30),
    size integer,
    rounded_by_gravity boolean,
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    habitable boolean,
    size integer,
    star_id integer NOT NULL,
    extra integer
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
    name character varying(30),
    size integer,
    is_big boolean,
    galaxy_id integer NOT NULL
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
-- Name: cooltable cooltable_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cooltable ALTER COLUMN cooltable_id SET DEFAULT nextval('public.cooltable_cool_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: cooltable; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.cooltable VALUES (1, 1, 2, 3, NULL);
INSERT INTO public.cooltable VALUES (2, 4, 5, 6, NULL);
INSERT INTO public.cooltable VALUES (3, 7, 8, 9, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 52850.0, 13, 'coolest galaxy, home turf advantage');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 11000.0, 10, 'bff of milky way, so kinda cool as well');
INSERT INTO public.galaxy VALUES (3, 'Backward', 89000.0, 12, 'the name describes it so kinda lame');
INSERT INTO public.galaxy VALUES (4, 'Eye of Sauron', 99999.0, 13, 'strong contender for coolest galaxy');
INSERT INTO public.galaxy VALUES (5, 'Cosmos Redshift 7', 88888.0, 9, 'sounds like a sports drink flavor idk y tho');
INSERT INTO public.galaxy VALUES (6, 'Tadpole', 11111.0, 8, 'uncontested for lamest galaxy ever');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'the moon', 23, true, 3);
INSERT INTO public.moon VALUES (2, 'moon1', 34, false, 4);
INSERT INTO public.moon VALUES (3, 'moon2', 14, false, 5);
INSERT INTO public.moon VALUES (4, 'moon3', 64, true, 6);
INSERT INTO public.moon VALUES (5, 'moon4', 64, true, 6);
INSERT INTO public.moon VALUES (6, 'moon5', 54, true, 6);
INSERT INTO public.moon VALUES (7, 'moon6', 14, true, 7);
INSERT INTO public.moon VALUES (8, 'moon7', 28, true, 8);
INSERT INTO public.moon VALUES (9, 'moon8', 28, true, 9);
INSERT INTO public.moon VALUES (10, 'moon8', 12, true, 10);
INSERT INTO public.moon VALUES (11, 'moon9', 18, true, 11);
INSERT INTO public.moon VALUES (12, 'moon10', 9, false, 12);
INSERT INTO public.moon VALUES (13, 'moon11', 7, false, 13);
INSERT INTO public.moon VALUES (14, 'moon12', 32, true, 14);
INSERT INTO public.moon VALUES (15, 'moon13', 13, false, 15);
INSERT INTO public.moon VALUES (16, 'moon14', 34, true, 4);
INSERT INTO public.moon VALUES (17, 'moon15', 54, true, 7);
INSERT INTO public.moon VALUES (18, 'moon16', 14, false, 8);
INSERT INTO public.moon VALUES (19, 'moon17', 45, true, 4);
INSERT INTO public.moon VALUES (20, 'moon18', 34, false, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'earth', true, 123, 1, NULL);
INSERT INTO public.planet VALUES (4, 'venus', false, 89, 1, NULL);
INSERT INTO public.planet VALUES (5, 'mercury', false, 68, 1, NULL);
INSERT INTO public.planet VALUES (6, 'mars', true, 100, 1, NULL);
INSERT INTO public.planet VALUES (7, 'jupiter', false, 400, 1, NULL);
INSERT INTO public.planet VALUES (8, 'saturn', false, 300, 1, NULL);
INSERT INTO public.planet VALUES (9, 'uranus', false, 310, 1, NULL);
INSERT INTO public.planet VALUES (10, 'neptune', false, 350, 1, NULL);
INSERT INTO public.planet VALUES (11, 'randomPlanet1', true, 500, 2, NULL);
INSERT INTO public.planet VALUES (12, 'randomPlanet2', false, 102, 3, NULL);
INSERT INTO public.planet VALUES (13, 'randomPlanet3', false, 300, 4, NULL);
INSERT INTO public.planet VALUES (14, 'randomPlanet4', true, 230, 5, NULL);
INSERT INTO public.planet VALUES (15, 'randomPlanet5', false, 111, 6, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'THE SUN', 234, true, 1);
INSERT INTO public.star VALUES (2, 'RandomStar1', 1000, true, 2);
INSERT INTO public.star VALUES (3, 'RandomStar2', 456, false, 3);
INSERT INTO public.star VALUES (4, 'RandomStar3', 789, true, 4);
INSERT INTO public.star VALUES (5, 'RandomStar4', 89, false, 5);
INSERT INTO public.star VALUES (6, 'RandomStar5', 6754, true, 6);


--
-- Name: cooltable_cool_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.cooltable_cool_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: cooltable cooltable_col4_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cooltable
    ADD CONSTRAINT cooltable_col4_key UNIQUE (col4);


--
-- Name: cooltable cooltable_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cooltable
    ADD CONSTRAINT cooltable_pkey PRIMARY KEY (cooltable_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_pkey_un; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey_un UNIQUE (moon_id);


--
-- Name: planet planet_extra_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_extra_key UNIQUE (extra);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: galaxy short_desc_val; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT short_desc_val UNIQUE (short_desc);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


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

