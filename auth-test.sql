PGDMP     	    0                t        	   auth-test    9.4.6    9.4.6                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       1262    41623 	   auth-test    DATABASE     }   CREATE DATABASE "auth-test" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE "auth-test";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6                       0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6                        3079    11895    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false                       0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    41637    company    TABLE     T   CREATE TABLE company (
    name character varying(1024),
    id integer NOT NULL
);
    DROP TABLE public.company;
       public         postgres    false    6            �            1259    41635    company_id_seq    SEQUENCE     p   CREATE SEQUENCE company_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.company_id_seq;
       public       postgres    false    176    6                       0    0    company_id_seq    SEQUENCE OWNED BY     3   ALTER SEQUENCE company_id_seq OWNED BY company.id;
            public       postgres    false    175            �            1259    41626    project    TABLE     k   CREATE TABLE project (
    name character varying(1024),
    id integer NOT NULL,
    companyid integer
);
    DROP TABLE public.project;
       public         postgres    false    6            �            1259    41624    project_id_seq    SEQUENCE     p   CREATE SEQUENCE project_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.project_id_seq;
       public       postgres    false    6    174                       0    0    project_id_seq    SEQUENCE OWNED BY     3   ALTER SEQUENCE project_id_seq OWNED BY project.id;
            public       postgres    false    173            �            1259    41648    user    TABLE     �  CREATE TABLE "user" (
    realm character varying(1024),
    username character varying(1024),
    password character varying(1024) NOT NULL,
    credentials character varying(1024),
    challenges character varying(1024),
    email character varying(1024) NOT NULL,
    emailverified boolean,
    verificationtoken character varying(1024),
    status character varying(1024),
    created timestamp with time zone,
    lastupdated timestamp with time zone,
    id integer NOT NULL,
    companyid integer
);
    DROP TABLE public."user";
       public         postgres    false    6            �            1259    41646    user_id_seq    SEQUENCE     m   CREATE SEQUENCE user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.user_id_seq;
       public       postgres    false    6    178                       0    0    user_id_seq    SEQUENCE OWNED BY     /   ALTER SEQUENCE user_id_seq OWNED BY "user".id;
            public       postgres    false    177            �           2604    41640    id    DEFAULT     Z   ALTER TABLE ONLY company ALTER COLUMN id SET DEFAULT nextval('company_id_seq'::regclass);
 9   ALTER TABLE public.company ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    175    176    176            �           2604    41629    id    DEFAULT     Z   ALTER TABLE ONLY project ALTER COLUMN id SET DEFAULT nextval('project_id_seq'::regclass);
 9   ALTER TABLE public.project ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    174    173    174            �           2604    41651    id    DEFAULT     V   ALTER TABLE ONLY "user" ALTER COLUMN id SET DEFAULT nextval('user_id_seq'::regclass);
 8   ALTER TABLE public."user" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    178    177    178                      0    41637    company 
   TABLE DATA               $   COPY company (name, id) FROM stdin;
    public       postgres    false    176   .                  0    0    company_id_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('company_id_seq', 1, true);
            public       postgres    false    175                      0    41626    project 
   TABLE DATA               /   COPY project (name, id, companyid) FROM stdin;
    public       postgres    false    174   Q                  0    0    project_id_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('project_id_seq', 1, true);
            public       postgres    false    173            	          0    41648    user 
   TABLE DATA               �   COPY "user" (realm, username, password, credentials, challenges, email, emailverified, verificationtoken, status, created, lastupdated, id, companyid) FROM stdin;
    public       postgres    false    178   �                  0    0    user_id_seq    SEQUENCE SET     2   SELECT pg_catalog.setval('user_id_seq', 1, true);
            public       postgres    false    177            �           2606    41645    company_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY company
    ADD CONSTRAINT company_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.company DROP CONSTRAINT company_pkey;
       public         postgres    false    176    176            �           2606    41634    project_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY project
    ADD CONSTRAINT project_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.project DROP CONSTRAINT project_pkey;
       public         postgres    false    174    174            �           2606    41656 	   user_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY "user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public         postgres    false    178    178                  x�K���4����� E1         )   x�+(��JM.1�B���Ĉ!��Nc 'F��� +��      	   d   x������T1JT14P1s3��0
v.�s,�6��2)2���s5���tL7NM�4��4,���1q6�)�46����|���*���\�	�=... rk�     