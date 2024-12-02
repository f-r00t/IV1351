--
-- PostgreSQL database dump
--

-- Dumped from database version 17.1 (Postgres.app)
-- Dumped by pg_dump version 17.0

-- Started on 2024-12-02 22:25:58 CET

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
-- TOC entry 3815 (class 0 OID 16754)
-- Dependencies: 239
-- Data for Name: contact_type; Type: TABLE DATA; Schema: public; Owner: harry
--

INSERT INTO public.contact_type (contact_type_id, contact_type) OVERRIDING SYSTEM VALUE VALUES (1, 'email');
INSERT INTO public.contact_type (contact_type_id, contact_type) OVERRIDING SYSTEM VALUE VALUES (2, 'address');
INSERT INTO public.contact_type (contact_type_id, contact_type) OVERRIDING SYSTEM VALUE VALUES (3, 'phone');
INSERT INTO public.contact_type (contact_type_id, contact_type) OVERRIDING SYSTEM VALUE VALUES (4, 'contact_person_email');
INSERT INTO public.contact_type (contact_type_id, contact_type) OVERRIDING SYSTEM VALUE VALUES (5, 'contact_person_address');
INSERT INTO public.contact_type (contact_type_id, contact_type) OVERRIDING SYSTEM VALUE VALUES (6, 'contact_person_phone');
INSERT INTO public.contact_type (contact_type_id, contact_type) OVERRIDING SYSTEM VALUE VALUES (7, 'contact_person_name');


--
-- TOC entry 3817 (class 0 OID 16796)
-- Dependencies: 241
-- Data for Name: person_type; Type: TABLE DATA; Schema: public; Owner: harry
--

INSERT INTO public.person_type (person_type_id, person_type) OVERRIDING SYSTEM VALUE VALUES (1, 'instructor');
INSERT INTO public.person_type (person_type_id, person_type) OVERRIDING SYSTEM VALUE VALUES (2, 'student');
INSERT INTO public.person_type (person_type_id, person_type) OVERRIDING SYSTEM VALUE VALUES (3, 'administrator');


--
-- TOC entry 3794 (class 0 OID 16391)
-- Dependencies: 218
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: harry
--

INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (22, '192310121234', 'John Andersson', B'1', 1);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (23, '198705232345', 'Sara Eriksson', NULL, 2);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (24, '197603183456', 'Alice Johansson', NULL, 3);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (25, '195002254567', 'Bob Karlsson', B'0', 1);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (26, '200104125678', 'Emma Larsson', NULL, 2);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (27, '196712306789', 'Michael Svensson', B'1', 1);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (28, '198210051234', 'Olivia Gustafsson', NULL, 2);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (29, '195501171234', 'William Nilsson', NULL, 3);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (30, '200311213456', 'Sophia Persson', B'0', 1);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (31, '198905062345', 'James Olsson', NULL, 2);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (32, '197102251234', 'Isabella Lindberg', B'1', 1);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (33, '198410231234', 'Benjamin Andersson', NULL, 2);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (34, '197509182345', 'Mia Larsson', NULL, 3);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (35, '200510101234', 'Lucas Holm', B'0', 1);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (36, '196206052345', 'Charlotte Nilsson', NULL, 2);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (37, '198503151234', 'Henry Dahl', B'1', 1);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (38, '199711072345', 'Amelia Johansson', NULL, 2);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (39, '197906222345', 'Sebastian Eriksson', NULL, 3);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (40, '198409172345', 'Ava Lind', B'0', 1);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (41, '200604042345', 'Elijah Wallin', NULL, 2);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (42, '199508122345', 'Harper Svensson', B'1', 1);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (43, '198906072345', 'Daniel Olsson', NULL, 2);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (44, '200311212345', 'Evelyn Karlsson', NULL, 3);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (45, '197711282345', 'Matthew Berg', B'0', 1);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (46, '199801151234', 'Abigail Larsson', NULL, 2);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (47, '197501010001', 'Albus Dumbledore', B'1', 1);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (48, '198001010002', 'Minerva McGonagall', B'1', 1);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (49, '198501010003', 'Severus Snape', B'1', 1);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (50, '199001010004', 'Remus Lupin', B'1', 1);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (60, '199501010015', 'Charlie Weasley', B'1', 1);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (61, '199601010016', 'Percy Weasley', B'1', 1);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (62, '199701010017', 'Fred Weasley', B'1', 1);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (63, '199801010018', 'George Weasley', B'1', 1);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (64, '199901010019', 'Ginny Weasley', B'1', 1);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (65, '200001010020', 'Luna Lovegood', B'1', 1);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (66, '200101010021', 'Neville Longbottom', B'1', 1);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (67, '200201010022', 'Cho Chang', B'1', 1);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (68, '200301010023', 'Cedric Diggory', B'1', 1);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (69, '200401010024', 'Draco Malfoy', B'0', 1);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (70, '200501010025', 'Vincent Crabbe', B'0', 1);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (71, '200601010026', 'Gregory Goyle', B'0', 1);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (72, '200701010027', 'Pansy Parkinson', B'0', 1);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (73, '200801010028', 'Dean Thomas', B'1', 1);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (74, '200901010029', 'Seamus Finnigan', B'1', 1);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (75, '201001010030', 'Angelina Johnson', B'1', 1);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (76, '201101010031', 'Oliver Wood', B'1', 1);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (77, '201201010032', 'Katie Bell', B'1', 1);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (78, '201301010033', 'Alicia Spinnet', B'1', 1);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (79, '201401010034', 'Lee Jordan', B'1', 1);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (80, '201501010035', 'Fleur Delacour', B'1', 1);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (51, '198605232345', 'John Eriksson', NULL, 2);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (52, '198805232345', 'Anna Eriksson', NULL, 2);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (53, '198805062345', 'David Olsson', NULL, 2);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (54, '199005062345', 'Linda Olsson', NULL, 2);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (55, '199601151234', 'Peter Larsson', NULL, 2);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (56, '199301151234', 'Maria Larsson', NULL, 2);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (58, '199604231234', 'Peter Gustafsson', NULL, 2);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (59, '199301011234', 'Maria Andersson', NULL, 2);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (81, '200301022442', 'Dante Solender', NULL, 2);
INSERT INTO public.person (person_id, personal_number, name, teaches_ensamble, person_type) OVERRIDING SYSTEM VALUE VALUES (83, '200001021337', 'Stacy Solender', NULL, 2);


--
-- TOC entry 3800 (class 0 OID 16462)
-- Dependencies: 224
-- Data for Name: contact_details; Type: TABLE DATA; Schema: public; Owner: harry
--

INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('john.andersson@example.com', 22, 1);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Sara.Eriksson@example.com', 23, 1);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('alice.johansson@example.com', 24, 1);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('bob.karlsson@example.com', 25, 1);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('emma.larsson@example.com', 26, 1);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('michael.svensson@example.com', 27, 1);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('olivia.gustafsson@example.com', 28, 1);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('william.nilsson@example.com', 29, 1);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('sophia.persson@example.com', 30, 1);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('james.olsson@example.com', 31, 1);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('isabella.lindberg@example.com', 32, 1);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('benjamin.andersson@example.com', 33, 1);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('mia.larsson@example.com', 34, 1);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('lucas.holm@example.com', 35, 1);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('charlotte.nilsson@example.com', 36, 1);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('henry.dahl@example.com', 37, 1);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('amelia.johansson@example.com', 38, 1);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('sebastian.eriksson@example.com', 39, 1);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('ava.lind@example.com', 40, 1);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('elijah.wallin@example.com', 41, 1);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('harper.svensson@example.com', 42, 1);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('daniel.olsson@example.com', 43, 1);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('evelyn.karlsson@example.com', 44, 1);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('matthew.berg@example.com', 45, 1);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('abigail.larsson@example.com', 46, 1);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Storgatan 1, 12345 Stockholm, Sweden', 22, 2);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Hantverkargatan 10, 11223 Stockholm, Sweden', 23, 2);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Kungsgatan 3, 22334 Stockholm, Sweden', 24, 2);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Västerlånggatan 5, 12345 Stockholm, Sweden', 25, 2);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Östermalmstorg 2, 11450 Stockholm, Sweden', 26, 2);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Götgatan 6, 11645 Stockholm, Sweden', 27, 2);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Sankt Eriksgatan 12, 11234 Stockholm, Sweden', 28, 2);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Torsgatan 15, 11356 Stockholm, Sweden', 29, 2);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Vikingagatan 20, 11356 Stockholm, Sweden', 30, 2);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Södra Förstadsgatan 10, 21143 Malmö, Sweden', 31, 2);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Storgatan 3, 41120 Göteborg, Sweden', 32, 2);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Hagagatan 14, 11347 Stockholm, Sweden', 33, 2);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Björkgatan 2, 21632 Malmö, Sweden', 34, 2);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Folkungagatan 7, 11662 Stockholm, Sweden', 35, 2);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Sibyllegatan 6, 11442 Stockholm, Sweden', 36, 2);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Drottninggatan 8, 11151 Stockholm, Sweden', 37, 2);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Bohusgatan 3, 41318 Göteborg, Sweden', 38, 2);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Västra Hamngatan 1, 41117 Göteborg, Sweden', 39, 2);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Stora Nygatan 10, 11127 Stockholm, Sweden', 40, 2);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Birkagatan 9, 11339 Stockholm, Sweden', 41, 2);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Lilla Varvsgatan 12, 21175 Malmö, Sweden', 42, 2);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Lilla Torg 3, 21134 Malmö, Sweden', 43, 2);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Skånegatan 5, 21126 Malmö, Sweden', 44, 2);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Skeppsbrokajen 4, 21120 Malmö, Sweden', 45, 2);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Sjövägen 1, 22100 Lund, Sweden', 46, 2);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0701234567', 22, 3);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0702345678', 23, 3);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0703456789', 24, 3);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0704567890', 25, 3);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0705678901', 26, 3);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0706789012', 27, 3);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0707890123', 28, 3);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0708901234', 29, 3);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0709012345', 30, 3);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0700123456', 31, 3);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0701231234', 32, 3);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0702342345', 33, 3);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0703453456', 34, 3);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0704564567', 35, 3);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0705675678', 36, 3);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0706786789', 37, 3);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0707897890', 38, 3);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0708908901', 39, 3);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0709019012', 40, 3);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0700120123', 41, 3);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0701231234', 42, 3);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0702342345', 43, 3);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0703453456', 44, 3);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0704564567', 45, 3);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0705675678', 46, 3);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('john.andersson@family.com', 22, 4);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('sara.eriksson@family.com', 23, 4);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('alice.johansson@family.com', 24, 4);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('bob.karlsson@family.com', 25, 4);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('emma.larsson@family.com', 26, 4);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('michael.svensson@family.com', 27, 4);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('olivia.gustafsson@family.com', 28, 4);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('william.nilsson@family.com', 29, 4);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('sophia.persson@family.com', 30, 4);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('james.olsson@family.com', 31, 4);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('isabella.lindberg@family.com', 32, 4);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('benjamin.andersson@family.com', 33, 4);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('mia.larsson@family.com', 34, 4);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('lucas.holm@family.com', 35, 4);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('charlotte.nilsson@family.com', 36, 4);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('henry.dahl@family.com', 37, 4);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('amelia.johansson@family.com', 38, 4);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('sebastian.eriksson@family.com', 39, 4);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('ava.lind@family.com', 40, 4);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('elijah.wallin@family.com', 41, 4);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('harper.svensson@family.com', 42, 4);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('daniel.olsson@family.com', 43, 4);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('evelyn.karlsson@family.com', 44, 4);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('matthew.berg@family.com', 45, 4);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('abigail.larsson@family.com', 46, 4);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Storgatan 1, 12345', 22, 5);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Hantverkargatan 10, 11223', 23, 5);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Kungsgatan 3, 22334', 24, 5);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Västerlånggatan 5, 12345', 25, 5);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Östermalmstorg 2, 11450', 26, 5);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Götgatan 6, 11645', 27, 5);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Sankt Eriksgatan 12, 11234', 28, 5);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Torsgatan 15, 11356', 29, 5);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Vikingagatan 20, 11356', 30, 5);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Södra Förstadsgatan 10, 21143', 31, 5);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Storgatan 3, 41120', 32, 5);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Hagagatan 14, 11347', 33, 5);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Björkgatan 2, 21632', 34, 5);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Folkungagatan 7, 11662', 35, 5);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Sibyllegatan 6, 11442', 36, 5);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Drottninggatan 8, 11151', 37, 5);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Bohusgatan 3, 41318', 38, 5);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Västra Hamngatan 1, 41117', 39, 5);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Stora Nygatan 10, 11127', 40, 5);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Birkagatan 9, 11339', 41, 5);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Lilla Varvsgatan 12, 21175', 42, 5);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Lilla Torg 3, 21134', 43, 5);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Skånegatan 5, 21126', 44, 5);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Skeppsbrokajen 4, 21120', 45, 5);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('Sjövägen 1, 22100', 46, 5);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0701234567', 22, 6);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0702345678', 23, 6);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0703456789', 24, 6);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0704567890', 25, 6);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0705678901', 26, 6);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0706789012', 27, 6);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0707890123', 28, 6);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0708901234', 29, 6);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0709012345', 30, 6);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0700123456', 31, 6);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0701234567', 32, 6);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0702345678', 33, 6);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0703456789', 34, 6);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0704567890', 35, 6);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0705678901', 36, 6);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0706789012', 37, 6);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0707890123', 38, 6);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0708901234', 39, 6);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0709012345', 40, 6);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0700123456', 41, 6);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0701234567', 42, 6);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0702345678', 43, 6);
INSERT INTO public.contact_details (value, person_id, contact_type_id) VALUES ('0703456789', 44, 6);


--
-- TOC entry 3810 (class 0 OID 16712)
-- Dependencies: 234
-- Data for Name: genre; Type: TABLE DATA; Schema: public; Owner: harry
--

INSERT INTO public.genre (genre_id, genre) OVERRIDING SYSTEM VALUE VALUES (1, 'Classical');
INSERT INTO public.genre (genre_id, genre) OVERRIDING SYSTEM VALUE VALUES (2, 'Jazz');
INSERT INTO public.genre (genre_id, genre) OVERRIDING SYSTEM VALUE VALUES (3, 'Rock');
INSERT INTO public.genre (genre_id, genre) OVERRIDING SYSTEM VALUE VALUES (4, 'Pop');
INSERT INTO public.genre (genre_id, genre) OVERRIDING SYSTEM VALUE VALUES (5, 'Hip-Hop');
INSERT INTO public.genre (genre_id, genre) OVERRIDING SYSTEM VALUE VALUES (6, 'Blues');
INSERT INTO public.genre (genre_id, genre) OVERRIDING SYSTEM VALUE VALUES (7, 'Country');
INSERT INTO public.genre (genre_id, genre) OVERRIDING SYSTEM VALUE VALUES (8, 'Electronic');
INSERT INTO public.genre (genre_id, genre) OVERRIDING SYSTEM VALUE VALUES (9, 'Reggae');
INSERT INTO public.genre (genre_id, genre) OVERRIDING SYSTEM VALUE VALUES (10, 'Folk');


--
-- TOC entry 3806 (class 0 OID 16652)
-- Dependencies: 230
-- Data for Name: instrument_type; Type: TABLE DATA; Schema: public; Owner: harry
--

INSERT INTO public.instrument_type (instrument_id, type) OVERRIDING SYSTEM VALUE VALUES (1, 'Piano');
INSERT INTO public.instrument_type (instrument_id, type) OVERRIDING SYSTEM VALUE VALUES (2, 'Guitar');
INSERT INTO public.instrument_type (instrument_id, type) OVERRIDING SYSTEM VALUE VALUES (3, 'Violin');
INSERT INTO public.instrument_type (instrument_id, type) OVERRIDING SYSTEM VALUE VALUES (4, 'Drums');
INSERT INTO public.instrument_type (instrument_id, type) OVERRIDING SYSTEM VALUE VALUES (5, 'Flute');
INSERT INTO public.instrument_type (instrument_id, type) OVERRIDING SYSTEM VALUE VALUES (6, 'Saxophone');
INSERT INTO public.instrument_type (instrument_id, type) OVERRIDING SYSTEM VALUE VALUES (7, 'Trumpet');
INSERT INTO public.instrument_type (instrument_id, type) OVERRIDING SYSTEM VALUE VALUES (8, 'Cello');
INSERT INTO public.instrument_type (instrument_id, type) OVERRIDING SYSTEM VALUE VALUES (9, 'Clarinet');
INSERT INTO public.instrument_type (instrument_id, type) OVERRIDING SYSTEM VALUE VALUES (10, 'Bass Guitar');


--
-- TOC entry 3812 (class 0 OID 16723)
-- Dependencies: 236
-- Data for Name: lesson_type; Type: TABLE DATA; Schema: public; Owner: harry
--

INSERT INTO public.lesson_type (id, lesson_type) OVERRIDING SYSTEM VALUE VALUES (1, 'ensemble');
INSERT INTO public.lesson_type (id, lesson_type) OVERRIDING SYSTEM VALUE VALUES (2, 'group');
INSERT INTO public.lesson_type (id, lesson_type) OVERRIDING SYSTEM VALUE VALUES (3, 'individual');


--
-- TOC entry 3808 (class 0 OID 16658)
-- Dependencies: 232
-- Data for Name: skill_level; Type: TABLE DATA; Schema: public; Owner: harry
--

INSERT INTO public.skill_level (skill_type_id, skill_type) OVERRIDING SYSTEM VALUE VALUES (1, 'Beginner');
INSERT INTO public.skill_level (skill_type_id, skill_type) OVERRIDING SYSTEM VALUE VALUES (2, 'Intermediate');
INSERT INTO public.skill_level (skill_type_id, skill_type) OVERRIDING SYSTEM VALUE VALUES (3, 'Advanced');


--
-- TOC entry 3804 (class 0 OID 16646)
-- Dependencies: 228
-- Data for Name: lesson; Type: TABLE DATA; Schema: public; Owner: harry
--

INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (2, 1, 8, 4, 23, NULL, 2, 1);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (3, 2, 6, 3, 24, NULL, 3, 2);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (5, 3, 8, 4, 26, NULL, 2, 2);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (6, 4, 6, 3, 27, NULL, 3, 3);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (8, 5, 8, 4, 29, NULL, 2, 2);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (14, 6, 6, 3, 30, NULL, 3, 3);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (16, 5, 8, 4, 32, NULL, 2, 2);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (17, 4, 6, 3, 33, NULL, 3, 3);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (19, 3, 8, 4, 35, NULL, 2, 2);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (22, 2, 8, 4, 47, NULL, 2, 1);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (23, 1, 6, 3, 48, NULL, 3, 2);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (25, 5, 8, 4, 49, NULL, 2, 2);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (26, 6, 6, 3, 49, NULL, 3, 3);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (28, 7, 8, 4, 50, NULL, 2, 2);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (58, 8, 6, 3, 36, NULL, 3, 3);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (60, 9, 8, 4, 38, NULL, 2, 2);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (61, 10, 6, 3, 39, NULL, 3, 3);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (63, 4, 8, 4, 41, NULL, 2, 2);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (74, 3, 8, 4, 61, NULL, 2, 1);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (75, 2, 6, 3, 62, NULL, 3, 2);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (77, 1, 10, 5, 64, NULL, 2, 2);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (78, 3, 8, 4, 65, NULL, 3, 3);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (80, 5, 8, 4, 67, NULL, 2, 2);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (81, 6, 6, 3, 68, NULL, 3, 3);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (83, 7, 10, 5, 70, NULL, 2, 1);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (84, 8, 8, 4, 71, NULL, 3, 2);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (86, 3, 8, 4, 73, NULL, 2, 2);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (87, 2, 6, 3, 74, NULL, 3, 3);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (89, 1, 10, 5, 76, NULL, 2, 2);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (90, 2, 8, 4, 77, NULL, 3, 3);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (92, 3, 8, 4, 79, NULL, 2, 1);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (93, 4, 6, 3, 80, NULL, 3, 2);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (1, NULL, 3, 1, 22, 1, 1, 1);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (4, NULL, 3, 1, 25, 2, 1, 1);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (7, NULL, 10, 5, 28, 3, 1, 1);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (15, NULL, 10, 5, 31, 4, 1, 1);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (18, NULL, 10, 5, 34, 5, 1, 1);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (21, NULL, 10, 5, 47, 6, 1, 1);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (24, NULL, 10, 5, 48, 7, 1, 1);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (27, NULL, 10, 5, 50, 8, 1, 1);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (59, NULL, 10, 5, 37, 9, 1, 1);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (62, NULL, 10, 5, 40, 1, 1, 1);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (73, NULL, 10, 5, 60, 2, 1, 1);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (76, NULL, 12, 6, 63, 3, 1, 1);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (79, NULL, 10, 5, 66, 4, 1, 1);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (82, NULL, 12, 6, 69, 5, 1, 1);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (85, NULL, 10, 5, 72, 6, 1, 1);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (88, NULL, 12, 6, 75, 7, 1, 1);
INSERT INTO public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) OVERRIDING SYSTEM VALUE VALUES (91, NULL, 10, 5, 78, 8, 1, 1);


--
-- TOC entry 3795 (class 0 OID 16417)
-- Dependencies: 219
-- Data for Name: enrollment; Type: TABLE DATA; Schema: public; Owner: harry
--

INSERT INTO public.enrollment (person_id, lesson_id) VALUES (23, 1);
INSERT INTO public.enrollment (person_id, lesson_id) VALUES (26, 2);
INSERT INTO public.enrollment (person_id, lesson_id) VALUES (28, 3);
INSERT INTO public.enrollment (person_id, lesson_id) VALUES (31, 4);
INSERT INTO public.enrollment (person_id, lesson_id) VALUES (23, 5);
INSERT INTO public.enrollment (person_id, lesson_id) VALUES (26, 6);
INSERT INTO public.enrollment (person_id, lesson_id) VALUES (23, 73);
INSERT INTO public.enrollment (person_id, lesson_id) VALUES (24, 74);
INSERT INTO public.enrollment (person_id, lesson_id) VALUES (25, 75);
INSERT INTO public.enrollment (person_id, lesson_id) VALUES (26, 76);
INSERT INTO public.enrollment (person_id, lesson_id) VALUES (27, 77);
INSERT INTO public.enrollment (person_id, lesson_id) VALUES (28, 78);
INSERT INTO public.enrollment (person_id, lesson_id) VALUES (29, 79);
INSERT INTO public.enrollment (person_id, lesson_id) VALUES (30, 80);
INSERT INTO public.enrollment (person_id, lesson_id) VALUES (31, 81);
INSERT INTO public.enrollment (person_id, lesson_id) VALUES (32, 82);
INSERT INTO public.enrollment (person_id, lesson_id) VALUES (33, 83);
INSERT INTO public.enrollment (person_id, lesson_id) VALUES (34, 84);
INSERT INTO public.enrollment (person_id, lesson_id) VALUES (26, 1);
INSERT INTO public.enrollment (person_id, lesson_id) VALUES (28, 1);


--
-- TOC entry 3802 (class 0 OID 16553)
-- Dependencies: 226
-- Data for Name: fee; Type: TABLE DATA; Schema: public; Owner: harry
--

INSERT INTO public.fee (start_date, fee, lesson_type, skill_level) VALUES ('2024-12-01 10:00:00+01', 60, 1, 1);
INSERT INTO public.fee (start_date, fee, lesson_type, skill_level) VALUES ('2024-12-01 10:00:00+01', 75, 1, 2);
INSERT INTO public.fee (start_date, fee, lesson_type, skill_level) VALUES ('2024-12-01 10:00:00+01', 100, 1, 3);
INSERT INTO public.fee (start_date, fee, lesson_type, skill_level) VALUES ('2024-12-01 10:00:00+01', 40, 2, 1);
INSERT INTO public.fee (start_date, fee, lesson_type, skill_level) VALUES ('2024-12-01 10:00:00+01', 50, 2, 2);
INSERT INTO public.fee (start_date, fee, lesson_type, skill_level) VALUES ('2024-12-01 10:00:00+01', 60, 2, 3);
INSERT INTO public.fee (start_date, fee, lesson_type, skill_level) VALUES ('2024-12-01 10:00:00+01', 50, 3, 1);
INSERT INTO public.fee (start_date, fee, lesson_type, skill_level) VALUES ('2024-12-01 10:00:00+01', 65, 3, 2);
INSERT INTO public.fee (start_date, fee, lesson_type, skill_level) VALUES ('2024-12-01 10:00:00+01', 80, 3, 3);
INSERT INTO public.fee (start_date, fee, lesson_type, skill_level) VALUES ('2024-12-31 10:00:00+01', 65, 1, 1);
INSERT INTO public.fee (start_date, fee, lesson_type, skill_level) VALUES ('2024-12-31 10:00:00+01', 80, 1, 2);
INSERT INTO public.fee (start_date, fee, lesson_type, skill_level) VALUES ('2024-12-31 10:00:00+01', 105, 1, 3);
INSERT INTO public.fee (start_date, fee, lesson_type, skill_level) VALUES ('2024-12-31 10:00:00+01', 45, 2, 1);
INSERT INTO public.fee (start_date, fee, lesson_type, skill_level) VALUES ('2024-12-31 10:00:00+01', 55, 2, 2);
INSERT INTO public.fee (start_date, fee, lesson_type, skill_level) VALUES ('2024-12-31 10:00:00+01', 65, 2, 3);
INSERT INTO public.fee (start_date, fee, lesson_type, skill_level) VALUES ('2024-12-31 10:00:00+01', 55, 3, 1);
INSERT INTO public.fee (start_date, fee, lesson_type, skill_level) VALUES ('2024-12-31 10:00:00+01', 70, 3, 2);
INSERT INTO public.fee (start_date, fee, lesson_type, skill_level) VALUES ('2024-12-31 10:00:00+01', 85, 3, 3);


--
-- TOC entry 3818 (class 0 OID 16979)
-- Dependencies: 242
-- Data for Name: historical_lessons; Type: TABLE DATA; Schema: public; Owner: harry
--

INSERT INTO public.historical_lessons (lesson_id, start_time, lesson_type, genre, instrument, lesson_price, student_name, student_email) VALUES (74, '2025-01-05 11:00:00+01', 'Group', NULL, 'Violin', 45.00, 'Alice Johansson', 'alice.johansson@example.com');
INSERT INTO public.historical_lessons (lesson_id, start_time, lesson_type, genre, instrument, lesson_price, student_name, student_email) VALUES (75, '2025-01-07 14:00:00+01', 'Individual', NULL, 'Guitar', 70.00, 'Bob Karlsson', 'bob.karlsson@example.com');
INSERT INTO public.historical_lessons (lesson_id, start_time, lesson_type, genre, instrument, lesson_price, student_name, student_email) VALUES (77, '2025-02-02 09:30:00+01', 'Group', NULL, 'Piano', 55.00, 'Michael Svensson', 'michael.svensson@example.com');
INSERT INTO public.historical_lessons (lesson_id, start_time, lesson_type, genre, instrument, lesson_price, student_name, student_email) VALUES (78, '2025-02-06 13:00:00+01', 'Individual', NULL, 'Violin', 85.00, 'Olivia Gustafsson', 'olivia.gustafsson@example.com');
INSERT INTO public.historical_lessons (lesson_id, start_time, lesson_type, genre, instrument, lesson_price, student_name, student_email) VALUES (80, '2025-02-12 10:00:00+01', 'Group', NULL, 'Flute', 55.00, 'Sophia Persson', 'sophia.persson@example.com');
INSERT INTO public.historical_lessons (lesson_id, start_time, lesson_type, genre, instrument, lesson_price, student_name, student_email) VALUES (81, '2025-03-01 09:00:00+01', 'Individual', NULL, 'Saxophone', 85.00, 'James Olsson', 'james.olsson@example.com');
INSERT INTO public.historical_lessons (lesson_id, start_time, lesson_type, genre, instrument, lesson_price, student_name, student_email) VALUES (83, '2025-03-08 15:30:00+01', 'Group', NULL, 'Trumpet', 45.00, 'Benjamin Andersson', 'benjamin.andersson@example.com');
INSERT INTO public.historical_lessons (lesson_id, start_time, lesson_type, genre, instrument, lesson_price, student_name, student_email) VALUES (84, '2025-03-11 14:00:00+01', 'Individual', NULL, 'Cello', 70.00, 'Mia Larsson', 'mia.larsson@example.com');
INSERT INTO public.historical_lessons (lesson_id, start_time, lesson_type, genre, instrument, lesson_price, student_name, student_email) VALUES (1, '2024-12-09 10:00:00+01', 'Ensemble', 'Classical', NULL, 60.00, 'Olivia Gustafsson', 'olivia.gustafsson@example.com');
INSERT INTO public.historical_lessons (lesson_id, start_time, lesson_type, genre, instrument, lesson_price, student_name, student_email) VALUES (1, '2024-12-09 10:00:00+01', 'Ensemble', 'Classical', NULL, 60.00, 'Emma Larsson', 'emma.larsson@example.com');
INSERT INTO public.historical_lessons (lesson_id, start_time, lesson_type, genre, instrument, lesson_price, student_name, student_email) VALUES (1, '2024-12-09 10:00:00+01', 'Ensemble', 'Classical', NULL, 60.00, 'Sara Eriksson', 'Sara.Eriksson@example.com');
INSERT INTO public.historical_lessons (lesson_id, start_time, lesson_type, genre, instrument, lesson_price, student_name, student_email) VALUES (4, '2024-12-10 12:00:00+01', 'Ensemble', 'Jazz', NULL, 60.00, 'James Olsson', 'james.olsson@example.com');
INSERT INTO public.historical_lessons (lesson_id, start_time, lesson_type, genre, instrument, lesson_price, student_name, student_email) VALUES (73, '2025-01-03 09:00:00+01', 'Ensemble', 'Jazz', NULL, 65.00, 'Sara Eriksson', 'Sara.Eriksson@example.com');
INSERT INTO public.historical_lessons (lesson_id, start_time, lesson_type, genre, instrument, lesson_price, student_name, student_email) VALUES (76, '2025-01-09 16:00:00+01', 'Ensemble', 'Rock', NULL, 65.00, 'Emma Larsson', 'emma.larsson@example.com');
INSERT INTO public.historical_lessons (lesson_id, start_time, lesson_type, genre, instrument, lesson_price, student_name, student_email) VALUES (79, '2025-02-10 15:00:00+01', 'Ensemble', 'Pop', NULL, 65.00, 'William Nilsson', 'william.nilsson@example.com');
INSERT INTO public.historical_lessons (lesson_id, start_time, lesson_type, genre, instrument, lesson_price, student_name, student_email) VALUES (82, '2025-03-05 12:00:00+01', 'Ensemble', 'Hip-Hop', NULL, 65.00, 'Isabella Lindberg', 'isabella.lindberg@example.com');


--
-- TOC entry 3813 (class 0 OID 16738)
-- Dependencies: 237
-- Data for Name: instructor_instrument; Type: TABLE DATA; Schema: public; Owner: harry
--



--
-- TOC entry 3798 (class 0 OID 16430)
-- Dependencies: 222
-- Data for Name: instruments; Type: TABLE DATA; Schema: public; Owner: harry
--



--
-- TOC entry 3799 (class 0 OID 16457)
-- Dependencies: 223
-- Data for Name: rentals; Type: TABLE DATA; Schema: public; Owner: harry
--



--
-- TOC entry 3796 (class 0 OID 16422)
-- Dependencies: 220
-- Data for Name: schedule; Type: TABLE DATA; Schema: public; Owner: harry
--

INSERT INTO public.schedule (starttime, endtime, lesson_id) VALUES ('2024-12-01 10:00:00+01', '2024-12-01 11:00:00+01', 21);
INSERT INTO public.schedule (starttime, endtime, lesson_id) VALUES ('2024-12-02 12:00:00+01', '2024-12-02 13:00:00+01', 22);
INSERT INTO public.schedule (starttime, endtime, lesson_id) VALUES ('2024-12-03 15:00:00+01', '2024-12-03 16:00:00+01', 23);
INSERT INTO public.schedule (starttime, endtime, lesson_id) VALUES ('2024-12-04 11:00:00+01', '2024-12-04 12:30:00+01', 24);
INSERT INTO public.schedule (starttime, endtime, lesson_id) VALUES ('2024-12-05 14:00:00+01', '2024-12-05 15:30:00+01', 25);
INSERT INTO public.schedule (starttime, endtime, lesson_id) VALUES ('2024-12-06 16:00:00+01', '2024-12-06 17:30:00+01', 26);
INSERT INTO public.schedule (starttime, endtime, lesson_id) VALUES ('2024-12-07 10:00:00+01', '2024-12-07 11:00:00+01', 27);
INSERT INTO public.schedule (starttime, endtime, lesson_id) VALUES ('2024-12-08 12:00:00+01', '2024-12-08 13:00:00+01', 28);
INSERT INTO public.schedule (starttime, endtime, lesson_id) VALUES ('2025-01-03 09:00:00+01', '2025-01-03 10:30:00+01', 73);
INSERT INTO public.schedule (starttime, endtime, lesson_id) VALUES ('2025-01-05 11:00:00+01', '2025-01-05 12:30:00+01', 74);
INSERT INTO public.schedule (starttime, endtime, lesson_id) VALUES ('2025-01-07 14:00:00+01', '2025-01-07 15:30:00+01', 75);
INSERT INTO public.schedule (starttime, endtime, lesson_id) VALUES ('2025-01-09 16:00:00+01', '2025-01-09 17:30:00+01', 76);
INSERT INTO public.schedule (starttime, endtime, lesson_id) VALUES ('2025-02-02 09:30:00+01', '2025-02-02 11:00:00+01', 77);
INSERT INTO public.schedule (starttime, endtime, lesson_id) VALUES ('2025-02-06 13:00:00+01', '2025-02-06 14:30:00+01', 78);
INSERT INTO public.schedule (starttime, endtime, lesson_id) VALUES ('2025-02-10 15:00:00+01', '2025-02-10 16:30:00+01', 79);
INSERT INTO public.schedule (starttime, endtime, lesson_id) VALUES ('2025-02-12 10:00:00+01', '2025-02-12 11:30:00+01', 80);
INSERT INTO public.schedule (starttime, endtime, lesson_id) VALUES ('2025-03-01 09:00:00+01', '2025-03-01 10:30:00+01', 81);
INSERT INTO public.schedule (starttime, endtime, lesson_id) VALUES ('2025-03-05 12:00:00+01', '2025-03-05 13:30:00+01', 82);
INSERT INTO public.schedule (starttime, endtime, lesson_id) VALUES ('2025-03-08 15:30:00+01', '2025-03-08 17:00:00+01', 83);
INSERT INTO public.schedule (starttime, endtime, lesson_id) VALUES ('2025-03-11 14:00:00+01', '2025-03-11 15:30:00+01', 84);
INSERT INTO public.schedule (starttime, endtime, lesson_id) VALUES ('2024-12-09 10:00:00+01', '2024-12-09 11:00:00+01', 1);
INSERT INTO public.schedule (starttime, endtime, lesson_id) VALUES ('2024-12-10 12:00:00+01', '2024-12-10 13:30:00+01', 4);
INSERT INTO public.schedule (starttime, endtime, lesson_id) VALUES ('2024-12-11 16:00:00+01', '2024-12-11 17:30:00+01', 7);
INSERT INTO public.schedule (starttime, endtime, lesson_id) VALUES ('2024-12-12 11:00:00+01', '2024-12-12 12:30:00+01', 15);
INSERT INTO public.schedule (starttime, endtime, lesson_id) VALUES ('2024-12-13 13:00:00+01', '2024-12-13 14:30:00+01', 18);


--
-- TOC entry 3801 (class 0 OID 16469)
-- Dependencies: 225
-- Data for Name: sibling; Type: TABLE DATA; Schema: public; Owner: harry
--

INSERT INTO public.sibling (person_id, sibling) VALUES (33, 59);
INSERT INTO public.sibling (person_id, sibling) VALUES (59, 33);
INSERT INTO public.sibling (person_id, sibling) VALUES (28, 58);
INSERT INTO public.sibling (person_id, sibling) VALUES (58, 28);
INSERT INTO public.sibling (person_id, sibling) VALUES (23, 51);
INSERT INTO public.sibling (person_id, sibling) VALUES (23, 52);
INSERT INTO public.sibling (person_id, sibling) VALUES (51, 23);
INSERT INTO public.sibling (person_id, sibling) VALUES (51, 52);
INSERT INTO public.sibling (person_id, sibling) VALUES (52, 23);
INSERT INTO public.sibling (person_id, sibling) VALUES (52, 51);
INSERT INTO public.sibling (person_id, sibling) VALUES (26, 46);
INSERT INTO public.sibling (person_id, sibling) VALUES (26, 55);
INSERT INTO public.sibling (person_id, sibling) VALUES (26, 56);
INSERT INTO public.sibling (person_id, sibling) VALUES (46, 26);
INSERT INTO public.sibling (person_id, sibling) VALUES (46, 55);
INSERT INTO public.sibling (person_id, sibling) VALUES (46, 56);
INSERT INTO public.sibling (person_id, sibling) VALUES (55, 26);
INSERT INTO public.sibling (person_id, sibling) VALUES (55, 46);
INSERT INTO public.sibling (person_id, sibling) VALUES (55, 56);
INSERT INTO public.sibling (person_id, sibling) VALUES (56, 26);
INSERT INTO public.sibling (person_id, sibling) VALUES (56, 46);
INSERT INTO public.sibling (person_id, sibling) VALUES (56, 55);


--
-- TOC entry 3824 (class 0 OID 0)
-- Dependencies: 238
-- Name: contact_type_contact_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: harry
--

SELECT pg_catalog.setval('public.contact_type_contact_type_id_seq', 7, true);


--
-- TOC entry 3825 (class 0 OID 0)
-- Dependencies: 233
-- Name: genre_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: harry
--

SELECT pg_catalog.setval('public.genre_genre_id_seq', 10, true);


--
-- TOC entry 3826 (class 0 OID 0)
-- Dependencies: 229
-- Name: instrument_type_instrument_id_seq; Type: SEQUENCE SET; Schema: public; Owner: harry
--

SELECT pg_catalog.setval('public.instrument_type_instrument_id_seq', 10, true);


--
-- TOC entry 3827 (class 0 OID 0)
-- Dependencies: 221
-- Name: instruments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: harry
--

SELECT pg_catalog.setval('public.instruments_id_seq', 20, true);


--
-- TOC entry 3828 (class 0 OID 0)
-- Dependencies: 227
-- Name: lesson_lesson_id_seq; Type: SEQUENCE SET; Schema: public; Owner: harry
--

SELECT pg_catalog.setval('public.lesson_lesson_id_seq', 1, false);


--
-- TOC entry 3829 (class 0 OID 0)
-- Dependencies: 235
-- Name: lesson_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: harry
--

SELECT pg_catalog.setval('public.lesson_type_id_seq', 3, true);


--
-- TOC entry 3830 (class 0 OID 0)
-- Dependencies: 217
-- Name: person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: harry
--

SELECT pg_catalog.setval('public.person_id_seq', 83, true);


--
-- TOC entry 3831 (class 0 OID 0)
-- Dependencies: 240
-- Name: person_type_person_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: harry
--

SELECT pg_catalog.setval('public.person_type_person_type_id_seq', 3, true);


--
-- TOC entry 3832 (class 0 OID 0)
-- Dependencies: 231
-- Name: skill_level_skill_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: harry
--

SELECT pg_catalog.setval('public.skill_level_skill_type_id_seq', 3, true);


-- Completed on 2024-12-02 22:25:58 CET

--
-- PostgreSQL database dump complete
--

