--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.2
-- Dumped by pg_dump version 9.4.2
-- Started on 2017-10-26 11:30:00

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 179 (class 3079 OID 11855)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2030 (class 0 OID 0)
-- Dependencies: 179
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 178 (class 1259 OID 16548)
-- Name: SUBJ_LECT; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "SUBJ_LECT" (
    "LECTURER_ID" integer,
    "SUBJ_ID" integer
);


ALTER TABLE "SUBJ_LECT" OWNER TO postgres;

--
-- TOC entry 172 (class 1259 OID 16518)
-- Name: exam_marks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE exam_marks (
    exam_id integer,
    student_id integer,
    subj_id integer,
    mark integer,
    exam_date date
);


ALTER TABLE exam_marks OWNER TO postgres;

--
-- TOC entry 173 (class 1259 OID 16521)
-- Name: lectures; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE lectures (
    lecturer_id integer,
    surname text,
    name text,
    city text,
    univ_id integer
);


ALTER TABLE lectures OWNER TO postgres;

--
-- TOC entry 174 (class 1259 OID 16527)
-- Name: progress; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE progress (
    subj_id integer,
    student_id integer,
    progress integer,
    semester integer
);


ALTER TABLE progress OWNER TO postgres;

--
-- TOC entry 175 (class 1259 OID 16530)
-- Name: student; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE student (
    student_id integer NOT NULL,
    surname text,
    name text,
    stipend double precision,
    kurs integer,
    city character(50),
    birthday date,
    univ_id integer
);


ALTER TABLE student OWNER TO postgres;

--
-- TOC entry 176 (class 1259 OID 16536)
-- Name: subject; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE subject (
    subj_id integer,
    subj_name text,
    hour integer,
    semester integer
);


ALTER TABLE subject OWNER TO postgres;

--
-- TOC entry 177 (class 1259 OID 16542)
-- Name: university; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE university (
    univ_id integer,
    univ_name text,
    rating integer,
    city text
);


ALTER TABLE university OWNER TO postgres;

--
-- TOC entry 2022 (class 0 OID 16548)
-- Dependencies: 178
-- Data for Name: SUBJ_LECT; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "SUBJ_LECT" ("LECTURER_ID", "SUBJ_ID") FROM stdin;
24	10
46	22
74	43
108	56
276	94
328	73
\.


--
-- TOC entry 2016 (class 0 OID 16518)
-- Dependencies: 172
-- Data for Name: exam_marks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY exam_marks (exam_id, student_id, subj_id, mark, exam_date) FROM stdin;
145	12	10	5	2000-01-12
34	32	10	4	2000-01-23
75	55	10	5	2000-01-05
238	12	22	3	1999-06-17
639	55	22	\N	1999-06-22
43	6	22	4	2000-01-18
\.


--
-- TOC entry 2017 (class 0 OID 16521)
-- Dependencies: 173
-- Data for Name: lectures; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY lectures (lecturer_id, surname, name, city, univ_id) FROM stdin;
24	Колесников	Борис	Воронеж	10
46	Никонов	Иван	Воронеж	10
276	Николаев	Виктор	Воронеж	10
74	Лагутин	Павел	Москва	22
108	Струков	Николай	Москва	22
328	Сорокин	Павел	Орел	10
\.


--
-- TOC entry 2018 (class 0 OID 16527)
-- Dependencies: 174
-- Data for Name: progress; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY progress (subj_id, student_id, progress, semester) FROM stdin;
10	1	4	1
43	3	5	1
10	12	5	1
\.


--
-- TOC entry 2019 (class 0 OID 16530)
-- Dependencies: 175
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY student (student_id, surname, name, stipend, kurs, city, birthday, univ_id) FROM stdin;
1	Иванов	Иван	150	1	Орел                                              	1982-03-12	10
10	Кузнецов	Борис	0	2	Брянск                                            	1900-01-21	10
3	Петров	Петр	200	3	Курск                                             	1980-12-01	10
6	Сидоров	Вадим	150	4	Москва                                            	1979-06-07	22
12	Зайцева	Ольга	250	2	Липецк                                            	1981-05-01	10
265	Павлов	Андрей	0	3	Воронеж                                           	1979-11-05	10
32	Котов	Павел	150	5	Белгород                                          	\N	14
654	Лукин	Артем	200	3	Воронеж                                           	1981-12-01	10
276	Петров	Антон	200	4	\N	1981-08-05	22
55	Белкин	Вадим	250	5	Воронеж                                           	1980-01-07	10
\.


--
-- TOC entry 2020 (class 0 OID 16536)
-- Dependencies: 176
-- Data for Name: subject; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY subject (subj_id, subj_name, hour, semester) FROM stdin;
10	Информатика	56	1
22	Физика	34	1
43	Математика	56	2
94	Английский	56	3
73	Физкультура	34	5
56	История	34	4
\.


--
-- TOC entry 2021 (class 0 OID 16542)
-- Dependencies: 177
-- Data for Name: university; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY university (univ_id, univ_name, rating, city) FROM stdin;
22	МГУ	606	Москва
10	ВГУ	296	Воронеж
11	НГУ	345	Новоибирск
32	РГУ	416	Ростов
14	БГУ	326	Белгород
15	ТГУ	368	Томск
18	ВГМА	327	Воронеж
\.


--
-- TOC entry 2029 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2017-10-26 11:30:00

--
-- PostgreSQL database dump complete
--

