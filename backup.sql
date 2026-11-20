--
-- PostgreSQL database dump
--

\restrict u4ljagCxjqFXwQ6D5t2pH5hECpy72TgP2PdSVIgceffAQHc9BoRz3A2c1UlEqvl

-- Dumped from database version 16.15 (Ubuntu 16.15-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.15 (Ubuntu 16.15-0ubuntu0.24.04.1)

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
-- Name: products; Type: TABLE; Schema: public; Owner: myuser
--

CREATE TABLE public.products (
    id integer NOT NULL,
    name text,
    price numeric
);


ALTER TABLE public.products OWNER TO myuser;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_id_seq OWNER TO myuser;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY public.products (id, name, price) FROM stdin;
1	Laptop	1200
2	Mouse	20
\.


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('public.products_id_seq', 4, true);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

GRANT ALL ON SCHEMA public TO myuser;


--
-- PostgreSQL database dump complete
--

\unrestrict u4ljagCxjqFXwQ6D5t2pH5hECpy72TgP2PdSVIgceffAQHc9BoRz3A2c1UlEqvl

