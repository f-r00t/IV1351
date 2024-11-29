--
-- PostgreSQL database dump
--

-- Dumped from database version 17.1 (Postgres.app)
-- Dumped by pg_dump version 17.0

-- Started on 2024-11-29 20:46:38 CET

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3809 (class 0 OID 16754)
-- Dependencies: 239
-- Data for Name: contact_type; Type: TABLE DATA; Schema: public; Owner: harry
--

COPY public.contact_type (contact_type_id, contact_type) FROM stdin;
1	email
2	address
3	phone
4	contact_person_email
5	contact_person_address
6	contact_person_phone
7	contact_person_name
\.


--
-- TOC entry 3811 (class 0 OID 16796)
-- Dependencies: 241
-- Data for Name: person_type; Type: TABLE DATA; Schema: public; Owner: harry
--

COPY public.person_type (person_type_id, person_type) FROM stdin;
1	instructor
2	student
3	administrator
\.


--
-- TOC entry 3788 (class 0 OID 16391)
-- Dependencies: 218
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: harry
--

COPY public.person (person_id, personal_number, name, teaches_ensamble, person_type) FROM stdin;
22	192310121234	John Andersson	1	1
23	198705232345	Sara Eriksson	\N	2
24	197603183456	Alice Johansson	\N	3
25	195002254567	Bob Karlsson	0	1
26	200104125678	Emma Larsson	\N	2
27	196712306789	Michael Svensson	1	1
28	198210051234	Olivia Gustafsson	\N	2
29	195501171234	William Nilsson	\N	3
30	200311213456	Sophia Persson	0	1
31	198905062345	James Olsson	\N	2
32	197102251234	Isabella Lindberg	1	1
33	198410231234	Benjamin Andersson	\N	2
34	197509182345	Mia Larsson	\N	3
35	200510101234	Lucas Holm	0	1
36	196206052345	Charlotte Nilsson	\N	2
37	198503151234	Henry Dahl	1	1
38	199711072345	Amelia Johansson	\N	2
39	197906222345	Sebastian Eriksson	\N	3
40	198409172345	Ava Lind	0	1
41	200604042345	Elijah Wallin	\N	2
42	199508122345	Harper Svensson	1	1
43	198906072345	Daniel Olsson	\N	2
44	200311212345	Evelyn Karlsson	\N	3
45	197711282345	Matthew Berg	0	1
46	199801151234	Abigail Larsson	\N	2
\.


--
-- TOC entry 3794 (class 0 OID 16462)
-- Dependencies: 224
-- Data for Name: contact_details; Type: TABLE DATA; Schema: public; Owner: harry
--

COPY public.contact_details (value, person_id, contact_type_id) FROM stdin;
john.andersson@example.com	22	1
Sara.Eriksson@example.com	23	1
alice.johansson@example.com	24	1
bob.karlsson@example.com	25	1
emma.larsson@example.com	26	1
michael.svensson@example.com	27	1
olivia.gustafsson@example.com	28	1
william.nilsson@example.com	29	1
sophia.persson@example.com	30	1
james.olsson@example.com	31	1
isabella.lindberg@example.com	32	1
benjamin.andersson@example.com	33	1
mia.larsson@example.com	34	1
lucas.holm@example.com	35	1
charlotte.nilsson@example.com	36	1
henry.dahl@example.com	37	1
amelia.johansson@example.com	38	1
sebastian.eriksson@example.com	39	1
ava.lind@example.com	40	1
elijah.wallin@example.com	41	1
harper.svensson@example.com	42	1
daniel.olsson@example.com	43	1
evelyn.karlsson@example.com	44	1
matthew.berg@example.com	45	1
abigail.larsson@example.com	46	1
Storgatan 1, 12345 Stockholm, Sweden	22	2
Hantverkargatan 10, 11223 Stockholm, Sweden	23	2
Kungsgatan 3, 22334 Stockholm, Sweden	24	2
Västerlånggatan 5, 12345 Stockholm, Sweden	25	2
Östermalmstorg 2, 11450 Stockholm, Sweden	26	2
Götgatan 6, 11645 Stockholm, Sweden	27	2
Sankt Eriksgatan 12, 11234 Stockholm, Sweden	28	2
Torsgatan 15, 11356 Stockholm, Sweden	29	2
Vikingagatan 20, 11356 Stockholm, Sweden	30	2
Södra Förstadsgatan 10, 21143 Malmö, Sweden	31	2
Storgatan 3, 41120 Göteborg, Sweden	32	2
Hagagatan 14, 11347 Stockholm, Sweden	33	2
Björkgatan 2, 21632 Malmö, Sweden	34	2
Folkungagatan 7, 11662 Stockholm, Sweden	35	2
Sibyllegatan 6, 11442 Stockholm, Sweden	36	2
Drottninggatan 8, 11151 Stockholm, Sweden	37	2
Bohusgatan 3, 41318 Göteborg, Sweden	38	2
Västra Hamngatan 1, 41117 Göteborg, Sweden	39	2
Stora Nygatan 10, 11127 Stockholm, Sweden	40	2
Birkagatan 9, 11339 Stockholm, Sweden	41	2
Lilla Varvsgatan 12, 21175 Malmö, Sweden	42	2
Lilla Torg 3, 21134 Malmö, Sweden	43	2
Skånegatan 5, 21126 Malmö, Sweden	44	2
Skeppsbrokajen 4, 21120 Malmö, Sweden	45	2
Sjövägen 1, 22100 Lund, Sweden	46	2
0701234567	22	3
0702345678	23	3
0703456789	24	3
0704567890	25	3
0705678901	26	3
0706789012	27	3
0707890123	28	3
0708901234	29	3
0709012345	30	3
0700123456	31	3
0701231234	32	3
0702342345	33	3
0703453456	34	3
0704564567	35	3
0705675678	36	3
0706786789	37	3
0707897890	38	3
0708908901	39	3
0709019012	40	3
0700120123	41	3
0701231234	42	3
0702342345	43	3
0703453456	44	3
0704564567	45	3
0705675678	46	3
john.andersson@family.com	22	4
sara.eriksson@family.com	23	4
alice.johansson@family.com	24	4
bob.karlsson@family.com	25	4
emma.larsson@family.com	26	4
michael.svensson@family.com	27	4
olivia.gustafsson@family.com	28	4
william.nilsson@family.com	29	4
sophia.persson@family.com	30	4
james.olsson@family.com	31	4
isabella.lindberg@family.com	32	4
benjamin.andersson@family.com	33	4
mia.larsson@family.com	34	4
lucas.holm@family.com	35	4
charlotte.nilsson@family.com	36	4
henry.dahl@family.com	37	4
amelia.johansson@family.com	38	4
sebastian.eriksson@family.com	39	4
ava.lind@family.com	40	4
elijah.wallin@family.com	41	4
harper.svensson@family.com	42	4
daniel.olsson@family.com	43	4
evelyn.karlsson@family.com	44	4
matthew.berg@family.com	45	4
abigail.larsson@family.com	46	4
Storgatan 1, 12345	22	5
Hantverkargatan 10, 11223	23	5
Kungsgatan 3, 22334	24	5
Västerlånggatan 5, 12345	25	5
Östermalmstorg 2, 11450	26	5
Götgatan 6, 11645	27	5
Sankt Eriksgatan 12, 11234	28	5
Torsgatan 15, 11356	29	5
Vikingagatan 20, 11356	30	5
Södra Förstadsgatan 10, 21143	31	5
Storgatan 3, 41120	32	5
Hagagatan 14, 11347	33	5
Björkgatan 2, 21632	34	5
Folkungagatan 7, 11662	35	5
Sibyllegatan 6, 11442	36	5
Drottninggatan 8, 11151	37	5
Bohusgatan 3, 41318	38	5
Västra Hamngatan 1, 41117	39	5
Stora Nygatan 10, 11127	40	5
Birkagatan 9, 11339	41	5
Lilla Varvsgatan 12, 21175	42	5
Lilla Torg 3, 21134	43	5
Skånegatan 5, 21126	44	5
Skeppsbrokajen 4, 21120	45	5
Sjövägen 1, 22100	46	5
0701234567	22	6
0702345678	23	6
0703456789	24	6
0704567890	25	6
0705678901	26	6
0706789012	27	6
0707890123	28	6
0708901234	29	6
0709012345	30	6
0700123456	31	6
0701234567	32	6
0702345678	33	6
0703456789	34	6
0704567890	35	6
0705678901	36	6
0706789012	37	6
0707890123	38	6
0708901234	39	6
0709012345	40	6
0700123456	41	6
0701234567	42	6
0702345678	43	6
0703456789	44	6
\.


--
-- TOC entry 3804 (class 0 OID 16712)
-- Dependencies: 234
-- Data for Name: genre; Type: TABLE DATA; Schema: public; Owner: harry
--

COPY public.genre (genre_id, genre) FROM stdin;
1	Classical
2	Jazz
3	Rock
4	Pop
5	Hip-Hop
6	Blues
7	Country
8	Electronic
9	Reggae
10	Folk
\.


--
-- TOC entry 3800 (class 0 OID 16652)
-- Dependencies: 230
-- Data for Name: instrument_type; Type: TABLE DATA; Schema: public; Owner: harry
--

COPY public.instrument_type (instrument_id, type) FROM stdin;
1	Piano
2	Guitar
3	Violin
4	Drums
5	Flute
6	Saxophone
7	Trumpet
8	Cello
9	Clarinet
10	Bass Guitar
\.


--
-- TOC entry 3806 (class 0 OID 16723)
-- Dependencies: 236
-- Data for Name: lesson_type; Type: TABLE DATA; Schema: public; Owner: harry
--

COPY public.lesson_type (id, lesson_type) FROM stdin;
1	ensemble
2	group
3	individual
\.


--
-- TOC entry 3802 (class 0 OID 16658)
-- Dependencies: 232
-- Data for Name: skill_level; Type: TABLE DATA; Schema: public; Owner: harry
--

COPY public.skill_level (skill_type_id, skill_type) FROM stdin;
1	Beginner
2	Intermediate
3	Advanced
\.


--
-- TOC entry 3798 (class 0 OID 16646)
-- Dependencies: 228
-- Data for Name: lesson; Type: TABLE DATA; Schema: public; Owner: harry
--

COPY public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) FROM stdin;
\.


--
-- TOC entry 3789 (class 0 OID 16417)
-- Dependencies: 219
-- Data for Name: enrollment; Type: TABLE DATA; Schema: public; Owner: harry
--

COPY public.enrollment (person_id, lesson_id) FROM stdin;
\.


--
-- TOC entry 3796 (class 0 OID 16553)
-- Dependencies: 226
-- Data for Name: fee; Type: TABLE DATA; Schema: public; Owner: harry
--

COPY public.fee (start_date, fee, lesson_type, skill_level) FROM stdin;
\.


--
-- TOC entry 3807 (class 0 OID 16738)
-- Dependencies: 237
-- Data for Name: instructor_instrument; Type: TABLE DATA; Schema: public; Owner: harry
--

COPY public.instructor_instrument (person_id, instrument_id) FROM stdin;
\.


--
-- TOC entry 3792 (class 0 OID 16430)
-- Dependencies: 222
-- Data for Name: instruments; Type: TABLE DATA; Schema: public; Owner: harry
--

COPY public.instruments (instrument_id, brand, fee, rented, instrument_type) FROM stdin;
\.


--
-- TOC entry 3793 (class 0 OID 16457)
-- Dependencies: 223
-- Data for Name: rentals; Type: TABLE DATA; Schema: public; Owner: harry
--

COPY public.rentals (start_time, end_time, person_id, instrument_id) FROM stdin;
\.


--
-- TOC entry 3790 (class 0 OID 16422)
-- Dependencies: 220
-- Data for Name: schedule; Type: TABLE DATA; Schema: public; Owner: harry
--

COPY public.schedule (starttime, endtime, lesson_id) FROM stdin;
2024-01-01 10:00:00+01	2024-01-01 11:00:00+01	14
2024-01-02 12:00:00+01	2024-01-02 13:00:00+01	15
2024-01-03 15:00:00+01	2024-01-03 16:00:00+01	16
2024-01-04 11:00:00+01	2024-01-04 12:30:00+01	17
2024-01-05 14:00:00+01	2024-01-05 15:30:00+01	18
2024-01-06 16:00:00+01	2024-01-06 17:30:00+01	19
2024-01-07 10:00:00+01	2024-01-07 11:00:00+01	1
2024-01-08 12:00:00+01	2024-01-08 13:00:00+01	2
2024-01-09 14:00:00+01	2024-01-09 15:00:00+01	3
2024-01-10 16:00:00+01	2024-01-10 17:00:00+01	4
2024-01-11 11:00:00+01	2024-01-11 12:00:00+01	5
2024-01-12 15:00:00+01	2024-01-12 16:00:00+01	6
2024-01-13 17:00:00+01	2024-01-13 18:00:00+01	7
2024-01-14 18:30:00+01	2024-01-14 19:30:00+01	8
2024-01-15 10:00:00+01	2024-01-15 11:30:00+01	58
2024-01-16 12:00:00+01	2024-01-16 13:30:00+01	59
2024-01-17 15:00:00+01	2024-01-17 16:30:00+01	60
2024-01-18 17:00:00+01	2024-01-18 18:30:00+01	61
2024-01-19 11:00:00+01	2024-01-19 12:30:00+01	62
2024-01-20 19:00:00+01	2024-01-20 20:30:00+01	63
\.


--
-- TOC entry 3795 (class 0 OID 16469)
-- Dependencies: 225
-- Data for Name: sibling; Type: TABLE DATA; Schema: public; Owner: harry
--

COPY public.sibling (person_id, sibling) FROM stdin;
\.


--
-- TOC entry 3817 (class 0 OID 0)
-- Dependencies: 238
-- Name: contact_type_contact_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: harry
--

SELECT pg_catalog.setval('public.contact_type_contact_type_id_seq', 7, true);


--
-- TOC entry 3818 (class 0 OID 0)
-- Dependencies: 233
-- Name: genre_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: harry
--

SELECT pg_catalog.setval('public.genre_genre_id_seq', 10, true);


--
-- TOC entry 3819 (class 0 OID 0)
-- Dependencies: 229
-- Name: instrument_type_instrument_id_seq; Type: SEQUENCE SET; Schema: public; Owner: harry
--

SELECT pg_catalog.setval('public.instrument_type_instrument_id_seq', 10, true);


--
-- TOC entry 3820 (class 0 OID 0)
-- Dependencies: 221
-- Name: instruments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: harry
--

SELECT pg_catalog.setval('public.instruments_id_seq', 20, true);


--
-- TOC entry 3821 (class 0 OID 0)
-- Dependencies: 227
-- Name: lesson_lesson_id_seq; Type: SEQUENCE SET; Schema: public; Owner: harry
--

SELECT pg_catalog.setval('public.lesson_lesson_id_seq', 1, false);


--
-- TOC entry 3822 (class 0 OID 0)
-- Dependencies: 235
-- Name: lesson_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: harry
--

SELECT pg_catalog.setval('public.lesson_type_id_seq', 3, true);


--
-- TOC entry 3823 (class 0 OID 0)
-- Dependencies: 217
-- Name: person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: harry
--

SELECT pg_catalog.setval('public.person_id_seq', 46, true);


--
-- TOC entry 3824 (class 0 OID 0)
-- Dependencies: 240
-- Name: person_type_person_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: harry
--

SELECT pg_catalog.setval('public.person_type_person_type_id_seq', 3, true);


--
-- TOC entry 3825 (class 0 OID 0)
-- Dependencies: 231
-- Name: skill_level_skill_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: harry
--

SELECT pg_catalog.setval('public.skill_level_skill_type_id_seq', 3, true);


-- Completed on 2024-11-29 20:46:38 CET

--
-- PostgreSQL database dump complete
--

