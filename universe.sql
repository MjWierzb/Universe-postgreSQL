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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    common_name text,
    galaxy_magnitude numeric(3,2) NOT NULL,
    is_galaxy_alive boolean,
    can_you_visit boolean,
    light_years_away integer
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
    name character varying(60) NOT NULL,
    moon_distance integer NOT NULL,
    moon_size integer NOT NULL,
    moon_color text,
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
-- Name: person; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.person (
    person_id integer NOT NULL,
    name character varying(60) NOT NULL,
    person_size integer NOT NULL,
    person_color text
);


ALTER TABLE public.person OWNER TO freecodecamp;

--
-- Name: person_person_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.person_person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.person_person_id_seq OWNER TO freecodecamp;

--
-- Name: person_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.person_person_id_seq OWNED BY public.person.person_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    planet_distance integer NOT NULL,
    planet_size integer NOT NULL,
    planet_color text,
    star_id integer NOT NULL
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
    name character varying(60) NOT NULL,
    star_distance integer NOT NULL,
    star_size integer NOT NULL,
    star_color text,
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: person person_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.person ALTER COLUMN person_id SET DEFAULT nextval('public.person_person_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 'Andromeda', 3.44, true, false, 765);
INSERT INTO public.galaxy VALUES (2, 'Milky Way Galaxy', 'Milky Way', 4.00, true, true, 0);
INSERT INTO public.galaxy VALUES (3, 'Cigar Galaxy', 'Ursa Major', 9.00, true, false, 12);
INSERT INTO public.galaxy VALUES (4, 'Comet Galay', 'Sculptor', 9.50, true, false, 32);
INSERT INTO public.galaxy VALUES (5, 'Eye of God', 'Eridanus', 7.00, true, false, 19);
INSERT INTO public.galaxy VALUES (6, 'Eye of Sauron', 'Canes Venatici', 8.00, true, false, 16);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Io', 10, 10, 'orange', 5);
INSERT INTO public.moon VALUES (2, 'Europa', 20, 10, 'grey', 5);
INSERT INTO public.moon VALUES (3, 'Ganymede', 30, 10, 'grey', 5);
INSERT INTO public.moon VALUES (4, 'Callisto', 40, 10, 'black', 5);
INSERT INTO public.moon VALUES (5, 'Moon', 2, 10, 'grey', 3);
INSERT INTO public.moon VALUES (6, 'Titan', 20, 30, 'yellow', 6);
INSERT INTO public.moon VALUES (7, 'Enceladus', 20, 10, 'orange', 6);
INSERT INTO public.moon VALUES (8, 'Hyperion', 20, 30, 'grey', 6);
INSERT INTO public.moon VALUES (9, 'Prometheus', 20, 10, 'grey', 6);
INSERT INTO public.moon VALUES (10, 'Pandora', 20, 5, 'grey', 6);
INSERT INTO public.moon VALUES (11, 'Janus', 20, 6, 'grey', 6);
INSERT INTO public.moon VALUES (12, 'Epimetheus', 20, 7, 'grey', 6);
INSERT INTO public.moon VALUES (13, 'Mimas', 20, 8, 'grey', 6);
INSERT INTO public.moon VALUES (14, 'Iapetus', 20, 10, 'yellow', 6);
INSERT INTO public.moon VALUES (15, 'Phoebe', 20, 15, 'grey', 6);
INSERT INTO public.moon VALUES (16, 'Tethys', 20, 10, 'grey', 6);
INSERT INTO public.moon VALUES (17, 'Telesto', 20, 5, 'grey', 6);
INSERT INTO public.moon VALUES (18, 'Pan', 20, 10, 'grey', 6);
INSERT INTO public.moon VALUES (19, 'Atlas', 20, 15, 'grey', 6);
INSERT INTO public.moon VALUES (20, 'Ymir', 20, 12, 'grey', 6);


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.person VALUES (1, 'Maciej', 10, 'white');
INSERT INTO public.person VALUES (2, 'Leah', 10, 'yellow');
INSERT INTO public.person VALUES (3, 'Kobe', 10, 'black');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 23, 'grey', 1);
INSERT INTO public.planet VALUES (2, 'Venus', 2, 30, 'yellow', 1);
INSERT INTO public.planet VALUES (3, 'Earth', 3, 40, 'blue', 1);
INSERT INTO public.planet VALUES (4, 'Mars', 4, 50, 'red', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 5, 100, 'orange', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 6, 70, 'yellow', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 7, 35, 'blue', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 8, 40, 'blue', 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 9, 25, 'black', 1);
INSERT INTO public.planet VALUES (10, 'Neburu', 20, 50, 'red', 1);
INSERT INTO public.planet VALUES (11, 'Ring', 10, 10, 'yellow', 6);
INSERT INTO public.planet VALUES (12, 'Samwise', 20, 30, 'white', 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 0, 100, 'yellow', 2);
INSERT INTO public.star VALUES (2, 'Nemo', 1, 50, 'red', 3);
INSERT INTO public.star VALUES (3, 'Dory', 2, 75, 'white', 4);
INSERT INTO public.star VALUES (4, 'Marlyn', 3, 80, 'orange', 1);
INSERT INTO public.star VALUES (5, 'Hank', 4, 90, 'red', 5);
INSERT INTO public.star VALUES (6, 'Frodo', 6, 30, 'yellow', 5);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: person_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.person_person_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


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
-- Name: person person_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (person_id);


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
-- Name: galaxy unique_common_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_common_name UNIQUE (common_name);


--
-- Name: galaxy unique_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_id UNIQUE (galaxy_id);


--
-- Name: moon unique_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_id UNIQUE (moon_id);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: person unique_person_color; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT unique_person_color UNIQUE (person_color);


--
-- Name: planet unique_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_id UNIQUE (planet_id);


--
-- Name: star unique_star_size; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_size UNIQUE (star_size);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

