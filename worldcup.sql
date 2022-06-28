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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;


\connect worldcup

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
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (321, 2018, 'Final', 4, 2, 762, 761);
INSERT INTO public.games VALUES (322, 2018, 'Third Place', 2, 0, 764, 763);
INSERT INTO public.games VALUES (323, 2018, 'Semi-Final', 2, 1, 761, 763);
INSERT INTO public.games VALUES (324, 2018, 'Semi-Final', 1, 0, 762, 764);
INSERT INTO public.games VALUES (325, 2018, 'Quarter-Final', 3, 2, 761, 765);
INSERT INTO public.games VALUES (326, 2018, 'Quarter-Final', 2, 0, 763, 766);
INSERT INTO public.games VALUES (327, 2018, 'Quarter-Final', 2, 1, 764, 767);
INSERT INTO public.games VALUES (328, 2018, 'Quarter-Final', 2, 0, 762, 768);
INSERT INTO public.games VALUES (329, 2018, 'Eighth-Final', 2, 1, 763, 769);
INSERT INTO public.games VALUES (330, 2018, 'Eighth-Final', 1, 0, 766, 770);
INSERT INTO public.games VALUES (331, 2018, 'Eighth-Final', 3, 2, 764, 771);
INSERT INTO public.games VALUES (332, 2018, 'Eighth-Final', 2, 0, 767, 772);
INSERT INTO public.games VALUES (333, 2018, 'Eighth-Final', 2, 1, 761, 773);
INSERT INTO public.games VALUES (334, 2018, 'Eighth-Final', 2, 1, 765, 774);
INSERT INTO public.games VALUES (335, 2018, 'Eighth-Final', 2, 1, 768, 775);
INSERT INTO public.games VALUES (336, 2018, 'Eighth-Final', 4, 3, 762, 776);
INSERT INTO public.games VALUES (337, 2014, 'Final', 1, 0, 777, 776);
INSERT INTO public.games VALUES (338, 2014, 'Third Place', 3, 0, 778, 767);
INSERT INTO public.games VALUES (339, 2014, 'Semi-Final', 1, 0, 776, 778);
INSERT INTO public.games VALUES (340, 2014, 'Semi-Final', 7, 1, 777, 767);
INSERT INTO public.games VALUES (341, 2014, 'Quarter-Final', 1, 0, 778, 779);
INSERT INTO public.games VALUES (342, 2014, 'Quarter-Final', 1, 0, 776, 764);
INSERT INTO public.games VALUES (343, 2014, 'Quarter-Final', 2, 1, 767, 769);
INSERT INTO public.games VALUES (344, 2014, 'Quarter-Final', 1, 0, 777, 762);
INSERT INTO public.games VALUES (345, 2014, 'Eighth-Final', 2, 1, 767, 780);
INSERT INTO public.games VALUES (346, 2014, 'Eighth-Final', 2, 0, 769, 768);
INSERT INTO public.games VALUES (347, 2014, 'Eighth-Final', 2, 0, 762, 781);
INSERT INTO public.games VALUES (348, 2014, 'Eighth-Final', 2, 1, 777, 782);
INSERT INTO public.games VALUES (349, 2014, 'Eighth-Final', 2, 1, 778, 772);
INSERT INTO public.games VALUES (350, 2014, 'Eighth-Final', 2, 1, 779, 783);
INSERT INTO public.games VALUES (351, 2014, 'Eighth-Final', 1, 0, 776, 770);
INSERT INTO public.games VALUES (352, 2014, 'Eighth-Final', 2, 1, 764, 784);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (761, 'Croatia');
INSERT INTO public.teams VALUES (762, 'France');
INSERT INTO public.teams VALUES (763, 'England');
INSERT INTO public.teams VALUES (764, 'Belgium');
INSERT INTO public.teams VALUES (765, 'Russia');
INSERT INTO public.teams VALUES (766, 'Sweden');
INSERT INTO public.teams VALUES (767, 'Brazil');
INSERT INTO public.teams VALUES (768, 'Uruguay');
INSERT INTO public.teams VALUES (769, 'Colombia');
INSERT INTO public.teams VALUES (770, 'Switzerland');
INSERT INTO public.teams VALUES (771, 'Japan');
INSERT INTO public.teams VALUES (772, 'Mexico');
INSERT INTO public.teams VALUES (773, 'Denmark');
INSERT INTO public.teams VALUES (774, 'Spain');
INSERT INTO public.teams VALUES (775, 'Portugal');
INSERT INTO public.teams VALUES (776, 'Argentina');
INSERT INTO public.teams VALUES (777, 'Germany');
INSERT INTO public.teams VALUES (778, 'Netherlands');
INSERT INTO public.teams VALUES (779, 'Costa Rica');
INSERT INTO public.teams VALUES (780, 'Chile');
INSERT INTO public.teams VALUES (781, 'Nigeria');
INSERT INTO public.teams VALUES (782, 'Algeria');
INSERT INTO public.teams VALUES (783, 'Greece');
INSERT INTO public.teams VALUES (784, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 352, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 784, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

