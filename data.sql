--
-- PostgreSQL database dump
--

-- Dumped from database version 17.1 (Postgres.app)
-- Dumped by pg_dump version 17.0

-- Started on 2024-11-21 20:26:50 CET

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
-- TOC entry 3744 (class 0 OID 16462)
-- Dependencies: 224
-- Data for Name: contact_details; Type: TABLE DATA; Schema: public; Owner: harry
--

COPY public.contact_details (contact_type, value, person_id) FROM stdin;
email	john.doe@example.com	1
phone	+46701234567	1
address	Main Street 1, 12345 Stockholm	1
email	jane.smith@example.com	2
phone	+46702345678	2
email	alice.johnson@example.com	3
address	Elm Street 15, 54321 Gothenburg	3
email	bob.brown@example.com	4
phone	+46703456789	4
address	Pine Avenue 22, 67890 Malmö	4
email	emma.davis@example.com	5
email	chris.wilson@example.com	6
phone	+46704567890	6
email	sophia.martinez@example.com	7
address	Birch Road 5, 23456 Uppsala	7
email	liam.white@example.com	8
phone	+46705678901	8
address	Cedar Lane 8, 78901 Lund	8
email	olivia.harris@example.com	9
address	Willow Street 3, 34567 Helsingborg	9
email	ethan.king@example.com	10
email	chloe.green@example.com	11
phone	+46706789012	11
email	isabella.adams@example.com	12
phone	+46707890123	12
email	mia.stewart@example.com	13
email	charlotte.bell@example.com	14
address	Spruce Way 10, 45678 Västerås	14
email	henry.young@example.com	15
phone	+46708901234	15
email	ella.brooks@example.com	16
address	Maple Court 6, 56789 Örebro	16
email	james.carter@example.com	17
email	lucas.mitchell@example.com	18
phone	+46709012345	18
address	Poplar Avenue 7, 67891 Norrköping	18
email	amelia.taylor@example.com	19
phone	+46700123456	19
email	lily.foster@example.com	20
address	Oak Street 12, 78912 Linköping	20
\.


--
-- TOC entry 3739 (class 0 OID 16417)
-- Dependencies: 219
-- Data for Name: enrollments; Type: TABLE DATA; Schema: public; Owner: harry
--

COPY public.enrollments (type, person_id, lesson_id) FROM stdin;
group	3	14
group	7	15
group	10	16
group	11	17
group	5	18
group	8	19
individual	3	1
individual	7	2
individual	10	3
individual	11	4
individual	5	5
individual	8	6
individual	15	7
individual	20	8
ensemble	3	58
ensemble	7	59
ensemble	10	60
ensemble	11	61
ensemble	5	62
ensemble	8	63
\.


--
-- TOC entry 3738 (class 0 OID 16391)
-- Dependencies: 218
-- Data for Name: persons; Type: TABLE DATA; Schema: public; Owner: harry
--

COPY public.persons (person_id, personal_number, name, type) FROM stdin;
1	0402012244  	Christer Petterson	student
2	199012121234	John Doe	student
3	198706155678	Jane Smith	instructor
4	200205202345	Alice Johnson	student
5	197812306789	Bob Brown	administrator
6	199903113456	Emma Davis	student
7	198402257890	Chris Wilson	instructor
8	200111084567	Sophia Martinez	student
9	196504228901	Liam White	administrator
10	198310105674	Olivia Harris	instructor
11	200309306785	Ethan King	student
12	200411151122	Chloe Green	student
13	197405184455	Isabella Adams	administrator
14	198808255566	Mia Stewart	instructor
15	200010016677	Charlotte Bell	student
16	199702147788	Henry Young	student
17	197903308899	Ella Brooks	administrator
18	198611069900	James Carter	instructor
19	200512120011	Lucas Mitchell	student
20	200104031122	Amelia Taylor	student
21	198909182233	Lily Foster	administrator
\.


--
-- TOC entry 3747 (class 0 OID 16541)
-- Dependencies: 227
-- Data for Name: ensemble; Type: TABLE DATA; Schema: public; Owner: harry
--

COPY public.ensemble (lesson_id, level, person_id, genre, max_students, min_students) FROM stdin;
58	1	2	Classical	10	5
59	2	6	Jazz	12	6
60	3	13	Rock	15	7
61	1	9	Pop	20	8
62	2	19	Blues	25	10
63	3	14	Folk	18	9
\.


--
-- TOC entry 3748 (class 0 OID 16553)
-- Dependencies: 228
-- Data for Name: fees; Type: TABLE DATA; Schema: public; Owner: harry
--

COPY public.fees (type, start_date, fee) FROM stdin;
individual	2024-01-01 00:00:00+01	100
individual	2024-02-01 00:00:00+01	110
individual	2024-03-01 00:00:00+01	105
group	2024-01-15 00:00:00+01	90
group	2024-03-15 00:00:00+01	95
group	2024-05-15 00:00:00+02	85
ensemble	2024-02-01 00:00:00+01	120
ensemble	2024-04-01 00:00:00+02	115
ensemble	2024-06-01 00:00:00+02	125
\.


--
-- TOC entry 3746 (class 0 OID 16531)
-- Dependencies: 226
-- Data for Name: group_lessons; Type: TABLE DATA; Schema: public; Owner: harry
--

COPY public.group_lessons (lesson_id, level, person_id, max_students, min_students, instrument) FROM stdin;
14	1	2	20	5	Piano
15	2	6	15	3	Violin
16	3	13	10	4	Guitar
17	1	9	25	10	Drums
18	2	14	30	12	Flute
19	3	19	12	5	Saxophone
\.


--
-- TOC entry 3751 (class 0 OID 16607)
-- Dependencies: 231
-- Data for Name: individual_lessons; Type: TABLE DATA; Schema: public; Owner: harry
--

COPY public.individual_lessons (lesson_id, level, person_id, instrument) FROM stdin;
1	1	2	Piano
2	2	6	Violin
3	3	13	Guitar
4	1	9	Drums
5	2	19	Flute
6	3	14	Trumpet
7	1	15	Cello
8	2	16	Saxophone
\.


--
-- TOC entry 3742 (class 0 OID 16430)
-- Dependencies: 222
-- Data for Name: instruments; Type: TABLE DATA; Schema: public; Owner: harry
--

COPY public.instruments (instrument_id, type, brand, fee, rented) FROM stdin;
1	Piano	Yamaha	150	0
2	Violin	Stradivarius	30	1
3	Guitar	Fender	120	0
4	Drums	Pearl	140	1
5	Flute	Gemeinhardt	80	0
6	Trumpet	Bach	100	0
7	Cello	Stentor	180	1
8	Saxophone	Selmer	130	1
9	Harp	Lyon & Healy	300	0
10	Clarinet	Buffet Crampon	90	1
11	Trombone	Yamaha	110	0
12	Ukulele	Kala	50	0
13	Electric Guitar	Gibson	200	1
14	Bass Guitar	Ibanez	160	0
15	Synthesizer	Roland	250	1
16	Accordion	Hohner	220	0
17	Marimba	Adams	400	1
18	Banjo	Deering	140	0
19	Mandolin	Eastman	110	1
20	Oboe	Marigaux	180	0
\.


--
-- TOC entry 3743 (class 0 OID 16457)
-- Dependencies: 223
-- Data for Name: rentals; Type: TABLE DATA; Schema: public; Owner: harry
--

COPY public.rentals (start_time, end_time, person_id, instrument_id) FROM stdin;
2024-01-01 00:00:00+01	\N	3	2
2024-02-15 00:00:00+01	\N	5	4
2024-03-10 00:00:00+01	\N	7	8
2024-03-25 00:00:00+01	\N	10	6
2023-12-01 00:00:00+01	2024-01-01 00:00:00+01	15	12
2024-01-15 00:00:00+01	2024-02-15 00:00:00+01	18	3
2023-11-01 00:00:00+01	2023-12-01 00:00:00+01	19	7
2024-01-05 00:00:00+01	2024-03-10 00:00:00+01	20	13
2023-10-01 00:00:00+02	2023-12-01 00:00:00+01	11	1
2024-01-20 00:00:00+01	2024-02-20 00:00:00+01	3	15
\.


--
-- TOC entry 3740 (class 0 OID 16422)
-- Dependencies: 220
-- Data for Name: schedule; Type: TABLE DATA; Schema: public; Owner: harry
--

COPY public.schedule (starttime, endtime, type, lesson_id) FROM stdin;
2024-01-01 10:00:00+01	2024-01-01 11:00:00+01	group	14
2024-01-02 12:00:00+01	2024-01-02 13:00:00+01	group	15
2024-01-03 15:00:00+01	2024-01-03 16:00:00+01	group	16
2024-01-04 11:00:00+01	2024-01-04 12:30:00+01	group	17
2024-01-05 14:00:00+01	2024-01-05 15:30:00+01	group	18
2024-01-06 16:00:00+01	2024-01-06 17:30:00+01	group	19
2024-01-07 10:00:00+01	2024-01-07 11:00:00+01	individual	1
2024-01-08 12:00:00+01	2024-01-08 13:00:00+01	individual	2
2024-01-09 14:00:00+01	2024-01-09 15:00:00+01	individual	3
2024-01-10 16:00:00+01	2024-01-10 17:00:00+01	individual	4
2024-01-11 11:00:00+01	2024-01-11 12:00:00+01	individual	5
2024-01-12 15:00:00+01	2024-01-12 16:00:00+01	individual	6
2024-01-13 17:00:00+01	2024-01-13 18:00:00+01	individual	7
2024-01-14 18:30:00+01	2024-01-14 19:30:00+01	individual	8
2024-01-15 10:00:00+01	2024-01-15 11:30:00+01	ensemble	58
2024-01-16 12:00:00+01	2024-01-16 13:30:00+01	ensemble	59
2024-01-17 15:00:00+01	2024-01-17 16:30:00+01	ensemble	60
2024-01-18 17:00:00+01	2024-01-18 18:30:00+01	ensemble	61
2024-01-19 11:00:00+01	2024-01-19 12:30:00+01	ensemble	62
2024-01-20 19:00:00+01	2024-01-20 20:30:00+01	ensemble	63
\.


--
-- TOC entry 3745 (class 0 OID 16469)
-- Dependencies: 225
-- Data for Name: siblings; Type: TABLE DATA; Schema: public; Owner: harry
--

COPY public.siblings (person_id, sibling) FROM stdin;
3	7
7	3
10	11
11	10
15	20
20	15
5	8
8	5
\.


--
-- TOC entry 3758 (class 0 OID 0)
-- Dependencies: 230
-- Name: ensemble_lesson_id_seq; Type: SEQUENCE SET; Schema: public; Owner: harry
--

SELECT pg_catalog.setval('public.ensemble_lesson_id_seq', 63, true);


--
-- TOC entry 3759 (class 0 OID 0)
-- Dependencies: 229
-- Name: group_lessons_lesson_id_seq; Type: SEQUENCE SET; Schema: public; Owner: harry
--

SELECT pg_catalog.setval('public.group_lessons_lesson_id_seq', 19, true);


--
-- TOC entry 3760 (class 0 OID 0)
-- Dependencies: 232
-- Name: individual_lessons_lesson_id_seq; Type: SEQUENCE SET; Schema: public; Owner: harry
--

SELECT pg_catalog.setval('public.individual_lessons_lesson_id_seq', 8, true);


--
-- TOC entry 3761 (class 0 OID 0)
-- Dependencies: 221
-- Name: instruments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: harry
--

SELECT pg_catalog.setval('public.instruments_id_seq', 20, true);


--
-- TOC entry 3762 (class 0 OID 0)
-- Dependencies: 217
-- Name: person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: harry
--

SELECT pg_catalog.setval('public.person_id_seq', 21, true);


-- Completed on 2024-11-21 20:26:50 CET

--
-- PostgreSQL database dump complete
--

