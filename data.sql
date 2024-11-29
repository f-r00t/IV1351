--
-- PostgreSQL database dump
--

-- Dumped from database version 17.1 (Postgres.app)
-- Dumped by pg_dump version 17.0

-- Started on 2024-11-29 21:05:06 CET

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

INSERT INTO public.contact_type OVERRIDING SYSTEM VALUE VALUES (1, 'email');
INSERT INTO public.contact_type OVERRIDING SYSTEM VALUE VALUES (2, 'address');
INSERT INTO public.contact_type OVERRIDING SYSTEM VALUE VALUES (3, 'phone');
INSERT INTO public.contact_type OVERRIDING SYSTEM VALUE VALUES (4, 'contact_person_email');
INSERT INTO public.contact_type OVERRIDING SYSTEM VALUE VALUES (5, 'contact_person_address');
INSERT INTO public.contact_type OVERRIDING SYSTEM VALUE VALUES (6, 'contact_person_phone');
INSERT INTO public.contact_type OVERRIDING SYSTEM VALUE VALUES (7, 'contact_person_name');


--
-- TOC entry 3811 (class 0 OID 16796)
-- Dependencies: 241
-- Data for Name: person_type; Type: TABLE DATA; Schema: public; Owner: harry
--

INSERT INTO public.person_type OVERRIDING SYSTEM VALUE VALUES (1, 'instructor');
INSERT INTO public.person_type OVERRIDING SYSTEM VALUE VALUES (2, 'student');
INSERT INTO public.person_type OVERRIDING SYSTEM VALUE VALUES (3, 'administrator');


--
-- TOC entry 3788 (class 0 OID 16391)
-- Dependencies: 218
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: harry
--

INSERT INTO public.person OVERRIDING SYSTEM VALUE VALUES (22, '192310121234', 'John Andersson', B'1', 1);
INSERT INTO public.person OVERRIDING SYSTEM VALUE VALUES (23, '198705232345', 'Sara Eriksson', NULL, 2);
INSERT INTO public.person OVERRIDING SYSTEM VALUE VALUES (24, '197603183456', 'Alice Johansson', NULL, 3);
INSERT INTO public.person OVERRIDING SYSTEM VALUE VALUES (25, '195002254567', 'Bob Karlsson', B'0', 1);
INSERT INTO public.person OVERRIDING SYSTEM VALUE VALUES (26, '200104125678', 'Emma Larsson', NULL, 2);
INSERT INTO public.person OVERRIDING SYSTEM VALUE VALUES (27, '196712306789', 'Michael Svensson', B'1', 1);
INSERT INTO public.person OVERRIDING SYSTEM VALUE VALUES (28, '198210051234', 'Olivia Gustafsson', NULL, 2);
INSERT INTO public.person OVERRIDING SYSTEM VALUE VALUES (29, '195501171234', 'William Nilsson', NULL, 3);
INSERT INTO public.person OVERRIDING SYSTEM VALUE VALUES (30, '200311213456', 'Sophia Persson', B'0', 1);
INSERT INTO public.person OVERRIDING SYSTEM VALUE VALUES (31, '198905062345', 'James Olsson', NULL, 2);
INSERT INTO public.person OVERRIDING SYSTEM VALUE VALUES (32, '197102251234', 'Isabella Lindberg', B'1', 1);
INSERT INTO public.person OVERRIDING SYSTEM VALUE VALUES (33, '198410231234', 'Benjamin Andersson', NULL, 2);
INSERT INTO public.person OVERRIDING SYSTEM VALUE VALUES (34, '197509182345', 'Mia Larsson', NULL, 3);
INSERT INTO public.person OVERRIDING SYSTEM VALUE VALUES (35, '200510101234', 'Lucas Holm', B'0', 1);
INSERT INTO public.person OVERRIDING SYSTEM VALUE VALUES (36, '196206052345', 'Charlotte Nilsson', NULL, 2);
INSERT INTO public.person OVERRIDING SYSTEM VALUE VALUES (37, '198503151234', 'Henry Dahl', B'1', 1);
INSERT INTO public.person OVERRIDING SYSTEM VALUE VALUES (38, '199711072345', 'Amelia Johansson', NULL, 2);
INSERT INTO public.person OVERRIDING SYSTEM VALUE VALUES (39, '197906222345', 'Sebastian Eriksson', NULL, 3);
INSERT INTO public.person OVERRIDING SYSTEM VALUE VALUES (40, '198409172345', 'Ava Lind', B'0', 1);
INSERT INTO public.person OVERRIDING SYSTEM VALUE VALUES (41, '200604042345', 'Elijah Wallin', NULL, 2);
INSERT INTO public.person OVERRIDING SYSTEM VALUE VALUES (42, '199508122345', 'Harper Svensson', B'1', 1);
INSERT INTO public.person OVERRIDING SYSTEM VALUE VALUES (43, '198906072345', 'Daniel Olsson', NULL, 2);
INSERT INTO public.person OVERRIDING SYSTEM VALUE VALUES (44, '200311212345', 'Evelyn Karlsson', NULL, 3);
INSERT INTO public.person OVERRIDING SYSTEM VALUE VALUES (45, '197711282345', 'Matthew Berg', B'0', 1);
INSERT INTO public.person OVERRIDING SYSTEM VALUE VALUES (46, '199801151234', 'Abigail Larsson', NULL, 2);


--
-- TOC entry 3794 (class 0 OID 16462)
-- Dependencies: 224
-- Data for Name: contact_details; Type: TABLE DATA; Schema: public; Owner: harry
--

INSERT INTO public.contact_details VALUES ('john.andersson@example.com', 22, 1);
INSERT INTO public.contact_details VALUES ('Sara.Eriksson@example.com', 23, 1);
INSERT INTO public.contact_details VALUES ('alice.johansson@example.com', 24, 1);
INSERT INTO public.contact_details VALUES ('bob.karlsson@example.com', 25, 1);
INSERT INTO public.contact_details VALUES ('emma.larsson@example.com', 26, 1);
INSERT INTO public.contact_details VALUES ('michael.svensson@example.com', 27, 1);
INSERT INTO public.contact_details VALUES ('olivia.gustafsson@example.com', 28, 1);
INSERT INTO public.contact_details VALUES ('william.nilsson@example.com', 29, 1);
INSERT INTO public.contact_details VALUES ('sophia.persson@example.com', 30, 1);
INSERT INTO public.contact_details VALUES ('james.olsson@example.com', 31, 1);
INSERT INTO public.contact_details VALUES ('isabella.lindberg@example.com', 32, 1);
INSERT INTO public.contact_details VALUES ('benjamin.andersson@example.com', 33, 1);
INSERT INTO public.contact_details VALUES ('mia.larsson@example.com', 34, 1);
INSERT INTO public.contact_details VALUES ('lucas.holm@example.com', 35, 1);
INSERT INTO public.contact_details VALUES ('charlotte.nilsson@example.com', 36, 1);
INSERT INTO public.contact_details VALUES ('henry.dahl@example.com', 37, 1);
INSERT INTO public.contact_details VALUES ('amelia.johansson@example.com', 38, 1);
INSERT INTO public.contact_details VALUES ('sebastian.eriksson@example.com', 39, 1);
INSERT INTO public.contact_details VALUES ('ava.lind@example.com', 40, 1);
INSERT INTO public.contact_details VALUES ('elijah.wallin@example.com', 41, 1);
INSERT INTO public.contact_details VALUES ('harper.svensson@example.com', 42, 1);
INSERT INTO public.contact_details VALUES ('daniel.olsson@example.com', 43, 1);
INSERT INTO public.contact_details VALUES ('evelyn.karlsson@example.com', 44, 1);
INSERT INTO public.contact_details VALUES ('matthew.berg@example.com', 45, 1);
INSERT INTO public.contact_details VALUES ('abigail.larsson@example.com', 46, 1);
INSERT INTO public.contact_details VALUES ('Storgatan 1, 12345 Stockholm, Sweden', 22, 2);
INSERT INTO public.contact_details VALUES ('Hantverkargatan 10, 11223 Stockholm, Sweden', 23, 2);
INSERT INTO public.contact_details VALUES ('Kungsgatan 3, 22334 Stockholm, Sweden', 24, 2);
INSERT INTO public.contact_details VALUES ('Västerlånggatan 5, 12345 Stockholm, Sweden', 25, 2);
INSERT INTO public.contact_details VALUES ('Östermalmstorg 2, 11450 Stockholm, Sweden', 26, 2);
INSERT INTO public.contact_details VALUES ('Götgatan 6, 11645 Stockholm, Sweden', 27, 2);
INSERT INTO public.contact_details VALUES ('Sankt Eriksgatan 12, 11234 Stockholm, Sweden', 28, 2);
INSERT INTO public.contact_details VALUES ('Torsgatan 15, 11356 Stockholm, Sweden', 29, 2);
INSERT INTO public.contact_details VALUES ('Vikingagatan 20, 11356 Stockholm, Sweden', 30, 2);
INSERT INTO public.contact_details VALUES ('Södra Förstadsgatan 10, 21143 Malmö, Sweden', 31, 2);
INSERT INTO public.contact_details VALUES ('Storgatan 3, 41120 Göteborg, Sweden', 32, 2);
INSERT INTO public.contact_details VALUES ('Hagagatan 14, 11347 Stockholm, Sweden', 33, 2);
INSERT INTO public.contact_details VALUES ('Björkgatan 2, 21632 Malmö, Sweden', 34, 2);
INSERT INTO public.contact_details VALUES ('Folkungagatan 7, 11662 Stockholm, Sweden', 35, 2);
INSERT INTO public.contact_details VALUES ('Sibyllegatan 6, 11442 Stockholm, Sweden', 36, 2);
INSERT INTO public.contact_details VALUES ('Drottninggatan 8, 11151 Stockholm, Sweden', 37, 2);
INSERT INTO public.contact_details VALUES ('Bohusgatan 3, 41318 Göteborg, Sweden', 38, 2);
INSERT INTO public.contact_details VALUES ('Västra Hamngatan 1, 41117 Göteborg, Sweden', 39, 2);
INSERT INTO public.contact_details VALUES ('Stora Nygatan 10, 11127 Stockholm, Sweden', 40, 2);
INSERT INTO public.contact_details VALUES ('Birkagatan 9, 11339 Stockholm, Sweden', 41, 2);
INSERT INTO public.contact_details VALUES ('Lilla Varvsgatan 12, 21175 Malmö, Sweden', 42, 2);
INSERT INTO public.contact_details VALUES ('Lilla Torg 3, 21134 Malmö, Sweden', 43, 2);
INSERT INTO public.contact_details VALUES ('Skånegatan 5, 21126 Malmö, Sweden', 44, 2);
INSERT INTO public.contact_details VALUES ('Skeppsbrokajen 4, 21120 Malmö, Sweden', 45, 2);
INSERT INTO public.contact_details VALUES ('Sjövägen 1, 22100 Lund, Sweden', 46, 2);
INSERT INTO public.contact_details VALUES ('0701234567', 22, 3);
INSERT INTO public.contact_details VALUES ('0702345678', 23, 3);
INSERT INTO public.contact_details VALUES ('0703456789', 24, 3);
INSERT INTO public.contact_details VALUES ('0704567890', 25, 3);
INSERT INTO public.contact_details VALUES ('0705678901', 26, 3);
INSERT INTO public.contact_details VALUES ('0706789012', 27, 3);
INSERT INTO public.contact_details VALUES ('0707890123', 28, 3);
INSERT INTO public.contact_details VALUES ('0708901234', 29, 3);
INSERT INTO public.contact_details VALUES ('0709012345', 30, 3);
INSERT INTO public.contact_details VALUES ('0700123456', 31, 3);
INSERT INTO public.contact_details VALUES ('0701231234', 32, 3);
INSERT INTO public.contact_details VALUES ('0702342345', 33, 3);
INSERT INTO public.contact_details VALUES ('0703453456', 34, 3);
INSERT INTO public.contact_details VALUES ('0704564567', 35, 3);
INSERT INTO public.contact_details VALUES ('0705675678', 36, 3);
INSERT INTO public.contact_details VALUES ('0706786789', 37, 3);
INSERT INTO public.contact_details VALUES ('0707897890', 38, 3);
INSERT INTO public.contact_details VALUES ('0708908901', 39, 3);
INSERT INTO public.contact_details VALUES ('0709019012', 40, 3);
INSERT INTO public.contact_details VALUES ('0700120123', 41, 3);
INSERT INTO public.contact_details VALUES ('0701231234', 42, 3);
INSERT INTO public.contact_details VALUES ('0702342345', 43, 3);
INSERT INTO public.contact_details VALUES ('0703453456', 44, 3);
INSERT INTO public.contact_details VALUES ('0704564567', 45, 3);
INSERT INTO public.contact_details VALUES ('0705675678', 46, 3);
INSERT INTO public.contact_details VALUES ('john.andersson@family.com', 22, 4);
INSERT INTO public.contact_details VALUES ('sara.eriksson@family.com', 23, 4);
INSERT INTO public.contact_details VALUES ('alice.johansson@family.com', 24, 4);
INSERT INTO public.contact_details VALUES ('bob.karlsson@family.com', 25, 4);
INSERT INTO public.contact_details VALUES ('emma.larsson@family.com', 26, 4);
INSERT INTO public.contact_details VALUES ('michael.svensson@family.com', 27, 4);
INSERT INTO public.contact_details VALUES ('olivia.gustafsson@family.com', 28, 4);
INSERT INTO public.contact_details VALUES ('william.nilsson@family.com', 29, 4);
INSERT INTO public.contact_details VALUES ('sophia.persson@family.com', 30, 4);
INSERT INTO public.contact_details VALUES ('james.olsson@family.com', 31, 4);
INSERT INTO public.contact_details VALUES ('isabella.lindberg@family.com', 32, 4);
INSERT INTO public.contact_details VALUES ('benjamin.andersson@family.com', 33, 4);
INSERT INTO public.contact_details VALUES ('mia.larsson@family.com', 34, 4);
INSERT INTO public.contact_details VALUES ('lucas.holm@family.com', 35, 4);
INSERT INTO public.contact_details VALUES ('charlotte.nilsson@family.com', 36, 4);
INSERT INTO public.contact_details VALUES ('henry.dahl@family.com', 37, 4);
INSERT INTO public.contact_details VALUES ('amelia.johansson@family.com', 38, 4);
INSERT INTO public.contact_details VALUES ('sebastian.eriksson@family.com', 39, 4);
INSERT INTO public.contact_details VALUES ('ava.lind@family.com', 40, 4);
INSERT INTO public.contact_details VALUES ('elijah.wallin@family.com', 41, 4);
INSERT INTO public.contact_details VALUES ('harper.svensson@family.com', 42, 4);
INSERT INTO public.contact_details VALUES ('daniel.olsson@family.com', 43, 4);
INSERT INTO public.contact_details VALUES ('evelyn.karlsson@family.com', 44, 4);
INSERT INTO public.contact_details VALUES ('matthew.berg@family.com', 45, 4);
INSERT INTO public.contact_details VALUES ('abigail.larsson@family.com', 46, 4);
INSERT INTO public.contact_details VALUES ('Storgatan 1, 12345', 22, 5);
INSERT INTO public.contact_details VALUES ('Hantverkargatan 10, 11223', 23, 5);
INSERT INTO public.contact_details VALUES ('Kungsgatan 3, 22334', 24, 5);
INSERT INTO public.contact_details VALUES ('Västerlånggatan 5, 12345', 25, 5);
INSERT INTO public.contact_details VALUES ('Östermalmstorg 2, 11450', 26, 5);
INSERT INTO public.contact_details VALUES ('Götgatan 6, 11645', 27, 5);
INSERT INTO public.contact_details VALUES ('Sankt Eriksgatan 12, 11234', 28, 5);
INSERT INTO public.contact_details VALUES ('Torsgatan 15, 11356', 29, 5);
INSERT INTO public.contact_details VALUES ('Vikingagatan 20, 11356', 30, 5);
INSERT INTO public.contact_details VALUES ('Södra Förstadsgatan 10, 21143', 31, 5);
INSERT INTO public.contact_details VALUES ('Storgatan 3, 41120', 32, 5);
INSERT INTO public.contact_details VALUES ('Hagagatan 14, 11347', 33, 5);
INSERT INTO public.contact_details VALUES ('Björkgatan 2, 21632', 34, 5);
INSERT INTO public.contact_details VALUES ('Folkungagatan 7, 11662', 35, 5);
INSERT INTO public.contact_details VALUES ('Sibyllegatan 6, 11442', 36, 5);
INSERT INTO public.contact_details VALUES ('Drottninggatan 8, 11151', 37, 5);
INSERT INTO public.contact_details VALUES ('Bohusgatan 3, 41318', 38, 5);
INSERT INTO public.contact_details VALUES ('Västra Hamngatan 1, 41117', 39, 5);
INSERT INTO public.contact_details VALUES ('Stora Nygatan 10, 11127', 40, 5);
INSERT INTO public.contact_details VALUES ('Birkagatan 9, 11339', 41, 5);
INSERT INTO public.contact_details VALUES ('Lilla Varvsgatan 12, 21175', 42, 5);
INSERT INTO public.contact_details VALUES ('Lilla Torg 3, 21134', 43, 5);
INSERT INTO public.contact_details VALUES ('Skånegatan 5, 21126', 44, 5);
INSERT INTO public.contact_details VALUES ('Skeppsbrokajen 4, 21120', 45, 5);
INSERT INTO public.contact_details VALUES ('Sjövägen 1, 22100', 46, 5);
INSERT INTO public.contact_details VALUES ('0701234567', 22, 6);
INSERT INTO public.contact_details VALUES ('0702345678', 23, 6);
INSERT INTO public.contact_details VALUES ('0703456789', 24, 6);
INSERT INTO public.contact_details VALUES ('0704567890', 25, 6);
INSERT INTO public.contact_details VALUES ('0705678901', 26, 6);
INSERT INTO public.contact_details VALUES ('0706789012', 27, 6);
INSERT INTO public.contact_details VALUES ('0707890123', 28, 6);
INSERT INTO public.contact_details VALUES ('0708901234', 29, 6);
INSERT INTO public.contact_details VALUES ('0709012345', 30, 6);
INSERT INTO public.contact_details VALUES ('0700123456', 31, 6);
INSERT INTO public.contact_details VALUES ('0701234567', 32, 6);
INSERT INTO public.contact_details VALUES ('0702345678', 33, 6);
INSERT INTO public.contact_details VALUES ('0703456789', 34, 6);
INSERT INTO public.contact_details VALUES ('0704567890', 35, 6);
INSERT INTO public.contact_details VALUES ('0705678901', 36, 6);
INSERT INTO public.contact_details VALUES ('0706789012', 37, 6);
INSERT INTO public.contact_details VALUES ('0707890123', 38, 6);
INSERT INTO public.contact_details VALUES ('0708901234', 39, 6);
INSERT INTO public.contact_details VALUES ('0709012345', 40, 6);
INSERT INTO public.contact_details VALUES ('0700123456', 41, 6);
INSERT INTO public.contact_details VALUES ('0701234567', 42, 6);
INSERT INTO public.contact_details VALUES ('0702345678', 43, 6);
INSERT INTO public.contact_details VALUES ('0703456789', 44, 6);


--
-- TOC entry 3804 (class 0 OID 16712)
-- Dependencies: 234
-- Data for Name: genre; Type: TABLE DATA; Schema: public; Owner: harry
--

INSERT INTO public.genre OVERRIDING SYSTEM VALUE VALUES (1, 'Classical');
INSERT INTO public.genre OVERRIDING SYSTEM VALUE VALUES (2, 'Jazz');
INSERT INTO public.genre OVERRIDING SYSTEM VALUE VALUES (3, 'Rock');
INSERT INTO public.genre OVERRIDING SYSTEM VALUE VALUES (4, 'Pop');
INSERT INTO public.genre OVERRIDING SYSTEM VALUE VALUES (5, 'Hip-Hop');
INSERT INTO public.genre OVERRIDING SYSTEM VALUE VALUES (6, 'Blues');
INSERT INTO public.genre OVERRIDING SYSTEM VALUE VALUES (7, 'Country');
INSERT INTO public.genre OVERRIDING SYSTEM VALUE VALUES (8, 'Electronic');
INSERT INTO public.genre OVERRIDING SYSTEM VALUE VALUES (9, 'Reggae');
INSERT INTO public.genre OVERRIDING SYSTEM VALUE VALUES (10, 'Folk');


--
-- TOC entry 3800 (class 0 OID 16652)
-- Dependencies: 230
-- Data for Name: instrument_type; Type: TABLE DATA; Schema: public; Owner: harry
--

INSERT INTO public.instrument_type OVERRIDING SYSTEM VALUE VALUES (1, 'Piano');
INSERT INTO public.instrument_type OVERRIDING SYSTEM VALUE VALUES (2, 'Guitar');
INSERT INTO public.instrument_type OVERRIDING SYSTEM VALUE VALUES (3, 'Violin');
INSERT INTO public.instrument_type OVERRIDING SYSTEM VALUE VALUES (4, 'Drums');
INSERT INTO public.instrument_type OVERRIDING SYSTEM VALUE VALUES (5, 'Flute');
INSERT INTO public.instrument_type OVERRIDING SYSTEM VALUE VALUES (6, 'Saxophone');
INSERT INTO public.instrument_type OVERRIDING SYSTEM VALUE VALUES (7, 'Trumpet');
INSERT INTO public.instrument_type OVERRIDING SYSTEM VALUE VALUES (8, 'Cello');
INSERT INTO public.instrument_type OVERRIDING SYSTEM VALUE VALUES (9, 'Clarinet');
INSERT INTO public.instrument_type OVERRIDING SYSTEM VALUE VALUES (10, 'Bass Guitar');


--
-- TOC entry 3806 (class 0 OID 16723)
-- Dependencies: 236
-- Data for Name: lesson_type; Type: TABLE DATA; Schema: public; Owner: harry
--

INSERT INTO public.lesson_type OVERRIDING SYSTEM VALUE VALUES (1, 'ensemble');
INSERT INTO public.lesson_type OVERRIDING SYSTEM VALUE VALUES (2, 'group');
INSERT INTO public.lesson_type OVERRIDING SYSTEM VALUE VALUES (3, 'individual');


--
-- TOC entry 3802 (class 0 OID 16658)
-- Dependencies: 232
-- Data for Name: skill_level; Type: TABLE DATA; Schema: public; Owner: harry
--

INSERT INTO public.skill_level OVERRIDING SYSTEM VALUE VALUES (1, 'Beginner');
INSERT INTO public.skill_level OVERRIDING SYSTEM VALUE VALUES (2, 'Intermediate');
INSERT INTO public.skill_level OVERRIDING SYSTEM VALUE VALUES (3, 'Advanced');


--
-- TOC entry 3798 (class 0 OID 16646)
-- Dependencies: 228
-- Data for Name: lesson; Type: TABLE DATA; Schema: public; Owner: harry
--



--
-- TOC entry 3789 (class 0 OID 16417)
-- Dependencies: 219
-- Data for Name: enrollment; Type: TABLE DATA; Schema: public; Owner: harry
--



--
-- TOC entry 3796 (class 0 OID 16553)
-- Dependencies: 226
-- Data for Name: fee; Type: TABLE DATA; Schema: public; Owner: harry
--



--
-- TOC entry 3807 (class 0 OID 16738)
-- Dependencies: 237
-- Data for Name: instructor_instrument; Type: TABLE DATA; Schema: public; Owner: harry
--



--
-- TOC entry 3792 (class 0 OID 16430)
-- Dependencies: 222
-- Data for Name: instruments; Type: TABLE DATA; Schema: public; Owner: harry
--



--
-- TOC entry 3793 (class 0 OID 16457)
-- Dependencies: 223
-- Data for Name: rentals; Type: TABLE DATA; Schema: public; Owner: harry
--



--
-- TOC entry 3790 (class 0 OID 16422)
-- Dependencies: 220
-- Data for Name: schedule; Type: TABLE DATA; Schema: public; Owner: harry
--

INSERT INTO public.schedule VALUES ('2024-01-01 10:00:00+01', '2024-01-01 11:00:00+01', 14);
INSERT INTO public.schedule VALUES ('2024-01-02 12:00:00+01', '2024-01-02 13:00:00+01', 15);
INSERT INTO public.schedule VALUES ('2024-01-03 15:00:00+01', '2024-01-03 16:00:00+01', 16);
INSERT INTO public.schedule VALUES ('2024-01-04 11:00:00+01', '2024-01-04 12:30:00+01', 17);
INSERT INTO public.schedule VALUES ('2024-01-05 14:00:00+01', '2024-01-05 15:30:00+01', 18);
INSERT INTO public.schedule VALUES ('2024-01-06 16:00:00+01', '2024-01-06 17:30:00+01', 19);
INSERT INTO public.schedule VALUES ('2024-01-07 10:00:00+01', '2024-01-07 11:00:00+01', 1);
INSERT INTO public.schedule VALUES ('2024-01-08 12:00:00+01', '2024-01-08 13:00:00+01', 2);
INSERT INTO public.schedule VALUES ('2024-01-09 14:00:00+01', '2024-01-09 15:00:00+01', 3);
INSERT INTO public.schedule VALUES ('2024-01-10 16:00:00+01', '2024-01-10 17:00:00+01', 4);
INSERT INTO public.schedule VALUES ('2024-01-11 11:00:00+01', '2024-01-11 12:00:00+01', 5);
INSERT INTO public.schedule VALUES ('2024-01-12 15:00:00+01', '2024-01-12 16:00:00+01', 6);
INSERT INTO public.schedule VALUES ('2024-01-13 17:00:00+01', '2024-01-13 18:00:00+01', 7);
INSERT INTO public.schedule VALUES ('2024-01-14 18:30:00+01', '2024-01-14 19:30:00+01', 8);
INSERT INTO public.schedule VALUES ('2024-01-15 10:00:00+01', '2024-01-15 11:30:00+01', 58);
INSERT INTO public.schedule VALUES ('2024-01-16 12:00:00+01', '2024-01-16 13:30:00+01', 59);
INSERT INTO public.schedule VALUES ('2024-01-17 15:00:00+01', '2024-01-17 16:30:00+01', 60);
INSERT INTO public.schedule VALUES ('2024-01-18 17:00:00+01', '2024-01-18 18:30:00+01', 61);
INSERT INTO public.schedule VALUES ('2024-01-19 11:00:00+01', '2024-01-19 12:30:00+01', 62);
INSERT INTO public.schedule VALUES ('2024-01-20 19:00:00+01', '2024-01-20 20:30:00+01', 63);


--
-- TOC entry 3795 (class 0 OID 16469)
-- Dependencies: 225
-- Data for Name: sibling; Type: TABLE DATA; Schema: public; Owner: harry
--



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


-- Completed on 2024-11-29 21:05:06 CET

--
-- PostgreSQL database dump complete
--

