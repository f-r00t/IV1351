--
-- PostgreSQL database dump
--

-- Dumped from database version 17.1 (Postgres.app)
-- Dumped by pg_dump version 17.0

-- Started on 2024-12-02 22:24:45 CET

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
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA public;


--
-- TOC entry 224 (class 1259 OID 16462)
-- Name: contact_details; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.contact_details (
    value character varying(100) NOT NULL,
    person_id integer NOT NULL,
    contact_type_id integer NOT NULL
);


--
-- TOC entry 239 (class 1259 OID 16754)
-- Name: contact_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.contact_type (
    contact_type_id integer NOT NULL,
    contact_type character varying(100) NOT NULL
);


--
-- TOC entry 238 (class 1259 OID 16753)
-- Name: contact_type_contact_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.contact_type ALTER COLUMN contact_type_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.contact_type_contact_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 219 (class 1259 OID 16417)
-- Name: enrollment; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.enrollment (
    person_id integer NOT NULL,
    lesson_id integer NOT NULL
);


--
-- TOC entry 226 (class 1259 OID 16553)
-- Name: fee; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fee (
    start_date timestamp(6) with time zone NOT NULL,
    fee double precision NOT NULL,
    lesson_type integer NOT NULL,
    skill_level integer NOT NULL
);


--
-- TOC entry 234 (class 1259 OID 16712)
-- Name: genre; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.genre (
    genre_id integer NOT NULL,
    genre character varying(100) NOT NULL
);


--
-- TOC entry 233 (class 1259 OID 16711)
-- Name: genre_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.genre ALTER COLUMN genre_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.genre_genre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 242 (class 1259 OID 16979)
-- Name: historical_lessons; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.historical_lessons (
    lesson_id integer NOT NULL,
    start_time timestamp with time zone NOT NULL,
    lesson_type character varying(50) NOT NULL,
    genre character varying(50),
    instrument character varying(50),
    lesson_price numeric(10,2) NOT NULL,
    student_name character varying(100) NOT NULL,
    student_email character varying(100) NOT NULL
);


--
-- TOC entry 237 (class 1259 OID 16738)
-- Name: instructor_instrument; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.instructor_instrument (
    person_id integer NOT NULL,
    instrument_id integer NOT NULL
);


--
-- TOC entry 230 (class 1259 OID 16652)
-- Name: instrument_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.instrument_type (
    instrument_id integer NOT NULL,
    type character varying(100) NOT NULL
);


--
-- TOC entry 229 (class 1259 OID 16651)
-- Name: instrument_type_instrument_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.instrument_type ALTER COLUMN instrument_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.instrument_type_instrument_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 222 (class 1259 OID 16430)
-- Name: instruments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.instruments (
    instrument_id integer NOT NULL,
    brand character varying(100) NOT NULL,
    fee double precision NOT NULL,
    rented bit(1) NOT NULL,
    instrument_type integer NOT NULL
);


--
-- TOC entry 221 (class 1259 OID 16429)
-- Name: instruments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.instruments ALTER COLUMN instrument_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.instruments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 228 (class 1259 OID 16646)
-- Name: lesson; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.lesson (
    lesson_id integer NOT NULL,
    instrument_type integer,
    max_students integer,
    min_students integer,
    person_id integer NOT NULL,
    genre integer,
    lesson_type integer NOT NULL,
    skill_level integer
);


--
-- TOC entry 227 (class 1259 OID 16645)
-- Name: lesson_lesson_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.lesson ALTER COLUMN lesson_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.lesson_lesson_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 236 (class 1259 OID 16723)
-- Name: lesson_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.lesson_type (
    id integer NOT NULL,
    lesson_type character varying(100) NOT NULL
);


--
-- TOC entry 235 (class 1259 OID 16722)
-- Name: lesson_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.lesson_type ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.lesson_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 218 (class 1259 OID 16391)
-- Name: person; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.person (
    person_id integer NOT NULL,
    personal_number character(12) NOT NULL,
    name character varying(100) NOT NULL,
    teaches_ensamble bit(1),
    person_type integer NOT NULL
);


--
-- TOC entry 217 (class 1259 OID 16390)
-- Name: person_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.person ALTER COLUMN person_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 241 (class 1259 OID 16796)
-- Name: person_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.person_type (
    person_type_id integer NOT NULL,
    person_type character varying(100) NOT NULL
);


--
-- TOC entry 240 (class 1259 OID 16795)
-- Name: person_type_person_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.person_type ALTER COLUMN person_type_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.person_type_person_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 223 (class 1259 OID 16457)
-- Name: rentals; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.rentals (
    start_time timestamp(6) with time zone NOT NULL,
    end_time timestamp(6) with time zone,
    person_id integer NOT NULL,
    instrument_id integer NOT NULL
);


--
-- TOC entry 220 (class 1259 OID 16422)
-- Name: schedule; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.schedule (
    starttime timestamp with time zone NOT NULL,
    endtime timestamp with time zone NOT NULL,
    lesson_id integer NOT NULL
);


--
-- TOC entry 225 (class 1259 OID 16469)
-- Name: sibling; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sibling (
    person_id integer NOT NULL,
    sibling integer NOT NULL
);


--
-- TOC entry 232 (class 1259 OID 16658)
-- Name: skill_level; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.skill_level (
    skill_type_id integer NOT NULL,
    skill_type character varying(100) NOT NULL
);


--
-- TOC entry 231 (class 1259 OID 16657)
-- Name: skill_level_skill_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.skill_level ALTER COLUMN skill_type_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.skill_level_skill_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3603 (class 2606 OID 16760)
-- Name: contact_details contact_details_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contact_details
    ADD CONSTRAINT contact_details_pkey PRIMARY KEY (contact_type_id, person_id);


--
-- TOC entry 3623 (class 2606 OID 16758)
-- Name: contact_type contact_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contact_type
    ADD CONSTRAINT contact_type_pkey PRIMARY KEY (contact_type_id);


--
-- TOC entry 3595 (class 2606 OID 16680)
-- Name: enrollment enrollment_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.enrollment
    ADD CONSTRAINT enrollment_pkey PRIMARY KEY (person_id, lesson_id);


--
-- TOC entry 3607 (class 2606 OID 16784)
-- Name: fee fee_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fee
    ADD CONSTRAINT fee_pkey PRIMARY KEY (start_date, lesson_type, skill_level);


--
-- TOC entry 3617 (class 2606 OID 16716)
-- Name: genre genre_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (genre_id);


--
-- TOC entry 3627 (class 2606 OID 16983)
-- Name: historical_lessons historical_lessons_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.historical_lessons
    ADD CONSTRAINT historical_lessons_pkey PRIMARY KEY (lesson_id, start_time, lesson_type, student_email);


--
-- TOC entry 3621 (class 2606 OID 16742)
-- Name: instructor_instrument instructor_instrument_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.instructor_instrument
    ADD CONSTRAINT instructor_instrument_pkey PRIMARY KEY (person_id, instrument_id);


--
-- TOC entry 3613 (class 2606 OID 16656)
-- Name: instrument_type instrument_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.instrument_type
    ADD CONSTRAINT instrument_type_pkey PRIMARY KEY (instrument_id);


--
-- TOC entry 3599 (class 2606 OID 16436)
-- Name: instruments instruments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.instruments
    ADD CONSTRAINT instruments_pkey PRIMARY KEY (instrument_id);


--
-- TOC entry 3609 (class 2606 OID 16676)
-- Name: lesson lesson_id; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lesson
    ADD CONSTRAINT lesson_id UNIQUE (lesson_id);


--
-- TOC entry 3611 (class 2606 OID 16650)
-- Name: lesson lesson_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lesson
    ADD CONSTRAINT lesson_pkey PRIMARY KEY (lesson_id);


--
-- TOC entry 3619 (class 2606 OID 16727)
-- Name: lesson_type lesson_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lesson_type
    ADD CONSTRAINT lesson_type_pkey PRIMARY KEY (id);


--
-- TOC entry 3591 (class 2606 OID 16395)
-- Name: person person_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (person_id);


--
-- TOC entry 3625 (class 2606 OID 16800)
-- Name: person_type person_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.person_type
    ADD CONSTRAINT person_type_pkey PRIMARY KEY (person_type_id);


--
-- TOC entry 3593 (class 2606 OID 16569)
-- Name: person personalnumber; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT personalnumber UNIQUE (personal_number);


--
-- TOC entry 3601 (class 2606 OID 16498)
-- Name: rentals rentals_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rentals
    ADD CONSTRAINT rentals_pkey PRIMARY KEY (person_id, instrument_id);


--
-- TOC entry 3597 (class 2606 OID 16669)
-- Name: schedule schedule_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT schedule_pkey PRIMARY KEY (lesson_id);


--
-- TOC entry 3605 (class 2606 OID 16473)
-- Name: sibling siblings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sibling
    ADD CONSTRAINT siblings_pkey PRIMARY KEY (person_id, sibling);


--
-- TOC entry 3615 (class 2606 OID 16662)
-- Name: skill_level skill_level_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.skill_level
    ADD CONSTRAINT skill_level_pkey PRIMARY KEY (skill_type_id);


--
-- TOC entry 3635 (class 2606 OID 16761)
-- Name: contact_details contact_type_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contact_details
    ADD CONSTRAINT contact_type_id FOREIGN KEY (contact_type_id) REFERENCES public.contact_type(contact_type_id) NOT VALID;


--
-- TOC entry 3639 (class 2606 OID 16785)
-- Name: fee fee_lesson_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fee
    ADD CONSTRAINT fee_lesson_type_fkey FOREIGN KEY (lesson_type) REFERENCES public.lesson_type(id) NOT VALID;


--
-- TOC entry 3640 (class 2606 OID 16790)
-- Name: fee fee_skill_level_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fee
    ADD CONSTRAINT fee_skill_level_fkey FOREIGN KEY (skill_level) REFERENCES public.skill_level(skill_type_id) NOT VALID;


--
-- TOC entry 3641 (class 2606 OID 16717)
-- Name: lesson genre; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lesson
    ADD CONSTRAINT genre FOREIGN KEY (genre) REFERENCES public.genre(genre_id) NOT VALID;


--
-- TOC entry 3629 (class 2606 OID 16681)
-- Name: enrollment ids; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.enrollment
    ADD CONSTRAINT ids FOREIGN KEY (person_id) REFERENCES public.person(person_id) NOT VALID;


--
-- TOC entry 3646 (class 2606 OID 16743)
-- Name: instructor_instrument ids; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.instructor_instrument
    ADD CONSTRAINT ids FOREIGN KEY (person_id) REFERENCES public.person(person_id);


--
-- TOC entry 3633 (class 2606 OID 16504)
-- Name: rentals instrument_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rentals
    ADD CONSTRAINT instrument_id FOREIGN KEY (instrument_id) REFERENCES public.instruments(instrument_id) NOT VALID;


--
-- TOC entry 3647 (class 2606 OID 16748)
-- Name: instructor_instrument instrument_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.instructor_instrument
    ADD CONSTRAINT instrument_id FOREIGN KEY (instrument_id) REFERENCES public.instrument_type(instrument_id) NOT VALID;


--
-- TOC entry 3632 (class 2606 OID 16663)
-- Name: instruments instrument_type; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.instruments
    ADD CONSTRAINT instrument_type FOREIGN KEY (instrument_type) REFERENCES public.instrument_type(instrument_id) NOT VALID;


--
-- TOC entry 3642 (class 2606 OID 16696)
-- Name: lesson instrument_type; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lesson
    ADD CONSTRAINT instrument_type FOREIGN KEY (instrument_type) REFERENCES public.instrument_type(instrument_id) NOT VALID;


--
-- TOC entry 3631 (class 2606 OID 16670)
-- Name: schedule lesson_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT lesson_id FOREIGN KEY (lesson_id) REFERENCES public.lesson(lesson_id) NOT VALID;


--
-- TOC entry 3630 (class 2606 OID 16686)
-- Name: enrollment lesson_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.enrollment
    ADD CONSTRAINT lesson_id FOREIGN KEY (lesson_id) REFERENCES public.lesson(lesson_id) NOT VALID;


--
-- TOC entry 3643 (class 2606 OID 16728)
-- Name: lesson lesson_type; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lesson
    ADD CONSTRAINT lesson_type FOREIGN KEY (lesson_type) REFERENCES public.lesson_type(id) NOT VALID;


--
-- TOC entry 3634 (class 2606 OID 16499)
-- Name: rentals person_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rentals
    ADD CONSTRAINT person_id FOREIGN KEY (person_id) REFERENCES public.person(person_id) NOT VALID;


--
-- TOC entry 3637 (class 2606 OID 16563)
-- Name: sibling person_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sibling
    ADD CONSTRAINT person_id FOREIGN KEY (person_id) REFERENCES public.person(person_id) ON DELETE CASCADE NOT VALID;


--
-- TOC entry 3636 (class 2606 OID 16640)
-- Name: contact_details person_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contact_details
    ADD CONSTRAINT person_id FOREIGN KEY (person_id) REFERENCES public.person(person_id) NOT VALID;


--
-- TOC entry 3644 (class 2606 OID 16691)
-- Name: lesson person_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lesson
    ADD CONSTRAINT person_id FOREIGN KEY (person_id) REFERENCES public.person(person_id) NOT VALID;


--
-- TOC entry 3628 (class 2606 OID 16801)
-- Name: person person_person_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_person_type_fkey FOREIGN KEY (person_type) REFERENCES public.person_type(person_type_id) NOT VALID;


--
-- TOC entry 3638 (class 2606 OID 16701)
-- Name: sibling sibling_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sibling
    ADD CONSTRAINT sibling_id FOREIGN KEY (sibling) REFERENCES public.person(person_id) NOT VALID;


--
-- TOC entry 3645 (class 2606 OID 16706)
-- Name: lesson skill; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lesson
    ADD CONSTRAINT skill FOREIGN KEY (skill_level) REFERENCES public.skill_level(skill_type_id) NOT VALID;


-- Completed on 2024-12-02 22:24:45 CET

--
-- PostgreSQL database dump complete
--

