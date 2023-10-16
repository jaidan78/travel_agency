--
-- PostgreSQL database dump
--

-- Dumped from database version 14.8
-- Dumped by pg_dump version 14.8

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
-- Name: testimoniales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.testimoniales (
    id integer NOT NULL,
    nombre character varying(60),
    correo character varying(60),
    mensaje text
);


ALTER TABLE public.testimoniales OWNER TO postgres;

--
-- Name: testimoniales_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.testimoniales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.testimoniales_id_seq OWNER TO postgres;

--
-- Name: testimoniales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.testimoniales_id_seq OWNED BY public.testimoniales.id;


--
-- Name: viajes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.viajes (
    id integer NOT NULL,
    precio integer NOT NULL,
    fecha_ida date NOT NULL,
    fecha_vuelta date NOT NULL,
    imagen character varying NOT NULL,
    descripcion text NOT NULL,
    disponibles integer NOT NULL,
    slug character varying NOT NULL,
    titulo character varying
);


ALTER TABLE public.viajes OWNER TO postgres;

--
-- Name: testimoniales id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.testimoniales ALTER COLUMN id SET DEFAULT nextval('public.testimoniales_id_seq'::regclass);


--
-- Data for Name: testimoniales; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.testimoniales (id, nombre, correo, mensaje) FROM stdin;
1	jaime	jaime.tablet25@gmail.com	Las mejores vacaciones!!
5	Sergio	sergio23@hotmail.com	Hermoso lugar!!
6	marcela	marcelacursos81@gmail.com	Muy lindas vacaciones!
7	pedro	pedro@yahoo.com.es	El mejor sitio para comprar tu viaje!
8	marisa	marisa@correo.com	Hermoso el viaje y el hotel espectacular!!!
\.


--
-- Data for Name: viajes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.viajes (id, precio, fecha_ida, fecha_vuelta, imagen, descripcion, disponibles, slug, titulo) FROM stdin;
3	40000	2023-08-29	2023-09-15	grecia	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus pulvinar augue nec volutpat sagittis. Proin commodo nulla at ipsum rutrum, in tempor dolor dictum. Donec in eros finibus, varius leo ut, euismod nisl. Donec ac egestas lacus. Integer consectetur pretium laoreet. Sed rhoncus eros vitae venenatis efficitur.	18	viaje-grecia	Grecia
2	60000	2023-07-19	2023-07-19	canada	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus pulvinar augue nec volutpat sagittis. Proin commodo nulla at ipsum rutrum, in tempor dolor dictum. Donec in eros finibus, varius leo ut, euismod nisl. Donec ac egestas lacus. Integer consectetur pretium laoreet. Sed rhoncus eros vitae venenatis efficitur.	25	viaje-canada	Canada
5	50000	2023-04-16	2023-04-25	rio	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus pulvinar augue nec volutpat sagittis. Proin commodo nulla at ipsum rutrum, in tempor dolor dictum. Donec in eros finibus, varius leo ut, euismod nisl. Donec ac egestas lacus. Integer consectetur pretium laoreet. Sed rhoncus eros vitae venenatis efficitur.	23	viaje-rio-de-janeiro	Rio de Janeiro
4	8000	2023-09-22	2023-10-03	londres	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus pulvinar augue nec volutpat sagittis. Proin commodo nulla at ipsum rutrum, in tempor dolor dictum. Donec in eros finibus, varius leo ut, euismod nisl. Donec ac egestas lacus. Integer consectetur pretium laoreet. Sed rhoncus eros vitae venenatis efficitur.	22	viaje-inglaterra	Inglaterra
6	75000	2023-04-03	2023-10-04	paris	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus pulvinar augue nec volutpat sagittis. Proin commodo nulla at ipsum rutrum, in tempor dolor dictum. Donec in eros finibus, varius leo ut, euismod nisl. Donec ac egestas lacus. Integer consectetur pretium laoreet. Sed rhoncus eros vitae venenatis efficitur.	14	viaje-francia	Francia
1	50000	2023-06-24	2023-06-30	roma	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus pulvinar augue nec volutpat sagittis. Proin commodo nulla at ipsum rutrum, in tempor dolor dictum. Donec in eros finibus, varius leo ut, euismod nisl. Donec ac egestas lacus. Integer consectetur pretium laoreet. Sed rhoncus eros vitae venenatis efficitur.	32	viaje-italia	Italia
\.


--
-- Name: testimoniales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.testimoniales_id_seq', 8, true);


--
-- Name: testimoniales testimoniales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.testimoniales
    ADD CONSTRAINT testimoniales_pkey PRIMARY KEY (id);


--
-- Name: viajes viajes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.viajes
    ADD CONSTRAINT viajes_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

