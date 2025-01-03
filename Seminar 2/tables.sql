--
-- PostgreSQL database dump
--

-- Dumped from database version 17.1 (Postgres.app)
-- Dumped by pg_dump version 17.0

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
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- Name: check_rental_constraints(); Type: FUNCTION; Schema: public; Owner: harry
--

CREATE FUNCTION public.check_rental_constraints() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN

    IF EXISTS (
        SELECT 1
        FROM public.rentals
        WHERE instrument_id = NEW.instrument_id AND end_time IS NULL
    ) THEN
        RAISE EXCEPTION 'The instrument is already rented out.';
    END IF;

    
    IF (
        SELECT COUNT(*)
        FROM public.rentals
        WHERE person_id = NEW.person_id AND end_time IS NULL
    ) >= 2 THEN
        RAISE EXCEPTION 'The person already has 2 active rentals.';
    END IF;

    RETURN NEW;
END;
$$;


ALTER FUNCTION public.check_rental_constraints() OWNER TO harry;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: contact_details; Type: TABLE; Schema: public; Owner: harry
--

CREATE TABLE public.contact_details (
    value character varying(100) NOT NULL,
    person_id integer NOT NULL,
    contact_type_id integer NOT NULL
);


ALTER TABLE public.contact_details OWNER TO harry;

--
-- Name: contact_type; Type: TABLE; Schema: public; Owner: harry
--

CREATE TABLE public.contact_type (
    contact_type_id integer NOT NULL,
    contact_type character varying(100) NOT NULL
);


ALTER TABLE public.contact_type OWNER TO harry;

--
-- Name: contact_type_contact_type_id_seq; Type: SEQUENCE; Schema: public; Owner: harry
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
-- Name: enrollment; Type: TABLE; Schema: public; Owner: harry
--

CREATE TABLE public.enrollment (
    person_id integer NOT NULL,
    lesson_id integer NOT NULL
);


ALTER TABLE public.enrollment OWNER TO harry;

--
-- Name: fee; Type: TABLE; Schema: public; Owner: harry
--

CREATE TABLE public.fee (
    start_date timestamp(6) with time zone NOT NULL,
    fee double precision NOT NULL,
    lesson_type integer NOT NULL,
    skill_level integer NOT NULL
);


ALTER TABLE public.fee OWNER TO harry;

--
-- Name: genre; Type: TABLE; Schema: public; Owner: harry
--

CREATE TABLE public.genre (
    genre_id integer NOT NULL,
    genre character varying(100) NOT NULL
);


ALTER TABLE public.genre OWNER TO harry;

--
-- Name: genre_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: harry
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
-- Name: historical_lessons; Type: TABLE; Schema: public; Owner: harry
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


ALTER TABLE public.historical_lessons OWNER TO harry;

--
-- Name: instructor_instrument; Type: TABLE; Schema: public; Owner: harry
--

CREATE TABLE public.instructor_instrument (
    person_id integer NOT NULL,
    instrument_id integer NOT NULL
);


ALTER TABLE public.instructor_instrument OWNER TO harry;

--
-- Name: instrument_type; Type: TABLE; Schema: public; Owner: harry
--

CREATE TABLE public.instrument_type (
    instrument_id integer NOT NULL,
    type character varying(100) NOT NULL
);


ALTER TABLE public.instrument_type OWNER TO harry;

--
-- Name: instrument_type_instrument_id_seq; Type: SEQUENCE; Schema: public; Owner: harry
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
-- Name: instruments; Type: TABLE; Schema: public; Owner: harry
--

CREATE TABLE public.instruments (
    instrument_id integer NOT NULL,
    brand character varying(100) NOT NULL,
    fee double precision NOT NULL,
    rented bit(1) NOT NULL,
    instrument_type integer NOT NULL
);


ALTER TABLE public.instruments OWNER TO harry;

--
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
-- Name: lesson; Type: TABLE; Schema: public; Owner: harry
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


ALTER TABLE public.lesson OWNER TO harry;

--
-- Name: lesson_lesson_id_seq; Type: SEQUENCE; Schema: public; Owner: harry
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
-- Name: lesson_type; Type: TABLE; Schema: public; Owner: harry
--

CREATE TABLE public.lesson_type (
    id integer NOT NULL,
    lesson_type character varying(100) NOT NULL
);


ALTER TABLE public.lesson_type OWNER TO harry;

--
-- Name: lesson_type_id_seq; Type: SEQUENCE; Schema: public; Owner: harry
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
-- Name: person; Type: TABLE; Schema: public; Owner: harry
--

CREATE TABLE public.person (
    person_id integer NOT NULL,
    personal_number character(12) NOT NULL,
    name character varying(100) NOT NULL,
    teaches_ensamble bit(1),
    person_type integer NOT NULL,
    active bit(1) DEFAULT '1'::"bit" NOT NULL
);


ALTER TABLE public.person OWNER TO harry;

--
-- Name: person_id_seq; Type: SEQUENCE; Schema: public; Owner: harry
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
-- Name: person_type; Type: TABLE; Schema: public; Owner: harry
--

CREATE TABLE public.person_type (
    person_type_id integer NOT NULL,
    person_type character varying(100) NOT NULL
);


ALTER TABLE public.person_type OWNER TO harry;

--
-- Name: person_type_person_type_id_seq; Type: SEQUENCE; Schema: public; Owner: harry
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
-- Name: rentals; Type: TABLE; Schema: public; Owner: harry
--

CREATE TABLE public.rentals (
    start_time timestamp(6) with time zone NOT NULL,
    end_time timestamp(6) with time zone,
    person_id integer NOT NULL,
    instrument_id integer NOT NULL,
    rental_id integer NOT NULL
);


ALTER TABLE public.rentals OWNER TO harry;

--
-- Name: rentals_rental_id_seq; Type: SEQUENCE; Schema: public; Owner: harry
--

ALTER TABLE public.rentals ALTER COLUMN rental_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.rentals_rental_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: schedule; Type: TABLE; Schema: public; Owner: harry
--

CREATE TABLE public.schedule (
    starttime timestamp with time zone NOT NULL,
    endtime timestamp with time zone NOT NULL,
    lesson_id integer NOT NULL
);


ALTER TABLE public.schedule OWNER TO harry;

--
-- Name: sibling; Type: TABLE; Schema: public; Owner: harry
--

CREATE TABLE public.sibling (
    person_id integer NOT NULL,
    sibling integer NOT NULL
);


ALTER TABLE public.sibling OWNER TO harry;

--
-- Name: skill_level; Type: TABLE; Schema: public; Owner: harry
--

CREATE TABLE public.skill_level (
    skill_type_id integer NOT NULL,
    skill_type character varying(100) NOT NULL
);


ALTER TABLE public.skill_level OWNER TO harry;

--
-- Name: skill_level_skill_type_id_seq; Type: SEQUENCE; Schema: public; Owner: harry
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
-- Name: contact_details contact_details_pkey; Type: CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.contact_details
    ADD CONSTRAINT contact_details_pkey PRIMARY KEY (contact_type_id, person_id);


--
-- Name: contact_type contact_type_pkey; Type: CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.contact_type
    ADD CONSTRAINT contact_type_pkey PRIMARY KEY (contact_type_id);


--
-- Name: enrollment enrollment_pkey; Type: CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.enrollment
    ADD CONSTRAINT enrollment_pkey PRIMARY KEY (person_id, lesson_id);


--
-- Name: fee fee_pkey; Type: CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.fee
    ADD CONSTRAINT fee_pkey PRIMARY KEY (start_date, lesson_type, skill_level);


--
-- Name: genre genre_pkey; Type: CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (genre_id);


--
-- Name: historical_lessons historical_lessons_pkey; Type: CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.historical_lessons
    ADD CONSTRAINT historical_lessons_pkey PRIMARY KEY (lesson_id, start_time, lesson_type, student_email);


--
-- Name: instructor_instrument instructor_instrument_pkey; Type: CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.instructor_instrument
    ADD CONSTRAINT instructor_instrument_pkey PRIMARY KEY (person_id, instrument_id);


--
-- Name: instrument_type instrument_type_pkey; Type: CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.instrument_type
    ADD CONSTRAINT instrument_type_pkey PRIMARY KEY (instrument_id);


--
-- Name: instruments instruments_pkey; Type: CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.instruments
    ADD CONSTRAINT instruments_pkey PRIMARY KEY (instrument_id);


--
-- Name: lesson lesson_id; Type: CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.lesson
    ADD CONSTRAINT lesson_id UNIQUE (lesson_id);


--
-- Name: lesson lesson_pkey; Type: CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.lesson
    ADD CONSTRAINT lesson_pkey PRIMARY KEY (lesson_id);


--
-- Name: lesson_type lesson_type_pkey; Type: CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.lesson_type
    ADD CONSTRAINT lesson_type_pkey PRIMARY KEY (id);


--
-- Name: person person_pkey; Type: CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (person_id);


--
-- Name: person_type person_type_pkey; Type: CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.person_type
    ADD CONSTRAINT person_type_pkey PRIMARY KEY (person_type_id);


--
-- Name: person personalnumber; Type: CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT personalnumber UNIQUE (personal_number);


--
-- Name: rentals rentals_pkey; Type: CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.rentals
    ADD CONSTRAINT rentals_pkey PRIMARY KEY (rental_id);


--
-- Name: schedule schedule_pkey; Type: CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT schedule_pkey PRIMARY KEY (lesson_id);


--
-- Name: sibling siblings_pkey; Type: CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.sibling
    ADD CONSTRAINT siblings_pkey PRIMARY KEY (person_id, sibling);


--
-- Name: skill_level skill_level_pkey; Type: CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.skill_level
    ADD CONSTRAINT skill_level_pkey PRIMARY KEY (skill_type_id);


--
-- Name: rentals enforce_rental_constraints; Type: TRIGGER; Schema: public; Owner: harry
--

CREATE TRIGGER enforce_rental_constraints BEFORE INSERT ON public.rentals FOR EACH ROW EXECUTE FUNCTION public.check_rental_constraints();


--
-- Name: contact_details contact_type_id; Type: FK CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.contact_details
    ADD CONSTRAINT contact_type_id FOREIGN KEY (contact_type_id) REFERENCES public.contact_type(contact_type_id) NOT VALID;


--
-- Name: fee fee_lesson_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.fee
    ADD CONSTRAINT fee_lesson_type_fkey FOREIGN KEY (lesson_type) REFERENCES public.lesson_type(id) NOT VALID;


--
-- Name: fee fee_skill_level_fkey; Type: FK CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.fee
    ADD CONSTRAINT fee_skill_level_fkey FOREIGN KEY (skill_level) REFERENCES public.skill_level(skill_type_id) NOT VALID;


--
-- Name: lesson genre; Type: FK CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.lesson
    ADD CONSTRAINT genre FOREIGN KEY (genre) REFERENCES public.genre(genre_id) NOT VALID;


--
-- Name: enrollment ids; Type: FK CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.enrollment
    ADD CONSTRAINT ids FOREIGN KEY (person_id) REFERENCES public.person(person_id) NOT VALID;


--
-- Name: instructor_instrument ids; Type: FK CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.instructor_instrument
    ADD CONSTRAINT ids FOREIGN KEY (person_id) REFERENCES public.person(person_id);


--
-- Name: instructor_instrument instrument_id; Type: FK CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.instructor_instrument
    ADD CONSTRAINT instrument_id FOREIGN KEY (instrument_id) REFERENCES public.instrument_type(instrument_id) NOT VALID;


--
-- Name: instruments instrument_type; Type: FK CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.instruments
    ADD CONSTRAINT instrument_type FOREIGN KEY (instrument_type) REFERENCES public.instrument_type(instrument_id) NOT VALID;


--
-- Name: lesson instrument_type; Type: FK CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.lesson
    ADD CONSTRAINT instrument_type FOREIGN KEY (instrument_type) REFERENCES public.instrument_type(instrument_id) NOT VALID;


--
-- Name: schedule lesson_id; Type: FK CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT lesson_id FOREIGN KEY (lesson_id) REFERENCES public.lesson(lesson_id) NOT VALID;


--
-- Name: enrollment lesson_id; Type: FK CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.enrollment
    ADD CONSTRAINT lesson_id FOREIGN KEY (lesson_id) REFERENCES public.lesson(lesson_id) NOT VALID;


--
-- Name: lesson lesson_type; Type: FK CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.lesson
    ADD CONSTRAINT lesson_type FOREIGN KEY (lesson_type) REFERENCES public.lesson_type(id) NOT VALID;


--
-- Name: rentals person_id; Type: FK CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.rentals
    ADD CONSTRAINT person_id FOREIGN KEY (person_id) REFERENCES public.person(person_id) NOT VALID;


--
-- Name: sibling person_id; Type: FK CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.sibling
    ADD CONSTRAINT person_id FOREIGN KEY (person_id) REFERENCES public.person(person_id) ON DELETE CASCADE NOT VALID;


--
-- Name: contact_details person_id; Type: FK CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.contact_details
    ADD CONSTRAINT person_id FOREIGN KEY (person_id) REFERENCES public.person(person_id) NOT VALID;


--
-- Name: lesson person_id; Type: FK CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.lesson
    ADD CONSTRAINT person_id FOREIGN KEY (person_id) REFERENCES public.person(person_id) NOT VALID;


--
-- Name: person person_person_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_person_type_fkey FOREIGN KEY (person_type) REFERENCES public.person_type(person_type_id) NOT VALID;


--
-- Name: sibling sibling_id; Type: FK CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.sibling
    ADD CONSTRAINT sibling_id FOREIGN KEY (sibling) REFERENCES public.person(person_id) NOT VALID;


--
-- Name: lesson skill; Type: FK CONSTRAINT; Schema: public; Owner: harry
--

ALTER TABLE ONLY public.lesson
    ADD CONSTRAINT skill FOREIGN KEY (skill_level) REFERENCES public.skill_level(skill_type_id) NOT VALID;


--
-- PostgreSQL database dump complete
--

