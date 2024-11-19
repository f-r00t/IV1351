PGDMP      *            
    |            harry    17.1 (Postgres.app)    17.0 (    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16385    harry    DATABASE     q   CREATE DATABASE harry WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';
    DROP DATABASE harry;
                     harry    false            �            1259    16462    contact_details    TABLE     �   CREATE TABLE public.contact_details (
    contact_type character varying(100) NOT NULL,
    value character varying(100) NOT NULL,
    person_id integer NOT NULL
);
 #   DROP TABLE public.contact_details;
       public         heap r       harry    false            �            1259    16417    enrollments    TABLE     d   CREATE TABLE public.enrollments (
    person_id integer NOT NULL,
    lesson_id integer NOT NULL
);
    DROP TABLE public.enrollments;
       public         heap r       harry    false            �            1259    16397    lessons    TABLE     |   CREATE TABLE public.lessons (
    lesson_id integer NOT NULL,
    level integer NOT NULL,
    person_id integer NOT NULL
);
    DROP TABLE public.lessons;
       public         heap r       harry    false            �            1259    16541    ensemble    TABLE     �   CREATE TABLE public.ensemble (
    genre character varying(100) NOT NULL,
    max_students integer NOT NULL,
    min_students integer NOT NULL
)
INHERITS (public.lessons);
    DROP TABLE public.ensemble;
       public         heap r       harry    false    220            �            1259    16553    fees    TABLE     �   CREATE TABLE public.fees (
    type character varying(100) NOT NULL,
    start_date timestamp(6) with time zone NOT NULL,
    fee double precision NOT NULL
);
    DROP TABLE public.fees;
       public         heap r       harry    false            �            1259    16531    group_lessons    TABLE     �   CREATE TABLE public.group_lessons (
    max_students integer NOT NULL,
    min_students integer NOT NULL
)
INHERITS (public.lessons);
 !   DROP TABLE public.group_lessons;
       public         heap r       harry    false    220            �            1259    16536    individual_lessons    TABLE     u   CREATE TABLE public.individual_lessons (
    instrument character varying(100) NOT NULL
)
INHERITS (public.lessons);
 &   DROP TABLE public.individual_lessons;
       public         heap r       harry    false    220            �            1259    16430    instruments    TABLE     �   CREATE TABLE public.instruments (
    instrument_id integer NOT NULL,
    type character varying(100) NOT NULL,
    brand character varying(100) NOT NULL,
    fee double precision NOT NULL,
    rented bit(1) NOT NULL
);
    DROP TABLE public.instruments;
       public         heap r       harry    false            �            1259    16429    instruments_id_seq    SEQUENCE     �   ALTER TABLE public.instruments ALTER COLUMN instrument_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.instruments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               harry    false    224            �            1259    16396    lesson_id_seq    SEQUENCE     �   ALTER TABLE public.lessons ALTER COLUMN lesson_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.lesson_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               harry    false    220            �            1259    16391    persons    TABLE     �   CREATE TABLE public.persons (
    person_id integer NOT NULL,
    personal_number character varying(12) NOT NULL,
    name character varying(100) NOT NULL,
    type character varying(100) NOT NULL
);
    DROP TABLE public.persons;
       public         heap r       harry    false            �            1259    16390    person_id_seq    SEQUENCE     �   ALTER TABLE public.persons ALTER COLUMN person_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               harry    false    218            �            1259    16457    rentals    TABLE     �   CREATE TABLE public.rentals (
    start_time timestamp(6) with time zone NOT NULL,
    end_time timestamp(6) with time zone,
    person_id integer NOT NULL,
    instrument_id integer NOT NULL
);
    DROP TABLE public.rentals;
       public         heap r       harry    false            �            1259    16422    schedule    TABLE     �   CREATE TABLE public.schedule (
    starttime timestamp with time zone NOT NULL,
    endtime timestamp with time zone NOT NULL,
    lesson_id integer NOT NULL
);
    DROP TABLE public.schedule;
       public         heap r       harry    false            �            1259    16469    siblings    TABLE     _   CREATE TABLE public.siblings (
    person_id integer NOT NULL,
    sibling integer NOT NULL
);
    DROP TABLE public.siblings;
       public         heap r       harry    false            �           2606    16486 #   contact_details contactdetails_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.contact_details
    ADD CONSTRAINT contactdetails_pkey PRIMARY KEY (person_id);
 M   ALTER TABLE ONLY public.contact_details DROP CONSTRAINT contactdetails_pkey;
       public                 harry    false    226            �           2606    16520    enrollments enrollments_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_pkey PRIMARY KEY (lesson_id, person_id);
 F   ALTER TABLE ONLY public.enrollments DROP CONSTRAINT enrollments_pkey;
       public                 harry    false    221    221                       2606    16545    ensemble ensemble_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.ensemble
    ADD CONSTRAINT ensemble_pkey PRIMARY KEY (lesson_id);
 @   ALTER TABLE ONLY public.ensemble DROP CONSTRAINT ensemble_pkey;
       public                 harry    false    230                       2606    16557    fees fees_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.fees
    ADD CONSTRAINT fees_pkey PRIMARY KEY (type, start_date);
 8   ALTER TABLE ONLY public.fees DROP CONSTRAINT fees_pkey;
       public                 harry    false    231    231            �           2606    16535     group_lessons group_lessons_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.group_lessons
    ADD CONSTRAINT group_lessons_pkey PRIMARY KEY (lesson_id);
 J   ALTER TABLE ONLY public.group_lessons DROP CONSTRAINT group_lessons_pkey;
       public                 harry    false    228                       2606    16540 *   individual_lessons individual_lessons_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.individual_lessons
    ADD CONSTRAINT individual_lessons_pkey PRIMARY KEY (lesson_id);
 T   ALTER TABLE ONLY public.individual_lessons DROP CONSTRAINT individual_lessons_pkey;
       public                 harry    false    229            �           2606    16436    instruments instruments_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.instruments
    ADD CONSTRAINT instruments_pkey PRIMARY KEY (instrument_id);
 F   ALTER TABLE ONLY public.instruments DROP CONSTRAINT instruments_pkey;
       public                 harry    false    224            �           2606    16401    lessons lesson_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT lesson_pkey PRIMARY KEY (lesson_id);
 =   ALTER TABLE ONLY public.lessons DROP CONSTRAINT lesson_pkey;
       public                 harry    false    220            �           2606    16395    persons person_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.persons
    ADD CONSTRAINT person_pkey PRIMARY KEY (person_id);
 =   ALTER TABLE ONLY public.persons DROP CONSTRAINT person_pkey;
       public                 harry    false    218            �           2606    16475    persons personalnumber 
   CONSTRAINT     \   ALTER TABLE ONLY public.persons
    ADD CONSTRAINT personalnumber UNIQUE (personal_number);
 @   ALTER TABLE ONLY public.persons DROP CONSTRAINT personalnumber;
       public                 harry    false    218            �           2606    16498    rentals rentals_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.rentals
    ADD CONSTRAINT rentals_pkey PRIMARY KEY (person_id, instrument_id);
 >   ALTER TABLE ONLY public.rentals DROP CONSTRAINT rentals_pkey;
       public                 harry    false    225    225            �           2606    16547    schedule schedule_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT schedule_pkey PRIMARY KEY (lesson_id);
 @   ALTER TABLE ONLY public.schedule DROP CONSTRAINT schedule_pkey;
       public                 harry    false    222            �           2606    16473    siblings siblings_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.siblings
    ADD CONSTRAINT siblings_pkey PRIMARY KEY (person_id, sibling);
 @   ALTER TABLE ONLY public.siblings DROP CONSTRAINT siblings_pkey;
       public                 harry    false    227    227            
           2606    16504    rentals instrument_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.rentals
    ADD CONSTRAINT instrument_id FOREIGN KEY (instrument_id) REFERENCES public.instruments(instrument_id) NOT VALID;
 ?   ALTER TABLE ONLY public.rentals DROP CONSTRAINT instrument_id;
       public               harry    false    224    3575    225                       2606    16526    enrollments lesson_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT lesson_id FOREIGN KEY (lesson_id) REFERENCES public.lessons(lesson_id) NOT VALID;
 ?   ALTER TABLE ONLY public.enrollments DROP CONSTRAINT lesson_id;
       public               harry    false    220    3569    221            	           2606    16548    schedule lesson_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT lesson_id FOREIGN KEY (lesson_id) REFERENCES public.lessons(lesson_id) NOT VALID;
 <   ALTER TABLE ONLY public.schedule DROP CONSTRAINT lesson_id;
       public               harry    false    222    220    3569                       2606    16499    rentals person_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.rentals
    ADD CONSTRAINT person_id FOREIGN KEY (person_id) REFERENCES public.persons(person_id) NOT VALID;
 ;   ALTER TABLE ONLY public.rentals DROP CONSTRAINT person_id;
       public               harry    false    225    218    3565                       2606    16512    lessons person_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT person_id FOREIGN KEY (person_id) REFERENCES public.persons(person_id) NOT VALID;
 ;   ALTER TABLE ONLY public.lessons DROP CONSTRAINT person_id;
       public               harry    false    220    3565    218                       2606    16521    enrollments person_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT person_id FOREIGN KEY (person_id) REFERENCES public.persons(person_id) NOT VALID;
 ?   ALTER TABLE ONLY public.enrollments DROP CONSTRAINT person_id;
       public               harry    false    3565    221    218                       2606    16558    contact_details person_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.contact_details
    ADD CONSTRAINT person_id FOREIGN KEY (person_id) REFERENCES public.persons(person_id) ON DELETE CASCADE NOT VALID;
 C   ALTER TABLE ONLY public.contact_details DROP CONSTRAINT person_id;
       public               harry    false    218    3565    226                       2606    16563    siblings person_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.siblings
    ADD CONSTRAINT person_id FOREIGN KEY (person_id) REFERENCES public.persons(person_id) ON DELETE CASCADE NOT VALID;
 <   ALTER TABLE ONLY public.siblings DROP CONSTRAINT person_id;
       public               harry    false    227    218    3565           