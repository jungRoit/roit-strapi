--
-- PostgreSQL database dump
--

-- Dumped from database version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)

-- Started on 2020-06-01 23:01:23 +0545

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

SET default_with_oids = false;

--
-- TOC entry 211 (class 1259 OID 16553)
-- Name: activities; Type: TABLE; Schema: public; Owner: lf
--

CREATE TABLE public.activities (
    id integer NOT NULL,
    price numeric(10,2),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.activities OWNER TO lf;

--
-- TOC entry 203 (class 1259 OID 16529)
-- Name: activities_id_seq; Type: SEQUENCE; Schema: public; Owner: lf
--

CREATE SEQUENCE public.activities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.activities_id_seq OWNER TO lf;

--
-- TOC entry 2990 (class 0 OID 0)
-- Dependencies: 203
-- Name: activities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lf
--

ALTER SEQUENCE public.activities_id_seq OWNED BY public.activities.id;


--
-- TOC entry 2857 (class 2604 OID 16586)
-- Name: activities id; Type: DEFAULT; Schema: public; Owner: lf
--

ALTER TABLE ONLY public.activities ALTER COLUMN id SET DEFAULT nextval('public.activities_id_seq'::regclass);


--
-- TOC entry 2984 (class 0 OID 16553)
-- Dependencies: 211
-- Data for Name: activities; Type: TABLE DATA; Schema: public; Owner: lf
--

COPY public.activities (id, price, created_at, updated_at) FROM stdin;
26	100.00	2020-06-01 22:49:54.614+05:45	2020-06-01 22:49:54.614+05:45
27	45.00	2020-06-01 22:55:25.479+05:45	2020-06-01 22:55:25.479+05:45
10	299.70	2020-06-01 11:53:12.593+05:45	2020-06-01 22:37:36.652+05:45
11	320.40	2020-06-01 11:54:16.076+05:45	2020-06-01 22:37:36.663+05:45
12	210.60	2020-06-01 11:59:00.888+05:45	2020-06-01 22:37:36.663+05:45
13	90.00	2020-06-01 12:23:15.75+05:45	2020-06-01 22:37:36.67+05:45
19	120.60	2020-06-01 22:29:57.708+05:45	2020-06-01 22:37:36.675+05:45
20	58.50	2020-06-01 22:30:56.529+05:45	2020-06-01 22:37:36.683+05:45
21	410.40	2020-06-01 22:31:48.114+05:45	2020-06-01 22:37:36.689+05:45
1	25.43	2020-06-01 09:53:45.84+05:45	2020-06-01 22:37:36.689+05:45
2	12.72	2020-06-01 09:53:46.225+05:45	2020-06-01 22:37:36.689+05:45
3	1350.00	2020-06-01 10:24:42.677+05:45	2020-06-01 22:37:36.692+05:45
4	9.00	2020-06-01 10:31:21.187+05:45	2020-06-01 22:37:36.922+05:45
5	450.00	2020-06-01 10:33:28.376+05:45	2020-06-01 22:37:36.938+05:45
6	220.50	2020-06-01 10:35:15.157+05:45	2020-06-01 22:37:36.938+05:45
7	294.30	2020-06-01 11:22:26.639+05:45	2020-06-01 22:37:36.938+05:45
8	90.00	2020-06-01 11:25:53.575+05:45	2020-06-01 22:37:36.938+05:45
16	900.00	2020-06-01 12:28:00.714+05:45	2020-06-01 22:37:36.938+05:45
\.


--
-- TOC entry 2991 (class 0 OID 0)
-- Dependencies: 203
-- Name: activities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lf
--

SELECT pg_catalog.setval('public.activities_id_seq', 27, true);


--
-- TOC entry 2861 (class 2606 OID 16603)
-- Name: activities activities_pkey; Type: CONSTRAINT; Schema: public; Owner: lf
--

ALTER TABLE ONLY public.activities
    ADD CONSTRAINT activities_pkey PRIMARY KEY (id);


-- Completed on 2020-06-01 23:01:24 +0545

--
-- PostgreSQL database dump complete
--

