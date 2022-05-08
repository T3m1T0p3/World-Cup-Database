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
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    game_id integer NOT NULL
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
    name character varying NOT NULL,
    team_id integer NOT NULL
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

INSERT INTO public.games VALUES (2018, 'Final', 4, 2, 129, 130, 1);
INSERT INTO public.games VALUES (2018, 'Third Place', 2, 0, 131, 132, 2);
INSERT INTO public.games VALUES (2018, 'Semi-Final', 2, 1, 130, 132, 3);
INSERT INTO public.games VALUES (2018, 'Semi-Final', 1, 0, 129, 131, 4);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 3, 2, 130, 133, 5);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 2, 0, 132, 134, 6);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 2, 1, 131, 135, 7);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 2, 0, 129, 136, 8);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 2, 1, 132, 137, 9);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 1, 0, 134, 138, 10);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 3, 2, 131, 139, 11);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 2, 0, 135, 140, 12);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 2, 1, 130, 141, 13);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 2, 1, 133, 142, 14);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 2, 1, 136, 143, 15);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 4, 3, 129, 144, 16);
INSERT INTO public.games VALUES (2014, 'Final', 1, 0, 145, 144, 17);
INSERT INTO public.games VALUES (2014, 'Third Place', 3, 0, 146, 135, 18);
INSERT INTO public.games VALUES (2014, 'Semi-Final', 1, 0, 144, 146, 19);
INSERT INTO public.games VALUES (2014, 'Semi-Final', 7, 1, 145, 135, 20);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 1, 0, 146, 147, 21);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 1, 0, 144, 131, 22);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 2, 1, 135, 137, 23);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 1, 0, 145, 129, 24);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 2, 1, 135, 148, 25);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 2, 0, 137, 136, 26);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 2, 0, 129, 149, 27);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 2, 1, 145, 150, 28);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 2, 1, 146, 140, 29);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 2, 1, 147, 151, 30);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 1, 0, 144, 138, 31);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 2, 1, 131, 152, 32);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES ('France', 129);
INSERT INTO public.teams VALUES ('Croatia', 130);
INSERT INTO public.teams VALUES ('Belgium', 131);
INSERT INTO public.teams VALUES ('England', 132);
INSERT INTO public.teams VALUES ('Russia', 133);
INSERT INTO public.teams VALUES ('Sweden', 134);
INSERT INTO public.teams VALUES ('Brazil', 135);
INSERT INTO public.teams VALUES ('Uruguay', 136);
INSERT INTO public.teams VALUES ('Colombia', 137);
INSERT INTO public.teams VALUES ('Switzerland', 138);
INSERT INTO public.teams VALUES ('Japan', 139);
INSERT INTO public.teams VALUES ('Mexico', 140);
INSERT INTO public.teams VALUES ('Denmark', 141);
INSERT INTO public.teams VALUES ('Spain', 142);
INSERT INTO public.teams VALUES ('Portugal', 143);
INSERT INTO public.teams VALUES ('Argentina', 144);
INSERT INTO public.teams VALUES ('Germany', 145);
INSERT INTO public.teams VALUES ('Netherlands', 146);
INSERT INTO public.teams VALUES ('Costa Rica', 147);
INSERT INTO public.teams VALUES ('Chile', 148);
INSERT INTO public.teams VALUES ('Nigeria', 149);
INSERT INTO public.teams VALUES ('Algeria', 150);
INSERT INTO public.teams VALUES ('Greece', 151);
INSERT INTO public.teams VALUES ('United States', 152);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 152, true);


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

