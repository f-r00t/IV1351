PGDMP  5                    |         	   soundgood    17.2    17.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16387 	   soundgood    DATABASE     }   CREATE DATABASE soundgood WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Swedish_Sweden.1252';
    DROP DATABASE soundgood;
                     postgres    false            e          0    16583    contact_type 
   TABLE DATA           E   COPY public.contact_type (contact_type_id, contact_type) FROM stdin;
    public               postgres    false    218          v          0    16620    person_type 
   TABLE DATA           B   COPY public.person_type (person_type_id, person_type) FROM stdin;
    public               postgres    false    235   n       t          0    16616    person 
   TABLE DATA           a   COPY public.person (person_id, personal_number, name, teaches_ensamble, person_type) FROM stdin;
    public               postgres    false    233   �       d          0    16580    contact_details 
   TABLE DATA           L   COPY public.contact_details (value, person_id, contact_type_id) FROM stdin;
    public               postgres    false    217   0       i          0    16593    genre 
   TABLE DATA           0   COPY public.genre (genre_id, genre) FROM stdin;
    public               postgres    false    222   �!       l          0    16600    instrument_type 
   TABLE DATA           >   COPY public.instrument_type (instrument_id, type) FROM stdin;
    public               postgres    false    225   p"       r          0    16612    lesson_type 
   TABLE DATA           6   COPY public.lesson_type (id, lesson_type) FROM stdin;
    public               postgres    false    231   �"       {          0    16633    skill_level 
   TABLE DATA           @   COPY public.skill_level (skill_type_id, skill_type) FROM stdin;
    public               postgres    false    240   %#       p          0    16608    lesson 
   TABLE DATA           �   COPY public.lesson (lesson_id, instrument_type, max_students, min_students, person_id, genre, lesson_type, skill_level) FROM stdin;
    public               postgres    false    229   g#       g          0    16587 
   enrollment 
   TABLE DATA           :   COPY public.enrollment (person_id, lesson_id) FROM stdin;
    public               postgres    false    220   �$       h          0    16590    fee 
   TABLE DATA           H   COPY public.fee (start_date, fee, lesson_type, skill_level) FROM stdin;
    public               postgres    false    221   %       k          0    16597    instructor_instrument 
   TABLE DATA           I   COPY public.instructor_instrument (person_id, instrument_id) FROM stdin;
    public               postgres    false    224   �%       n          0    16604    instruments 
   TABLE DATA           Y   COPY public.instruments (instrument_id, brand, fee, rented, instrument_type) FROM stdin;
    public               postgres    false    227   �%       x          0    16624    rentals 
   TABLE DATA           Q   COPY public.rentals (start_time, end_time, person_id, instrument_id) FROM stdin;
    public               postgres    false    237   �%       y          0    16627    schedule 
   TABLE DATA           A   COPY public.schedule (starttime, endtime, lesson_id) FROM stdin;
    public               postgres    false    238   �%       z          0    16630    sibling 
   TABLE DATA           5   COPY public.sibling (person_id, sibling) FROM stdin;
    public               postgres    false    239   �&       �           0    0     contact_type_contact_type_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.contact_type_contact_type_id_seq', 7, true);
          public               postgres    false    219            �           0    0    genre_genre_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.genre_genre_id_seq', 10, true);
          public               postgres    false    223            �           0    0 !   instrument_type_instrument_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.instrument_type_instrument_id_seq', 10, true);
          public               postgres    false    226            �           0    0    instruments_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.instruments_id_seq', 20, true);
          public               postgres    false    228            �           0    0    lesson_lesson_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.lesson_lesson_id_seq', 1, false);
          public               postgres    false    230            �           0    0    lesson_type_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.lesson_type_id_seq', 3, true);
          public               postgres    false    232            �           0    0    person_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.person_id_seq', 46, true);
          public               postgres    false    234            �           0    0    person_type_person_type_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.person_type_person_type_id_seq', 3, true);
          public               postgres    false    236            �           0    0    skill_level_skill_type_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.skill_level_skill_type_id_seq', 3, true);
          public               postgres    false    241            e   L   x�3�L�M���2�LLI)J-.�2�,���K�2�L��+IL.�/H-*�ϋ�(4E��3C��c�.��������� v�+O      v   0   x�3���+.)*M.�/�2�,.)MI�+�2�LL����J%�db���� Tr]      t   r  x�]�Mr"9���:����Q�O��v�MoT�]�[%9T���LI�����|��S������J��f_����A����dr�*�tZ4�BE�6&��������B�(ѭ�d���-���Z�_D�B5(j�P�A�fwa�_MtI!�Q˔R�R���=L���&^��X���T��g/v�7�����oG~��I#}s�d_��qU�';��R'ٻuΚ��Z��d��H'�	{��V��JR�^4�Mx��	f��}v����4x���lpg�~7@��*a�QV%���f������F��K�^�$�ܐ�W*R������)�)�m��--�����'�6��kp�l�	|<�ٻ� �PR�Te9һ]9!ƺG2*G3��7���H��L��)�I�kI�u����O����U��D���������������8^o1:׋�����;����gH�W����U�o�=���h��/�;V&��h��Mr��iK�y|1�q��48؅�rJ�("�����v�@��yUYV!�D����#j�o)T��`�����ٴ"�K�eɄ�fvp��y�M��lϷ��]�=F��
�B&	:���ߺP��j��lm���K�w�E	��ǰ��!첢ܑ���N��E~0�a�2M2Ud
���9�]�B�Z�{�E��+;�!'=I�"��*�m�/�����G�������>�a�,)�Β��#P}�gW��*�7|`g�f�/�/7HW�)`��� ����0�99�)؅*�
�#��l�h�*W�{K?���M��#҄V�x���C{����T�x�����JR5A�*<������z8d	A�*]/�?��+.;B*R�t�����!�cL��,�� �O��      d   �  x��VK��8\7��^8lK2��x1������ѫ�P�A�	�����	z��.�ŦR,˂Y�YY%W��Y��i*�Q�-˃V�*?dهt����?��~�f���X�xWm�8��2��Z�����,e�e�sʖ�j+����
�>%D��S!�ͱi��1dF��B�B��)�h�Ö�8`	�w�TM\�O���E#�Jk��0륪7C$\*Cw�df̖ցAC}\�&�V�� )T�mU�@����x-�z���T���5j)���&V�)`�P���������o��0<ȡ�'����n-MAP�C6uR�l��!])�v���Qg8ē�b#T�C�E[��J�/Q�1."�i�G/^�śZ+�w�M�JӞTML����Y�B��h6M�e/A9A\~5����_��N�'l������e�
�d�HB���_.�mwsd�yJȅ4�6��k���,�~F'�W�
�)y:G�ž0١��1�&Q���k}������M/|FŲ�*��ޟIq��P��$B�jI?�Ȯ�7")�D�4D�|����5�=g�����ϕ��N��y�M\˳����A0:�[MS�dx*�m|�������������_ei�o��K����2��쾄4����ׂ�M��[��<E����\F?d}r���=��<�ÿ�0��)�qh�bOOKݟ�|���fYW{�S&�6am�h*N�_e˲4I�oG��Q�[2M�KΧ��0�]8�g��]8Ƿ��]��۸S�dwa��j�.dx�6�B�'g�.xT6�aW~�z~����{~�����������l=��g�a=?[���z�Ǐ{��Ǐ{��Ǐ��n�~�����v��,��!7O��f�M١r��|l�\ �pB.��!7?GiC�i0���ɔ�c�" \��fk֏κ�MA��r�1@n
�����j��B ���8	Ɇ���B3���y(6�>nb����C���q����=n��m�_<69�4�{���`��C���s��O�^��&]<�s���..C.B��-��-XL� ��x��1�"��1���*�$�G��,Bk�,�,e�ma̰�]L�x�g1�"�X1��ۥ��Kso���.ͽ]�{�4�vi����ۥ��Ks���1���1���1���1���q���q�����d��N��      i   e   x�3�t�I,.�LN��2��J���2��O��2��/�2���,�� ��8�rJS���9��K�J�*�,8]sR�K���2��,9�R��S�8��s��b���� "��      l   h   x�3��L���2�t/�,I,�2�������2�t)*�-�2�t�)-I�2�N��/���K�2����pYp:����sYr:�$e��8������qqq <�`      r   -   x�3�L�+N�M�I�2�L/�/-�2���K�,�L)M������ ��      {   2   x�3�tJM���K-�2���+I-�MM�L,I�2�tL)K�KNM����� ��      p   4  x�=�Q�� C�q1op/w��xB?:u����!CF�-�y��TTB��<�6e��G��Q�z�-un���b�x�f�	�sj�DiƂhv9%��Y���-'1�o�CV2� �>��VR�j%��|���w��V n��̰*N+bY�g%mf�q(�S����1e�<Y&�2�e���,�L��s�Y�l�m}I�O޲�(}�D��M������E�	�uZ�ғ�:m���b��sd�b�%}�� &�yg,���x��
�����?�����?�λցy�8����<o1=���b���bF�ﯵ��t�      g   L   x���� B�o�QPy��������"�S�
�;e�k뮘�щ���Ar���M7T�yuZ(�F�Á|�?z      h   �   x�e�A�0��+z�Z��$o����8���H�F�@��E�y���g-�-ZATm~Q�AU�c�c$���zR#�����m�U
��6�w���cL�lv2#���Hf'��U��e��X65��b3���������� �1\�      k      x������ � �      n      x������ � �      x      x������ � �      y   �   x�m�A� E���w�P19K��j���:���<�r��6�g��3҃`
��7�а fd��.�Ņ4�̧N.��BȽ�م2�� t�����u�RS�]�-�G<�[akIŅ<�dR���)��4�p�)�����w�d�ՀNU](c�T�&P�w�p�p���&j���?����B�'mX@`긖��ϩb�bp�sj
�W�CT�v      z   w   x�5���0��0�CҊ�K�����~<P'CEdj�}A���:��v��o��D~�
5���{R72�59�0M���b�|�ӆEw;�	��v�m�d�b�\���L�ۭT[�,~?$���     