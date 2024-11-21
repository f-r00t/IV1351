--
-- PostgreSQL database dump
--

-- Dumped from database version 17.1 (Postgres.app)
-- Dumped by pg_dump version 17.0

-- Started on 2024-11-21 20:26:02 CET

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
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- TOC entry 3742 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 224 (class 1259 OID 16462)
-- Name: contact_details; Type: TABLE; Schema: public; Owner: harry
--

CREATE TABLE public.contact_details (
    contact_type character varying(100) NOT NULL,
    value character varying(100) NOT NULL,
    person_id character varying(100) NOT NULL
);


ALTER TABLE public.contact_details OWNER TO harry;

--
-- TOC entry 219 (class 1259 OID 16417)
-- Name: enrollments; Type: TABLE; Schema: public; Owner: harry
--

CREATE TABLE public.enrollments (
    type character varying(100) NOT NULL,
    person_id integer NOT NULL,
    lesson_id integer NOT NULL
);


ALTER TABLE public.enrollments OWNER TO harry;

--
-- TOC entry 227 (class 1259 OID 16541)
-- Name: ensemble; Type: TABLE; Schema: public; Owner: harry
--

CREATE TABLE public.ensemble (
    lesson_id integer NOT NULL,
    level integer NOT NULL,
    person_id integer NOT NULL,
    genre character varying(100) NOT NULL,
    max_students integer NOT NULL,
    min_students integer NOT NULL
);


ALTER TABLE public.ensemble OWNER TO harry;

--
-- TOC entry 230 (class 1259 OID 16580)
-- Name: ensemble_lesson_id_seq; Type: SEQUENCE; Schema: public; Owner: harry
--

ALTER TABLE public.ensemble ALTER COLUMN lesson_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.ensemble_lesson_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 228 (class 1259 OID 16553)
-- Name: fees; Type: TABLE; Schema: public; Owner: harry
--

CREATE TABLE public.fees (
    type character varying(100) NOT NULL,
    start_date timestamp(6) with time zone NOT NULL,
    fee double precision NOT NULL
);


ALTER TABLE public.fees OWNER TO harry;

--
-- TOC entry 226 (class 1259 OID 16531)
-- Name: group_lessons; Type: TABLE; Schema: public; Owner: harry
--

CREATE TABLE public.group_lessons (
    lesson_id integer NOT NULL,
    level integer NOT NULL,
    person_id integer NOT NULL,
    max_students integer NOT NULL,
    min_students integer NOT NULL,
    instrument character varying(100) NOT NULL
);


ALTER TABLE public.group_lessons OWNER TO harry;

--
-- TOC entry 229 (class 1259 OID 16578)
-- Name: group_lessons_lesson_id_seq; Type: SEQUENCE; Schema: public; Owner: harry
--

ALTER TABLE public.group_lessons ALTER COLUMN lesson_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.group_lessons_lesson_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 231 (class 1259 OID 16607)
-- Name: individual_lessons; Type: TABLE; Schema: public; Owner: harry
--

CREATE TABLE public.individual_lessons (
    lesson_id integer NOT NULL,
    level integer NOT NULL,
    person_id integer NOT NULL,
    instrument character varying(100) NOT NULL
);


ALTER TABLE public.individual_lessons OWNER TO harry;

--
-- TOC entry 232 (class 1259 OID 16617)
-- Name: individual_lessons_lesson_id_seq; Type: SEQUENCE; Schema: public; Owner: harry
--

ALTER TABLE public.individual_lessons ALTER COLUMN lesson_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.individual_lessons_lesson_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 222 (class 1259 OID 16430)
-- Name: instruments; Type: TABLE; Schema: public; Owner: harry
--

CREATE TABLE public.instruments (
    instrument_id integer NOT NULL,
    type character varying(100) NOT NULL,
    brand character varying(100) NOT NULL,
    fee double precision NOT NULL,
    rented bit(1) NOT NULL
);


ALTER TABLE public.instruments OWNER TO harry;

--
-- TOC entry 221 (class 1259 OID 16429)
-- Name: instruments_id_seq; Type: SEQUENCE; Schema: public; Owner: harry
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
-- TOC entry 218 (class 1259 OID 16391)
-- Name: persons; Type: TABLE; Schema: public; Owner: harry
--

CREATE TABLE public.persons (
    person_id integer NOT NULL,
    personal_number character(12) NOT NULL,
    name character varying(100) NOT NULL,
    type character varying(100) NOT NULL
);


ALTER TABLE public.persons OWNER TO harry;

--
-- TOC entry 217 (class 1259 OID 16390)
-- Name: person_id_seq; Type: SEQUENCE; Schema: public; Owner: harry
--

ALTER TABLE public.persons ALTER COLUMN person_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 223 (class 1259 OID 16457)
-- Name: rentals; Type: TABLE; Schema: public; Owner: harry
--

CREATE TABLE public.rentals (
    start_time timestamp(6) with time zone NOT NULL,
    end_time timestamp(6) with time zone,
    person_id integer NOT NULL,
    instrument_id integer NOT NULL
);


ALTER TABLE public.rentals OWNER TO harry;

--
-- TOC entry 220 (class 1259 OID 16422)
-- Name: schedule; Type: TABLE; Schema: public; Owner: harry
--

CREATE TABLE public.schedule (
    starttime timestamp with time zone NOT NULL,
    endtime timestamp with time zone NOT NULL,
    type character varying(100) NOT NULL,
    lesson_id integer NOT NULL
);


ALTER TABLE public.schedule OWNER TO harry;

--
-- TOC entry 225 (class 1259 OID 16469)
-- Name: siblings; Type: TABLE; Schema: public; Owner: harry
--

CREATE TABLE public.siblings (
    person_id integer NOT NULL,
    sibling integer NOT NULL
);


ALTER TABLE public.siblings OWNER TO harry;

--
-- TOC entry 3575 (class 2606 OID 16577)
-- Name: contact_details contact_details_pkey; Type: CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.contact_details
    ADD CONSTRAINT contact_details_pkey PRIMARY KEY (value, person_id);


--
-- TOC entry 3567 (class 2606 OID 16634)
-- Name: enrollments enrollments_pkey; Type: CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_pkey PRIMARY KEY (person_id, type, lesson_id);


--
-- TOC entry 3581 (class 2606 OID 16545)
-- Name: ensemble ensemble_pkey; Type: CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.ensemble
    ADD CONSTRAINT ensemble_pkey PRIMARY KEY (lesson_id);


--
-- TOC entry 3583 (class 2606 OID 16557)
-- Name: fees fees_pkey; Type: CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.fees
    ADD CONSTRAINT fees_pkey PRIMARY KEY (type, start_date);


--
-- TOC entry 3579 (class 2606 OID 16535)
-- Name: group_lessons group_lessons_pkey; Type: CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.group_lessons
    ADD CONSTRAINT group_lessons_pkey PRIMARY KEY (lesson_id);


--
-- TOC entry 3585 (class 2606 OID 16611)
-- Name: individual_lessons individual_lessons_pkey; Type: CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.individual_lessons
    ADD CONSTRAINT individual_lessons_pkey PRIMARY KEY (lesson_id);


--
-- TOC entry 3571 (class 2606 OID 16436)
-- Name: instruments instruments_pkey; Type: CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.instruments
    ADD CONSTRAINT instruments_pkey PRIMARY KEY (instrument_id);


--
-- TOC entry 3563 (class 2606 OID 16395)
-- Name: persons person_pkey; Type: CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.persons
    ADD CONSTRAINT person_pkey PRIMARY KEY (person_id);


--
-- TOC entry 3565 (class 2606 OID 16569)
-- Name: persons personalnumber; Type: CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.persons
    ADD CONSTRAINT personalnumber UNIQUE (personal_number);


--
-- TOC entry 3573 (class 2606 OID 16498)
-- Name: rentals rentals_pkey; Type: CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.rentals
    ADD CONSTRAINT rentals_pkey PRIMARY KEY (person_id, instrument_id);


--
-- TOC entry 3569 (class 2606 OID 16636)
-- Name: schedule schedule_pkey; Type: CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT schedule_pkey PRIMARY KEY (type, lesson_id);


--
-- TOC entry 3577 (class 2606 OID 16473)
-- Name: siblings siblings_pkey; Type: CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.siblings
    ADD CONSTRAINT siblings_pkey PRIMARY KEY (person_id, sibling);


--
-- TOC entry 3586 (class 2606 OID 16504)
-- Name: rentals instrument_id; Type: FK CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.rentals
    ADD CONSTRAINT instrument_id FOREIGN KEY (instrument_id) REFERENCES public.instruments(instrument_id) NOT VALID;


--
-- TOC entry 3587 (class 2606 OID 16499)
-- Name: rentals person_id; Type: FK CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.rentals
    ADD CONSTRAINT person_id FOREIGN KEY (person_id) REFERENCES public.persons(person_id) NOT VALID;


--
-- TOC entry 3588 (class 2606 OID 16563)
-- Name: siblings person_id; Type: FK CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.siblings
    ADD CONSTRAINT person_id FOREIGN KEY (person_id) REFERENCES public.persons(person_id) ON DELETE CASCADE NOT VALID;


--
-- TOC entry 3589 (class 2606 OID 16618)
-- Name: group_lessons person_id; Type: FK CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.group_lessons
    ADD CONSTRAINT person_id FOREIGN KEY (person_id) REFERENCES public.persons(person_id) ON DELETE CASCADE NOT VALID;


--
-- TOC entry 3591 (class 2606 OID 16623)
-- Name: individual_lessons person_id; Type: FK CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.individual_lessons
    ADD CONSTRAINT person_id FOREIGN KEY (person_id) REFERENCES public.persons(person_id) ON DELETE CASCADE NOT VALID;


--
-- TOC entry 3590 (class 2606 OID 16628)
-- Name: ensemble person_id; Type: FK CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.ensemble
    ADD CONSTRAINT person_id FOREIGN KEY (person_id) REFERENCES public.persons(person_id) ON DELETE CASCADE NOT VALID;


-- Completed on 2024-11-21 20:26:02 CET

--
-- PostgreSQL database dump complete
--

