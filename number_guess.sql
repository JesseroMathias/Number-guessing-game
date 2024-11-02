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
    guesses integer NOT NULL,
    u_id integer
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
    u_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_u_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_u_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_u_id_seq OWNER TO freecodecamp;

--
-- Name: users_u_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_u_id_seq OWNED BY public.users.u_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users u_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN u_id SET DEFAULT nextval('public.users_u_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 845, 1);
INSERT INTO public.games VALUES (2, 144, 1);
INSERT INTO public.games VALUES (3, 876, 2);
INSERT INTO public.games VALUES (4, 89, 2);
INSERT INTO public.games VALUES (5, 902, 1);
INSERT INTO public.games VALUES (6, 693, 1);
INSERT INTO public.games VALUES (7, 721, 1);
INSERT INTO public.games VALUES (8, 303, 3);
INSERT INTO public.games VALUES (9, 723, 3);
INSERT INTO public.games VALUES (10, 601, 4);
INSERT INTO public.games VALUES (11, 12, 4);
INSERT INTO public.games VALUES (12, 377, 3);
INSERT INTO public.games VALUES (13, 114, 3);
INSERT INTO public.games VALUES (14, 338, 3);
INSERT INTO public.games VALUES (15, 494, 5);
INSERT INTO public.games VALUES (16, 757, 5);
INSERT INTO public.games VALUES (17, 742, 6);
INSERT INTO public.games VALUES (18, 109, 6);
INSERT INTO public.games VALUES (19, 111, 5);
INSERT INTO public.games VALUES (20, 961, 5);
INSERT INTO public.games VALUES (21, 534, 5);
INSERT INTO public.games VALUES (22, 14, 7);
INSERT INTO public.games VALUES (23, 922, 8);
INSERT INTO public.games VALUES (24, 850, 8);
INSERT INTO public.games VALUES (25, 229, 9);
INSERT INTO public.games VALUES (26, 821, 9);
INSERT INTO public.games VALUES (27, 772, 8);
INSERT INTO public.games VALUES (28, 805, 8);
INSERT INTO public.games VALUES (29, 462, 8);
INSERT INTO public.games VALUES (30, 319, 10);
INSERT INTO public.games VALUES (31, 254, 10);
INSERT INTO public.games VALUES (32, 108, 11);
INSERT INTO public.games VALUES (33, 519, 11);
INSERT INTO public.games VALUES (34, 192, 10);
INSERT INTO public.games VALUES (35, 667, 10);
INSERT INTO public.games VALUES (36, 73, 10);
INSERT INTO public.games VALUES (37, 12, 7);
INSERT INTO public.games VALUES (38, 435, 12);
INSERT INTO public.games VALUES (39, 392, 12);
INSERT INTO public.games VALUES (40, 660, 13);
INSERT INTO public.games VALUES (41, 485, 13);
INSERT INTO public.games VALUES (42, 187, 12);
INSERT INTO public.games VALUES (43, 152, 12);
INSERT INTO public.games VALUES (44, 191, 12);
INSERT INTO public.games VALUES (45, 433, 14);
INSERT INTO public.games VALUES (46, 335, 14);
INSERT INTO public.games VALUES (47, 293, 15);
INSERT INTO public.games VALUES (48, 277, 15);
INSERT INTO public.games VALUES (49, 561, 14);
INSERT INTO public.games VALUES (50, 308, 14);
INSERT INTO public.games VALUES (51, 21, 14);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1730546121418');
INSERT INTO public.users VALUES (2, 'user_1730546121417');
INSERT INTO public.users VALUES (3, 'user_1730546142735');
INSERT INTO public.users VALUES (4, 'user_1730546142734');
INSERT INTO public.users VALUES (5, 'user_1730546175546');
INSERT INTO public.users VALUES (6, 'user_1730546175545');
INSERT INTO public.users VALUES (7, 'Jessy');
INSERT INTO public.users VALUES (8, 'user_1730546361571');
INSERT INTO public.users VALUES (9, 'user_1730546361570');
INSERT INTO public.users VALUES (10, 'user_1730546606904');
INSERT INTO public.users VALUES (11, 'user_1730546606903');
INSERT INTO public.users VALUES (12, 'user_1730546791679');
INSERT INTO public.users VALUES (13, 'user_1730546791678');
INSERT INTO public.users VALUES (14, 'user_1730546810237');
INSERT INTO public.users VALUES (15, 'user_1730546810236');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 51, true);


--
-- Name: users_u_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_u_id_seq', 15, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_name_key UNIQUE (name);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (u_id);


--
-- Name: games games_u_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_u_id_fkey FOREIGN KEY (u_id) REFERENCES public.users(u_id);


--
-- PostgreSQL database dump complete
--

