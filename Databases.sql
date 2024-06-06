--
-- PostgreSQL database cluster dump
--

-- Started on 2024-06-06 11:51:22

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:DiOFJNX4K2qDfQ8Qyb7ixg==$gkCMqRHtSGxjAo92pJjFCkhfmlDw4raGcKiqcT6u/HI=:U0rPx61NooLwFSh/CqNNHM1iGP+XoA51/3/WXpB/PE4=';

--
-- User Configurations
--








--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

-- Started on 2024-06-06 11:51:22

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

-- Completed on 2024-06-06 11:51:22

--
-- PostgreSQL database dump complete
--

--
-- Database "best_vacation_plan" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

-- Started on 2024-06-06 11:51:22

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

--
-- TOC entry 4788 (class 1262 OID 24718)
-- Name: best_vacation_plan; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE best_vacation_plan WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';


ALTER DATABASE best_vacation_plan OWNER TO postgres;

\connect best_vacation_plan

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
-- TOC entry 216 (class 1259 OID 24847)
-- Name: best_vacation_plan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.best_vacation_plan (
    id integer NOT NULL,
    img character varying,
    "cityCountry" character varying,
    price integer,
    "daysTrip" character varying
);


ALTER TABLE public.best_vacation_plan OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 24846)
-- Name: best_vacation_plan_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.best_vacation_plan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.best_vacation_plan_id_seq OWNER TO postgres;

--
-- TOC entry 4789 (class 0 OID 0)
-- Dependencies: 215
-- Name: best_vacation_plan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.best_vacation_plan_id_seq OWNED BY public.best_vacation_plan.id;


--
-- TOC entry 4634 (class 2604 OID 24850)
-- Name: best_vacation_plan id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.best_vacation_plan ALTER COLUMN id SET DEFAULT nextval('public.best_vacation_plan_id_seq'::regclass);


--
-- TOC entry 4782 (class 0 OID 24847)
-- Dependencies: 216
-- Data for Name: best_vacation_plan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.best_vacation_plan (id, img, "cityCountry", price, "daysTrip") FROM stdin;
1	https://s1.1zoom.me/prev/521/Sky_Evening_France_Eiffel_Tower_Paris_From_above_520603_600x400.jpg	Paris, France	756	10 Days Trip
2	https://images.unsplash.com/photo-1516483638261-f4dbaf036963?w=320&h=359&fit=crop	Barcelona, Spain	730	7 Days Trip
3	https://images.unsplash.com/photo-1541339907198-e08756dedf3f?w=320&h=359&fit=crop	Berlin, Germany	812	5 Days Trip
4	https://s1.1zoom.me/prev/600/Italy_Rome_Temples_Evening_Rivers_Bridges_Church_599640_600x400.jpg	Rome, Italy	620	8 Days Trip
5	https://images.unsplash.com/photo-1518837695005-2083093ee35b?w=320&h=359&fit=crop	Lisbon, Portugal	534	6 Days Trip
6	https://s1.1zoom.me/prev/596/Netherlands_Amsterdam_Houses_Bridges_Canal_595179_600x400.jpg	Amsterdam, Netherlands	951	9 Days Trip
7	https://www.shutterstock.com/image-photo/beautiful-aerial-panoramic-view-autumn-600nw-1450254959.jpg	Vienna, Austria	702	4 Days Trip
8	https://s1.1zoom.me/prev/533/Czech_Republic_Prague_Houses_Rivers_Bridges_532413_600x400.jpg	Prague, Czech Republic	612	7 Days Trip
9	https://s1.1zoom.me/prev/591/Rivers_Riverboat_Budapest_Hungary_Danube_590920_600x400.jpg	Budapest, Hungary	874	6 Days Trip
\.


--
-- TOC entry 4790 (class 0 OID 0)
-- Dependencies: 215
-- Name: best_vacation_plan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.best_vacation_plan_id_seq', 9, true);


--
-- TOC entry 4636 (class 2606 OID 24854)
-- Name: best_vacation_plan best_vacation_plan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.best_vacation_plan
    ADD CONSTRAINT best_vacation_plan_pkey PRIMARY KEY (id);


--
-- TOC entry 4637 (class 1259 OID 24855)
-- Name: ix_best_vacation_plan_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_best_vacation_plan_id ON public.best_vacation_plan USING btree (id);


-- Completed on 2024-06-06 11:51:22

--
-- PostgreSQL database dump complete
--

--
-- Database "blogs" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

-- Started on 2024-06-06 11:51:22

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

--
-- TOC entry 4788 (class 1262 OID 24719)
-- Name: blogs; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE blogs WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';


ALTER DATABASE blogs OWNER TO postgres;

\connect blogs

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
-- TOC entry 216 (class 1259 OID 24878)
-- Name: blogs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blogs (
    id integer NOT NULL,
    img character varying,
    paragraph character varying,
    date character varying
);


ALTER TABLE public.blogs OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 24877)
-- Name: blogs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blogs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.blogs_id_seq OWNER TO postgres;

--
-- TOC entry 4789 (class 0 OID 0)
-- Dependencies: 215
-- Name: blogs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blogs_id_seq OWNED BY public.blogs.id;


--
-- TOC entry 4634 (class 2604 OID 24881)
-- Name: blogs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blogs ALTER COLUMN id SET DEFAULT nextval('public.blogs_id_seq'::regclass);


--
-- TOC entry 4782 (class 0 OID 24878)
-- Dependencies: 216
-- Data for Name: blogs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blogs (id, img, paragraph, date) FROM stdin;
1	https://images.unsplash.com/photo-1507525428034-b723cf961d3e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80	The Amazing Difference a Year of Travelling.	July 27, 2021
2	https://img.freepik.com/foto-gratis/hermosa-foto-pequeno-pueblo-rodeado-lago-colinas-nevadas_181624-37802.jpg?size=626&ext=jpg&ga=GA1.1.1687694167.1715040000&semt=ais	Exploring the Hidden Gems of Europe.	August 12, 2021
3	https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80	A Journey Through the Mountains.	September 5, 2021
4	https://media.istockphoto.com/id/1408518230/es/foto/mar-submarino-abismo-de-aguas-profundas-con-luz-de-sol-azul.jpg?s=612x612&w=0&k=20&c=o1K1WomReNraY0FWLjYOqMhbt05rsCPHbIZs6fKcCoA=	Discovering the Beauty of the Ocean.	October 14, 2021
5	https://st3.depositphotos.com/3601539/14084/i/450/depositphotos_140848722-stock-photo-young-girls-provide-music-for.jpg	A Cultural Experience in Asia.	November 2, 2021
6	https://s1.1zoom.me/prev/591/Desert_Stones_Wadi_Rum_Jordan_Crag_Sand_590617_600x400.jpg	The Serenity of the Desert.	December 19, 2021
7	https://upload.wikimedia.org/wikipedia/commons/5/58/Selva_tropical_en_la_biosfera_de_el_rio_plátano_Honduras.jpg	Adventures in the Rainforest.	January 10, 2022
8	https://images.unsplash.com/photo-1532274402911-5a369e4c4bb5?ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80	Urban Exploration in Major Cities.	February 24, 2022
9	https://img.freepik.com/fotos-premium/paisaje-arco-iris-cielo_400650-977.jpg	Tasting the Flavors of the World.	March 15, 2022
10	https://static.nationalgeographic.es/files/styles/image_3200/public/wide-machu-picchu-temple-of-the-sun_92491_600x450.jpg?w=400&h=400&q=75	Historical Sites and Ancient Ruins.	April 5, 2022
11	https://img.freepik.com/foto-gratis/cascada-naturaleza-tailandia_335224-989.jpg	Wildlife Safaris and Nature Trails.	May 23, 2022
12	https://media.istockphoto.com/id/453442177/es/foto/isla-tropical-aislado.jpg?s=612x612&w=0&k=20&c=RDoVmSHP-YtPHQr_jKrOGBtdOXsgZoEakNa6VedIvZY=	Relaxing Getaways on Tropical Islands.	June 14, 2022
\.


--
-- TOC entry 4790 (class 0 OID 0)
-- Dependencies: 215
-- Name: blogs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blogs_id_seq', 12, true);


--
-- TOC entry 4636 (class 2606 OID 24885)
-- Name: blogs blogs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blogs
    ADD CONSTRAINT blogs_pkey PRIMARY KEY (id);


--
-- TOC entry 4637 (class 1259 OID 24886)
-- Name: ix_blogs_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_blogs_id ON public.blogs USING btree (id);


-- Completed on 2024-06-06 11:51:23

--
-- PostgreSQL database dump complete
--

--
-- Database "deals_and_discounts" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

-- Started on 2024-06-06 11:51:23

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

--
-- TOC entry 4788 (class 1262 OID 24717)
-- Name: deals_and_discounts; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE deals_and_discounts WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';


ALTER DATABASE deals_and_discounts OWNER TO postgres;

\connect deals_and_discounts

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
-- TOC entry 216 (class 1259 OID 24754)
-- Name: deals_and_discounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.deals_and_discounts (
    id integer NOT NULL,
    img character varying,
    city character varying,
    country character varying,
    price integer,
    "discountPrice" integer,
    paragraph character varying
);


ALTER TABLE public.deals_and_discounts OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 24753)
-- Name: deals_and_discounts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.deals_and_discounts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.deals_and_discounts_id_seq OWNER TO postgres;

--
-- TOC entry 4789 (class 0 OID 0)
-- Dependencies: 215
-- Name: deals_and_discounts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.deals_and_discounts_id_seq OWNED BY public.deals_and_discounts.id;


--
-- TOC entry 4634 (class 2604 OID 24757)
-- Name: deals_and_discounts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deals_and_discounts ALTER COLUMN id SET DEFAULT nextval('public.deals_and_discounts_id_seq'::regclass);


--
-- TOC entry 4782 (class 0 OID 24754)
-- Dependencies: 216
-- Data for Name: deals_and_discounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.deals_and_discounts (id, img, city, country, price, "discountPrice", paragraph) FROM stdin;
1	https://media.tacdn.com/media/attractions-splice-spp-400x400/12/2e/16/f8.jpg	Paris	France	756	539	Aventúrate en los paisajes dramáticos de Nueva Zelanda, donde glaciares, fiordos y montañas ofrecen vistas impresionantes.
2	https://images.unsplash.com/photo-1516483638261-f4dbaf036963?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxMTkzNTl8MHwxfGFsbHwxfHx8fHx8fHwxNjEyNjg3OTQw&ixlib=rb-1.2.1&q=80&w=400	Barcelona	Spain	730	550	Disfruta de la cultura vibrante de Barcelona, con su arquitectura modernista, playas soleadas y deliciosa paella.
3	https://media.tacdn.com/media/attractions-splice-spp-400x400/0b/27/5d/e0.jpg	Berlin	Germany	812	453	Embárcate en un safari en Kenia, observando de cerca la majestuosa fauna africana en su hábitat natural.
4	https://www.colosseodiroma.it/images/logo_fb.jpg	Rome	Italy	620	456	Pasea por las calles históricas de Praga, admirando sus puentes, castillos y la rica herencia cultural.
5	https://images.unsplash.com/photo-1518837695005-2083093ee35b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxMTkzNTl8MHwxfGFsbHwxfHx8fHx8fHwxNjEyNjg3OTQw&ixlib=rb-1.2.1&q=80&w=400	Lisbon	Portugal	534	302	Relájate en las aguas termales de Islandia, rodeado de paisajes volcánicos y la belleza de la aurora boreal.
6	https://imgc.artprintimages.com/img/print/francesco-iacobelli-netherlands-north-holland-amsterdam-typical-houses-and-houseboats-on-amstel-river_u-l-ptz4uf0.jpg?background=f3f3f3	Amsterdam	Netherlands	951	714	Explora la magia de los Alpes suizos, donde las montañas nevadas se mezclan con pintorescos pueblos y lagos cristalinos.
7	https://www.travelawaits.com/wp-content/uploads/2021/04/e537615f70806601266ddf1a3c121e53761.jpg?resize=400%2C400	Vienna	Austria	702	401	Descubre el encanto de la Toscana italiana, con sus viñedos ondulantes, pueblos medievales y deliciosa gastronomía.
8	https://ak-d.tripcdn.com/images/1mi084224wxfhwk4gCACC_W_400_0_R5_Q90.jpg?proc=source/trip	Prague	Czech	612	500	Viaja al corazón de Japón y experimenta la vibrante vida urbana de Tokio y la serenidad de los templos de Kioto.
9	https://inwander.io/img/4455/20267/free-budapest-main-md-crop.jpg	Budapest	Hungary	874	632	Sumérgete en la biodiversidad del Amazonas, navegando por ríos majestuosos y observando la vida silvestre única.
10	https://media.tacdn.com/media/attractions-splice-spp-400x400/0b/39/8a/a9.jpg	Warsaw	Poland	521	320	Vive la energía de Nueva York, con sus rascacielos imponentes, Broadway y la diversidad culinaria que ofrece.
11	https://ak-d.tripcdn.com/images/1i63x2224s99f78nkA58D_W_400_0_R5_Q90.jpg?proc=source/trip	Madrid	Spain	850	640	Relájate en las playas paradisíacas de Maldivas, donde el mar turquesa y los bungalows sobre el agua te esperan.\n
12	https://media.sheerluxe.com/LVVJWi2Gf6kFxm0hemxhs0w6wQc=/fit-in/400x400/smart/https%3A%2F%2Fsheerluxe.com%2Fsites%2Fsheerluxe%2Ffiles%2Farticles%2F2022%2F11%2Fhow-spend-weekend-stockholm-thumb.jpg?itok=mHw1Fg-b	Stockholm	Sweden	690	500	Explora la historia antigua de Egipto, desde las icónicas pirámides de Giza hasta los templos de Luxor.\n
\.


--
-- TOC entry 4790 (class 0 OID 0)
-- Dependencies: 215
-- Name: deals_and_discounts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.deals_and_discounts_id_seq', 12, true);


--
-- TOC entry 4636 (class 2606 OID 24761)
-- Name: deals_and_discounts deals_and_discounts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deals_and_discounts
    ADD CONSTRAINT deals_and_discounts_pkey PRIMARY KEY (id);


--
-- TOC entry 4637 (class 1259 OID 24762)
-- Name: ix_deals_and_discounts_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_deals_and_discounts_id ON public.deals_and_discounts USING btree (id);


-- Completed on 2024-06-06 11:51:23

--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

-- Started on 2024-06-06 11:51:23

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

--
-- TOC entry 2 (class 3079 OID 16384)
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- TOC entry 4778 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


-- Completed on 2024-06-06 11:51:23

--
-- PostgreSQL database dump complete
--

--
-- Database "python_db" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

-- Started on 2024-06-06 11:51:23

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

--
-- TOC entry 4789 (class 1262 OID 24611)
-- Name: python_db; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE python_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';


ALTER DATABASE python_db OWNER TO postgres;

\connect python_db

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
-- TOC entry 216 (class 1259 OID 24623)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying,
    email character varying,
    password character varying
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 24622)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 4790 (class 0 OID 0)
-- Dependencies: 215
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 4634 (class 2604 OID 24626)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 4783 (class 0 OID 24623)
-- Dependencies: 216
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, password) FROM stdin;
\.


--
-- TOC entry 4791 (class 0 OID 0)
-- Dependencies: 215
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 61, true);


--
-- TOC entry 4638 (class 2606 OID 24630)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 4635 (class 1259 OID 24631)
-- Name: ix_users_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX ix_users_email ON public.users USING btree (email);


--
-- TOC entry 4636 (class 1259 OID 24632)
-- Name: ix_users_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_users_id ON public.users USING btree (id);


-- Completed on 2024-06-06 11:51:23

--
-- PostgreSQL database dump complete
--

-- Completed on 2024-06-06 11:51:23

--
-- PostgreSQL database cluster dump complete
--

