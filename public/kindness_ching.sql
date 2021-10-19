--
-- PostgreSQL database dump
--

-- Dumped from database version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: app
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO app;

--
-- Name: banners; Type: TABLE; Schema: public; Owner: app
--

CREATE TABLE public.banners (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    image_ids integer[] DEFAULT '{}'::integer[],
    image_type character varying DEFAULT '0'::character varying,
    section1_image_ids integer[] DEFAULT '{}'::integer[],
    section2_image_ids integer[] DEFAULT '{}'::integer[],
    section3_image_ids integer[] DEFAULT '{}'::integer[]
);


ALTER TABLE public.banners OWNER TO app;

--
-- Name: banners_id_seq; Type: SEQUENCE; Schema: public; Owner: app
--

CREATE SEQUENCE public.banners_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.banners_id_seq OWNER TO app;

--
-- Name: banners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: app
--

ALTER SEQUENCE public.banners_id_seq OWNED BY public.banners.id;


--
-- Name: ckeditor_assets; Type: TABLE; Schema: public; Owner: app
--

CREATE TABLE public.ckeditor_assets (
    id bigint NOT NULL,
    data_file_name character varying NOT NULL,
    data_content_type character varying,
    data_file_size integer,
    type character varying(30),
    width integer,
    height integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ckeditor_assets OWNER TO app;

--
-- Name: ckeditor_assets_id_seq; Type: SEQUENCE; Schema: public; Owner: app
--

CREATE SEQUENCE public.ckeditor_assets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ckeditor_assets_id_seq OWNER TO app;

--
-- Name: ckeditor_assets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: app
--

ALTER SEQUENCE public.ckeditor_assets_id_seq OWNED BY public.ckeditor_assets.id;


--
-- Name: foods; Type: TABLE; Schema: public; Owner: app
--

CREATE TABLE public.foods (
    id bigint NOT NULL,
    store_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    image_ids integer[] DEFAULT '{}'::integer[],
    food_type integer DEFAULT 0,
    type character varying,
    title character varying,
    subtitle character varying,
    "desc" character varying,
    sort integer,
    seq integer
);


ALTER TABLE public.foods OWNER TO app;

--
-- Name: foods_id_seq; Type: SEQUENCE; Schema: public; Owner: app
--

CREATE SEQUENCE public.foods_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.foods_id_seq OWNER TO app;

--
-- Name: foods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: app
--

ALTER SEQUENCE public.foods_id_seq OWNED BY public.foods.id;


--
-- Name: images; Type: TABLE; Schema: public; Owner: app
--

CREATE TABLE public.images (
    id bigint NOT NULL,
    src character varying,
    crop_x integer,
    crop_y integer,
    crop_w integer,
    crop_h integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.images OWNER TO app;

--
-- Name: images_id_seq; Type: SEQUENCE; Schema: public; Owner: app
--

CREATE SEQUENCE public.images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.images_id_seq OWNER TO app;

--
-- Name: images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: app
--

ALTER SEQUENCE public.images_id_seq OWNED BY public.images.id;


--
-- Name: mobility_string_translations; Type: TABLE; Schema: public; Owner: app
--

CREATE TABLE public.mobility_string_translations (
    id bigint NOT NULL,
    locale character varying NOT NULL,
    key character varying NOT NULL,
    value character varying,
    translatable_type character varying,
    translatable_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.mobility_string_translations OWNER TO app;

--
-- Name: mobility_string_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: app
--

CREATE SEQUENCE public.mobility_string_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mobility_string_translations_id_seq OWNER TO app;

--
-- Name: mobility_string_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: app
--

ALTER SEQUENCE public.mobility_string_translations_id_seq OWNED BY public.mobility_string_translations.id;


--
-- Name: mobility_text_translations; Type: TABLE; Schema: public; Owner: app
--

CREATE TABLE public.mobility_text_translations (
    id bigint NOT NULL,
    locale character varying NOT NULL,
    key character varying NOT NULL,
    value text,
    translatable_type character varying,
    translatable_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.mobility_text_translations OWNER TO app;

--
-- Name: mobility_text_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: app
--

CREATE SEQUENCE public.mobility_text_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mobility_text_translations_id_seq OWNER TO app;

--
-- Name: mobility_text_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: app
--

ALTER SEQUENCE public.mobility_text_translations_id_seq OWNED BY public.mobility_text_translations.id;


--
-- Name: news; Type: TABLE; Schema: public; Owner: app
--

CREATE TABLE public.news (
    id bigint NOT NULL,
    public_date date,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    image_ids integer[] DEFAULT '{}'::integer[],
    top boolean DEFAULT false
);


ALTER TABLE public.news OWNER TO app;

--
-- Name: news_id_seq; Type: SEQUENCE; Schema: public; Owner: app
--

CREATE SEQUENCE public.news_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.news_id_seq OWNER TO app;

--
-- Name: news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: app
--

ALTER SEQUENCE public.news_id_seq OWNED BY public.news.id;


--
-- Name: regions; Type: TABLE; Schema: public; Owner: app
--

CREATE TABLE public.regions (
    id bigint NOT NULL,
    title character varying,
    seq integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    title_en character varying
);


ALTER TABLE public.regions OWNER TO app;

--
-- Name: regions_id_seq; Type: SEQUENCE; Schema: public; Owner: app
--

CREATE SEQUENCE public.regions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.regions_id_seq OWNER TO app;

--
-- Name: regions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: app
--

ALTER SEQUENCE public.regions_id_seq OWNED BY public.regions.id;


--
-- Name: rooms; Type: TABLE; Schema: public; Owner: app
--

CREATE TABLE public.rooms (
    id bigint NOT NULL,
    cover character varying,
    seq integer,
    store_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    title character varying,
    "desc" character varying,
    equipment character varying,
    spec character varying,
    image_ids integer[] DEFAULT '{}'::integer[],
    hash_data character varying DEFAULT ''::character varying,
    cover_image_ids integer[] DEFAULT '{}'::integer[]
);


ALTER TABLE public.rooms OWNER TO app;

--
-- Name: rooms_id_seq; Type: SEQUENCE; Schema: public; Owner: app
--

CREATE SEQUENCE public.rooms_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rooms_id_seq OWNER TO app;

--
-- Name: rooms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: app
--

ALTER SEQUENCE public.rooms_id_seq OWNED BY public.rooms.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: app
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO app;

--
-- Name: settings; Type: TABLE; Schema: public; Owner: app
--

CREATE TABLE public.settings (
    id bigint NOT NULL,
    hash_data character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    og_image character varying
);


ALTER TABLE public.settings OWNER TO app;

--
-- Name: settings_id_seq; Type: SEQUENCE; Schema: public; Owner: app
--

CREATE SEQUENCE public.settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.settings_id_seq OWNER TO app;

--
-- Name: settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: app
--

ALTER SEQUENCE public.settings_id_seq OWNED BY public.settings.id;


--
-- Name: spots; Type: TABLE; Schema: public; Owner: app
--

CREATE TABLE public.spots (
    id bigint NOT NULL,
    tel character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    image_ids integer[] DEFAULT '{}'::integer[],
    store_id integer,
    tags character varying[] DEFAULT '{}'::character varying[]
);


ALTER TABLE public.spots OWNER TO app;

--
-- Name: spots_id_seq; Type: SEQUENCE; Schema: public; Owner: app
--

CREATE SEQUENCE public.spots_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spots_id_seq OWNER TO app;

--
-- Name: spots_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: app
--

ALTER SEQUENCE public.spots_id_seq OWNED BY public.spots.id;


--
-- Name: store_spots; Type: TABLE; Schema: public; Owner: app
--

CREATE TABLE public.store_spots (
    id bigint NOT NULL,
    store_id integer,
    spot_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.store_spots OWNER TO app;

--
-- Name: store_spots_id_seq; Type: SEQUENCE; Schema: public; Owner: app
--

CREATE SEQUENCE public.store_spots_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.store_spots_id_seq OWNER TO app;

--
-- Name: store_spots_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: app
--

ALTER SEQUENCE public.store_spots_id_seq OWNED BY public.store_spots.id;


--
-- Name: stores; Type: TABLE; Schema: public; Owner: app
--

CREATE TABLE public.stores (
    id bigint NOT NULL,
    region_id bigint,
    seq integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    display boolean DEFAULT true,
    cover_image_ids integer[] DEFAULT '{}'::integer[],
    traffic_image_ids integer[] DEFAULT '{}'::integer[]
);


ALTER TABLE public.stores OWNER TO app;

--
-- Name: stores_id_seq; Type: SEQUENCE; Schema: public; Owner: app
--

CREATE SEQUENCE public.stores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stores_id_seq OWNER TO app;

--
-- Name: stores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: app
--

ALTER SEQUENCE public.stores_id_seq OWNED BY public.stores.id;


--
-- Name: traffics; Type: TABLE; Schema: public; Owner: app
--

CREATE TABLE public.traffics (
    id bigint NOT NULL,
    store_id integer,
    seq integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.traffics OWNER TO app;

--
-- Name: traffics_id_seq; Type: SEQUENCE; Schema: public; Owner: app
--

CREATE SEQUENCE public.traffics_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.traffics_id_seq OWNER TO app;

--
-- Name: traffics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: app
--

ALTER SEQUENCE public.traffics_id_seq OWNED BY public.traffics.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: app
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    role integer DEFAULT 2
);


ALTER TABLE public.users OWNER TO app;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: app
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO app;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: app
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: banners id; Type: DEFAULT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.banners ALTER COLUMN id SET DEFAULT nextval('public.banners_id_seq'::regclass);


--
-- Name: ckeditor_assets id; Type: DEFAULT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.ckeditor_assets ALTER COLUMN id SET DEFAULT nextval('public.ckeditor_assets_id_seq'::regclass);


--
-- Name: foods id; Type: DEFAULT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.foods ALTER COLUMN id SET DEFAULT nextval('public.foods_id_seq'::regclass);


--
-- Name: images id; Type: DEFAULT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public.images_id_seq'::regclass);


--
-- Name: mobility_string_translations id; Type: DEFAULT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.mobility_string_translations ALTER COLUMN id SET DEFAULT nextval('public.mobility_string_translations_id_seq'::regclass);


--
-- Name: mobility_text_translations id; Type: DEFAULT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.mobility_text_translations ALTER COLUMN id SET DEFAULT nextval('public.mobility_text_translations_id_seq'::regclass);


--
-- Name: news id; Type: DEFAULT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.news ALTER COLUMN id SET DEFAULT nextval('public.news_id_seq'::regclass);


--
-- Name: regions id; Type: DEFAULT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.regions ALTER COLUMN id SET DEFAULT nextval('public.regions_id_seq'::regclass);


--
-- Name: rooms id; Type: DEFAULT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.rooms ALTER COLUMN id SET DEFAULT nextval('public.rooms_id_seq'::regclass);


--
-- Name: settings id; Type: DEFAULT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.settings ALTER COLUMN id SET DEFAULT nextval('public.settings_id_seq'::regclass);


--
-- Name: spots id; Type: DEFAULT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.spots ALTER COLUMN id SET DEFAULT nextval('public.spots_id_seq'::regclass);


--
-- Name: store_spots id; Type: DEFAULT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.store_spots ALTER COLUMN id SET DEFAULT nextval('public.store_spots_id_seq'::regclass);


--
-- Name: stores id; Type: DEFAULT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.stores ALTER COLUMN id SET DEFAULT nextval('public.stores_id_seq'::regclass);


--
-- Name: traffics id; Type: DEFAULT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.traffics ALTER COLUMN id SET DEFAULT nextval('public.traffics_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	production	2019-03-08 07:33:40.843133	2019-05-08 15:57:20.429338
\.


--
-- Data for Name: banners; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.banners (id, created_at, updated_at, image_ids, image_type, section1_image_ids, section2_image_ids, section3_image_ids) FROM stdin;
3	2019-04-04 14:34:46.532368	2020-02-12 06:43:09.608189	{279,281,280,282,283}	1	{}	{}	{}
2	2019-03-24 07:17:18.841308	2020-04-20 04:35:45.12757	{333,266,262,267}	0	{269,273}	{271}	{272}
\.


--
-- Data for Name: ckeditor_assets; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.ckeditor_assets (id, data_file_name, data_content_type, data_file_size, type, width, height, created_at, updated_at) FROM stdin;
1	image.png	image/png	1797990	Ckeditor::Picture	1425	826	2021-02-03 07:58:25.994412	2021-02-03 07:58:25.994412
\.


--
-- Data for Name: foods; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.foods (id, store_id, created_at, updated_at, image_ids, food_type, type, title, subtitle, "desc", sort, seq) FROM stdin;
6	\N	2019-03-30 10:44:24.195206	2020-02-12 06:23:17.129089	{275}	1	\N	\N	\N	\N	2	2
4	\N	2019-03-30 03:28:06.730221	2020-02-12 06:26:39.70651	{277}	2	\N	\N	\N	\N	3	3
5	\N	2019-03-30 03:28:08.468913	2020-02-12 06:29:42.721037	{278}	3	\N	\N	\N	\N	4	4
3	\N	2019-03-30 03:28:05.373051	2020-02-27 14:31:34.453255	{274}	0	\N	\N	\N	\N	1	1
\.


--
-- Data for Name: images; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.images (id, src, crop_x, crop_y, crop_w, crop_h, created_at, updated_at) FROM stdin;
1	M60說明_加入會簽欄位.png	117	0	1023	683	2019-03-08 07:35:50.336461	2019-03-08 07:36:00.919379
2	M60說明_加入會簽欄位.png	0	0	1600	1068	2019-03-08 07:42:52.014233	2019-03-08 07:42:52.014233
68	S__46612484.jpg	0	0	2700	1800	2019-04-10 12:55:43.859586	2019-04-10 12:55:43.859586
4	ig-logo.png	0	4	43	29	2019-03-09 01:13:12.731015	2019-03-09 01:13:30.656416
5	profile.jpg	0	66	200	133	2019-03-09 05:17:54.146799	2019-03-09 05:18:11.827345
6	profile.jpg	0	0	1600	1068	2019-03-09 05:19:34.018519	2019-03-09 05:19:34.018519
7	profile.jpg	0	0	1600	1068	2019-03-09 05:22:16.60966	2019-03-09 05:22:16.60966
8	profile.jpg	0	0	1600	1068	2019-03-09 05:23:20.629838	2019-03-09 05:23:20.629838
9	profile.jpg	0	0	1600	1068	2019-03-09 05:25:47.638639	2019-03-09 05:25:47.638639
10	profile.jpg	0	0	1600	1068	2019-03-09 05:27:10.901572	2019-03-09 05:27:10.901572
11	profile.jpg	0	0	1600	1068	2019-03-09 05:27:34.675044	2019-03-09 05:27:34.675044
12	profile.jpg	0	0	1600	1068	2019-03-09 05:31:13.31029	2019-03-09 05:31:13.31029
13	profile.jpg	0	0	1600	1068	2019-03-09 05:32:22.777579	2019-03-09 05:32:22.777579
14	螢幕快照_2019-03-08_17.20.31.png	0	0	1600	1068	2019-03-09 05:44:19.950272	2019-03-09 05:44:19.950272
16	螢幕快照_2019-03-06_09.24.15.png	0	0	1600	1068	2019-03-09 07:31:53.098468	2019-03-09 07:31:53.098468
17	螢幕快照_2019-03-06_09.24.36.png	0	0	1600	1068	2019-03-09 07:31:53.472046	2019-03-09 07:31:53.472046
3	M60說明_加入會簽欄位.png	26	0	683	683	2019-03-08 08:09:17.445752	2019-03-12 06:08:25.252948
18	環安衛.png	0	0	\N	\N	2019-03-12 06:08:30.801573	2019-03-12 06:08:30.801573
19	環安衛.png	0	0	\N	\N	2019-03-12 06:09:08.667419	2019-03-12 06:09:08.667419
20	環安衛.png	0	0	1600	1600	2019-03-12 06:10:46.282455	2019-03-12 06:10:46.282455
21	環安衛.png	0	0	1600	1600	2019-03-12 06:13:10.011525	2019-03-12 06:13:10.011525
22	reserv-room1.png	0	0	1600	1600	2019-03-16 13:44:19.066018	2019-03-16 13:44:19.066018
23	reserv-room1.png	0	0	1600	1600	2019-03-16 13:45:00.961017	2019-03-16 13:45:00.961017
24	reserv-room1.png	0	0	1600	1600	2019-03-17 07:11:20.976762	2019-03-17 07:11:20.976762
25	reserv-room1.png	0	0	1600	1600	2019-03-17 07:11:55.737635	2019-03-17 07:11:55.737635
26	SS1001_2.png	0	0	1600	1600	2019-03-20 05:27:12.8548	2019-03-20 05:27:12.8548
27	reserv-room1.png	0	0	1600	1600	2019-03-20 05:38:35.273829	2019-03-20 05:38:35.273829
28	reserv-room1.png	253	4	483	483	2019-03-21 06:41:40.935165	2019-03-21 06:41:59.364391
29	螢幕快照_2019-03-20_13.38.52.png	0	0	1600	1600	2019-03-21 13:37:05.157127	2019-03-21 13:37:05.157127
30	螢幕快照_2019-03-18_19_45_51.jpg	0	0	1600	1600	2019-03-24 06:35:28.446225	2019-03-24 06:35:28.446225
31	reserv-room1.png	0	0	1600	1600	2019-03-24 06:36:04.582095	2019-03-24 06:36:04.582095
32	reserv-room1.png	0	0	1600	1600	2019-03-24 06:37:27.572397	2019-03-24 06:37:27.572397
33	reserv-room1.png	0	0	1600	1600	2019-03-24 06:38:44.017986	2019-03-24 06:38:44.017986
34	reserv-room1.png	0	0	1600	1600	2019-03-24 07:12:13.308094	2019-03-24 07:12:13.308094
35	reserv-room1.png	0	0	1600	1600	2019-03-24 07:16:33.673067	2019-03-24 07:16:33.673067
36	S__46612484.jpg	0	0	1600	1600	2019-03-24 15:37:43.253569	2019-03-24 15:37:43.253569
37	S__46612484.jpg	0	0	1600	1600	2019-03-24 15:38:43.222528	2019-03-24 15:38:43.222528
65	archi-demo.2.png	957	418	1420	812	2019-04-08 04:47:26.980091	2019-04-18 02:38:48.383307
38	banner1.jpeg	545	0	1514	1514	2019-03-29 06:42:34.432395	2019-03-29 06:42:45.350547
39	banner1.jpeg	531	81	1514	865	2019-03-29 06:45:12.430007	2019-04-18 02:48:05.734276
40	banner0.jpeg	0	0	1600	1600	2019-03-30 10:38:35.882078	2019-03-30 10:38:35.882078
41	reserv-room1.png	0	0	1600	1600	2019-03-30 10:39:27.015897	2019-03-30 10:39:27.015897
42	banner1.jpeg	0	0	1600	1600	2019-03-30 10:39:57.320353	2019-03-30 10:39:57.320353
43	p1.jpg	0	0	1600	1600	2019-03-30 10:45:05.279364	2019-03-30 10:45:05.279364
44	food-b.png	0	0	1600	1600	2019-03-30 10:50:25.186787	2019-03-30 10:50:25.186787
45	food1.png	0	0	1600	1600	2019-03-30 10:50:55.832898	2019-03-30 10:50:55.832898
46	food-s.png	0	0	1600	1600	2019-03-30 10:51:18.91412	2019-03-30 10:51:18.91412
47	food-supper.png	0	0	1600	1600	2019-03-30 10:51:33.829205	2019-03-30 10:51:33.829205
48	food-supper.png	0	0	1600	1600	2019-03-30 14:40:40.145971	2019-03-30 14:40:40.145971
49	71l8Pr1SIlL._SL1500_.jpg	0	0	1600	1600	2019-04-04 14:47:11.425031	2019-04-04 14:47:11.425031
50	716I_1jCnkL._SL1182_.jpg	0	0	1600	1600	2019-04-04 14:47:11.423564	2019-04-04 14:47:11.423564
51	71l8Pr1SIlL._SL1500_.jpg	0	0	1600	1600	2019-04-04 14:47:59.299377	2019-04-04 14:47:59.299377
52	716I_1jCnkL._SL1182_.jpg	0	0	1600	1600	2019-04-04 14:47:59.400299	2019-04-04 14:47:59.400299
53	716I_1jCnkL._SL1182_.jpg	0	0	1600	1600	2019-04-04 14:48:41.416611	2019-04-04 14:48:41.416611
54	71l8Pr1SIlL._SL1500_.jpg	0	0	1600	1600	2019-04-04 14:48:41.670569	2019-04-04 14:48:41.670569
55	716I_1jCnkL._SL1182_.jpg	0	0	1600	1600	2019-04-04 14:49:43.699248	2019-04-04 14:49:43.699248
56	71l8Pr1SIlL._SL1500_.jpg	0	0	1600	1600	2019-04-04 14:49:43.770914	2019-04-04 14:49:43.770914
57	71l8Pr1SIlL._SL1500_.jpg	0	0	1600	1600	2019-04-04 14:50:30.70768	2019-04-04 14:50:30.70768
58	716I_1jCnkL._SL1182_.jpg	0	0	1600	1600	2019-04-04 14:50:30.717218	2019-04-04 14:50:30.717218
59	1.jpg	0	0	1600	1600	2019-04-04 14:53:21.151239	2019-04-04 14:53:21.151239
60	1.jpg	0	0	1600	1600	2019-04-04 14:54:35.780883	2019-04-04 14:54:35.780883
61	71l8Pr1SIlL._SL1500_.jpg	0	0	1600	1600	2019-04-04 14:54:59.351853	2019-04-04 14:54:59.351853
62	716I_1jCnkL._SL1182_.jpg	121	18	798	798	2019-04-04 16:19:35.673134	2019-04-04 16:19:50.634367
63	reserv-room1.png	0	0	1600	1600	2019-04-07 15:42:20.599385	2019-04-07 15:42:20.599385
64	trs-banner-new.png	0	189	2487	1422	2019-04-08 04:42:59.021658	2019-04-15 06:13:15.997565
67	reserv-room1.png	19	4	817	483	2019-04-08 07:01:01.832423	2019-11-04 09:57:47.454584
66	reserv-room1.png	0	0	875	441	2019-04-08 06:59:45.792462	2019-04-14 16:09:16.420627
69	S__46612484.jpg	0	0	2700	1800	2019-04-10 13:38:16.847411	2019-04-10 13:38:16.847411
70	S__46612484.jpg	0	0	362	547	2019-04-10 13:47:37.714834	2019-04-10 13:47:37.714834
71	S__46612483.jpg	0	0	1042	782	2019-04-10 13:47:58.064962	2019-04-10 13:47:58.064962
72	S__46612483.jpg	0	0	362	547	2019-04-10 13:48:59.260163	2019-04-10 13:48:59.260163
73	S__46612484.jpg	0	0	362	547	2019-04-10 13:49:26.836342	2019-04-10 13:49:26.836342
74	S__46612484.jpg	0	0	362	547	2019-04-10 13:52:16.673984	2019-04-10 13:52:16.673984
75	S__46612483.jpg	0	0	362	547	2019-04-10 13:58:52.908722	2019-04-10 13:58:52.908722
76	S__46612484.jpg	0	0	362	547	2019-04-10 14:04:28.043965	2019-04-10 14:04:28.043965
77	S__46612484.jpg	0	0	590	373	2019-04-10 14:06:31.468749	2019-04-10 14:06:31.468749
78	S__46612484.jpg	0	0	590	373	2019-04-10 14:08:01.38065	2019-04-10 14:08:01.38065
79	S__46612484.jpg	0	0	362	547	2019-04-10 14:09:41.071589	2019-04-10 14:09:41.071589
80	S__46612484.jpg	0	0	362	547	2019-04-10 14:10:36.242972	2019-04-10 14:10:36.242972
81	S__46612484.jpg	0	0	362	547	2019-04-10 14:30:12.131167	2019-04-10 14:30:12.131167
82	S__46612484.jpg	0	0	362	547	2019-04-10 14:31:23.986274	2019-04-10 14:31:23.986274
83	S__46612484.jpg	0	0	362	547	2019-04-10 14:33:43.309041	2019-04-10 14:33:43.309041
84	s1.png	0	0	362	547	2019-04-10 15:10:51.669606	2019-04-10 15:10:51.669606
85	s1.png	0	0	362	547	2019-04-10 15:10:51.684907	2019-04-10 15:10:51.684907
86	s1.png	0	0	362	547	2019-04-10 15:32:05.361036	2019-04-10 15:32:05.361036
87	S__46612484.jpg	0	0	362	547	2019-04-10 15:33:14.625472	2019-04-10 15:33:14.625472
88	s2.jpg	0	0	1042	782	2019-04-10 15:33:20.708307	2019-04-10 15:33:20.708307
89	s2.jpg	0	0	590	373	2019-04-10 15:33:52.929233	2019-04-10 15:33:52.929233
90	s3.png	0	0	590	373	2019-04-10 15:35:20.513759	2019-04-10 15:35:20.513759
93	s1.png	0	0	2700	1800	2019-04-10 17:00:24.20461	2019-04-10 17:00:24.20461
91	S__46612483.jpg	0	86	1108	738	2019-04-10 16:58:50.237118	2019-04-10 17:00:27.076777
92	S__46612484.jpg	0	63	1108	738	2019-04-10 16:59:01.758927	2019-04-10 17:00:33.928907
94	S__46612483.jpg	0	0	1108	738	2019-04-10 17:02:21.690697	2019-04-10 17:02:30.686117
95	S__46612484.jpg	0	0	1108	738	2019-04-10 17:02:26.141696	2019-04-10 17:02:34.630866
96	s1.png	0	0	362	547	2019-04-10 17:02:39.697104	2019-04-10 17:02:39.697104
97	s3.png	508	110	361	546	2019-04-10 17:02:50.227658	2019-04-10 17:02:55.14894
98	s2.jpg	0	0	1565	1175	2019-04-10 17:02:59.763995	2019-04-10 17:03:08.005971
99	s3.png	0	0	1225	774	2019-04-10 17:03:13.129627	2019-04-10 17:03:22.121987
101	S__46612484.jpg	0	0	1108	738	2019-04-10 17:03:47.483383	2019-04-10 17:05:10.89045
100	S__46612483.jpg	0	0	1108	738	2019-04-10 17:03:44.562904	2019-04-10 17:05:15.4919
145	testImg.jpg	0	0	956	606	2019-04-16 12:47:16.923657	2019-04-16 12:47:16.923657
144	testImg.jpg	493	567	955	606	2019-04-16 12:13:04.936528	2019-04-16 12:47:36.973046
104	banner0.jpeg	0	0	2700	1799	2019-04-11 10:22:52.019654	2019-04-11 10:22:59.535627
105	content1-img1.png	40	59	790	1193	2019-04-11 10:23:10.739161	2019-04-11 10:23:21.26991
106	banner2.jpeg	570	0	785	1187	2019-04-11 10:23:31.603342	2019-04-11 10:23:55.448908
107	banner1.jpeg	0	0	2017	1514	2019-04-11 10:24:04.701914	2019-04-11 10:24:10.607732
108	banner3.jpeg	301	248	2000	1264	2019-04-11 10:32:53.451779	2019-04-11 10:33:00.9498
146	banner1.jpeg	0	0	2271	1514	2019-04-18 02:36:04.980148	2019-04-18 02:36:17.281895
147	banner3.jpeg	0	0	2700	1799	2019-04-18 02:36:29.248797	2019-04-18 02:36:36.763796
110	food-s.png	0	0	1600	1600	2019-04-12 02:21:35.877357	2019-04-12 02:21:35.877357
111	food-s.png	0	0	1600	1600	2019-04-12 02:23:07.443257	2019-04-12 02:23:07.443257
112	food-s.png	0	0	1600	1600	2019-04-12 02:23:53.051118	2019-04-12 02:23:53.051118
113	food-supper.png	0	0	1600	1600	2019-04-12 02:27:45.957294	2019-04-12 02:27:45.957294
114	food-s.png	0	0	1600	1600	2019-04-12 02:40:57.50416	2019-04-12 02:40:57.50416
115	food-b.png	0	0	1600	1600	2019-04-12 08:25:39.190887	2019-04-12 08:25:39.190887
116	food-supper.png	0	0	1600	1600	2019-04-12 08:29:30.807745	2019-04-12 08:29:30.807745
117	S__46612484.jpg	0	60	1108	738	2019-04-14 16:07:32.624049	2019-04-14 16:07:38.619126
118	s3.png	0	0	1000	504	2019-04-14 16:08:36.744482	2019-04-14 16:08:36.744482
148	banner2.jpeg	0	0	1950	1300	2019-04-18 02:37:38.087345	2019-04-18 02:37:47.967093
109	facility1.png	147	0	663	420	2019-04-11 15:37:07.26358	2019-04-14 16:35:16.299212
120	food-supper.png	0	38	615	351	2019-04-14 16:36:40.192066	2019-04-14 16:36:45.983166
15	大阪難波_日本橋商圈.jpg	26	92	448	256	2019-03-09 05:44:42.879924	2019-04-15 01:47:43.772204
121	預算申請欄位說明.png	0	0	955	606	2019-04-15 02:02:28.650549	2019-04-15 02:02:28.650549
122	IMG_20190321_103808.jpg	0	0	955	606	2019-04-15 02:02:43.149646	2019-04-15 02:02:43.149646
123	預算申請欄位說明.png	0	0	955	606	2019-04-15 02:03:36.788824	2019-04-15 02:03:36.788824
124	預算申請欄位說明.png	0	0	955	606	2019-04-15 02:07:59.185912	2019-04-15 02:07:59.185912
125	預算申請欄位說明.png	0	0	955	606	2019-04-15 02:08:18.660201	2019-04-15 02:08:18.660201
126	預算申請欄位說明.png	0	0	955	606	2019-04-15 02:10:31.313284	2019-04-15 02:10:31.313284
127	VirtualBox_Win7_OP_09_04_2019_16_22_49.png	0	0	955	606	2019-04-15 02:12:37.701673	2019-04-15 02:12:37.701673
128	food-b.png	0	0	614	390	2019-04-15 07:28:15.063963	2019-04-15 07:28:22.993071
129	food1.png	0	19	670	425	2019-04-15 07:29:25.370357	2019-04-15 07:29:32.759391
130	food1.png	128	87	434	275	2019-04-15 09:27:22.404732	2019-04-15 09:27:35.912191
102	s2.jpg	0	352	1294	821	2019-04-10 17:06:00.54533	2019-04-15 13:12:13.882274
131	s1.png	0	0	680	380	2019-04-15 23:54:24.232871	2019-04-15 23:54:24.232871
132	testImg.jpg	0	0	680	380	2019-04-15 23:57:16.086247	2019-04-15 23:57:16.086247
133	S__46612484.jpg	0	0	1000	504	2019-04-15 23:57:33.444913	2019-04-15 23:57:33.444913
134	testImg.jpg	0	0	680	380	2019-04-15 23:59:36.881942	2019-04-15 23:59:36.881942
135	testImg.jpg	0	0	680	380	2019-04-16 00:00:40.615015	2019-04-16 00:00:40.615015
136	testImg.jpg	0	0	680	380	2019-04-16 00:01:07.102267	2019-04-16 00:01:07.102267
137	預算申請欄位說明.png	0	0	1000	504	2019-04-16 00:53:38.092097	2019-04-16 00:53:38.092097
138	GATE_Mock-Test.jpg	0	0	626	350	2019-04-16 00:54:43.307558	2019-04-16 00:54:48.887976
139	1506964794-4efdd2f969559e8b1c92e99f32ded48e.jpg	0	0	680	380	2019-04-16 01:00:21.863917	2019-04-16 01:00:21.863917
140	1506964794-4efdd2f969559e8b1c92e99f32ded48e.jpg	0	0	1600	1600	2019-04-16 01:02:36.311501	2019-04-16 01:02:36.311501
141	GATE_Mock-Test.jpg	0	0	1600	1600	2019-04-16 01:02:51.527392	2019-04-16 01:02:51.527392
163	reserv-banner.png	0	0	1000	504	2019-04-18 03:39:51.920334	2019-04-18 03:39:51.920334
103	s3.png	96	108	955	606	2019-04-10 17:06:36.464989	2019-04-16 11:27:43.727927
149	food-s.png	0	18	615	351	2019-04-18 02:39:08.376043	2019-04-18 02:39:22.970211
150	food-b.png	0	0	1990	1138	2019-04-18 02:43:09.623985	2019-04-18 02:43:09.623985
151	news-pic.png	0	22	460	263	2019-04-18 02:48:51.760398	2019-04-18 02:49:06.609901
153	food1.png	0	0	1600	1600	2019-04-18 03:00:25.386176	2019-04-18 03:00:25.386176
154	food-b.png	0	0	1600	1600	2019-04-18 03:01:33.791318	2019-04-18 03:01:33.791318
155	food-b.png	0	0	1600	1600	2019-04-18 03:10:27.16063	2019-04-18 03:10:27.16063
156	food-b.png	0	0	614	390	2019-04-18 03:22:45.635002	2019-04-18 03:22:53.838364
157	food-s.png	0	0	955	606	2019-04-18 03:23:29.907429	2019-04-18 03:23:29.907429
158	food-supper.png	0	0	955	606	2019-04-18 03:25:33.225798	2019-04-18 03:25:33.225798
159	food1.png	0	0	955	606	2019-04-18 03:26:11.924926	2019-04-18 03:26:11.924926
160	index-bed.jpeg	0	385	1567	789	2019-04-18 03:29:31.063549	2019-04-18 03:29:41.471552
161	news-pic3.png	0	51	460	231	2019-04-18 03:30:01.228193	2019-04-18 03:30:10.472473
162	news-pic2.png	0	38	460	257	2019-04-18 03:39:08.789822	2019-04-18 03:39:16.963949
165	hotel-list.png	0	13	400	236	2019-04-18 03:41:10.122482	2019-11-04 09:59:22.571513
143	index-bed.jpeg	0	224	1567	875	2019-04-16 06:22:00.207578	2019-11-04 10:08:33.063244
166	banner1.jpeg	0	0	2700	1800	2019-04-19 23:49:14.19833	2019-04-19 23:49:14.19833
167	banner1.jpeg	0	0	2700	1800	2019-04-19 23:49:46.896499	2019-04-19 23:49:46.896499
168	banner1.jpeg	0	0	2700	1800	2019-04-19 23:55:54.315066	2019-04-19 23:55:54.315066
169	banner1.jpeg	0	0	2700	1800	2019-04-20 00:03:20.592219	2019-04-20 00:03:20.592219
170	banner1.jpeg	0	0	2700	1800	2019-04-20 00:10:25.389567	2019-04-20 00:10:25.389567
171	banner1.jpeg	0	0	2700	1800	2019-04-20 00:13:19.251105	2019-04-20 00:13:19.251105
172	food-supper.png	0	0	1600	1067	2019-04-20 00:37:00.937525	2019-04-20 00:37:00.937525
173	IMG_20190404_165342.jpg	0	0	2700	1800	2019-04-20 09:23:51.583595	2019-04-20 09:23:51.583595
174	IMG_20190404_165342.jpg	0	0	680	380	2019-04-20 09:35:41.582345	2019-04-20 09:35:41.582345
175	IMG_20190404_171959.jpg	0	0	680	380	2019-04-20 09:35:50.345035	2019-04-20 09:35:50.345035
176	s3.png	0	0	680	380	2019-04-20 09:36:47.803978	2019-04-20 09:36:47.803978
177	IMG_20190404_171959.jpg	0	0	680	380	2019-04-20 09:42:15.313262	2019-04-20 09:42:15.313262
178	IMG_20190404_165342.jpg	0	0	680	380	2019-04-20 09:42:20.659261	2019-04-20 09:42:20.659261
119	news-pic.png	17	0	442	295	2019-04-14 16:15:55.673602	2019-04-21 19:40:32.42251
179	IMG_20190404_165342.jpg	0	0	673	448	2019-04-20 13:56:02.028503	2019-04-20 13:56:08.019019
181	IMG_20190404_165342.jpg	208	4	465	306	2019-04-20 14:03:25.187405	2019-04-20 14:03:34.309198
152	index-room.png	1	0	1152	768	2019-04-18 02:52:32.451255	2019-04-21 19:34:55.940611
164	reserv-banner.png	187	0	1082	640	2019-04-18 03:40:47.786047	2019-11-04 09:59:01.382289
180	IMG_20190404_171959.jpg	0	244	673	133	2019-04-20 14:03:13.64239	2019-04-20 14:03:29.750156
182	banner2.jpeg	0	0	1950	1300	2019-04-21 19:05:56.836457	2019-04-21 19:06:07.952901
183	hotel-list.png	0	0	465	306	2019-04-21 19:13:55.777369	2019-04-21 19:13:55.777369
184	traffic-list1.png	0	0	1547	306	2019-04-21 19:14:22.218588	2019-04-21 19:14:22.218588
185	hotel-list.png	0	0	465	306	2019-04-21 19:14:31.76992	2019-04-21 19:14:31.76992
186	hotel-list.png	0	0	680	380	2019-04-21 19:16:16.313218	2019-04-21 19:16:16.313218
188	banner1.jpeg	0	0	2271	1514	2019-04-21 19:36:34.02607	2019-04-21 19:36:46.058509
142	1506964794-4efdd2f969559e8b1c92e99f32ded48e.jpg	0	0	1600	1067	2019-04-16 01:03:03.433314	2019-04-21 19:39:14.048486
217	3-stacey-gabrielle-koenitz-rozells-544527-unsplash.jpg	0	0	2700	1800	2019-04-23 13:14:00.659913	2019-04-23 13:14:00.659913
189	food1.png	0	0	642	407	2019-04-22 04:01:03.93837	2019-04-22 04:01:48.807336
190	RP22649_1090.jpg	0	44	796	444	2019-04-23 08:49:11.385332	2019-04-23 08:49:26.90011
191	1-grey-business-apartment-2.jpg	0	148	1820	917	2019-04-23 09:12:48.555562	2019-04-23 09:13:06.736889
192	4-img-1502867155-77586.jpg	0	0	1000	504	2019-04-23 09:13:30.788193	2019-04-23 09:13:30.788193
193	2-RP22114_1034.jpg	0	98	796	401	2019-04-23 09:13:31.932522	2019-04-23 09:13:46.651182
194	3-Mies-3-768x1024.jpg	0	270	768	387	2019-04-23 09:13:33.107088	2019-04-23 09:14:25.241411
195	3-RP22649_1097.jpg	0	0	680	380	2019-04-23 10:15:49.29548	2019-04-23 10:15:49.29548
196	3-RP22649_1097.jpg	0	68	796	444	2019-04-23 10:16:49.544294	2019-04-23 10:17:05.517866
197	3-RP22649_1097.jpg	0	0	956	606	2019-04-23 11:56:55.859224	2019-04-23 11:56:55.859224
198	1-H10-Casa-Mimosa-Hotel-Barcelona-by-Tarruella-Trenchs-Studio-Yellowtrace-15.jpg	0	651	1500	1000	2019-04-23 11:59:30.268124	2019-04-23 12:00:10.992055
199	2-c862e5da93c83d47afd170ccbf2cc167.jpg	0	0	794	1200	2019-04-23 12:02:09.634346	2019-04-23 12:02:25.978173
200	3-Mies-3-768x1024.jpg	46	0	677	1024	2019-04-23 12:02:17.239606	2019-04-23 12:02:58.410004
201	4-grey-business-apartment-2.jpg	0	0	1614	1212	2019-04-23 12:03:35.260389	2019-04-23 12:03:58.950575
202	1-H10-Casa-Mimosa-Hotel-Barcelona-by-Tarruella-Trenchs-Studio-Yellowtrace-15.jpg	0	783	1500	858	2019-04-23 12:10:56.409325	2019-04-23 12:11:18.872277
203	2-H10-Casa-Mimosa-Hotel-Barcelona-by-Tarruella-Trenchs-Studio-Yellowtrace-07.jpg	0	498	900	514	2019-04-23 12:18:56.006592	2019-04-23 12:19:05.468666
204	3-H10-Casa-Mimosa-Hotel-Barcelona-by-Tarruella-Trenchs-Studio-Yellowtrace-08.jpg	0	421	900	514	2019-04-23 12:19:11.654041	2019-04-23 12:19:20.200241
205	3-H10-Casa-Mimosa-Hotel-Barcelona-by-Tarruella-Trenchs-Studio-Yellowtrace-08.jpg	0	422	900	514	2019-04-23 12:20:19.776617	2019-04-23 12:20:27.829417
206	7-eric-mcnew-762340-unsplash.jpg	0	211	3000	1715	2019-04-23 12:22:08.683394	2019-04-23 12:22:21.544473
207	5-d1617778eb8480a85572c5f51ae2f554.jpg	0	247	564	356	2019-04-23 12:52:16.173991	2019-04-23 12:52:43.99078
208	4-jakub-dziubak-312759-unsplash.jpg	0	943	2832	1797	2019-04-23 13:03:42.691648	2019-04-23 13:03:53.562835
209	5-adam-jaime-119568-unsplash.jpg	0	200	6001	3804	2019-04-23 13:04:34.595404	2019-04-23 13:04:51.961827
210	5-adam-jaime-119568-unsplash.jpg	0	41	1200	760	2019-04-23 13:09:27.026269	2019-04-23 13:09:34.842706
211	7-eric-mcnew-762340-unsplash.jpg	0	10	1199	760	2019-04-23 13:09:44.769783	2019-04-23 13:09:57.34034
212	4-jakub-dziubak-312759-unsplash.jpg	0	270	801	508	2019-04-23 13:10:20.466895	2019-04-23 13:10:28.926156
213	8-H10-Casa-Mimosa-Hotel-Barcelona-by-Tarruella-Trenchs-Studio-Yellowtrace-07.jpg	0	478	900	600	2019-04-23 13:11:06.574796	2019-04-23 13:11:18.01611
214	1-H10-Casa-Mimosa-Hotel-Barcelona-by-Tarruella-Trenchs-Studio-Yellowtrace-15.jpg	0	660	1500	1000	2019-04-23 13:11:25.529521	2019-04-23 13:11:35.457929
215	3-Mies-3-768x1024.jpg	0	217	768	512	2019-04-23 13:11:49.421311	2019-04-23 13:12:08.719336
216	1-H10-Casa-Mimosa-Hotel-Barcelona-by-Tarruella-Trenchs-Studio-Yellowtrace-15.jpg	0	659	1500	1000	2019-04-23 13:13:26.212057	2019-04-23 13:13:34.749621
218	1-fredrik-ohlander-600683-unsplash.jpg	0	0	1920	1280	2019-04-23 13:15:34.352234	2019-04-23 13:17:09.247091
219	3-stacey-gabrielle-koenitz-rozells-544527-unsplash.jpg	0	0	1920	1280	2019-04-23 13:17:19.565202	2019-04-23 13:17:32.590139
220	1-H10-Casa-Mimosa-Hotel-Barcelona-by-Tarruella-Trenchs-Studio-Yellowtrace-15.jpg	0	756	1500	1000	2019-04-24 07:12:09.643037	2019-04-24 07:12:19.984627
221	2-H10-Casa-Mimosa-Hotel-Barcelona-by-Tarruella-Trenchs-Studio-Yellowtrace-07.jpg	0	434	900	600	2019-04-24 07:13:37.801976	2019-04-24 07:13:46.533187
222	2-H10-Casa-Mimosa-Hotel-Barcelona-by-Tarruella-Trenchs-Studio-Yellowtrace-07.jpg	0	430	900	600	2019-04-24 07:31:57.695658	2019-04-24 07:32:08.271541
223	3-H10-Casa-Mimosa-Hotel-Barcelona-by-Tarruella-Trenchs-Studio-Yellowtrace-08.jpg	0	382	900	600	2019-04-24 07:32:28.284684	2019-04-24 07:32:35.414202
224	1-grey-business-apartment-2.jpg	0	149	1820	917	2019-04-25 12:15:52.582793	2019-04-25 12:16:26.09186
246	7-RP22649_1085.jpg	0	69	796	471	2019-05-06 03:28:39.301612	2019-11-04 10:11:19.652649
227	3-Mies-3-768x1024.jpg	0	281	768	454	2019-04-25 12:17:12.127064	2019-05-06 04:14:39.424812
228	4-img-1502867155-77586.jpg	0	75	980	579	2019-04-25 12:17:37.426414	2019-05-06 04:14:44.484675
229	5-grey-business-1600x1067.jpg	0	120	1600	946	2019-04-25 12:17:56.32201	2019-05-06 04:14:48.251372
230	6-RP22363_1041.jpg	0	54	796	471	2019-04-25 12:18:23.981277	2019-05-06 04:14:55.129125
231	banner1.jpeg	0	0	680	380	2019-04-28 15:34:01.980056	2019-04-28 15:34:01.980056
232	banner1.jpeg	0	0	1000	504	2019-04-28 15:34:09.52053	2019-04-28 15:34:09.52053
233	banner0.jpeg	0	0	1000	504	2019-04-28 15:34:09.728994	2019-04-28 15:34:09.728994
234	food-s.png	0	0	680	380	2019-04-28 15:35:45.756901	2019-04-28 15:35:45.756901
235	banner1.jpeg	0	0	1000	504	2019-04-28 15:35:52.898939	2019-04-28 15:35:52.898939
236	banner0.jpeg	0	0	1000	504	2019-04-28 15:35:52.98486	2019-04-28 15:35:52.98486
237	food1.png	0	108	670	132	2019-04-28 15:43:57.965124	2019-04-28 15:49:42.204226
238	下載__3_.jpeg	0	18	200	100	2019-04-28 18:38:22.857171	2019-04-28 18:41:03.294662
239	下載__2_.jpeg	0	2	200	111	2019-04-28 18:41:09.172338	2019-04-28 18:45:57.350128
240	reserv-room1.png	0	0	1547	306	2019-04-29 02:17:29.539508	2019-04-29 02:17:29.539508
241	food-supper.png	0	0	465	306	2019-04-29 02:17:40.860017	2019-04-29 02:17:40.860017
242	banner2.jpeg	0	0	1673	843	2019-05-02 11:40:09.277724	2019-05-02 11:40:16.016009
243	banner1.jpeg	0	277	2688	531	2019-05-03 06:07:21.041287	2019-05-06 03:19:52.528112
244	3-pic_room0401.jpg	0	63	920	514	2019-05-06 03:26:29.248945	2019-05-06 03:26:40.79001
187	reserv-room1.png	0	26	810	452	2019-04-21 19:16:42.281918	2019-11-04 10:11:26.980314
247	1-grey-business-apartment-2.jpg	1	195	1819	1016	2019-05-06 03:31:42.11627	2019-05-06 03:31:51.831926
248	2-nigel-tadyanehondo-196596-unsplash.jpg	1	158	1918	1279	2019-05-06 03:59:58.514749	2019-05-06 04:00:11.843777
249	2-nigel-tadyanehondo-196596-unsplash.jpg	1	158	1918	1279	2019-05-06 04:00:34.965215	2019-05-06 04:00:48.758442
251	2018051873269177.jpg	0	0	1225	725	2019-06-03 03:52:20.662679	2019-06-03 03:52:20.662679
250	3-stacey-gabrielle-koenitz-rozells-544527-unsplash.jpg	0	131	1920	1072	2019-05-08 06:50:30.688611	2019-05-08 06:50:42.76594
226	2-RP22114_1034.jpg	0	49	796	471	2019-04-25 12:16:59.117748	2019-11-04 10:11:01.363743
252	index-room.png	0	30	1225	725	2019-11-04 10:09:52.259703	2019-11-04 10:10:02.511675
245	2-RP22114_1034.jpg	0	36	796	471	2019-05-06 03:27:22.822707	2019-11-04 10:10:41.010289
253	banner1.jpeg	0	0	2558	1513	2019-11-04 10:10:21.373394	2019-11-04 10:10:34.550761
225	1-grey-business-apartment-2.jpg	0	76	1820	1077	2019-04-25 12:16:41.415096	2019-11-04 10:10:55.480781
254	8.jpg	639	0	4789	2739	2019-12-04 08:31:54.789617	2019-12-04 08:32:33.661416
255	wsc0z6VaQNKaOYksTOke_Ace630__NYC-hpr.jpg	0	0	1600	1067	2020-01-10 03:59:13.611026	2020-01-10 03:59:13.611026
256	au79melbourne7.jpg	0	0	1600	1067	2020-01-10 03:59:43.95576	2020-01-10 03:59:43.95576
257	contemporary-hotel_040616_11.jpg	0	0	1600	1067	2020-01-10 04:00:10.374989	2020-01-10 04:00:10.374989
258	Azure-In-Your-Wheelhouse-01.jpg	65	0	796	531	2020-01-10 04:00:43.803814	2020-01-10 04:00:54.309448
259	FA4806D0-8CC4-4188-B4D5-13FBA5B352C8.jpeg	0	0	1990	1138	2020-02-07 10:34:05.027361	2020-02-07 10:34:05.027361
260	20200107Kindnessday092A-s.jpg	0	0	2700	1800	2020-02-12 03:37:37.864158	2020-02-12 03:37:37.864158
261	20200107Kindnessday092A-s.jpg	0	0	2700	1800	2020-02-12 03:38:24.892419	2020-02-12 03:38:24.892419
262	20200107Kindnessday092A-s.jpg	0	0	2700	1800	2020-02-12 03:40:11.872514	2020-02-12 03:40:11.872514
263	20200107Kindnessday005H-s.jpg	0	0	2700	1800	2020-02-12 03:42:07.861595	2020-02-12 03:42:07.861595
264	20200107Kindnessday093A-s.jpg	0	0	2700	1800	2020-02-12 03:44:44.948053	2020-02-12 03:44:44.948053
265	20200107Kindnessday082B-s.jpg	0	0	2700	1800	2020-02-12 03:48:40.526662	2020-02-12 03:48:40.526662
266	20200107Kindnessday091-s.jpg	0	0	2700	1800	2020-02-12 03:54:36.429101	2020-02-12 03:54:36.429101
267	20200107Kindnessday094A-s.jpg	0	0	2700	1800	2020-02-12 04:07:45.402509	2020-02-12 04:07:45.402509
268	20200107Kindnessday012-s.jpg	0	0	362	547	2020-02-12 05:39:53.450577	2020-02-12 05:39:53.450577
269	20200107Kindnessday012-ss.jpg	0	0	587	888	2020-02-12 05:45:34.713854	2020-02-12 05:45:49.085244
270	20200107Kindnessday040-s.jpg	0	0	1042	782	2020-02-12 05:54:11.665751	2020-02-12 05:54:11.665751
271	20200107Kindnessday040-ss.jpg	0	0	1306	980	2020-02-12 05:58:50.369877	2020-02-12 05:59:05.148879
272	20200107Kindnessday052-ss.jpg	0	0	814	515	2020-02-12 06:04:13.162107	2020-02-12 06:04:19.476005
273	20200107Kindnessday114-ss.jpg	0	0	587	888	2020-02-12 06:07:54.5798	2020-02-12 06:08:03.870109
274	20200107Kindnessday069-s.jpg	0	0	955	606	2020-02-12 06:21:18.36196	2020-02-12 06:21:18.36196
275	20200107Kindnessday070-s.jpg	0	0	955	606	2020-02-12 06:23:07.995166	2020-02-12 06:23:07.995166
276	20200107Kindnessday071Ba-s.jpg	0	0	955	606	2020-02-12 06:25:20.997002	2020-02-12 06:25:20.997002
277	20200107Kindnessday071Ba-s.jpg	0	0	955	606	2020-02-12 06:26:34.516885	2020-02-12 06:26:34.516885
278	20200107Kindnessday072A-s.jpg	0	0	955	606	2020-02-12 06:29:34.670389	2020-02-12 06:29:34.670389
279	20200107Kindnessday064-s.jpg	0	0	956	606	2020-02-12 06:42:00.867497	2020-02-12 06:42:00.867497
280	20200107Kindnessday063-s.jpg	0	0	956	606	2020-02-12 06:42:12.017577	2020-02-12 06:42:12.017577
281	20200107Kindnessday068-s.jpg	0	0	956	606	2020-02-12 06:42:28.153698	2020-02-12 06:42:28.153698
282	20200107Kindnessday062-s.jpg	0	0	956	606	2020-02-12 06:42:47.548331	2020-02-12 06:42:47.548331
283	20200107Kindnessday066-s.jpg	0	0	956	606	2020-02-12 06:43:01.905362	2020-02-12 06:43:01.905362
284	20200107Kindnessday073-s.jpg	0	0	1990	1138	2020-02-12 07:11:14.598568	2020-02-12 07:11:14.598568
285	20200107Kindnessday074-s.jpg	0	0	1990	1138	2020-02-12 07:11:28.33134	2020-02-12 07:11:28.33134
286	_DSC1475-s.jpg	0	0	1990	1138	2020-02-12 07:11:46.095626	2020-02-12 07:11:46.095626
287	_DSC1450-s.jpg	0	0	1990	1138	2020-02-12 07:11:58.110582	2020-02-12 07:11:58.110582
288	20200107Kindnessday113-s.jpg	0	0	1990	1138	2020-02-12 07:12:12.719427	2020-02-12 07:12:12.719427
289	20200107Kindnessday001-1-s.jpg	0	0	1547	306	2020-02-12 07:27:08.046455	2020-02-12 07:27:08.046455
290	20200107Kindnessday005H-s.jpg	0	0	465	306	2020-02-12 07:35:42.179568	2020-02-12 07:35:42.179568
291	20200107Kindnessday030-s.jpg	0	0	1110	620	2020-02-12 07:56:55.764556	2020-02-12 07:57:03.750589
292	20200107Kindnessday030-ss.jpg	0	0	1632	966	2020-02-12 08:02:00.687261	2020-02-12 08:02:12.564871
293	20200107Kindnessday031-ss.jpg	0	0	1632	966	2020-02-12 08:04:26.130937	2020-02-12 08:04:33.286202
294	20200107Kindnessday032-ss.jpg	0	0	1632	966	2020-02-12 08:06:35.589122	2020-02-12 08:06:43.830225
295	20200107Kindnessday059-ss.jpg	0	0	1632	966	2020-02-12 08:08:41.040522	2020-02-12 08:08:47.055402
296	20200107Kindnessday033-ss.jpg	0	0	1632	966	2020-02-12 08:11:05.729124	2020-02-12 08:11:11.981054
297	20200107Kindnessday034-ss.jpg	0	0	1632	966	2020-02-12 08:13:05.582167	2020-02-12 08:13:18.931507
298	20200107Kindnessday075-ss.jpg	0	0	1632	966	2020-02-12 08:14:59.776557	2020-02-12 08:15:12.882992
299	20200107Kindnessday075-ss.jpg	0	0	1632	966	2020-02-12 08:18:54.887443	2020-02-12 08:19:04.04455
300	20200107Kindnessday078A-ss.jpg	0	0	1632	966	2020-02-12 08:19:12.083544	2020-02-12 08:19:18.383722
301	20200107Kindnessday077-ss.jpg	0	0	1631	965	2020-02-12 08:28:15.432117	2020-02-12 08:28:21.712082
302	20200107Kindnessday076-ss.jpg	0	0	1632	966	2020-02-12 08:28:32.333753	2020-02-12 08:28:46.810162
303	20200107Kindnessday030-s.jpg	0	0	1110	620	2020-02-12 10:21:18.741033	2020-02-12 10:21:25.385507
304	20200107Kindnessday030-ss.jpg	1	0	1631	965	2020-02-12 10:21:38.258798	2020-02-12 10:21:44.926875
305	20200107Kindnessday032-ss.jpg	0	0	1632	966	2020-02-12 10:21:57.300673	2020-02-12 10:22:05.409473
306	20200107Kindnessday059-ss.jpg	0	0	1632	966	2020-02-12 10:22:13.998403	2020-02-12 10:22:19.830637
307	20200107Kindnessday033-ss.jpg	0	0	1632	966	2020-02-12 10:22:31.778442	2020-02-12 10:22:41.537433
308	20200107Kindnessday031-ss.jpg	0	0	1632	966	2020-02-12 10:22:59.688704	2020-02-12 10:23:09.138595
309	20200107Kindnessday034-ss.jpg	0	0	1632	966	2020-02-12 10:23:28.122427	2020-02-12 10:23:37.140373
310	20200107Kindnessday075-ss.jpg	0	0	1632	966	2020-02-12 10:23:51.789051	2020-02-12 10:23:59.662998
311	20200107Kindnessday078A-ss.jpg	0	0	1632	966	2020-02-12 10:24:16.383707	2020-02-12 10:24:23.124298
312	20200107Kindnessday077-ss.jpg	0	0	1632	966	2020-02-12 10:24:35.648861	2020-02-12 10:24:42.8336
313	20200107Kindnessday076-ss.jpg	0	0	1632	966	2020-02-12 10:24:53.101466	2020-02-12 10:25:02.886121
314	20200107Kindnessday049-s.jpg	0	0	1109	619	2020-02-13 08:17:42.648211	2020-02-13 08:17:50.532157
315	20200107Kindnessday075-ss.jpg	0	0	1632	966	2020-02-13 08:18:11.658493	2020-02-13 08:18:17.950216
316	20200107Kindnessday078A-ss.jpg	0	0	1632	966	2020-02-13 08:18:26.07469	2020-02-13 08:21:47.051459
318	20200107Kindnessday076-ss.jpg	0	0	1632	966	2020-02-13 08:23:26.333449	2020-02-13 08:23:35.688633
317	20200107Kindnessday077-ss.jpg	0	0	1632	966	2020-02-13 08:21:54.20483	2020-02-13 08:23:40.824837
319	20200107Kindnessday053-s.jpg	0	0	1109	619	2020-02-13 08:26:54.993138	2020-02-13 08:27:02.278936
320	20200107Kindnessday035-s.jpg	0	0	1109	619	2020-02-13 08:29:03.324741	2020-02-13 08:29:10.749949
321	20200107Kindnessday040-s.jpg	0	0	1109	620	2020-02-13 08:31:27.543528	2020-02-13 08:31:34.475664
322	20200107Kindnessday049-ss.jpg	0	0	1632	966	2020-02-13 08:36:07.747627	2020-02-13 08:36:19.630543
323	20200107Kindnessday047-s.jpg	0	0	1632	966	2020-02-13 08:38:13.593801	2020-02-13 08:38:21.177222
324	20200107Kindnessday048-ss.jpg	0	0	1632	966	2020-02-13 08:51:27.265811	2020-02-13 08:51:37.714056
325	20200107Kindnessday061-ss.jpg	0	0	1632	966	2020-02-13 08:51:52.285416	2020-02-13 08:52:00.75552
326	20200107Kindnessday050-ss.jpg	0	0	1632	966	2020-02-13 08:53:33.900555	2020-02-13 08:53:44.314971
327	20200107Kindnessday051-ss.jpg	0	0	1632	966	2020-02-13 08:55:00.660201	2020-02-13 08:55:11.263089
328	20200107Kindnessday047-ss.jpg	0	0	1631	965	2020-02-13 08:56:19.396617	2020-02-13 08:56:24.890774
329	20200107Kindnessday048-ss.jpg	0	0	1632	966	2020-02-13 08:56:34.02148	2020-02-13 08:56:40.122932
330	20200107Kindnessday061-ss.jpg	0	0	1632	966	2020-02-13 08:56:50.146801	2020-02-13 08:56:58.420659
331	20200107Kindnessday050-ss.jpg	0	0	1632	966	2020-02-13 08:57:11.974203	2020-02-13 08:57:20.299424
332	20200107Kindnessday051-ss.jpg	0	0	1632	966	2020-02-13 08:57:33.789057	2020-02-13 08:57:40.965769
333	20200107Kindnessday082B-ss.jpg	1	0	2700	1799	2020-02-13 09:18:36.1747	2020-02-13 09:19:00.055184
334	20200107Kindnessday053-ss.jpg	0	0	1632	966	2020-02-13 10:11:43.167702	2020-02-13 10:11:50.067519
335	20200107Kindnessday056-ss.jpg	0	0	1632	966	2020-02-13 11:42:03.323269	2020-02-13 11:42:11.99758
336	20200107Kindnessday055-ss.jpg	0	0	1632	966	2020-02-13 12:09:14.021361	2020-02-13 12:09:21.230632
337	20200107Kindnessday052-ss.jpg	0	0	1632	966	2020-02-13 12:09:55.356977	2020-02-13 12:10:04.988053
338	20200107Kindnessday054-ss.jpg	0	0	1632	966	2020-02-13 12:12:00.897133	2020-02-13 12:12:13.196425
339	20200107Kindnessday057-ss.jpg	0	0	1632	966	2020-02-13 12:13:57.731394	2020-02-13 12:14:05.889986
340	20200107Kindnessday075-ss.jpg	0	0	1632	966	2020-02-13 12:14:39.361996	2020-02-13 12:14:46.09408
341	20200107Kindnessday078A-ss.jpg	0	0	1632	966	2020-02-13 12:14:57.667616	2020-02-13 12:15:08.926937
342	20200107Kindnessday077-ss.jpg	0	0	1632	966	2020-02-13 12:15:20.990442	2020-02-13 12:15:30.413197
343	20200107Kindnessday076-ss.jpg	0	0	1632	966	2020-02-13 12:15:43.102165	2020-02-13 12:15:52.254046
344	20200107Kindnessday035-ss.jpg	0	0	1632	966	2020-02-14 04:33:28.219344	2020-02-14 04:33:54.043455
345	20200107Kindnessday038-ss.jpg	0	0	1632	966	2020-02-14 04:33:31.738466	2020-02-14 04:33:58.270483
346	20200107Kindnessday037-ss.jpg	0	0	1632	966	2020-02-14 04:33:34.785617	2020-02-14 04:34:04.25595
347	20200107Kindnessday060-ss.jpg	0	0	1632	966	2020-02-14 04:33:39.225426	2020-02-14 04:34:08.069383
348	20200107Kindnessday036-ss.jpg	0	0	1632	966	2020-02-14 04:33:47.66145	2020-02-14 04:34:12.788003
349	20200107Kindnessday039-ss.jpg	0	0	1632	966	2020-02-14 04:33:50.670078	2020-02-14 04:34:17.401311
350	20200107Kindnessday075-ss.jpg	0	0	1632	966	2020-02-14 04:34:47.053463	2020-02-14 04:35:05.591991
351	20200107Kindnessday078A-ss.jpg	0	0	1632	966	2020-02-14 04:34:52.821611	2020-02-14 04:35:11.255723
352	20200107Kindnessday077-ss.jpg	0	0	1632	966	2020-02-14 04:34:56.40303	2020-02-14 04:35:17.734931
353	20200107Kindnessday076-ss.jpg	0	0	1632	966	2020-02-14 04:35:00.628074	2020-02-14 04:35:22.686931
354	KDH_banner_test.jpg	0	0	1990	1138	2020-02-14 05:14:40.098938	2020-02-14 05:14:40.098938
355	20200107Kindnessday040-ss.jpg	0	0	1632	966	2020-02-14 06:33:06.042829	2020-02-14 06:33:18.363345
357	20200107Kindnessday041-ss.jpg	0	0	1632	966	2020-02-14 06:33:51.638832	2020-02-14 06:34:41.445896
356	20200107Kindnessday043-ss.jpg	0	0	1632	966	2020-02-14 06:33:47.942713	2020-02-14 06:34:47.877393
358	20200107Kindnessday058-ss.jpg	0	0	1632	966	2020-02-14 06:33:53.643161	2020-02-14 06:34:54.113251
359	20200107Kindnessday045-ss.jpg	0	0	1632	966	2020-02-14 06:34:01.249278	2020-02-14 06:34:58.339899
360	20200107Kindnessday044-ss.jpg	0	0	1632	966	2020-02-14 06:34:04.989874	2020-02-14 06:35:05.626769
361	20200107Kindnessday075-ss.jpg	0	0	1632	966	2020-02-14 06:35:18.076232	2020-02-14 06:35:38.123031
362	20200107Kindnessday078A-ss.jpg	0	0	1632	966	2020-02-14 06:35:23.969768	2020-02-14 06:35:41.830539
363	20200107Kindnessday077-ss.jpg	0	0	1632	966	2020-02-14 06:35:27.020326	2020-02-14 06:36:18.809039
364	20200107Kindnessday076-ss.jpg	0	0	1632	966	2020-02-14 06:35:32.218296	2020-02-14 06:36:24.33888
365	20200107Kindnessday077-ss.jpg	0	0	1632	966	2020-02-14 06:37:10.694705	2020-02-14 06:37:49.349468
366	20200107Kindnessday076-ss.jpg	0	0	1632	966	2020-02-14 06:37:16.208161	2020-02-14 06:37:55.953983
367	20200107Kindnessday077-ss.jpg	0	0	680	380	2020-02-14 07:08:37.319085	2020-02-14 07:08:37.319085
368	20200107Kindnessday077-ss.jpg	0	0	1225	725	2020-02-14 07:08:44.955918	2020-02-14 07:08:44.955918
369	20200107Kindnessday055-1-ss.jpg	0	0	1632	966	2020-02-20 09:10:15.077546	2020-02-20 09:10:15.077546
370	20200107Kindnessday057-ss.jpg	0	0	1632	966	2020-02-24 03:17:20.651966	2020-02-24 03:17:20.651966
371	20200107Kindnessday056-ss.jpg	0	0	1632	966	2020-02-24 03:17:53.422569	2020-02-24 03:17:53.422569
372	20200107Kindnessday055-1-ss.jpg	0	0	1632	966	2020-02-24 03:18:05.854208	2020-02-24 03:18:05.854208
373	康橋漫旅_banner_R2_b4.jpg	0	0	1990	1138	2020-02-27 08:30:11.254055	2020-02-27 08:30:11.254055
374	DSC_8163-10.jpg	0	0	5911	3941	2020-03-04 09:34:03.000803	2020-03-04 09:35:29.328977
375	DSC_0025-1.jpg	9	0	2927	1952	2020-03-04 09:38:11.566706	2020-03-04 09:38:25.868619
376	DSC_3237-4.jpg	0	0	5776	3852	2020-03-04 09:38:46.958407	2020-03-04 09:39:01.114143
377	DSC_8136-7.jpg	0	0	5854	3903	2020-03-04 09:40:03.058263	2020-03-04 09:40:13.886007
378	DSC_3218-4.jpg	0	0	5968	3979	2020-03-04 09:41:01.160286	2020-03-04 09:41:11.697199
379	DSC_3129-4.jpg	0	0	5940	3961	2020-03-04 09:41:43.345755	2020-03-04 09:41:53.876799
380	DSC_3154-8.jpg	0	0	6005	4004	2020-03-04 09:43:05.12904	2020-03-04 09:43:17.657465
381	DSC_3198-17.jpg	0	0	6016	4011	2020-03-04 09:44:34.122673	2020-03-04 09:44:44.573257
382	DSC_3347-26.jpg	0	0	5916	3945	2020-03-04 09:45:14.987065	2020-03-04 09:45:24.241681
391	P3094006.jpg	0	351	4608	2635	2020-03-10 09:39:40.953402	2020-03-10 09:40:02.425432
384	DSC_3267-11.jpg	0	0	6016	4011	2020-03-04 09:46:40.914497	2020-03-04 09:46:52.034377
383	DSC_3305-19.jpg	0	96	5609	3740	2020-03-04 09:46:04.250445	2020-03-04 09:49:33.081793
385	DSC_3305-19.jpg	0	104	5564	3711	2020-03-04 09:51:45.851357	2020-03-04 09:52:04.158742
386	DSC_3311-20.jpg	0	0	5846	3898	2020-03-04 09:55:21.11568	2020-03-04 09:55:31.89657
387	DSC_3201-18.jpg	0	0	6016	4011	2020-03-04 09:57:04.365205	2020-03-04 09:57:17.842199
388	DSC_3201-18.jpg	0	0	6016	4011	2020-03-04 09:58:00.712373	2020-03-04 09:58:11.29049
389	DSC_3198-17.jpg	0	0	6016	4011	2020-03-04 09:59:58.926196	2020-03-04 10:00:10.475413
390	3-康橋慢旅banner_飯店活動_烏邦圖書店三月聯合策展_b4_複本_2.png	0	0	8293	4742	2020-03-10 09:21:20.608796	2020-03-10 09:21:43.881336
392	P3094047.jpg	0	240	4608	2635	2020-03-10 09:47:53.702175	2020-03-10 09:48:21.995684
393	3-康橋慢旅banner_飯店活動_烏邦圖書店三月聯合策展_b4_複本_2.jpg	0	0	8293	4742	2020-03-10 10:08:56.801886	2020-03-10 10:09:10.044373
394	_DSC1450.jpg	-1	260	7954	4548	2020-03-13 03:49:05.445025	2020-03-13 03:49:21.861404
395	_DSC1450-1.jpg	0	0	1990	1138	2020-03-20 02:55:35.098451	2020-03-20 02:55:35.098451
396	_DSC1450-1.jpg	0	0	1990	1138	2020-03-20 02:57:16.495749	2020-03-20 02:57:16.495749
397	3-KDH-website.jpg	0	0	1990	1138	2020-03-20 03:00:02.571659	2020-03-20 03:00:02.571659
398	ED7F32DB-4406-4E7A-9F19-133CA923B7D7.jpeg	0	0	1990	1138	2020-04-01 10:19:16.853158	2020-04-01 10:19:16.853158
399	FF398C0D-2765-4E84-B1C1-18379CFA728D.jpeg	0	0	1990	1138	2020-04-01 10:20:26.889299	2020-04-01 10:20:26.889299
400	2F3A8601-8D38-4E43-BAF4-6DF820C0C970.jpeg	0	0	1990	1138	2020-04-01 10:22:14.155974	2020-04-01 10:22:14.155974
401	3-KDH-website.JPEG	0	0	4147	2371	2020-04-01 10:32:21.922731	2020-04-01 10:33:51.905549
402	3-KDH-website_1.JPEG	0	0	1990	1138	2020-04-01 10:36:07.303703	2020-04-01 10:36:07.303703
403	3-KDH-website.jpg	0	0	4147	2371	2020-04-06 02:34:30.865944	2020-04-06 02:34:38.538061
404	3-KDH-website.jpg	0	0	4147	2371	2020-04-06 06:43:45.800689	2020-04-06 06:43:54.916528
405	3-KDH-website.jpg	0	0	4147	2371	2020-04-06 06:45:44.898736	2020-04-06 06:45:52.346015
406	3-KDH-website_1_b4_複本_2.jpg	0	0	4147	2371	2020-04-06 07:36:44.291096	2020-04-06 07:36:55.091428
407	3-KDH-website_1.jpg	0	0	4147	2371	2020-04-06 07:38:14.824115	2020-04-06 07:38:27.416256
408	3-KDH-website.jpg	0	0	1990	1138	2020-04-20 05:08:20.628146	2020-04-20 05:08:20.628146
409	3-KDH-website.jpg	0	0	1990	1138	2020-04-20 05:08:59.145951	2020-04-20 05:08:59.145951
410	IMG_0441_website.jpg	0	0	1990	1138	2020-04-23 06:11:42.991516	2020-04-23 06:11:42.991516
411	IMG_0441_website.jpg	0	0	1990	1138	2020-04-23 06:13:09.505779	2020-04-23 06:13:09.505779
412	IMG_0441_website.jpg	0	0	1990	1138	2020-04-23 06:15:19.091313	2020-04-23 06:15:19.091313
413	IMG_0441_website.jpg	0	0	1990	1138	2020-04-23 06:17:15.999878	2020-04-23 06:17:15.999878
414	IMG_0441_website.jpg	0	0	1990	1138	2020-04-23 06:20:54.104722	2020-04-23 06:20:54.104722
415	IMG_0441_website.jpg	0	0	1990	1138	2020-04-23 06:25:02.803089	2020-04-23 06:25:02.803089
416	3-KDH-website_2.jpg	0	0	1990	1138	2020-05-26 04:06:21.341113	2020-05-26 04:06:21.341113
417	3-KDH-website.jpg	0	0	8293	4742	2020-05-26 04:06:29.769771	2020-05-26 04:06:40.573414
418	TheFoodieTime_banner-FA-ol_01_Jimanddad.jpg	0	0	8293	4742	2020-05-28 03:59:01.095706	2020-05-28 03:59:10.885122
419	S__52715526.jpg	-1	91	2048	1171	2020-05-28 03:59:35.81772	2020-05-28 03:59:47.157528
420	TheFoodieTime_3_IMG_5681__6_.jpg	0	0	1990	1138	2020-05-28 03:59:57.619913	2020-05-28 03:59:57.619913
421	TheFoodieTime_4_IMG_1254.jpg	0	0	1990	1138	2020-05-28 04:00:16.378541	2020-05-28 04:00:16.378541
422	5F27BB54-6AB6-44C5-B874-963CE3E003F0.jpeg	0	0	1990	1138	2020-06-13 11:30:17.879769	2020-06-13 11:30:17.879769
423	8E1E2D6A-765C-40F0-AB82-6A78F06CDE7D.jpeg	0	0	1990	1138	2020-06-13 11:30:21.055813	2020-06-13 11:30:21.055813
424	414D3CEF-C03D-4636-83C9-CC2E568A3A64.jpeg	0	0	1990	1138	2020-06-13 11:30:26.467308	2020-06-13 11:30:26.467308
425	BF78D558-0FA0-4E30-8D6B-EBEB15964561.jpeg	0	0	1990	1138	2020-06-13 11:30:26.718757	2020-06-13 11:30:26.718757
427	5408A8AF-0E08-48AA-91D7-B5188090DC50.jpeg	0	0	1990	1138	2020-06-13 11:31:08.022751	2020-06-13 11:31:08.022751
428	C16B3306-55AF-4756-A130-0886A689DE5F.jpeg	0	0	1990	1138	2020-06-13 11:31:09.05019	2020-06-13 11:31:09.05019
429	AFE1016E-E26A-4937-B8F8-10D5E285470F.jpeg	0	0	1990	1138	2020-06-13 11:31:09.15494	2020-06-13 11:31:09.15494
468	0_工作區域_1.jpg	0	0	1990	1138	2020-07-28 14:51:18.505322	2020-07-28 14:51:18.505322
469	0-02.jpg	0	0	1990	1138	2020-07-28 14:51:26.265219	2020-07-28 14:51:26.265219
430	1-Cooperative_Stores_Events_Paripari_apt_1.jpg	0	0	1990	1138	2020-06-15 04:00:53.335878	2020-06-15 04:00:53.335878
432	1-Cooperative_Stores_Events_Paripari_apt_2.jpg	0	0	1990	1138	2020-06-15 04:02:21.580503	2020-06-15 04:02:21.580503
433	1-Cooperative_Stores_Events_Paripari_apt_3.jpg	0	0	1990	1138	2020-06-15 04:02:24.70127	2020-06-15 04:02:24.70127
434	1-Cooperative_Stores_Events_Paripari_apt_4.jpg	0	0	1990	1138	2020-06-15 04:02:26.836297	2020-06-15 04:02:26.836297
435	1-Cooperative_Stores_Events_Paripari_apt_5.jpg	0	0	1990	1138	2020-06-15 04:02:29.261229	2020-06-15 04:02:29.261229
431	1-Cooperative_Stores_Events_Paripari_apt_1.jpg	0	0	4147	2371	2020-06-15 04:02:17.256374	2020-06-15 04:02:35.002073
426	96659CED-368B-4AA0-91D4-A52AB7A677B8.jpeg	0	0	2048	1171	2020-06-13 11:31:04.90634	2020-06-15 08:19:52.813186
436	TheFoodieTime_4_IMG_1659.jpg	0	0	1990	1138	2020-06-16 02:29:27.87452	2020-06-16 02:29:27.87452
438	TheFoodieTime_2_IMG_5744.jpg	0	0	1990	1138	2020-06-17 03:29:30.049515	2020-06-17 03:29:30.049515
439	TheFoodieTime_3_IMG_1243.jpg	0	0	1990	1138	2020-06-17 03:29:33.751765	2020-06-17 03:29:33.751765
437	TheFoodieTime_banner-FA-ol_03_shanshancha.jpg	0	0	4147	2371	2020-06-17 03:29:25.294068	2020-06-17 03:29:40.306712
440	TheFoodieTime_4_IMG_1698.jpg	0	0	1990	1138	2020-06-30 10:10:03.733435	2020-06-30 10:10:03.733435
441	TheFoodieTime_banner-FA-ol_04_dingwang.jpg	0	0	4147	2371	2020-07-01 04:16:14.74728	2020-07-01 04:16:27.120508
442	TheFoodieTime_2_KindnessDayXDingwang_news_ol.jpg	0	0	4146	2370	2020-07-01 04:16:21.925973	2020-07-01 04:16:38.936031
443	200728-banner_1-01.jpg	0	0	8292	4741	2020-07-28 10:32:46.368523	2020-07-28 10:32:58.723485
444	200728-banner_1-03.jpg	0	0	8292	4741	2020-07-28 10:33:27.819499	2020-07-28 10:33:54.164287
445	200728-banner_1-04.jpg	0	0	8293	4742	2020-07-28 10:33:38.933547	2020-07-28 10:34:12.432088
446	200728-banner_1-06.jpg	0	0	1990	1138	2020-07-28 10:42:09.367286	2020-07-28 10:42:09.367286
447	200728-banner_1-05.jpg	0	0	1990	1138	2020-07-28 10:42:10.292715	2020-07-28 10:42:10.292715
448	200728-banner_1-07.jpg	0	0	1990	1138	2020-07-28 10:42:10.876973	2020-07-28 10:42:10.876973
449	200728-banner_1-01.jpg	0	0	1990	1138	2020-07-28 10:43:04.447514	2020-07-28 10:43:04.447514
450	200724-1.jpg	0	0	1990	1138	2020-07-28 10:55:43.24359	2020-07-28 10:55:43.24359
451	200724-2.jpg	0	0	1990	1138	2020-07-28 10:55:45.398156	2020-07-28 10:55:45.398156
453	200724-6.jpg	0	0	1990	1138	2020-07-28 10:55:48.285315	2020-07-28 10:55:48.285315
452	200724-5.jpg	0	0	1990	1138	2020-07-28 10:55:48.285058	2020-07-28 10:55:48.285058
454	200724-4.jpg	0	0	1990	1138	2020-07-28 10:56:06.278065	2020-07-28 10:56:06.278065
455	200724-3.jpg	0	0	1990	1138	2020-07-28 10:56:08.168095	2020-07-28 10:56:08.168095
456	200724-2.jpg	0	0	1990	1138	2020-07-28 13:16:20.887234	2020-07-28 13:16:20.887234
457	200724-1.jpg	0	0	1990	1138	2020-07-28 13:24:25.616557	2020-07-28 13:24:25.616557
458	200724-3.jpg	0	0	1990	1138	2020-07-28 13:24:25.753785	2020-07-28 13:24:25.753785
459	200724-6.jpg	0	0	1990	1138	2020-07-28 13:24:26.30292	2020-07-28 13:24:26.30292
460	200724-4.jpg	0	0	1990	1138	2020-07-28 13:24:28.710438	2020-07-28 13:24:28.710438
461	200724-5.jpg	0	0	1990	1138	2020-07-28 13:24:30.513996	2020-07-28 13:24:30.513996
470	0-03.jpg	0	0	1990	1138	2020-07-28 14:51:35.786659	2020-07-28 14:51:35.786659
471	0-04.jpg	0	0	1990	1138	2020-07-28 14:51:45.71851	2020-07-28 14:51:45.71851
464	200724-3.jpg	0	0	8293	4742	2020-07-28 13:35:08.763414	2020-07-28 13:41:09.607795
472	0-05.jpg	0	0	1990	1138	2020-07-28 14:51:55.929542	2020-07-28 14:51:55.929542
466	200724-5.jpg	0	0	8293	4742	2020-07-28 13:36:22.54834	2020-07-28 13:42:02.22394
467	200724-6.jpg	-5	0	8292	4742	2020-07-28 13:36:39.303284	2020-07-28 13:42:29.070826
465	200724-4.jpg	0	0	8292	4741	2020-07-28 13:36:07.94281	2020-07-28 13:45:01.156928
462	200724-1.jpg	0	0	8292	4741	2020-07-28 13:34:36.496223	2020-07-28 14:46:29.755286
463	200724-2.jpg	0	0	8292	4741	2020-07-28 13:34:53.268769	2020-07-28 14:46:57.843945
473	0-06.jpg	0	0	1990	1138	2020-07-28 14:52:06.291208	2020-07-28 14:52:06.291208
474	pexels-photo-270348.jpeg	530	217	1990	1138	2020-07-29 14:30:47.131227	2020-07-29 14:30:54.83487
475	標章版.jpg	-1	31	1922	1099	2020-09-18 10:24:46.572089	2020-09-18 10:25:08.293734
476	pic.jpeg	-1	36	1922	1099	2020-09-18 10:24:53.18972	2020-09-18 10:25:17.840159
477	標章版.jpg	-1	31	1922	1099	2020-09-18 10:25:46.380743	2020-09-18 10:25:55.950589
478	pic.jpeg	-1	33	1922	1099	2020-09-18 10:25:49.055993	2020-09-18 10:26:06.784026
479	01.jpg	0	0	8293	4742	2020-09-25 10:25:19.707329	2020-09-25 10:25:30.689664
484	02.jpg	0	0	8293	4742	2020-09-25 10:26:12.868908	2020-09-25 10:26:38.490984
480	03.jpg	0	0	4140	2367	2020-09-25 10:25:54.656686	2020-09-25 10:26:45.829713
481	04.jpg	0	0	4147	2371	2020-09-25 10:25:55.29423	2020-09-25 10:26:49.404821
482	05.jpg	0	0	4146	2370	2020-09-25 10:25:55.865178	2020-09-25 10:26:55.485508
483	06.jpg	0	0	4147	2371	2020-09-25 10:25:57.676068	2020-09-25 10:27:00.288586
485	201007-萬聖節官網_1-02.jpg	0	0	1991	1138	2020-10-07 09:04:08.248521	2020-10-07 09:04:24.597067
486	201007-萬聖節官網_1-03.jpg	0	0	1991	1138	2020-10-07 09:04:12.334933	2020-10-07 09:04:29.808399
487	201007-萬聖節官網_1-04.jpg	0	0	1991	1138	2020-10-07 09:04:15.600654	2020-10-07 09:04:34.728975
488	201007-萬聖節官網_1-05.jpg	0	0	1991	1138	2020-10-07 09:04:18.470489	2020-10-07 09:04:39.525112
489	201007-萬聖節官網_1-04.jpg	0	0	1991	1138	2020-10-07 09:07:45.061016	2020-10-07 09:07:54.048005
490	201019-大眼睛官網-第一張.jpg	0	0	1991	1138	2020-10-19 09:37:18.558334	2020-10-19 09:37:59.737521
491	201019-大眼睛官網-第二張.jpg	0	0	1991	1138	2020-10-19 09:37:21.556959	2020-10-19 09:38:05.843568
492	201019-大眼睛官網-最後一張.jpg	0	0	1991	1138	2020-10-19 09:37:24.002084	2020-10-19 09:38:13.465003
493	201019-大眼睛官網-第三張.jpg	0	0	1991	1138	2020-10-19 09:43:53.107912	2020-10-19 09:44:06.502543
494	201019-大眼睛官網-第四張.jpg	0	0	1991	1138	2020-10-19 09:43:56.357675	2020-10-19 09:44:12.477891
495	201019-大眼睛官網-第五張.jpg	0	0	1991	1138	2020-10-19 09:43:59.839351	2020-10-19 09:44:17.427118
497	201019-大眼睛官網_1-02.jpg	0	0	1991	1138	2020-10-19 09:58:24.721774	2020-10-19 09:58:35.626436
496	201019-大眼睛官網_1-01.jpg	0	0	1991	1138	2020-10-19 09:58:19.435206	2020-10-19 09:58:31.572047
498	201019-大眼睛官網_1-05.jpg	0	0	1991	1138	2020-10-19 09:58:40.6963	2020-10-19 09:58:51.992614
499	201019-大眼睛官網_1-03.jpg	0	0	1991	1138	2020-10-19 09:58:42.815521	2020-10-19 09:58:57.374706
500	201019-大眼睛官網_1-04.jpg	0	0	1991	1138	2020-10-19 09:58:45.281672	2020-10-19 09:59:02.050715
501	201019-大眼睛官網_1-06.jpg	0	0	1991	1138	2020-10-19 09:58:48.139885	2020-10-19 09:59:06.927416
502	201019-大眼睛官網_1-03.jpg	0	0	1991	1138	2020-10-19 10:13:44.520618	2020-10-19 10:13:52.986023
503	201019-大眼睛官網_1-01.jpg	0	0	1990	1138	2020-10-19 10:23:27.790993	2020-10-19 10:23:27.790993
504	201019-大眼睛官網_1-04.jpg	0	0	1990	1138	2020-10-19 10:24:22.0677	2020-10-19 10:24:22.0677
505	201019-大眼睛官網_1-05.jpg	0	0	1990	1138	2020-10-19 10:24:54.722456	2020-10-19 10:24:54.722456
506	201225-Haley官網-3.jpg	0	0	1990	1138	2020-12-11 03:59:14.028533	2020-12-11 03:59:14.028533
507	201225-Haley官網-1.jpg	0	0	1990	1138	2020-12-11 03:59:17.085187	2020-12-11 03:59:17.085187
508	201225-Haley官網-2.jpg	0	0	1990	1138	2020-12-11 03:59:20.238595	2020-12-11 03:59:20.238595
509	官網-IMG_3128.jpg	0	0	1990	1138	2020-12-28 08:17:48.825271	2020-12-28 08:17:48.825271
510	官網-IMG_3190.jpg	0	0	1990	1138	2020-12-28 08:17:53.963185	2020-12-28 08:17:53.963185
511	官網-IMG_3154.jpg	0	0	1990	1138	2020-12-28 08:17:58.555298	2020-12-28 08:17:58.555298
512	210113-樂檸漢堡-官網1.jpg	0	0	1990	1138	2021-01-28 03:46:19.446987	2021-01-28 03:46:19.446987
513	210113-樂檸漢堡-官網3.jpg	0	0	1990	1138	2021-01-28 03:46:22.206061	2021-01-28 03:46:22.206061
514	210113-樂檸漢堡-官網4.jpg	0	0	1990	1138	2021-01-28 03:46:25.406601	2021-01-28 03:46:25.406601
515	210113-樂檸漢堡-官網2.jpg	0	0	1990	1138	2021-01-28 03:46:27.257833	2021-01-28 03:46:27.257833
516	210113-樂檸漢堡-官網2.jpg	0	0	1990	1138	2021-02-03 08:51:41.722045	2021-02-03 08:51:41.722045
517	210113-樂檸漢堡-官網2.jpg	0	0	1990	1138	2021-02-03 09:02:54.734066	2021-02-03 09:02:54.734066
518	01.jpg	0	0	1990	1138	2021-02-26 02:54:52.5437	2021-02-26 02:54:52.5437
519	01.jpg	0	0	1990	1138	2021-02-26 02:55:31.83	2021-02-26 02:55:31.83
520	01.jpg	0	0	1990	1138	2021-02-26 02:56:19.716297	2021-02-26 02:56:19.716297
521	01.jpg	0	0	1990	1138	2021-02-26 02:57:42.565553	2021-02-26 02:57:42.565553
522	04.jpg	0	0	1990	1138	2021-02-26 02:57:45.502478	2021-02-26 02:57:45.502478
523	03.jpg	0	0	1990	1138	2021-02-26 02:57:48.521183	2021-02-26 02:57:48.521183
524	02.jpg	0	0	1990	1138	2021-02-26 02:57:50.994518	2021-02-26 02:57:50.994518
525	01.jpg	0	0	1990	1138	2021-03-03 06:14:51.816505	2021-03-03 06:14:51.816505
526	01.jpg	0	0	1990	1138	2021-05-18 10:09:09.535299	2021-05-18 10:09:09.535299
527	02.jpg	0	0	1990	1138	2021-05-18 10:09:16.160994	2021-05-18 10:09:16.160994
528	210608-官網-01.jpg	0	0	1990	1138	2021-06-08 04:05:51.772193	2021-06-08 04:05:51.772193
529	210608-官網-02.jpg	0	0	1990	1138	2021-06-08 04:06:03.371346	2021-06-08 04:06:03.371346
530	210608-官網-03.jpg	0	0	1990	1138	2021-06-08 04:06:06.68919	2021-06-08 04:06:06.68919
531	210608-官網-04.jpg	0	0	1990	1138	2021-06-08 04:06:12.830496	2021-06-08 04:06:12.830496
532	210608-官網-05.jpg	0	0	1990	1138	2021-06-08 04:06:17.270587	2021-06-08 04:06:17.270587
533	210608-官網-06.jpg	0	0	1990	1138	2021-06-08 04:06:17.718482	2021-06-08 04:06:17.718482
534	210608-官網-07.jpg	0	0	1990	1138	2021-06-08 04:06:18.426907	2021-06-08 04:06:18.426907
535	210705-官網-1.jpg	0	0	8293	4742	2021-07-05 06:17:18.331132	2021-07-05 06:54:46.111621
536	210705-官網-2.jpg	0	0	2644	1511	2021-07-05 10:31:04.897336	2021-07-05 10:31:18.241273
537	210705-官網-02.jpg	0	0	1990	1138	2021-07-05 10:49:37.495207	2021-07-05 10:49:37.495207
538	210728-官網-01.jpg	0	0	1990	1138	2021-07-27 10:09:00.192071	2021-07-27 10:09:00.192071
539	210728-官網-02.jpg	0	0	1990	1138	2021-07-27 10:09:05.175283	2021-07-27 10:09:05.175283
540	210728-官網-03.jpg	0	0	1990	1138	2021-07-27 10:09:13.904807	2021-07-27 10:09:13.904807
541	210728-官網-04.jpg	0	0	1990	1138	2021-07-27 10:09:24.333604	2021-07-27 10:09:24.333604
542	210728-官網-05.jpg	0	0	1990	1138	2021-07-27 10:09:36.72772	2021-07-27 10:09:36.72772
543	210728-官網-06.jpg	0	0	1990	1138	2021-07-27 10:09:48.461013	2021-07-27 10:09:48.461013
544	210728-官網-06.jpg	0	0	1990	1138	2021-07-27 10:10:58.262347	2021-07-27 10:10:58.262347
545	210728-官網-07.jpg	0	0	1990	1138	2021-07-27 10:11:26.805716	2021-07-27 10:11:26.805716
546	210728-官網-08.jpg	0	0	1990	1138	2021-07-27 10:15:02.21932	2021-07-27 10:15:02.21932
547	210830-官網-01.jpg	0	0	1990	1138	2021-08-30 03:36:08.181048	2021-08-30 03:36:08.181048
548	210830-官網-02.jpg	0	0	1990	1138	2021-08-30 03:36:10.760606	2021-08-30 03:36:10.760606
549	210913-官網-01.jpg	0	0	1990	1138	2021-09-15 02:58:38.841278	2021-09-15 02:58:38.841278
550	210913-官網-01.jpg	0	0	1990	1138	2021-09-15 03:53:47.678472	2021-09-15 03:53:47.678472
\.


--
-- Data for Name: mobility_string_translations; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.mobility_string_translations (id, locale, key, value, translatable_type, translatable_id, created_at, updated_at) FROM stdin;
94	zh-TW	description	<p>台南火車站北站 &rarr; 搭乘2號公車 &rarr; <strong>民生路臨時停車場</strong>下車 &rarr; 抵達康橋慢旅</p>\r\n	Traffic	4	2019-04-11 16:02:58.169709	2020-02-27 13:51:56.591288
395	zh-TW	title	 海安路藝術街 	Spot	29	2020-02-13 08:50:01.759984	2020-03-04 10:01:54.739454
38	zh-TW	title	舒適雙床房	Room	2	2019-03-16 16:43:59.534855	2019-06-12 02:31:45.478027
51	zh-TW	title	此欄位隱藏，不需要	Banner	2	2019-03-24 07:17:18.930271	2019-04-23 12:03:07.064075
53	zh-TW	link	 之前沒提過要在圖片設外連結耶.....	Banner	2	2019-03-24 07:17:19.123929	2019-04-23 12:03:07.070123
54	en	link	/spots/link/test	Banner	2	2019-03-24 07:17:19.215141	2019-04-23 12:03:07.071988
52	en	title	此欄位隱藏，不需要	Banner	2	2019-03-24 07:17:19.020482	2019-04-23 12:04:10.419411
55	en	aboutus_name	About Kindness Day	Setting	1	2019-03-27 11:34:01.76605	2019-04-23 12:09:13.282405
56	zh-TW	aboutus_name	關於康橋慢旅	Setting	1	2019-03-27 11:34:32.43685	2019-04-23 12:09:13.288668
335	zh-TW	title	四草大橋	Spot	21	2020-02-13 08:01:23.300944	2020-02-13 08:38:15.471426
336	zh-TW	service_hours	24小時開放	Spot	21	2020-02-13 08:01:23.333315	2020-02-13 08:38:15.487685
337	zh-TW	address	708台南市安平區安北路	Spot	21	2020-02-13 08:01:23.340418	2020-02-13 08:38:15.493303
67	zh-TW	title	早餐吃飽飽才有活力唷	Food	3	2019-03-30 10:38:56.736121	2019-10-04 09:54:33.824183
18	zh-TW	title	台北車站	Spot	1	2019-03-09 07:33:45.024483	2019-03-09 07:33:45.024483
339	en	title	Sicao Bridge	Spot	21	2020-02-13 08:01:23.348058	2020-02-13 08:38:15.497411
62	en	title	Be ready for the wonderful adventure	Food	3	2019-03-30 03:28:05.584992	2019-04-23 12:59:04.46495
21	en	title	Taipei Main Station	Spot	1	2019-03-09 07:33:45.264834	2019-03-09 07:33:45.264834
22	en	service_hours	business hours is  08:00 ～18:00	Spot	1	2019-03-09 07:33:45.345771	2019-03-09 07:33:45.345771
23	en	address	Taipei main station address 	Spot	1	2019-03-09 07:33:45.435484	2019-03-09 07:33:45.435484
70	en	title	Favorite childhood memory 	Food	6	2019-03-30 10:44:24.393495	2019-04-23 12:59:47.867683
72	zh-TW	title	零食舖，小時候的最愛	Food	6	2019-03-30 10:51:25.003872	2019-04-23 13:00:31.317014
64	en	title	Relax and enjoy after a busy day	Food	4	2019-03-30 03:28:06.954814	2019-04-23 13:01:22.052926
340	en	service_hours	24 hours	Spot	21	2020-02-13 08:01:23.350807	2020-02-13 08:38:15.504447
20	zh-TW	address	台北車站地址	Spot	1	2019-03-09 07:33:45.188369	2019-03-09 07:51:18.457722
19	zh-TW	service_hours	營業時間 is  08:00 ～18:00	Spot	1	2019-03-09 07:33:45.105071	2019-03-09 07:51:18.54744
68	zh-TW	title	晚上聊聊天，一起來微醺	Food	5	2019-03-30 10:39:30.780265	2019-04-23 13:02:07.194011
396	zh-TW	service_hours	24小時開放	Spot	29	2020-02-13 08:50:01.767781	2020-02-13 08:50:01.767781
397	zh-TW	address	700台南市中西區海安路	Spot	29	2020-02-13 08:50:01.773268	2020-02-13 08:50:01.773268
398	zh-TW	tel	06.226.7151	Spot	29	2020-02-13 08:50:01.778658	2020-02-13 08:50:01.778658
399	en	title	Hai-an Road ( Art Street )	Spot	29	2020-02-13 08:50:01.782948	2020-02-13 08:50:01.782948
400	en	service_hours	24 hours	Spot	29	2020-02-13 08:50:01.786455	2020-02-13 08:50:01.786455
75	en	title	By Car	Traffic	3	2019-04-04 14:39:34.579833	2019-04-23 13:36:12.494656
32	zh-TW	title	火車	Traffic	2	2019-03-11 14:14:52.479118	2019-04-23 13:38:48.062604
34	en	title	By Train	Traffic	2	2019-03-11 14:14:52.639283	2019-04-23 13:38:48.068536
315	zh-TW	title	標準四人房	Room	11	2019-10-30 07:51:47.391784	2019-10-30 07:51:47.391784
316	en	title	Standard Family Room	Room	11	2019-10-30 07:51:47.405924	2019-10-30 07:51:47.405924
239	zh-TW	title	c	Spot	15	2019-05-01 02:41:05.374545	2019-05-01 02:41:05.374545
240	zh-TW	service_hours	c	Spot	15	2019-05-01 02:41:05.458779	2019-05-01 02:41:05.458779
241	zh-TW	address	c	Spot	15	2019-05-01 02:41:05.540327	2019-05-01 02:41:05.540327
401	en	address	Hai-an Rd., West Central Dist., Tainan City 700	Spot	29	2020-02-13 08:50:01.791294	2020-02-13 08:50:01.791294
242	zh-TW	tel	c	Spot	15	2019-05-01 02:41:05.621986	2019-05-01 02:41:05.621986
243	en	title	d	Spot	15	2019-05-01 02:41:05.703828	2019-05-01 02:41:05.703828
402	en	tel	+886.6.226.7151	Spot	29	2020-02-13 08:50:01.795228	2020-02-13 08:50:01.795228
244	en	service_hours	d	Spot	15	2019-05-01 02:41:05.786471	2019-05-01 02:41:05.786471
42	zh-TW	title	名稱(中文)	Food	1	2019-03-17 06:49:55.39981	2019-03-17 06:49:55.39981
43	en	title	名稱(英文)	Food	1	2019-03-17 06:49:55.515647	2019-03-17 06:49:55.515647
245	en	address	d	Spot	15	2019-05-01 02:41:05.870537	2019-05-01 02:41:05.870537
246	en	tel	d	Spot	15	2019-05-01 02:41:05.951882	2019-05-01 02:41:05.951882
317	zh-TW	title	舒適四人房	Room	12	2019-10-30 07:52:31.109259	2019-10-30 07:52:31.109259
318	en	title	Leisurely Family Room	Room	12	2019-10-30 07:52:31.115576	2019-10-30 07:52:31.115576
403	zh-TW	title	台南市美術館1館	Spot	30	2020-02-13 09:05:45.89287	2020-02-13 09:05:45.89287
25	zh-TW	address	700 台南市中西區民生路二段416號	Store	1	2019-03-11 12:40:28.080984	2019-05-06 11:54:40.882433
39	en	title	Leisurely Twin Room	Room	2	2019-03-16 16:43:59.667007	2019-10-30 07:54:06.556661
73	zh-TW	title	自行開車	Traffic	3	2019-04-04 14:39:34.552368	2019-05-07 11:58:28.590808
283	zh-TW	title	標準客房test	Room	9	2019-05-08 06:51:23.972864	2019-05-08 06:51:23.972864
284	en	title	Standard Room test	Room	9	2019-05-08 06:51:23.989238	2019-05-08 06:51:23.989238
59	zh-TW	desc	<p>慢旅適合朋友及家庭旅遊、商務出差，並設有停車場。</p>\r\n\r\n<p>館內環境整潔，安全便利，隨時為您提供親切貼心的服務，並備有營養豐盛的美味早餐及宵夜服務。</p>\r\n\r\n<p>房間運用溫潤木質調作為基底，適時加入金屬、壁布、軟件家飾等元素點綴，整體空間配色沈穩且傳遞具質感的品味。</p>\r\n	Store	1	2019-03-30 03:10:40.671218	2020-10-30 17:16:24.39126
58	en	title	Kindness Day, Kindness Life.	Setting	1	2019-03-30 02:19:59.407978	2021-06-10 16:06:04.546602
66	en	title	Let’s get tipsy together tonight	Food	5	2019-03-30 03:28:08.670416	2020-01-12 16:27:48.965626
61	zh-TW	type	早餐	Food	3	2019-03-30 03:28:05.494961	2019-03-30 03:28:05.494961
57	zh-TW	title	Kindness Day, Kindness Life.	Setting	1	2019-03-30 02:19:59.230873	2021-06-10 16:06:04.548264
63	zh-TW	type	晚餐	Food	4	2019-03-30 03:28:06.826703	2019-03-30 03:28:06.826703
71	zh-TW	title	放鬆地享受晚點心時光	Food	4	2019-03-30 10:45:09.82787	2020-02-05 08:05:36.397485
65	zh-TW	type	就是Bar	Food	5	2019-03-30 03:28:08.540497	2019-03-30 03:28:08.540497
69	zh-TW	type	小吃	Food	6	2019-03-30 10:44:24.294107	2019-03-30 10:44:24.294107
26	en	title	Anping Tainan	Store	1	2019-03-11 12:40:28.157022	2019-06-11 14:44:21.761329
96	en	description	<p>Tainan Railway Station North Station &rarr; Take Bus No. 2 &rarr; Get off at <strong>Minsheng Road Temporary Parking Lot</strong> &rarr; Arrive at Kangqiao Slow Travel</p>\r\n	Traffic	4	2019-04-11 16:02:58.176093	2020-02-27 13:51:56.593771
36	en	title	Standard Double Room	Room	1	2019-03-12 06:01:28.925973	2019-10-30 07:51:15.536685
345	zh-TW	address	708 台南市安平區漁光路	Spot	22	2020-02-13 08:04:26.073801	2020-03-04 09:39:26.752869
349	en	address	Yuguang Rd., Anping Dist., Tainan City 708	Spot	22	2020-02-13 08:04:26.089547	2020-03-04 09:39:26.759626
341	en	address	Anbei Rd., Anping Dist., Tainan City 708	Spot	21	2020-02-13 08:01:23.353733	2020-02-13 08:38:15.513027
97	zh-TW	title	名稱(中文)	Spot	3	2019-04-12 02:23:14.990244	2019-04-12 02:23:14.990244
98	zh-TW	service_hours	營業時間(中文)	Spot	3	2019-04-12 02:23:15.065381	2019-04-12 02:23:15.065381
99	zh-TW	address	地址(中文)	Spot	3	2019-04-12 02:23:15.132957	2019-04-12 02:23:15.132957
100	en	title	名稱(英文)	Spot	3	2019-04-12 02:23:15.204979	2019-04-12 02:23:15.204979
101	en	service_hours	營業時間(英文)	Spot	3	2019-04-12 02:23:15.272693	2019-04-12 02:23:15.272693
102	en	address	地址(英文)	Spot	3	2019-04-12 02:23:15.33849	2019-04-12 02:23:15.33849
103	zh-TW	title	名稱(中文)	Spot	4	2019-04-12 02:24:14.801243	2019-04-12 02:24:14.801243
104	zh-TW	service_hours	營業時間(中文)	Spot	4	2019-04-12 02:24:14.869828	2019-04-12 02:24:14.869828
105	zh-TW	address	地址(中文)	Spot	4	2019-04-12 02:24:14.935397	2019-04-12 02:24:14.935397
106	en	title	名稱(英文)	Spot	4	2019-04-12 02:24:15.00528	2019-04-12 02:24:15.00528
107	en	service_hours	 營業時間(英文)	Spot	4	2019-04-12 02:24:15.070154	2019-04-12 02:24:15.070154
108	en	address	地址(英文)	Spot	4	2019-04-12 02:24:15.134991	2019-04-12 02:24:15.134991
109	zh-TW	title	名稱(中文)	Spot	5	2019-04-12 02:26:11.817794	2019-04-12 02:26:11.817794
110	zh-TW	service_hours	營業時間(中文)	Spot	5	2019-04-12 02:26:11.906303	2019-04-12 02:26:11.906303
111	zh-TW	address	地址(中文)	Spot	5	2019-04-12 02:26:11.994419	2019-04-12 02:26:11.994419
112	en	title	名稱(英文)	Spot	5	2019-04-12 02:26:12.084668	2019-04-12 02:26:12.084668
113	en	service_hours	 營業時間(英文)	Spot	5	2019-04-12 02:26:12.173332	2019-04-12 02:26:12.173332
114	en	address	地址(英文)	Spot	5	2019-04-12 02:26:12.260958	2019-04-12 02:26:12.260958
115	zh-TW	title	名稱(中文)	Spot	6	2019-04-12 02:28:00.924432	2019-04-12 02:28:00.924432
116	zh-TW	service_hours	營業時間(中文)	Spot	6	2019-04-12 02:28:01.015965	2019-04-12 02:28:01.015965
117	zh-TW	address	地址(中文)	Spot	6	2019-04-12 02:28:01.110607	2019-04-12 02:28:01.110607
118	en	title	名稱(英文)	Spot	6	2019-04-12 02:28:01.211873	2019-04-12 02:28:01.211873
119	en	service_hours	營業時間(英文)	Spot	6	2019-04-12 02:28:01.299709	2019-04-12 02:28:01.299709
120	en	address	地址(英文)	Spot	6	2019-04-12 02:28:01.388587	2019-04-12 02:28:01.388587
343	zh-TW	title	漁光島	Spot	22	2020-02-13 08:04:26.06251	2020-02-13 08:39:40.124848
344	zh-TW	service_hours	24小時開放	Spot	22	2020-02-13 08:04:26.068424	2020-02-13 08:39:40.163159
93	zh-TW	title	公車	Traffic	4	2019-04-11 16:02:58.155437	2019-04-23 13:37:39.228955
347	en	title	Yuguang Island	Spot	22	2020-02-13 08:04:26.083855	2020-02-13 08:39:40.184483
348	en	service_hours	24 hours	Spot	22	2020-02-13 08:04:26.086797	2020-02-13 08:39:40.200893
95	en	title	By Bus	Traffic	4	2019-04-11 16:02:58.173674	2019-04-23 13:37:39.242579
351	zh-TW	title	台灣文學館	Spot	23	2020-02-13 08:40:48.154414	2020-02-13 08:40:48.154414
352	zh-TW	service_hours	週二~週日09:00-18:00	Spot	23	2020-02-13 08:40:48.167729	2020-02-13 08:40:48.167729
353	zh-TW	address	700 台南市中西區中正路1號	Spot	23	2020-02-13 08:40:48.180001	2020-02-13 08:40:48.180001
354	zh-TW	tel	06.221.7201	Spot	23	2020-02-13 08:40:48.188394	2020-02-13 08:40:48.188394
355	en	title	National Museum of Taiwan Literature	Spot	23	2020-02-13 08:40:48.198829	2020-02-13 08:40:48.198829
356	en	service_hours	Tuesday-Sunday 09:00-18:00	Spot	23	2020-02-13 08:40:48.211515	2020-02-13 08:40:48.211515
357	en	address	No.1, Zhongzheng Rd., West Central District, Tainan City 700	Spot	23	2020-02-13 08:40:48.222589	2020-02-13 08:40:48.222589
358	en	tel	+886.6.221.7201	Spot	23	2020-02-13 08:40:48.230515	2020-02-13 08:40:48.230515
359	zh-TW	title	藍晒圖文創園區	Spot	24	2020-02-13 08:42:07.31884	2020-02-13 08:42:07.31884
360	zh-TW	service_hours	24小時開放 / 微型文創工作室 14:00-21:00(週二公休)	Spot	24	2020-02-13 08:42:07.332227	2020-02-13 08:42:07.332227
247	zh-TW	title	ff	Spot	16	2019-05-01 03:30:09.245527	2019-05-01 03:30:09.245527
361	zh-TW	address	702 台南市南區西門路一段689巷	Spot	24	2020-02-13 08:42:07.344425	2020-02-13 08:42:07.344425
362	zh-TW	tel	06.222.7195	Spot	24	2020-02-13 08:42:07.371964	2020-02-13 08:42:07.371964
248	zh-TW	service_hours	ff	Spot	16	2019-05-01 03:30:09.331778	2019-05-01 03:30:09.331778
363	en	title	Blueprint Cultural & Creative Park	Spot	24	2020-02-13 08:42:07.381987	2020-02-13 08:42:07.381987
249	zh-TW	address	ff	Spot	16	2019-05-01 03:30:09.414316	2019-05-01 03:30:09.414316
250	zh-TW	tel	ff	Spot	16	2019-05-01 03:30:09.499836	2019-05-01 03:30:09.499836
251	en	title	gg	Spot	16	2019-05-01 03:30:09.586608	2019-05-01 03:30:09.586608
252	en	service_hours	gg	Spot	16	2019-05-01 03:30:09.668421	2019-05-01 03:30:09.668421
253	en	address	gg	Spot	16	2019-05-01 03:30:09.753973	2019-05-01 03:30:09.753973
254	en	tel	gg	Spot	16	2019-05-01 03:30:09.84075	2019-05-01 03:30:09.84075
364	en	service_hours	24 hours / Mini-workshops are open 2 p.m.-9 p.m. (Most shops are closed on Tuesdays.)	Spot	24	2020-02-13 08:42:07.403866	2020-02-13 08:42:07.403866
365	en	address	Ln. 689, Sec. 1, Ximen Rd., South Dist., Tainan City 702	Spot	24	2020-02-13 08:42:07.41472	2020-02-13 08:42:07.41472
631	en	title	Super Popular Package - 50% Off for Second Night Stay Limited Period Offer x Limited Quantity Sale	News	21	2020-04-01 10:39:19.105305	2020-04-03 07:35:16.135709
629	zh-TW	title	超人氣續住半價優惠方案！ 期間限定Ｘ數量限定	News	21	2020-04-01 10:39:19.094561	2020-04-06 06:48:04.857594
155	zh-TW	title	康橋好棒棒	Setting	2	2019-04-15 12:02:38.853406	2019-04-15 12:02:38.853406
156	en	title	Kindness Day, Kindness Life.	Setting	2	2019-04-15 12:02:38.993021	2019-04-15 12:02:38.993021
157	zh-TW	title	康橋漫旅	Setting	3	2019-04-15 12:05:53.443964	2019-04-15 12:05:53.443964
158	en	title	Kindness Day, Kindness Life.	Setting	3	2019-04-15 12:05:53.533996	2019-04-15 12:05:53.533996
159	zh-TW	title	康橋漫旅	Setting	4	2019-04-15 12:07:43.181961	2019-04-15 12:07:43.181961
160	en	title	Kindness Day, Kindness Life.	Setting	4	2019-04-15 12:07:43.283636	2019-04-15 12:07:43.283636
161	zh-TW	title	康橋漫旅	Setting	5	2019-04-15 12:09:37.542542	2019-04-15 12:09:37.542542
162	en	title	Kindness Day, Kindness Life.	Setting	5	2019-04-15 12:09:37.647582	2019-04-15 12:09:37.647582
163	zh-TW	title	康橋漫旅	Setting	6	2019-04-15 12:10:38.268622	2019-04-15 12:10:38.268622
164	en	title	Kindness Day, Kindness Life.	Setting	6	2019-04-15 12:10:38.408371	2019-04-15 12:10:38.408371
165	zh-TW	title	康橋漫旅!!	Setting	7	2019-04-15 12:10:48.999053	2019-04-15 12:10:48.999053
166	en	title	Kindness Day, Kindness Life.	Setting	7	2019-04-15 12:10:49.118876	2019-04-15 12:10:49.118876
167	zh-TW	title	康橋漫旅!!!!!	Setting	8	2019-04-15 12:12:08.828188	2019-04-15 12:12:08.828188
168	en	title	Kindness Day, Kindness Life.	Setting	8	2019-04-15 12:12:08.918907	2019-04-15 12:12:08.918907
169	zh-TW	title	康橋漫旅!!!!!	Setting	9	2019-04-15 12:13:19.212482	2019-04-15 12:13:19.212482
170	en	title	Kindness Day, Kindness Life.	Setting	9	2019-04-15 12:13:19.312058	2019-04-15 12:13:19.312058
171	zh-TW	title	康橋漫旅!!!!!	Setting	10	2019-04-15 12:14:01.292144	2019-04-15 12:14:01.292144
172	en	title	Kindness Day, Kindness Life.	Setting	10	2019-04-15 12:14:01.39183	2019-04-15 12:14:01.39183
175	zh-TW	title	康橋漫旅!!!!!	Setting	12	2019-04-15 12:19:09.597335	2019-04-15 12:19:09.597335
176	en	title	Kindness Day, Kindness Life.	Setting	12	2019-04-15 12:19:09.686998	2019-04-15 12:19:09.686998
366	en	tel	+886.6.222.7195	Spot	24	2020-02-13 08:42:07.427711	2020-02-13 08:42:07.427711
263	zh-TW	title	精緻三人房	Room	7	2019-05-06 03:26:06.57857	2019-06-11 16:26:41.285634
193	zh-TW	title	高鐵	Traffic	5	2019-04-23 13:39:41.304674	2019-04-23 13:39:41.304674
213	zh-TW	title	test	Room	5	2019-04-28 18:36:04.216595	2019-04-28 18:36:04.216595
195	en	title	By High Speed Rail	Traffic	5	2019-04-23 13:39:41.311007	2019-04-23 13:39:41.311007
214	en	title	test3	Room	5	2019-04-28 18:36:04.284114	2019-04-28 18:36:04.284114
229	zh-TW	title	a	Spot	14	2019-05-01 02:36:37.037383	2019-05-01 02:36:37.037383
230	zh-TW	service_hours	a	Spot	14	2019-05-01 02:36:37.158926	2019-05-01 02:36:37.158926
231	zh-TW	address	a	Spot	14	2019-05-01 02:36:37.284626	2019-05-01 02:36:37.284626
232	zh-TW	tel	a	Spot	14	2019-05-01 02:36:37.397635	2019-05-01 02:36:37.397635
233	en	title	b	Spot	14	2019-05-01 02:36:37.508802	2019-05-01 02:36:37.508802
234	en	service_hours	b	Spot	14	2019-05-01 02:36:37.620585	2019-05-01 02:36:37.620585
235	en	address	b	Spot	14	2019-05-01 02:36:37.737497	2019-05-01 02:36:37.737497
236	en	tel	b	Spot	14	2019-05-01 02:36:37.848643	2019-05-01 02:36:37.848643
264	en	title	Superior Triple Room	Room	7	2019-05-06 03:26:06.590146	2019-06-11 16:26:41.298977
37	zh-TW	title	標準雙人房	Room	1	2019-03-16 13:37:17.553964	2019-10-30 07:51:15.583055
367	zh-TW	title	信義街&兌悅門	Spot	25	2020-02-13 08:45:20.909518	2020-02-13 08:45:20.909518
368	zh-TW	service_hours	24小時開放	Spot	25	2020-02-13 08:45:20.921487	2020-02-13 08:45:20.921487
369	zh-TW	address	700 台南市中西區信義街	Spot	25	2020-02-13 08:45:20.928752	2020-02-13 08:45:20.928752
370	zh-TW	tel	06.223.4859	Spot	25	2020-02-13 08:45:20.93469	2020-02-13 08:45:20.93469
371	en	title	Xinyi St. & Dui Yue Gate	Spot	25	2020-02-13 08:45:20.93823	2020-02-13 08:45:20.93823
372	en	service_hours	24 hours	Spot	25	2020-02-13 08:45:20.945967	2020-02-13 08:45:20.945967
373	en	address	Xinyi St., West Central Dist., Tainan City 700	Spot	25	2020-02-13 08:45:20.953466	2020-02-13 08:45:20.953466
374	en	tel	+886.6.223.4859	Spot	25	2020-02-13 08:45:20.958327	2020-02-13 08:45:20.958327
376	zh-TW	service_hours	週一~週日10:30-21:30	Spot	26	2020-02-13 08:46:16.132057	2020-02-13 08:46:16.132057
377	zh-TW	address	700台南市中西區忠義路二段63號	Spot	26	2020-02-13 08:46:16.137153	2020-02-13 08:46:16.137153
378	zh-TW	tel	06.221.3000	Spot	26	2020-02-13 08:46:16.148923	2020-02-13 08:46:16.148923
379	en	title	Hayashi Department Store	Spot	26	2020-02-13 08:46:16.154133	2020-02-13 08:46:16.154133
380	en	service_hours	Monday-Sunday 10:30-21:30	Spot	26	2020-02-13 08:46:16.16071	2020-02-13 08:46:16.16071
381	en	address	No.63, Sec. 2, Zhongyi Rd., West Central Dist., Tainan City 700	Spot	26	2020-02-13 08:46:16.169081	2020-02-13 08:46:16.169081
382	en	tel	+886.6.221.3000	Spot	26	2020-02-13 08:46:16.176809	2020-02-13 08:46:16.176809
384	zh-TW	address	700台南市中西區國華街	Spot	27	2020-02-13 08:47:28.61868	2020-02-13 08:47:28.61868
385	en	title	Guohua Street	Spot	27	2020-02-13 08:47:28.622161	2020-02-13 08:47:28.622161
386	en	address	Guohua St., West Central Dist., Tainan City 700	Spot	27	2020-02-13 08:47:28.627742	2020-02-13 08:47:28.627742
388	zh-TW	service_hours	週一~週日11:00-22:00	Spot	28	2020-02-13 08:49:04.476551	2020-02-13 08:49:04.476551
389	zh-TW	address	700台南市中西區西門路一段658-1號	Spot	28	2020-02-13 08:49:04.491779	2020-02-13 08:49:04.491779
390	zh-TW	tel	06.303.0999	Spot	28	2020-02-13 08:49:04.498329	2020-02-13 08:49:04.498329
391	en	title	Shin Kong Mitsukoshi Tainan Place	Spot	28	2020-02-13 08:49:04.511967	2020-02-13 08:49:04.511967
392	en	service_hours	Monday-Sunday 11:00-22:00	Spot	28	2020-02-13 08:49:04.524065	2020-02-13 08:49:04.524065
76	en	description	<p><strong>South bound</strong><br />\r\nNational Highway No. 1 &rarr; Xiayongkang Interchange &rarr; Zhizheng Zhengbei Road &rarr; Zhongzheng North Road &rarr; Simen Road 4th Section &rarr; Ximen Road Section 3 &rarr; Ximen Road 2nd Section &rarr; Turn right to Minsheng Road 2nd Section &rarr; Go straight for about 1.2km &rarr; Kangqiao Slow Travel on the right hand side<br />\r\n<strong>North bound</strong><br />\r\nNational Highway No. 1 &rarr; Go west to Route 86 (East-West Expressway - Tainan Guanmiao Line) &rarr; Lower Tainan Interchange Wanli Exit &rarr; Turn right to Yongcheng Road section &rarr; Yongcheng Road Section 2 &rarr; Yongcheng Road Section 3 &rarr; Xia Lin Road &rarr; Section of Hai&#39;an Road &rarr; Section 2 of Hai&#39;an Road &rarr; Turn left to the second section of Minsheng Road &rarr; Go straight for about 900 meters &rarr; Kangqiao Slow Travel on the right hand side</p>\r\n	Traffic	3	2019-04-04 14:39:34.586584	2020-02-27 14:36:27.528536
383	zh-TW	title	國華街商圈 	Spot	27	2020-02-13 08:47:28.614655	2020-03-04 10:00:57.397424
375	zh-TW	title	林百貨 	Spot	26	2020-02-13 08:46:16.126832	2020-03-04 10:01:45.702933
387	zh-TW	title	台南新天地 	Spot	28	2020-02-13 08:49:04.462202	2020-03-04 10:02:01.086162
194	zh-TW	description	<p>至高鐵台南站後</p>\r\n\r\n<p><b>A. 轉乘高鐵快捷公車：</b><br />\r\n高鐵台南快捷公車 &rarr; 搭乘H31線 &rarr; 永華市政中心(府前路)下車 &rarr; 步行約15分鐘 &rarr; 抵達康橋慢旅<br />\r\n<b>B. 轉乘台鐵：</b><br />\r\n高鐵1號出口 &rarr; 轉乘台鐵沙崙線 &rarr; 台南火車站 前站出口 &rarr; 步行至台南火車站北站 &rarr; 搭乘2號公車 &rarr; <strong>民生路臨時停車場</strong>下車 &rarr; 抵達康橋慢旅<br />\r\n<b>C. 搭乘計程車：</b><br />\r\n高鐵台南站 &rarr; 搭乘計程車 (車程約30分鐘)</p>\r\n	Traffic	5	2019-04-23 13:39:41.308855	2020-07-30 15:54:58.315915
173	zh-TW	title	康橋漫旅!!5566!!!	Setting	11	2019-04-15 12:15:39.894805	2019-04-15 12:15:39.894805
174	en	title	Kindness Day, Kindness Life.	Setting	11	2019-04-15 12:15:40.00248	2019-04-15 12:15:40.00248
74	zh-TW	description	<p><strong>南下：</strong><br />\r\n國道一號 &rarr; 下永康交流道 &rarr; 直行正北路&rarr;&nbsp; 中正北路 &rarr; 西門路四段&rarr; 西門路三段 &rarr; 西門路二段 &rarr; 右轉民生路二段 &rarr; 直行約1.2公里 &rarr; 康橋慢旅於右手邊<br />\r\n<strong>北上：</strong><br />\r\n國道一號 &rarr; 往西走86線(東西向快速公路-台南關廟線) &rarr; 下台南交流道灣裡出口 &rarr; 右轉永成路一段 &rarr; 永成路二段 &rarr; 永成路三段 &rarr; 夏林路 &rarr; 海安路一段 &rarr; 海安路二段 &rarr; 左轉民生路二段&rarr; 直行約 900 公尺 &rarr; 康橋慢旅於右手邊</p>\r\n	Traffic	3	2019-04-04 14:39:34.573598	2020-02-27 13:49:28.981803
393	en	address	No.658-1, Sec. 1, Ximen Rd., West Central Dist., Tainan City 700	Spot	28	2020-02-13 08:49:04.535396	2020-02-13 08:49:04.535396
33	zh-TW	description	<p>至台南火車站後</p>\r\n\r\n<p><b>A. 轉乘公車：</b><br />\r\n台南火車站 前站出口 &rarr; 步行至台南火車站北站 &rarr; 搭乘2號公車 &rarr; <strong>民生路臨時停車場</strong>下車 &rarr; 抵達康橋慢旅<br />\r\n<b>B. 搭乘計程車：</b><br />\r\n台南火車站 前站出口 &rarr; 搭乘計程車 (車程約10分鐘)</p>\r\n	Traffic	2	2019-03-11 14:14:52.561596	2020-02-27 13:50:31.40826
35	en	description	<p>After going to Tainan Railway Station</p>\r\n\r\n<p><strong>A. Transfer to the bus:</strong><br />\r\nTainan Railway Station Qianzhan Exit &rarr; Walk to Tainan Railway Station North Station &rarr; Take Bus No. 2 &rarr; <strong>Minsheng Road Temporary Parking Lot</strong>&nbsp;Get off &rarr; Arrive at Kangqiao Slow Travel<br />\r\n<strong>B. Take a taxi:</strong><br />\r\nTainan Railway Station Qianzhan Exit &rarr; Take a taxi (about 10 minutes by car)</p>\r\n	Traffic	2	2019-03-11 14:14:52.714537	2020-02-27 13:50:31.410656
394	en	tel	+886.6.303.0999	Spot	28	2020-02-13 08:49:04.545146	2020-02-13 08:49:04.545146
404	zh-TW	service_hours	週二~週日09:00-17:00	Spot	30	2020-02-13 09:05:45.90499	2020-02-13 09:05:45.90499
405	zh-TW	address	700 台南市中西區南門路37號	Spot	30	2020-02-13 09:05:45.909715	2020-02-13 09:05:45.909715
406	zh-TW	tel	06.221.8881	Spot	30	2020-02-13 09:05:45.918198	2020-02-13 09:05:45.918198
407	en	title	Tainan Art Museum Hall 1	Spot	30	2020-02-13 09:05:45.921798	2020-02-13 09:05:45.921798
408	en	service_hours	Tuesday-Sunday 09:00-17:00	Spot	30	2020-02-13 09:05:45.925096	2020-02-13 09:05:45.925096
409	en	address	No. 37, Nanmen Rd., West Central Dist., Tainan City 700	Spot	30	2020-02-13 09:05:45.928493	2020-02-13 09:05:45.928493
410	en	tel	+886.6.221.8881	Spot	30	2020-02-13 09:05:45.931748	2020-02-13 09:05:45.931748
411	zh-TW	title	台南市美術館2館	Spot	31	2020-02-13 09:06:26.400718	2020-02-13 09:06:26.400718
412	zh-TW	service_hours	週二~週日09:00-17:00	Spot	31	2020-02-13 09:06:26.404494	2020-02-13 09:06:26.404494
413	zh-TW	address	700 台南市中西區忠義路二段1號	Spot	31	2020-02-13 09:06:26.40743	2020-02-13 09:06:26.40743
414	zh-TW	tel	06.221.8881	Spot	31	2020-02-13 09:06:26.410566	2020-02-13 09:06:26.410566
415	en	title	Tainan Art Museum Hall 2	Spot	31	2020-02-13 09:06:26.413565	2020-02-13 09:06:26.413565
416	en	service_hours	Tuesday-Sunday 09:00-17:00	Spot	31	2020-02-13 09:06:26.416368	2020-02-13 09:06:26.416368
417	en	address	No. 1, Sec. 2, Zhongyi Rd., West Central Dist., Tainan City 700	Spot	31	2020-02-13 09:06:26.421306	2020-02-13 09:06:26.421306
418	en	tel	+886.6.221.8881	Spot	31	2020-02-13 09:06:26.424295	2020-02-13 09:06:26.424295
419	zh-TW	service_hours	依各店家營業時間為主	Spot	27	2020-02-13 09:10:51.644426	2020-02-13 09:10:51.644426
420	en	service_hours	hours may vary by every stores	Spot	27	2020-02-13 09:10:51.657507	2020-02-13 09:10:51.657507
331	zh-TW	title	康橋慢旅Ｘ長場雄    期間限定聯名企劃	News	9	2020-02-12 07:12:29.545666	2020-02-14 02:59:47.818871
332	zh-TW	content	日本人氣插畫家長場雄與台灣品牌首次聯名登場，週邊商品即日起限量販售中！ 	News	9	2020-02-12 07:12:29.572607	2020-02-14 05:11:28.453602
632	en	content	Just reserve your stay right now!	News	21	2020-04-01 10:39:19.106882	2020-04-03 07:35:16.125349
630	zh-TW	content	此專案每日限量推出！ 手刀訂房旅行去！	News	21	2020-04-01 10:39:19.101694	2020-04-06 02:41:44.534024
637	zh-TW	title	那些繪本教我的事	News	23	2020-04-20 05:11:34.70189	2020-04-20 05:11:34.70189
638	zh-TW	content	誰說長大後不能過兒童節，讓我們透過繪本回歸兒時的純粹!	News	23	2020-04-20 05:11:34.710174	2020-04-20 05:11:34.710174
639	en	title	Those things I learned from picture books	News	23	2020-04-20 05:11:34.712837	2020-04-20 05:11:34.712837
640	en	content	Who says that being a grown-up cannot celebrate Children's Day?  Let’s go back to the days when we still have our pure heart through these picture books.	News	23	2020-04-20 05:11:34.715387	2020-04-20 05:11:34.715387
27	en	address	No. 416號, Section 2, Minsheng Road, West Central District, Tainan City, 700	Store	1	2019-03-11 12:40:28.237586	2020-05-14 10:06:34.651571
649	zh-TW	title	康橋好食光_飲食活動第二彈	News	26	2020-06-13 11:35:17.313927	2020-06-13 11:35:17.313927
333	en	title	Kindness Day x Yu Nagaba	News	9	2020-02-12 07:12:29.582505	2020-02-12 07:12:29.582505
334	en	content	Limited edition in collaboration with Yu Nagaba will make its debut. Tie-ins already hit the store shelves right now!	News	9	2020-02-12 07:12:29.595865	2020-02-12 07:12:29.595865
307	zh-TW	title	公車	Traffic	10	2019-06-04 07:34:39.410889	2019-06-04 07:34:39.410889
308	zh-TW	description	<p>巴士</p>\r\n	Traffic	10	2019-06-04 07:34:39.425792	2019-06-04 07:34:39.425792
309	en	title	bus	Traffic	10	2019-06-04 07:34:39.428864	2019-06-04 07:34:39.428864
310	en	description	<p>by bus</p>\r\n	Traffic	10	2019-06-04 07:34:39.431991	2019-06-04 07:34:39.431991
625	zh-TW	title	走出房間的人	News	20	2020-03-10 09:30:41.271177	2020-03-10 09:30:41.271177
626	zh-TW	content	以吳爾芙的「房間」作為開端，將實體的空間，延伸想像為思想上空間或心靈上的空間。呼應今年國際婦女節的主題-「我是世代平等：實現婦女的權利。」	News	20	2020-03-10 09:30:41.281584	2020-03-10 09:30:41.281584
24	zh-TW	title	台南安平	Store	1	2019-03-11 12:40:27.99967	2020-02-25 11:20:04.982149
628	en	content	Kindness Day Hotel x Ubuntu Bookstore Joint Curation on March	News	20	2020-03-10 09:30:41.287229	2020-03-11 09:40:15.130578
627	en	title	People who walk out of the room	News	20	2020-03-10 09:30:41.284453	2020-03-11 09:40:15.136886
635	en	title	Kindness Day x Yu Nagaba	News	22	2020-04-06 06:45:37.893787	2020-04-06 06:45:37.893787
634	zh-TW	content	這次與康橋慢旅的合作，是長場雄首次與台灣在地品牌推出限定聯名商品，藉由此機會邀請插畫家本人與我們對談，用外國人的視角探索他眼中的台灣風景!	News	22	2020-04-06 06:45:37.892115	2020-04-06 06:46:41.039578
633	zh-TW	title	康橋慢旅Ｘ長場雄 跨界聯名獨家訪談	News	22	2020-04-06 06:45:37.88947	2020-04-06 06:47:48.876025
636	en	content	This collaboration with the Kindness Day Hotel is the first time that Nagaba has launched a series of limited co-banding products with a Taiwan’s local brand. Our first crossover collaboration took us twelve months of communication with the illustrator, allowing us to see Taiwan’s scenery from a foreigner’s standpoint.	News	22	2020-04-06 06:45:37.896232	2020-05-11 06:53:28.372429
641	zh-TW	title	好評加碼延長！超人氣續住半價優惠方案！	News	24	2020-05-26 09:29:25.203981	2020-05-26 09:29:25.203981
642	zh-TW	content	｜好吃好玩 府城慢遊｜好消息告訴大家✨⁣ 感謝大家熱烈迴響，活動決定延長至六月底！⁣	News	24	2020-05-26 09:29:25.214043	2020-05-26 09:29:25.214043
644	en	content	| Be a wanderer to enjoy the cuisines and amazing trip in Tainan | Here’s a good news to share with you guys.✨ This activity will extend to the end of June!	News	24	2020-05-26 09:29:25.218376	2020-05-26 10:18:42.14459
643	en	title	Still Available! Super Popular Package - 50% Off for Second Night Stay!	News	24	2020-05-26 09:29:25.216709	2020-05-26 10:18:42.148435
647	en	title	Kindness Day _ First Attack of Eating co-branded collaboration	News	25	2020-05-28 04:02:50.703405	2020-06-01 10:00:18.086893
651	en	title	Kindness Day _ Second Attack of Eating co-branded collaboration	News	26	2020-06-13 11:35:17.320979	2020-06-13 11:35:17.320979
653	zh-TW	title	PARIPARI パリパリ APARTMENT	News	27	2020-06-15 10:18:19.711424	2020-06-15 10:18:19.711424
655	en	title	PARIPARI パリパリ APARTMENT	News	27	2020-06-15 10:18:19.719858	2020-06-15 10:18:19.719858
645	zh-TW	title	康橋好食光_飲食聯名第一彈	News	25	2020-05-28 04:02:50.692703	2020-06-17 03:33:02.388486
650	zh-TW	content	｜康橋慢旅 × St.1 Café｜ Life is too short to drink bad coffee.	News	26	2020-06-13 11:35:17.318979	2020-06-17 03:35:00.431269
652	en	content	｜Kindness Day Hotel × St.1 Café｜ Life is too short to drink bad coffee.	News	26	2020-06-13 11:35:17.323662	2020-06-17 03:35:00.433891
646	zh-TW	content	｜康橋慢旅 × 吉姆老爹｜ 在慢旅，不出門也能享受微醺。	News	25	2020-05-28 04:02:50.701334	2020-06-17 03:35:16.08278
648	en	content	｜Kindness Day Hotel × Jim & Dad's Brewing Company｜  Stay at Kindness Day and get a little tipsy without going outside	News	25	2020-05-28 04:02:50.704879	2020-06-17 03:35:16.085063
657	zh-TW	title	康橋好食光_飲食聯名第三彈	News	28	2020-06-17 05:51:41.427848	2020-06-17 05:51:41.427848
658	zh-TW	content	｜康橋慢旅 × 山山來茶｜ 在慢旅，以茶會友。	News	28	2020-06-17 05:51:41.430079	2020-06-17 05:51:41.430079
659	en	title	Kindness Day _ Third Attack of Eating co-branded collaboration	News	28	2020-06-17 05:51:41.431505	2020-06-17 05:51:41.431505
656	en	content	PARIPARI – means groovy and chic in Taiwanese, also be the combination of selection, coffee and hotel.	News	27	2020-06-15 10:18:19.721382	2020-06-21 16:30:07.018053
654	zh-TW	content	PARIPARI，老臺語中的摩登時髦之意， 也是選品、咖啡、旅宿的集合體。	News	27	2020-06-15 10:18:19.717721	2020-06-21 16:30:07.026605
660	en	content	｜Kindness Day Hotel x Shan Shan Cha｜ At the Kindness Day, mingling with tea	News	28	2020-06-17 05:51:41.432994	2020-06-26 09:02:22.879689
662	zh-TW	content	｜康橋慢旅 × 鼎旺麻辣鍋｜在慢旅，辣翻你的暑假。	News	29	2020-07-01 10:00:23.075153	2020-07-01 10:00:23.075153
663	en	title	Kindness Day _ Fourth Attack of Eating co-branded collaboration	News	29	2020-07-01 10:00:23.077742	2020-07-01 10:00:23.077742
664	en	content	｜Kindness Day Hotel × Ding Wang Hot Pot｜Enjoy a spicy hot pot in this scorching heat ?!	News	29	2020-07-01 10:00:23.079124	2020-07-13 06:25:19.697311
661	zh-TW	title	康橋好食光_飲食聯名第四彈	News	29	2020-07-01 10:00:23.065248	2020-07-23 03:59:54.178053
665	zh-TW	title	康橋慢旅 x STIMLIG	News	30	2020-07-28 10:43:45.324225	2020-07-28 10:43:45.324225
666	zh-TW	content	STIMLIG訂製椅，溫柔支撐你的疲憊身軀。	News	30	2020-07-28 10:43:45.334083	2020-07-28 10:43:45.334083
667	en	title	Kindness Day x STIMLIG	News	30	2020-07-28 10:43:45.337154	2020-07-28 10:43:45.337154
668	en	content	STIMLIG Customized Chair. Gently support your tired body.	News	30	2020-07-28 10:43:45.339667	2020-07-28 10:43:45.339667
196	en	description	<p>After the high-speed rail Tainan station</p>\r\n\r\n<p><strong>A. Transfer to the high-speed rail express bus:</strong><br />\r\nHigh-speed Rail Tainan Express Bus &rarr; Take the H31 line &rarr; Get off at Tainan City Hall (Fu-Cian Rd.)&nbsp;&rarr; Walk about 15 minutes &rarr; Arrive at Kangqiao Slow Travel<br />\r\n<strong>B. Transfer to Taiwan Railway:</strong><br />\r\nExit of High Speed Rail No. 1 &rarr; Transfer to Taisha Sharon Line &rarr; Tainan Railway Station Qianzhan Exit &rarr; Walk to Tainan Railway Station North Station &rarr; Take Bus No. 2 &rarr; Get off at <strong>Minsheng Road Temporary Parking Lot</strong>&nbsp;&rarr; Arrive at Kangqiao Slow Travel<br />\r\n<strong>C. Take a taxi:</strong><br />\r\nHigh-speed Rail Tainan Station &rarr; Take a taxi (about 30 minutes by car)</p>\r\n	Traffic	5	2019-04-23 13:39:41.314482	2020-07-30 15:53:38.602628
674	zh-TW	content	有深度沒難度的台南指南	News	32	2020-09-25 10:52:01.121476	2020-09-25 10:52:01.121476
676	en	content	Tainan Guidebook (profound but intuitively clear). Not so hard to be Tainan local people, just by word of mouth do spread.	News	32	2020-09-25 10:52:01.126205	2020-09-26 05:47:48.79748
673	zh-TW	title	慢旅不藏私_很台不難，口耳相傳！	News	32	2020-09-25 10:52:01.110297	2020-09-25 10:57:44.727604
675	en	title	KINDNESS DAY SECRET GETAWAY	News	32	2020-09-25 10:52:01.124593	2020-09-26 07:26:51.620477
677	zh-TW	title	叫你老爹來打鬼	News	33	2020-10-07 09:04:46.635788	2020-10-07 09:04:46.635788
678	zh-TW	content	慢旅限定，飲酒打鬼慶佳節。	News	33	2020-10-07 09:04:46.643369	2020-10-07 09:04:46.643369
679	en	title	Get your daddy to Pa-Gui	News	33	2020-10-07 09:04:46.645928	2020-10-07 09:04:46.645928
680	en	content	Kindness Day’s Halloween Exclusive - Drinking craft beer and fighting ghosts to celebrate the best Halloween	News	33	2020-10-07 09:04:46.647407	2020-10-12 02:33:45.208981
681	zh-TW	title	Beats On Eyes in 康橋慢旅	News	34	2020-10-19 09:48:08.850067	2020-10-19 09:48:08.850067
682	zh-TW	content	睜一隻眼，閉一隻眼～Chill Halloween！	News	34	2020-10-19 09:48:08.854116	2020-10-19 09:48:08.854116
683	en	title	Beats On Eyes in Kindness Day	News	34	2020-10-19 09:48:08.858218	2020-10-19 09:48:08.858218
684	en	content	Catch your eyes～Chill Halloween！	News	34	2020-10-19 09:48:08.86888	2020-10-19 09:48:08.86888
60	en	desc	<p>There are&nbsp;parking spaces in the hotel, which is most suitable for friends travel, family travel and business trips. Our environment is clean, safe and convenient, and we are always ready to provide you with friendly and caring service, as well as delicious breakfast and midnight snack.&nbsp;Our rooms are presented in a warming wooden atmosphere, and are decorated with metals, wall hangings, and soft furnitures. The overall interior color schemes are made up of subtle colors, conveying an elegant taste of the design.</p>\r\n	Store	1	2019-03-30 03:11:37.509218	2020-10-31 04:55:53.243561
685	zh-TW	title	康橋慢旅×秘密集蕙 聖誕節演唱會	News	35	2020-12-11 03:58:03.987654	2020-12-11 03:58:03.987654
686	zh-TW	content	用閃亮的歌聲開始現場演唱！	News	35	2020-12-11 03:58:03.993585	2020-12-11 03:58:03.993585
687	en	title	Kindness Day × Haley Christmas Concert	News	35	2020-12-11 03:58:03.996068	2020-12-11 03:58:03.996068
688	en	content	Let the music come along for Christmas.	News	35	2020-12-11 03:58:03.997483	2020-12-11 03:58:03.997483
689	zh-TW	title	康橋好食光_飲食聯名第五彈	News	36	2021-01-28 03:49:27.177415	2021-01-28 03:49:27.177415
690	zh-TW	content	｜康橋慢旅 × 樂檸漢堡｜遊台南！吃小俠！	News	36	2021-01-28 03:49:27.184711	2021-01-28 03:49:27.184711
691	en	title	KINDNESS DAY _ FIFTH ATTACK OF EATING CO-BRANDED COLLABORATION	News	36	2021-01-28 03:49:27.186847	2021-01-28 03:49:27.186847
692	en	content	｜Kindness Day Hotel × Thefreeh Burger｜ Visit Tainan! Eat Ranger Burger!	News	36	2021-01-28 03:49:27.188382	2021-02-03 08:35:23.023325
694	zh-TW	content	丹麥精釀啤酒品牌—米凱樂啤酒吧首度踩點台南，攜手打造無距離感酒吧。	News	37	2021-02-26 03:21:46.200119	2021-02-26 03:21:46.200119
693	zh-TW	title	康橋慢旅 & Mikkeller 期間限定聯名企劃	News	37	2021-02-26 03:21:46.1952	2021-03-03 06:15:43.204365
695	en	title	Kindness Day & Mikkeller	News	37	2021-02-26 03:21:46.202213	2021-03-08 08:41:54.467776
696	en	content	｜Kindness Day & Mikkeller｜ Enjoy some great Mikkeller craft beer at Kindness Day Hotel.	News	37	2021-02-26 03:21:46.203731	2021-03-08 08:56:55.706557
697	zh-TW	title	康橋慢旅防疫措施	News	38	2021-05-18 10:14:31.203689	2021-05-18 10:14:31.203689
698	zh-TW	content	康橋防疫指南！Healthy Day, Healthy Life！	News	38	2021-05-18 10:14:31.210736	2021-05-18 10:14:31.210736
699	en	title	Kindness Day Epidemic Prevention Policies	News	38	2021-05-18 10:14:31.213674	2021-05-18 10:14:31.213674
700	en	content	Kindness Ranger! Healthy Day, Healthy Life!	News	38	2021-05-18 10:14:31.215164	2021-05-18 10:14:31.215164
701	zh-TW	title	巷弄有鬧熱之月來月愛你	News	39	2021-06-08 04:04:18.873403	2021-06-08 04:04:18.873403
702	zh-TW	content	不論單身或是有伴，一盒在手，緣分帶著走！	News	39	2021-06-08 04:04:18.878495	2021-06-08 04:04:18.878495
704	en	content	"A little chance encounter could be the one you’ve waited for."	News	39	2021-06-08 04:04:18.884075	2021-06-08 04:04:18.884075
703	en	title	Alley Walker-Love Love Land, Chinese Valentine	News	39	2021-06-08 04:04:18.882559	2021-06-21 07:09:11.108518
705	zh-TW	title	康橋慢旅防疫措施	News	40	2021-08-30 06:57:24.435164	2021-08-30 06:57:24.435164
706	zh-TW	content	餐廳營業調整	News	40	2021-08-30 06:57:24.44369	2021-08-30 06:57:24.44369
707	en	title	Kindness Day Epidemic Prevention Policies	News	40	2021-08-30 06:57:24.446616	2021-08-30 06:57:24.446616
708	en	content	Fine-tuning for Dining Model	News	40	2021-08-30 06:57:24.448124	2021-08-31 04:05:39.950551
\.


--
-- Data for Name: mobility_text_translations; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.mobility_text_translations (id, locale, key, value, translatable_type, translatable_id, created_at, updated_at) FROM stdin;
15	zh-TW	desc	<p>每房均有專屬陽台，追求舒適、舒眠的最好首選。</p>\r\n	Room	2	2019-03-16 16:43:59.785606	2020-02-27 10:50:54.161681
46	en	desc	<p>We always went to our favorite snack shops when we were children, gazing longingly at the ice cream and cookies through the windows, wondering which snacks we should enjoy.</p>\r\n\r\n<p>All these childhood memories are still unforgettable.</p>\r\n\r\n<p>Let&#39;s refresh our mind and go back in time at Kindness Day Hotel!</p>\r\n	Food	6	2019-03-30 10:44:24.60635	2020-01-12 16:19:59.63424
36	zh-TW	aboutus_description	我們重視旅客的住宿過程，致力於每個細節，提供乾淨的房間、整潔的用餐環境、美味的餐飲。康橋，就是這麼舒適溫暖！	Setting	1	2019-03-27 11:34:32.508331	2019-10-04 10:04:50.368314
40	en	desc	<p>The night comes silently while the moonlight streaming through the windows. The smell of late night supper filled the air, so let&#39;s head towards the restaurant and get ready for the tasty local food! We would have endless chats and laughs, and we would recall our wonderful memories of our journey together.</p>\r\n	Food	4	2019-03-30 03:28:07.344881	2020-01-12 16:28:41.481499
17	zh-TW	spec	<p>房間5坪（17平方公尺）陽台1坪（3平方公尺）2單人床（105公分x188公分）<br />\r\n定價 7,200元，平日優惠價 3,580元（如遇假日價格另計）</p>\r\n\r\n<p>備註 : 可選擇2單人床或加大雙人床（182公分x188公分）</p>\r\n\r\n<p style="margin-top:8px"><span style="color:#bdc3c7;">平日定義：週日～週四；小週末假日定義：週五；假日定義：週六、國定假日、寒暑假、過年</span></p>\r\n	Room	2	2019-03-16 16:44:00.023607	2021-09-28 09:31:49.312722
18	en	spec	<p>17&nbsp;square meters, Balcony about 3 square meters, Two single-sized beds（105*188 cm）<br />\r\nOriginal price NTD 7,200, Special price NTD 3,580</p>\r\n\r\n<p>Note: There are two options for you, twin bed or extra double bed (182cm x 188cm).</p>\r\n\r\n<p><span style="color: rgb(189, 195, 199);">Weekdays: Sunday to Thursday. Hump Day / Weekend: Friday. Holidays: Saturday, holiday, summer and winter vacation, Chinese New Year.</span></p>\r\n	Room	2	2019-03-16 16:44:00.166844	2021-09-28 09:31:49.315399
48	en	subtitle	period	Food	6	2019-03-30 10:51:25.019384	2019-04-23 12:59:47.872202
45	zh-TW	subtitle	。	Food	6	2019-03-30 10:44:24.499788	2019-04-23 13:00:31.321164
10	zh-TW	equipment	<ul>\r\n\t<li>◆ 免費無線網路<br />\r\n\t◆ 43吋LCD電視<br />\r\n\t◆ 多媒體藍芽音響電話<br />\r\n\t◆ 上掀式保險箱<br />\r\n\t◆ 無聲小冰箱<br />\r\n\t◆ 感應立燈</li>\r\n\t<li>&nbsp;</li>\r\n\t<li>◆ 精品咖啡<br />\r\n\t◆ 原粹茶包<br />\r\n\t◆ 獨家馬克杯<br />\r\n\t◆ 乾濕分離浴室（無浴缸）<br />\r\n\t◆ 精選沐浴用品組<br />\r\n\t◆ 負離子吹風機</li>\r\n</ul>\r\n	Room	1	2019-03-16 13:37:40.874984	2019-03-16 13:37:40.874984
11	en	equipment	<ul>\r\n\t<li>◆ English<br />\r\n\t◆ 43吋LCD電視<br />\r\n\t◆ 多媒體藍芽音響電話<br />\r\n\t◆ 上掀式保險箱<br />\r\n\t◆ 無聲小冰箱<br />\r\n\t◆ 感應立燈</li>\r\n\t<li>&nbsp;</li>\r\n\t<li>◆ 精品咖啡<br />\r\n\t◆ 原粹茶包<br />\r\n\t◆ 獨家馬克杯<br />\r\n\t◆ 乾濕分離浴室（無浴缸）<br />\r\n\t◆ 精選沐浴用品組<br />\r\n\t◆ 負離子吹風機</li>\r\n</ul>\r\n	Room	1	2019-03-16 13:37:40.960757	2019-03-16 13:37:40.960757
403	zh-TW	description	<p><b>大家是否曾在台南的巷弄間迷路？</b></p>\r\n\r\n<p>沒有方向、漫無目的，期待在下個轉角與誰相遇，也許是老屋改建的咖啡廳，或是在地人最愛聚會的里長家門口，也可能是靜靜守護大家百餘年的廟宇，迷路成了一種旅行的樂趣。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><b>《巷弄有鬧熱》值得你迷途的台南巷弄探索</b></p>\r\n\r\n<p>在這次《巷弄有鬧熱》的活動中，我們想將探索巷弄的心情分享給大家，也許是你不知道的事情、不認識的店家、沒去過的景點，熱情的招呼大家，也許不能到台南，但你能跟著我們來場「雲端旅行」！</p>\r\n\r\n<p>-</p>\r\n\r\n<p>走在蝸牛巷中，想起了臺灣文學家葉石濤先生曾說：「台南是一個適合人們作夢、幹活、戀愛、結婚、悠然過活的地方。」</p>\r\n\r\n<p>台南的生活步調緩慢、不擁擠，食物偏甜但特別美味，阡陌縱橫的小巷、便利又安靜......，而這些細微的可愛之處，都是我們愛上「他」的原因。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><b>台南不只適合談戀愛，也讓人想跟台南談戀愛。</b></p>\r\n\r\n<p>在目前疫情期間不能來到台南，但你可以用別的方式與台南來場遠距離戀愛。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><b>〈月來月愛你七夕禮盒〉</b></p>\r\n\r\n<p>這是康橋慢旅首次推出禮盒商品，我們將體貼入微的心意灌注在這份禮盒中，雖說是七夕時節推出，但不論單身或是有伴，只要你喜愛台南，都能夠細細感受禮盒中充滿人情味的用心之處。禮盒內有台南古早味甜點&mdash;&mdash;黑糖椪餅，象徵感情圓滿的桂圓紅棗茶，能降暑氣的金菊活力茶，以及七夕特製手作帆布袋，精挑細選的聯名店家都是「我家巷口」等級的愛店。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><b>不用到台南，也有月老保庇</b></p>\r\n\r\n<p>康橋慢旅尊請到在新美街巷弄中，守護大家百餘年、掌管姻緣的府城四大月老之一坐鎮&mdash;&mdash;大天后宮月老尊神，同時被稱作「緣粉月老」，除擅於牽線，根據廟方統計，緣粉月老平均一年媒合的情侶有三百餘對，可說是每天都在牽紅線！另一個強項是使感情加溫，適合情侶來參拜。不論是找緣份，或是想與另一伴長長久久，都非常適合。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><b>一盒在手，緣分帶著走</b></p>\r\n\r\n<p>椪餅是經典的台南古早味甜點，團隊特別找到位在赤崁東街上的「艾摩多手工杏仁豆腐」，雖說是杏仁豆腐起家，店內特別設計的迷你椪餅，吃一整顆也不佔胃，以伴手禮來說大小適中，圓形的外型跟緣分圓滿連結，黑糖內餡更有甜在心裡的意象。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>兩款漢方花草茶是由位在鴨母寮市場巷弄旁的「手艸生活」特製，打破大眾對中藥的刻板印象，茶包皆是複方調配，喝起來順口、清甜，愛情別棗茶，桂圓紅棗是參拜月老時必備，紅棗代表(棗)早日找到好對象，桂圓則有感情圓滿之意，菊寞難耐茶藥材包含菊花、金銀花、黃耆等，具有平定心神的功能， 伴侶好心情、感情才順心。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>禮盒內的手作帆布袋與「瀏海樹」聯名，設計簡約清新，在電商平台上深受女孩們喜愛，瀏海樹把每個手作包當成自己的孩子般疼愛，與主理人一番討論過後，團隊選用年度熱銷款布包「像紙袋的帆布袋」，厚磅帆布材質，將象徵七夕的牛郎織女印在袋上，耐用、好搭，讓你把幸福帶著走。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>｜月來月愛你七夕聯名禮盒｜</p>\r\n\r\n<p>6/15-7/14開放預購&nbsp;</p>\r\n\r\n<p>預支戀愛價：NT$880</p>\r\n\r\n<p>7/15正式販售</p>\r\n\r\n<p>現在，好想見你價 NT$1080</p>\r\n\r\n<p>販售地點：康橋慢旅</p>\r\n\r\n<p>郵寄訂購請<a href="https://forms.gle/WC9o9r7c2rHsocmC8">點此</a></p>\r\n\r\n<p>&nbsp;</p>\r\n	News	39	2021-06-08 04:04:18.885519	2021-07-15 08:24:43.979915
35	en	aboutus_description	Highly cherish your experience while staying with us, we are devoted to provide all our guests comfortable accommodation, clean dinning environment and delicious cuisine. Devoted in every detail, Kindness Day is just like your another home! 	Setting	1	2019-03-27 11:34:01.836268	2019-04-23 12:09:13.292586
19	zh-TW	equipment	<p>設備及用品(中文)</p>\r\n	Room	2	2019-03-16 16:44:00.29719	2019-03-16 16:44:00.29719
20	en	equipment	<p>設備及用品(英文)</p>\r\n	Room	2	2019-03-16 16:44:00.413349	2019-03-16 16:44:00.413349
27	zh-TW	subtitle	簡介(中文)	Food	1	2019-03-17 06:49:56.305128	2019-03-17 06:49:56.305128
28	en	subtitle	簡介(英文)	Food	1	2019-03-17 06:49:57.12416	2019-03-17 06:49:57.12416
29	zh-TW	desc	描述(中文)	Food	1	2019-03-17 06:49:59.695114	2019-03-17 06:49:59.695114
30	en	desc	 描述(英文)	Food	1	2019-03-17 06:49:59.819007	2019-03-17 06:49:59.819007
41	zh-TW	subtitle	。	Food	5	2019-03-30 03:28:08.751889	2019-04-23 13:02:07.197276
47	en	subtitle	..........	Food	4	2019-03-30 10:45:10.090074	2019-04-23 13:02:41.990368
49	en	reservation_information	<p>※ We provider xxxxxxxxxxxxxxxxxxx（用餐時間7:00AM～10:00AM）<br />\r\n※ 本飯店未提供加床服務<br />\r\n※ 加人酌收清潔服務費，120cm以上每人NT$300元，120cm以下免費 （費用內含：豐盛早餐、備品）<br />\r\n※ 客房電視提供多台頻道可觀看。<br />\r\n※ 全館禁止寵物進入、全館禁菸。</p>\r\n	Setting	1	2019-03-31 02:51:14.444066	2019-03-31 02:51:14.444066
50	zh-TW	reservation_information	<p>※ 住房附贈自助式中西式早餐服務，另設有素食醬菜（用餐時間7:00AM～10:00AM）<br />\r\n※ 本飯店未提供加床服務<br />\r\n※ 加人酌收清潔服務費，120cm以上每人NT$300元，120cm以下免費 （費用內含：豐盛早餐、備品）<br />\r\n※ 客房電視提供多台頻道可觀看。<br />\r\n※ 全館禁止寵物進入、全館禁菸。</p>\r\n	Setting	1	2019-03-31 02:51:14.543896	2019-03-31 02:51:14.543896
51	en	reservation_check_in_time	<p>Check In：15:00後<br />\r\nCheck Out：12:00前</p>\r\n	Setting	1	2019-03-31 02:55:30.220466	2019-03-31 02:55:30.220466
52	zh-TW	reservation_check_in_time	<p>進房時間：15:00後<br />\r\n退房時間：12:00前</p>\r\n	Setting	1	2019-03-31 02:55:30.317292	2019-03-31 02:55:30.317292
54	zh-TW	reservation_contact_info	<p>訂房專線 +886.89.229.226<br />\r\n訂房傳真 +886.9.227.200<br />\r\nEMAIL h007.hotel@msa.hinet.net<br />\r\n旅館地址 台東市中興路一段209巷16號</p>\r\n	Setting	1	2019-03-31 02:55:30.497776	2019-03-31 02:55:30.497776
53	en	reservation_contact_info	<p>TEL: +886.89.229.226<br />\r\nFAX:&nbsp;+886.9.227.200<br />\r\nEMAIL h007.hotel@msa.hinet.net<br />\r\nAddress 台東市中興路一段209巷16號</p>\r\n	Setting	1	2019-03-31 02:55:30.407182	2019-03-31 02:58:34.870619
37	zh-TW	subtitle	。	Food	3	2019-03-30 03:28:05.732536	2019-04-23 12:59:04.47123
39	zh-TW	subtitle	。	Food	4	2019-03-30 03:28:07.150084	2019-04-23 13:01:22.058653
44	en	subtitle	....	Food	5	2019-03-30 10:39:30.949171	2019-04-23 13:02:07.199857
43	en	subtitle	period	Food	3	2019-03-30 10:38:56.929757	2019-04-23 12:59:04.473659
60	zh-TW	reservation_information	<p>- 住房附贈自助式中西式早餐服務，另設有素食醬菜（用餐時間7:00AM～11:00AM）<br />\r\n- 本旅館不提供加床服務<br />\r\n- 加人酌收清潔服務費，120cm以上每人NT$300元，120cm以下免費（費用內含：豐盛早餐、備品）<br />\r\n- 客房電視提供多台頻道可觀看。<br />\r\n- 全館禁止寵物進入、全館禁菸。</p>\r\n	Store	1	2019-04-08 15:02:05.828213	2020-02-27 15:39:39.501382
81	zh-TW	desc	<p>愉快的夜晚，與旅伴手握啤酒，小酌一下，享受這微醺時刻，隱匿於夜色中慢下來的悠閒時光。把夜晚的景緻、旅行的邂逅，裝進屬於你的特調啤酒。乾杯！</p>\r\n	Food	5	2019-04-15 12:54:30.263374	2019-08-07 08:14:42.171458
404	en	description	<p>Have you ever lost your way in the alleys of Tainan?<br />\r\n<br />\r\nTaking a walk without direction and purpose, you just expect to bump into someone at the next corner. The place might be a cafe housed in a renovated traditional building, or at the door of the village chief&#39;s house where locals love to gather, or a hundred years temple. Getting lost has become a joy of travel.<br />\r\n<br />\r\n&quot;Alley Walker&quot; is worth exploring the alleys of Tainan that you lost. Perhaps you cannot come to Tainan now, but Kindness Day warmly welcomes everyone to follow our footsteps to start a &quot;Cloud Trip&quot;! There are variety of unknown things, unique stores, and attractions you haven&#39;t been to.<br />\r\n<br />\r\nWalking around Snail Alley reminds me of a saying: &quot;Tainan is a place suitable for dreaming, working, falling in love, getting married, and living a leisurely life.&quot; &mdash; Yeh Shih Tao, pioneering Taiwanese litterateur.<br />\r\n<br />\r\nTainanese live a slow-paced, quiet but convenient life. You&#39;re able to enjoy sparsely populated, sweet, but particularly delicate food, crisscrossing paths in the fields, and these subtle things are all the reasons why people fall for this adorable Tainan.<br />\r\n<br />\r\nTainan is an ancient city that allows you to conduct a love affair, but also makes you want to fall in love with.<br />\r\n<br />\r\nDuring the epidemic, even people cannot visit Tainan, however, you can still establish a long-distance relationship with Tainan in other ways.<br />\r\n<br />\r\n<strong>〈Love Love Land Valentine Gift Box〉</strong></p>\r\n\r\n<p><br />\r\nKindness Day Hotel made a debut of Chinese Valentine&#39;s&nbsp;gift box. We have poured a token of our appreciation into this gift box. Although the launching time is during the Chinese Valentine&#39;s Festival, whether you&#39;re single or unavailable, as long as you are very fond of Tainan, you can feel the fullness of the gift box. The gift box contains Tainan&rsquo;s childhood snacks &ndash; Tainan brown sugar hollow cookies, red dates and longan tea, honeysuckle and chrysanthemum tea, and a special hand-made canvas bag for Chinese Valentine. All these well-chosen cobranded stores have reached our favorite top level.<br />\r\n<br />\r\n<strong>No need to visit Tainan, but still receive the blessing from God of matchmaking</strong><br />\r\n<br />\r\nIn the alleys of Xinmei street, there&#39;s one of the four Gods of matchmaking at Tainan Grand Mazu Temple. According to the statistics of the temple, there are more than 300 couples who have found their partners for a year on average. In addition to being renowned for its matchmaking powers, another strength is to warm up relationships, suitable for lovers to prayer together. Whether you&#39;re looking for better luck in love or begging for a long-time relationship with your partner, the partner of your dreams will be pulled.<br />\r\n<br />\r\n<strong>A box in hand, Destiny be with you</strong><br />\r\n<br />\r\nBrown sugar hollow cookie (Pung Bing) is a classic childhood snack in Tainan. Our team especially found a handmade almond tofu shop called &quot;Imodo Tofu&quot; on Chihkan East Street. Although it started with almond tofu, but also great at the specially designed souvenir - mini pung bing. The size is moderate, the round shape represents perfect fate, and the brown sugar filling means that the heart is sweeter.<br />\r\n<br />\r\nThe two Chinese herbal teas are customized by &quot;Hand Haabu Living&quot; located next to the alley of Yamuliao market, breaking stereotypes in traditional Chinese medicine. The tea bags are all compound recipes, with a smooth taste and sugary. Red dates and longan tea are necessary for those who go to the temple to pray to the enshrined deities &ndash; Yuelao (God of matchmaking), and ask for a Mr. or Mrs. Right as soon as possible. The herb materials of honeysuckle and chrysanthemum tea include chrysanthemum, honeysuckle, Astragalus, etc., which have the effect of calming the mind. The most important thing is to make your partner happy, life will be easier.<br />\r\n<br />\r\nThe hand-made canvas bag in the gift box is a collaboration with Bangstree. The design is simple and elegant, and now it has become popular with girls on Pinkoi. Bangstree treats each hand-made bag as its own child. After discussing with the Bangstree, we chose the annual hot-selling heavy duty canvas tote bag. Zhin&uuml; and Niulang (the Cowherd and the Weaver Girl), a symbol of Chinese Valentine, are printed on the bag, which allowing you to carry this romantic tale and happiness with you.</p>\r\n\r\n<p><br />\r\n<strong>｜Love Love Land Gift Box｜</strong><br />\r\nPre-orders are now being accepted on June 15.<br />\r\nEarly Bird Special：NT$880<br />\r\nGift box will be officially launched on July 15.<br />\r\nSelling Price：NT$1080<br />\r\n&nbsp;</p>\r\n	News	39	2021-06-21 07:09:11.11311	2021-06-21 07:09:11.11311
69	en	welcome_to_kindness_day_title	Welcome to Kindness Day !	Banner	2	2019-04-15 02:24:12.331223	2019-06-12 07:22:56.697988
80	zh-TW	desc	<p>小時候最愛去巷口的柑仔店，望著櫥窗內的冰淇淋、精緻小餅乾，猶豫著今天要吃什麼零嘴好呢?</p>\r\n\r\n<p>這些舊時回憶，現在回想起來還是念念不忘呢~</p>\r\n\r\n<p>來到康橋慢旅，跟著我們一起尋找兒時記憶的味道吧!</p>\r\n	Food	6	2019-04-15 12:36:00.946315	2020-01-10 02:55:17.438878
62	zh-TW	reservation_check_in_time	<p>進房時間&nbsp; &nbsp; 15:00後<br />\r\n退房時間&nbsp; &nbsp; 12:00前</p>\r\n	Store	1	2019-04-08 15:02:06.038906	2019-10-22 04:29:55.633064
119	zh-TW	spec	<div>\r\n<p>房間約6坪（20平方公尺）陽台約1坪（3平方公尺）1大床（160公分x188公分）1小床（90公分x188公分）<br />\r\n定價 8,800元，平日優惠價 4,380元（如遇假日價格另計）</p>\r\n\r\n<p><span style="color:#bdc3c7;">平日定義：週日～週四；小週末假日定義：週五；假日定義：週六、國定假日、寒暑假、過年</span></p>\r\n</div>\r\n	Room	7	2020-02-12 10:31:30.400824	2021-09-28 09:32:14.932851
1	en	desc	<p>Highly cost&nbsp;performance ratio and the best choice for travel.</p>\r\n	Room	1	2019-03-08 08:15:42.874807	2020-02-28 13:54:21.256498
58	zh-TW	reservation_contact_info	<p><strong>訂房專線</strong>&nbsp; &nbsp; 06.280.5566<br />\r\n<strong>訂房傳真&nbsp;</strong>&nbsp; &nbsp;06.280.5577<br />\r\n<strong>EMAIL&nbsp;</strong>&nbsp; &nbsp; &nbsp; h024.hotel@msa.hinet.net<br />\r\n<strong>旅館地址&nbsp;</strong>&nbsp; &nbsp;台南市中西區民生路二段416號</p>\r\n	Store	1	2019-04-08 15:01:29.111516	2020-01-10 03:33:46.952614
38	en	desc	<p>We begin our day by having delicious breakfast with our loved ones, with sun&#39;s ray coming in through the window, and the aroma of fresh coffee in the air. In this cozy morning, we can start our travel with slow pace and pleasant mood.</p>\r\n	Food	3	2019-03-30 03:28:05.808267	2020-01-12 16:14:13.744354
77	en	room_description	All rooms are prepared and organized with professional staffs and strict regulations for your most comfort. All rooms are designed to offer our guests a place to rest and recharge; along with delicious breakfast, dessert, and late night supper, Kindness Day hotel will do our best to ensure your pleasant stay!	Banner	2	2019-04-15 02:37:12.675678	2019-04-23 12:07:54.181216
78	zh-TW	room_description	我們的房間經過嚴謹的整房流程，乾淨、舒適也舒眠。並享有美味的早餐、點心、宵夜，讓你住得開開心心！	Banner	2	2019-04-15 02:37:12.741962	2019-04-23 12:07:54.190525
82	zh-TW	desc	<p>暮色從窗戶透進暖黃的倒影，天色漸慢，夜晚悄悄來臨。往餐廳走去，晚點心陣陣香味環繞在鼻息間，來吧！嚐嚐道地的好味道。與旅伴聚一起總有聊不完的話題，喧鬧的笑聲感染彼此，揚起笑容的嘴角，帶著我們回憶旅途的美好。</p>\r\n	Food	4	2019-04-15 12:54:47.624016	2020-02-05 08:05:36.402502
71	en	welcome_to_kindness_day_description	How long have you been overwhelmed with what’s on hand and not giving yourself enough time to settle down?  It is time to slow down and take some time for yourself while making efforts in life to keep moving forward. Kindness Day is your best choice where you can find enjoyment and relaxation.  We hope to be a part of your unparalleled adventure and a part of your unforgettable remembrance.	Banner	2	2019-04-15 02:24:12.468311	2020-04-20 04:35:45.12535
65	zh-TW	credit_cards	["visa", "master", "jcb", "linkcard", "union"]	Store	1	2019-04-09 14:29:09.343063	2019-05-06 11:55:01.682719
75	en	room_title	Rooms !	Banner	2	2019-04-15 02:37:12.538984	2019-04-23 12:06:38.885941
76	zh-TW	room_title	Rooms !	Banner	2	2019-04-15 02:37:12.60794	2019-04-23 12:06:38.887532
70	en	welcome_to_kindness_day_subtitle	Slow travel in a fast-paced life	Banner	2	2019-04-15 02:24:12.403021	2019-04-23 12:06:38.889266
73	zh-TW	welcome_to_kindness_day_subtitle	生活快節奏  旅行慢步調	Banner	2	2019-04-15 02:24:12.599441	2019-04-23 12:06:38.892771
116	zh-TW	desc	<p>重視住宿經濟性、旅遊的最佳選擇。</p>\r\n	Room	1	2020-02-12 02:59:50.483158	2020-02-27 10:46:39.344267
42	en	desc	<p>While enjoying this relaxing night, you can have a few beers with travel mates and pack the night sceneries and exceptional encounters into your craft beers. Let&#39;s toast and cheer for this fabulous time.</p>\r\n	Food	5	2019-03-30 03:28:08.897769	2020-01-12 16:33:05.289342
121	zh-TW	desc	<p>潔淨舒適、CP值高，可獨立區分為兩個小房間，讓睡眠更舒適，適合經常出門旅遊的家庭、三五好友。</p>\r\n	Room	11	2020-02-12 10:36:57.269745	2020-02-27 11:01:53.718579
127	zh-TW	desc	<p>每房均有專屬陽台，面向運河，視野遼闊。重視旅遊氛圍，喜歡和旅伴回旅館時，在房裡聊天、吃喝、好好睡一覺的最棒選擇。</p>\r\n	Room	12	2020-02-12 10:48:24.548439	2020-02-27 11:05:06.835983
122	en	desc	<p>Quadruple room, can also be divided into two small rooms. A tidy, cozy and high cost performance room for family and friends who regularly travel around.</p>\r\n	Room	11	2020-02-12 10:36:57.27761	2020-02-28 13:54:11.263609
118	en	description	<p>An Acclaimed illustrator from Japan, Yu Nagaba are active in the field of illustration, collaboration, advertising, design, publish, and also famous in minimal portrait drawing in lines.</p>\r\n\r\n<p>His work is commonly seen in Japanese life magazine. He likes to express creations by interesting stories and delicate painting style, which are highly praised and appreciated by many of us.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Yu Nagaba has created an illustration series to start an imagination of travel, and accompanied each guest on a fun-filled slow travel.</p>\r\n\r\n<p>We are going to launch five limited-edition collaborations during the opening days, included T-shirt, totes, hats, brooches and stickers. What are you guys waiting for? Don&rsquo;t miss the chance to buy these amazing merchandises in our lobby!</p>\r\n\r\n<p>There are also Yu Nagaba&rsquo;s autographed limited first edition of portfolios《I DRAW》hit the store shelves. Offer Valid While Stocks Last! Don&#39;t lose such a golden opportunity.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>--------------------</p>\r\n\r\n<p><strong>Kindness Day Hotel</strong><br />\r\nAddress: No. 416, Sec. 2, Minsheng Rd., West Central Dist., Tainan City 700, Taiwan</p>\r\n	News	9	2020-02-12 07:12:29.621657	2020-02-12 07:15:44.822546
371	zh-TW	description	<p>｜那些繪本教我的事｜⁣<br />\r\n康橋慢旅 x 烏邦圖書店四月聯合策展⁣<br />\r\n⁣<br />\r\n繪本是兒童和這個世界最溫柔的橋樑。⁣<br />\r\n此次挑選了曾入選義大利波隆那插畫展的優秀繪者及其作品，藉由這些橋樑，在世界探索，感受到愛、生命以及追尋夢想的勇氣。⁣<br />\r\n⁣<br />\r\n-⁣<br />\r\n⁣<br />\r\n小時候在每年兒童節最期待慶祝及禮物了！長大後在繁忙日常中，面對現實的壓力與煩惱，卻漸漸磨去對生活的熱情...⁣<br />\r\n誰說長大後不能過兒童節，讓我們透過繪本回歸兒時的純粹～⁣<br />\r\n⁣</p>\r\n\r\n<p>--------------------⠀<br />\r\n展覽期間：2020/04/15-2020/05/15⁣<br />\r\n展覽地點：慢旅一樓休憩區/烏邦圖書店⁣</p>\r\n	News	23	2020-04-20 05:11:34.717179	2020-04-20 05:20:53.969796
405	zh-TW	description	<p>在遵守政府內用規範下，為提供安心的用餐環境，以及美味的餐點給旅人們，110/9/1起，慢旅餐飲服務型態將進行微調：⁣</p>\r\n\r\n<p><strong>⁣⁣早餐&amp;晚點心⁣</strong></p>\r\n\r\n<p>◆可於供餐時段入內享用自助式餐點⁣</p>\r\n\r\n<p>◆防疫期間仍採人流管制，如座位滿載(客滿)，可向餐廳選擇外帶方式⁣</p>\r\n\r\n<p>◆離席取餐時須配戴口罩</p>\r\n\r\n<p>◆桌距維持、用餐隔板，盡心消毒，防疫有保障⁣</p>\r\n\r\n<p><strong>⁣24飲品、冰淇淋&amp;下午茶餅乾</strong></p>\r\n\r\n<p>◆照常提供</p>\r\n\r\n<p>敬請旅人協力配合，康橋夥伴們會繼續細心清潔消毒、落實實聯制，一同努力防疫不鬆懈。</p>\r\n	News	40	2021-08-30 06:57:24.450023	2021-09-28 09:35:21.881219
128	en	desc	<p>Balcony attached to every room. It will be your best choice if you like river view or if you values overall travel experience.</p>\r\n	Room	12	2020-02-12 10:48:24.557712	2020-02-28 13:57:38.448907
126	en	spec	<p>25&nbsp;square meters, Balcony about 5 square meters, Two queen-sized beds（150*200&nbsp;cm）<br />\r\nOriginal price NTD 11,200, Special price NTD 5,580</p>\r\n\r\n<p><span style="color: rgb(189, 195, 199);">Weekdays: Sunday to Thursday. Hump Day / Weekend: Friday. Holidays: Saturday, holiday, summer and winter vacation, Chinese New Year.</span></p>\r\n	Room	12	2020-02-12 10:40:07.155712	2021-09-28 09:33:31.955003
123	zh-TW	spec	<p>房間約6.5坪（22平方公尺）2大床（150公分X188公分）<br />\r\n定價 10,600元，平日優惠價 5,280元（如遇假日價格另計）</p>\r\n\r\n<p><span style="color:#bdc3c7;">平日定義：週日～週四；小週末假日定義：週五；假日定義：週六、國定假日、寒暑假、過年</span></p>\r\n	Room	11	2020-02-12 10:36:57.281325	2021-09-28 09:32:48.891191
125	zh-TW	spec	<p>房間約7.5坪（25平方公尺）陽台1.5坪（5平方公尺）2大床（150公分X200公分）<br />\r\n定價 11,200元，平日優惠價 5,580元（如遇假日價格另計）</p>\r\n\r\n<p><span style="color: rgb(189, 195, 199);">平日定義：週日～週四；小週末假日定義：週五；假日定義：週六、國定假日、寒暑假、過年</span></p>\r\n	Room	12	2020-02-12 10:40:07.148131	2021-09-28 09:33:31.980653
120	en	spec	<p>20&nbsp;square meters, &nbsp;Balcony about 3 square meters, &nbsp;One queen-sized bed（160*188 cm）One single-sized beds（90*188 cm）<br />\r\nOriginal price NTD 8,800, Special price NTD 4,380</p>\r\n\r\n<p><span style="color:#bdc3c7;">Weekdays: Sunday to Thursday. Hump Day / Weekend: Friday. Holidays: Saturday, holiday, summer and winter vacation, Chinese New Year.</span></p>\r\n	Room	7	2020-02-12 10:31:30.431934	2021-09-28 09:32:14.900511
124	en	spec	<p>22&nbsp;square meters, Two queen-sized beds（150*188 cm）<br />\r\nOriginal price NTD 10,600, Special price NTD 5,280</p>\r\n\r\n<p><span style="color: rgb(189, 195, 199);">Weekdays: Sunday to Thursday. Hump Day / Weekend: Friday. Holidays: Saturday, holiday, summer and winter vacation, Chinese New Year.</span></p>\r\n	Room	11	2020-02-12 10:36:57.284765	2021-09-28 09:32:48.861343
379	zh-TW	description	<p>PARIPARI，老臺語中的摩登時髦之意，⁣<br />\r\n也是選品、咖啡、旅宿的集合體。⁣<br />\r\n精選自焙精品咖啡豆，提供專業手沖及義式咖啡。⁣<br />\r\n在臺南舊城區老宅內重現美好年代的同時，更注入新能量，⁣<br />\r\n讓在地人與遠道而來的旅客都能找到專屬自己的Paripari時光。⁣<br />\r\n⁣<br />\r\n忠義路二段的寧靜巷弄中，門口一排舊式電影院木椅，原有老公寓的馬賽克磚搭配吸睛的綠色遮雨棚，推開門後更是值得讓人細細品味，結合在地選物店、咖啡廳與民宿的三層老屋經改造後皆有不同巧妙，用溫潤家具及華麗老件妝點空間，每個角落都強調著時代的魅力所在。⁣<br />\r\n⁣<br />\r\n來到台南，多數人並非追求都市的快步調，而是為了享受與歷史歲月共同呼吸的生活感及慢活日常，在這浪漫的城市，值得慢慢的品味時光，靜靜的感受每個悠閒的氛圍。⁣<br />\r\n⁣<br />\r\n喜歡慢旅的朋友們，歡迎大家前去Paripari逛逛，在選物店挑選屬於自己的紀念品，或是點杯手沖咖啡享受一個chill的午後。⁣<br />\r\n機車一族：7分鐘（最快抵達的方式！注意安全！）⁣<br />\r\n自行開車：8分鐘（適合家人出遊，停車位在快到目的地前要開始尋尋覓覓的找）⁣<br />\r\n騎卡打車：10分鐘（吹吹風完更適合來杯咖啡，慢旅單車你騎了嗎？）⁣<br />\r\n日常慢步：27分鐘（如果途中鑽進其他巷弄探險的話，那就不只了&hellip;）⁣<br />\r\n⁣<br />\r\n---------------------⁣⁣⁣<br />\r\n⁣<br />\r\nPARIPARI APARTMENT⁣<br />\r\n地址：台南市中西區忠義路二段158巷9號（<a href="https://www.google.com/maps/place/Paripari+apt./@22.9957969,120.2023409,17z/data=!3m1!4b1!4m5!3m4!1s0x346e766202a78277:0x1551f8d52d39587f!8m2!3d22.995792!4d120.2045296">看地圖</a>）⁣<br />\r\n電話：06-2213266⁣<br />\r\nWEB：<a href="https://paripariapt.co/">https://paripariapt.co/</a><br />\r\nFB：<a href="http://www.facebook.com/paripariapt/">Paripari apt.⁣</a><br />\r\n營運時間：11:00-18:00/每周四固定公休⁣<br />\r\n⁣<br />\r\n3F－PARIPARI apt. 民宿⁣<br />\r\n2F－St.1 CAFE &amp; MEAL⁣<br />\r\n1F－PARIPARI 選物店<!-- --></p>\r\n	News	27	2020-06-15 10:18:19.722966	2020-06-21 16:30:07.032817
72	zh-TW	welcome_to_kindness_day_title	Welcome to Kindness Day !	Banner	2	2019-04-15 02:24:12.533744	2019-06-12 09:20:16.711024
74	zh-TW	welcome_to_kindness_day_description	總是忙於眼前事物的你，有多久沒有靜下來？當你為生活努力、為目標前進，是時候停下來，把時間留給自己，選擇康橋慢旅，安排一趟愉快的旅行吧。	Banner	2	2019-04-15 02:24:12.667956	2019-04-23 12:06:38.894641
103	zh-TW	desc	<p>每房均有專屬陽台，大小適中自在，最適合三人死黨或三人家庭。</p>\r\n	Room	7	2019-05-22 10:11:53.664792	2020-02-27 10:55:14.194183
79	zh-TW	desc	<p>窗邊的日光漫灑，伴隨著空間中陣陣咖啡香，互相道聲早安，為今日的旅程揭開序幕，慵懶地與旅伴共享美味餐點，在日和早晨，盡情享受愜意的時光，用悠緩的步調，迎接今日的慢行旅途。</p>\r\n\r\n<p>&nbsp;</p>\r\n	Food	3	2019-04-15 07:31:54.769086	2020-02-27 14:31:34.450798
13	en	spec	<p>15&nbsp;square meters, One queen-sized bed（160*188 cm）<br />\r\nOriginal price NTD 6,000, Special price NTD 2,980</p>\r\n\r\n<p><span style="font-size:14px;"><span style="color:#bdc3c7;">Weekdays: Sunday to Thursday. Hump Day / Weekend: Friday. Holidays: Saturday, holiday, summer and winter vacation, Chinese New Year. </span></span></p>\r\n	Room	1	2019-03-16 13:38:19.758955	2021-09-28 09:31:19.219781
12	zh-TW	spec	<p>房間4.5坪（15平方公尺）1大床（160公分X188公分）<br />\r\n定價 6,000元，平日優惠價 2,980元（如遇假日價格另計）</p>\r\n\r\n<p style="margin-top:8px"><span style="font-size:14px;"><span style="color:#bdc3c7;">平日定義：週日～週四；小週末假日定義：週五；假日定義：週六、國定假日、寒暑假、過年</span></span></p>\r\n	Room	1	2019-03-16 13:38:19.563626	2021-09-28 09:31:19.22446
61	en	reservation_check_in_time	<p>Check-in after 3 PM<br />\r\nCheck-out up to 12 AM</p>\r\n	Store	1	2019-04-08 15:02:05.9351	2019-04-23 09:30:12.891287
59	en	reservation_information	<p>1. Breakfast is served from 07:00 to 11:00. Those who fail to have breakfast in the stipulated period will not be provided other meals.<br />\r\n2. Extra bed is not allowed in our hotel.<br />\r\n3. Additional guest charge: For guests more than 120 cm tall: NTD300/person (Including Breakfast and Handpicked toiletries)<br />\r\n4.&nbsp;The TV in the room which offers multiple channels to choose.&nbsp;<br />\r\n5. No pets allowed and no smoking</p>\r\n	Store	1	2019-04-08 15:02:05.728441	2020-02-27 15:39:39.504104
16	en	desc	<p>There is balcony in every room, best choice to pursue comfort and better&nbsp;sleep.</p>\r\n	Room	2	2019-03-16 16:43:59.901312	2020-02-28 13:39:26.243101
99	zh-TW	desc	<p>測試 1234567890</p>\r\n	Room	9	2019-05-08 06:51:23.992431	2019-05-08 06:51:23.992431
104	en	desc	<p>Balcony in every room. The triple room is of moderate size for a three people family or friends.</p>\r\n	Room	7	2019-05-22 10:12:13.177982	2020-02-28 13:45:23.849195
57	en	reservation_contact_info	<p><strong>Reservations Tel. </strong>&nbsp; +886.6.280.5566<br />\r\n<strong>Reservations Fax.</strong> &nbsp;+886.6.280.5577<br />\r\n<strong>Email. </strong>&nbsp; &nbsp; &nbsp; &nbsp;h024.hotel@msa.hinet.net<br />\r\n<strong>Address.</strong> &nbsp; No.416, Sec. 2, Minsheng Rd., West Central Dist., Tainan City 700, Taiwan</p>\r\n	Store	1	2019-04-08 15:01:07.737956	2020-01-10 03:10:08.488438
406	en	description	<p>From 2021/9/1, Kindness Day Hotel will fine-tune catering service patterns in order to provide a safe dining environment and appetizing meals for our guests in accordance with government guidelines.</p>\r\n\r\n<p><strong>Breakfast &amp; Midnight Snack</strong></p>\r\n\r\n<p>◆Food served and dine-in in the restaurant during the dining time.</p>\r\n\r\n<p>◆Crowd control and capacity limit management at public venues is required indoors during the epidemic. Our guests are able to choose take-away service if the number of people in the restaurant exceeds the seating limit.</p>\r\n\r\n<p>◆Please wear face masks when not eating or drinking.</p>\r\n\r\n<p>◆Required measures include keeping space between tables, putting up dividers on tables and cleaning with sanitizer.</p>\r\n\r\n<p>◆24 hrs drinks, ice creams and teatime cookies are provided as usual.</p>\r\n\r\n<p>Thanks for your understanding and cooperation during the epidemic. We will continue to clean and disinfect carefully, and implement contact information registration upon entering. We are all one at the fight against the pandemic.</p>\r\n	News	40	2021-08-30 06:57:24.453347	2021-09-28 09:35:21.886202
100	en	desc	<p>test 1234567890</p>\r\n	Room	9	2019-05-08 06:51:23.999799	2019-05-08 06:51:23.999799
66	en	credit_cards	["visa", "master", "jcb", "linkcard", "union"]	Store	1	2019-04-09 14:29:09.463231	2020-02-25 10:12:51.014952
117	zh-TW	description	<p><strong>長場雄 Yu Nagaba</strong><br />\r\n現為日本知名插畫家，活躍於個人創作、品牌聯名、廣告、設計、出版等多項領域。擅長運用簡練的黑白線條表現出人像特色，其作品常見於日本生活風格雜誌，並先後與各著名品牌聯乘合作，以帶有趣味故事性及細膩感的畫風，獨樹一格的詮釋，深受大家的喜愛，成為時下年輕潮流人士熟知的視覺語彙。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>從旅行者的想像出發，為康橋慢旅繪製一系列插畫，開啟我們對旅行的想像，陪每位住客展開一段增添趣味風格的慢行旅途。<br />\r\n本次於開幕期間限定推出五樣聯名商品，包含T-shirt、托特包、帽子、別針、貼紙，即日起限量於慢旅一樓大廳販售，喜歡的朋友們不要錯過哦！<br />\r\n現場另有特別販售長場雄首本作品集《I DRAW》親筆簽名版，數量有限，機會難得！</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>--------------------</p>\r\n\r\n<p><strong>康橋慢旅 Kindness Day Hotel&nbsp;</strong><br />\r\n台南市中西區民生路二段416號</p>\r\n	News	9	2020-02-12 07:12:29.600577	2020-02-12 07:15:44.830909
365	zh-TW	description	<p>A Woman must have money and a room of her own if she is to write fiction.&mdash;Virginia Woolf<br />\r\n&nbsp;<br />\r\n「女性若是想要寫作，一定要有錢和自己的房間。」吳爾芙在《自己的房間》一書中，以「房間」及「金錢」作為比喻，揭示女性在父權主義下的歷史地位，主張女性朝向經濟上的獨立與空間上的自主，思考性別與解構性別權力的窠臼，這本書也成為二十世紀，最重要的女性主義經典文學作品之一。<br />\r\n&nbsp;<br />\r\n現代女性意識抬頭，各種女權運動也遍地開花，女性大多已擁有「房間」，但當女性出走房間後，房外的世界，真的能像吳爾芙所說：「不需要做任何人，只要做自己。」嗎?<br />\r\n&nbsp;<br />\r\n【走出房間的人】選書展，以吳爾芙的「房間」作為開端，將實體的空間，延伸想像為思想上空間或心靈上的空間。呼應今年國際婦女節的主題-「我是世代平等：實現婦女的權利。」書展以「女權自助餐？」、「有時母親,有時自己」兩大主題，內容涵蓋女權主義、婦女運動及女性書寫等相關著作，帶領讀者透過閱讀與自身進行對話。</p>\r\n\r\n<p>-</p>\r\n\r\n<p>這是慢旅第一次與書店合作。<br />\r\n午後常看到房客在沙發區喝著咖啡翻著書的畫面，為此我們希望能帶給大家更多元化的知識，於是請烏邦圖書店以每個月的主題精心挑選書籍。房客除了享受慢旅的服務外，也能透過書認識不同領域的分享。<br />\r\n如果你覺得精選書籍不夠滿足你，下午在運河旁散散步時可以到烏邦圖書店翻閱更多的故事哦！</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>--------------------⠀</p>\r\n\r\n<p>展覽期間：2020/03/10-2020/04/10<br />\r\n展覽地點：慢旅一樓休憩區/烏邦圖書店</p>\r\n	News	20	2020-03-10 09:30:41.289579	2020-04-20 05:20:11.411118
382	en	description	<p>Here comes the third attack of eating co-branded collaboration at the Kindness Day Hotel. In the third round, we are pleased to invite Shan Shan Cha who are proud to make their tea in the natural agricultural way, providing our guests the finest Taiwanese tea that are not fertilized nor treated with pesticides. Tea culture not only includes the substance itself but also the philosophy and the sprit of &ldquo;teaism.&rdquo; We are in this era of fast food culture where people consume food and drinks without thinking of what we eat or drink, and even the source of them. However, Kindness Day hotel wants to provide our guests a trusted source.</p>\r\n\r\n<p><br />\r\n&nbsp;<br />\r\n｜The story behind founding Shan Shan Cha｜<br />\r\nThe founder of Shan Shan Cha attended a friend&rsquo;s meeting and had a sip of the tea that recalls the memory of having gentle and sweet taste from the past. The founder interestedly inquired about the source of tea and acknowledged that the tea was planted under a natural environment where pesticides or fertilizer were not applied, keeping the most natural taste of tea.</p>\r\n\r\n<p><br />\r\nHaving this thought in mind, the founder began to visit numerous tea gardens in Taiwan to search for such tea. However, the founder realized that most of the tea gardens use pesticides and chemical fertilizers. After uncountable amount of failed explorations, the founder redirected the goal and decided to personally create the taste of that natural tea flavor from memory. Shan Shan Cha was then founded and the spirit of natural farming law has always been in its corporate philosophy- respect, persevere and live accordance with nature.</p>\r\n\r\n<p><br />\r\nWe sincerely hope that travelers can enjoy the original flavor of food during their travel time, not only to eat at ease, but also to slow down the pace of the journey, to actually enjoy the food and the trip. Therefore, we collaborated with Shan Shan Cha and selected two types of cold-brewed tea for our guests:</p>\r\n\r\n<p><br />\r\n&nbsp;<br />\r\n《 Oriental Beauty Black (honey scented black tea)&nbsp;》<br />\r\nThe honey scented black tea, also named as the Oriental Beauty Black, is produced in a township of Nantou using milk-scented Jin Xuan tea species, cultivated using natural agricultural methods. When the young leaf buds are bitten by insects, the remaining saliva on the leafs allows the plants to grow tea leafs with honey scented aroma. The honey scent of the tea is then enhanced through the backing process, a process that makes the tea become a fully fermented black tea. The color of Oriental Beauty Black is in bright orange and crystal red. The tea also exudes the aroma of cooked honey, making it a sweet and mellow aftertaste.<br />\r\n&nbsp;<br />\r\nThe Oriental Beauty Black has the original milky scent of Jin Xuan&rsquo;s tea, the honey aroma of the young tea leaf, as well as a chocolate and caramel flavored taste. The tea has a sweet taste of a ripe fruit along with a hint of milky flavor, rich but not greasy, is always mistaken as a sugar added tea. This Oriental Beauty Black can definitely overthrow your impression on traditional black tea. &nbsp;</p>\r\n\r\n<p><br />\r\n&nbsp;<br />\r\n《 Shan Shan Oolong 》<br />\r\nThe Shan Shan Oolong is produced in Shan Shan tea garden, bred on the Nanhua Mountain in Nantou, and also cultivated using natural agricultural methods. The tea leaves are harvested and baked according to the climate and the state of leaves, making the tea with light and delicate taste- a natural mountain flavor taste.<br />\r\n&nbsp;<br />\r\nThis special oolong tea has a light roasted aroma, accompanied by the ripening floral and fruity taste, which allows you to taste tea in different levels. The first taste is oolong tea, and then the taste turns into floral and fruity taste, at the end it becomes a light roasted taste. &nbsp;</p>\r\n\r\n<p><br />\r\n&nbsp;<br />\r\nIn addition, the glass portable bottle of the cold-crewed tea can be taken away by the travelers. We hope that the bottle can be reused and we welcome everyone to visit the Kindness Day and enjoy the specially selected tea while caring for the natural environment.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>---------------------⁣⁣</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kindness Day strives to make sure all of our guests have a blast during travel. We plan a series of eating activities to share the delicacies with you.</p>\r\n	News	28	2020-06-17 05:51:41.437853	2020-06-26 09:12:15.872329
381	zh-TW	description	<p>「康橋好食光」第三彈我們邀請到堅持採自然農法的「山山來茶」，提供旅人們來自台灣且無農藥、不施肥的自然茶。「茶」文化不只是談物質方面，更包含了哲學思想以及茶道精神的層面，但在現今這個講求快速的速食年代，人們飲食文化改變，變得沒空思考放入口中的食物、飲品的原物料由來；但在慢旅，我們希望提供給旅人們值得信賴的來源。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>｜山山來茶&nbsp;SHAN SHAN CHA｜</p>\r\n\r\n<p>山山來茶創辦人在一場聚會中，喝到朋友泡的茶，入喉甘甜的茶味，勾起了創辦人記憶回憶中的滋味，一問之下，朋友所泡的茶葉是採取「自然農法」種植，完全不使用農藥，因而保留最天然的風味。 為此，&nbsp;創辦人開始探訪臺灣各個茶園，卻發現多數都使用農藥與化學肥料，經過數以萬計的失敗探尋，創辦人改變了目標，決定親手打造那一口茶湯的滋味，更將自然農法的精神投注在經營態度中。 我們希望旅人們能在慢旅享受美好的食物原味，不只吃得安心，也讓大家慢下步伐，細細品嚐這段旅程。故我們與山山來茶合作，精選了兩款冷泡茶提供給旅人們能慢慢品味：</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>《蜜香紅茶⁣》⁣⁣⁣</p>\r\n\r\n<p>產於南投名間鄉，選自帶奶香的金萱茶種，採用自然農法栽培製作，當幼嫩葉芽經由蟲咬吸吮後，殘存唾液著涎產生「蜜香」香氣，經由烘焙程序提升蜜味香氣，製成全發酵的紅茶，茶湯橘亮透紅，茶香散發熟蜜香，口感甘甜醇厚。 金萱本身的奶香、茶小綠葉蟬著涎後的蜜香，更帶點巧克力與焦糖香。熟果甘甜帶點淡淡奶味，口感濃郁卻不膩口，被戲稱偷加糖的紅茶，顛覆你對紅茶的想像。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>《山山烏龍》⁣⁣⁣</p>\r\n\r\n<p>產於山山茶園，孕育自南投南華山的懷抱，採用自然農法栽培製作，根據採收時的氣候與茶葉狀態，調整製茶的細節，茶韻淡雅清香，內斂自然的山林韻味。 淡淡的焙火香氣，伴隨著熟成的花果香，有著不同於一般的烏龍層次，初韻品茗烏龍滋味，中韻轉為花果甘甜，尾韻帶點培火味，口感豐富。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>此外，冷泡茶的玻璃隨身瓶可以讓旅人們帶走，讓瓶子能重複使用，歡迎大家來慢旅用「心」品茗茶。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>---------------------⁣⁣</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>「康橋好食光」⁣⁣</p>\r\n\r\n<p>本著讓旅客能在旅途中盡興的初心，規劃了豐富的餐點服務，憑藉著「以食會友」的精神，分享美食與旅客聯歡，設計出一系列飲食活動。</p>\r\n	News	28	2020-06-17 05:51:41.434462	2020-07-28 01:05:31.530182
370	en	description	<p>What kind of imagination do you have before exploring an unknown city?</p>\r\n\r\n<p>At first glance, Tainan is a historical city with rich cultures: historical relics, mouthwatering food, endless alleys and lanes along with warm hospitality that never ends. However, under these general impressions, there is an immense power lurking under this slow living lifestyles, from accumulation of both time and wisdom, diverse ideas are everywhere in this lifeful city.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>You can enjoy the unknown scenery or even aimlessly travel around during your journey. Kindness Day Hotel is the oasis of the city, proving a place for travelers. We believe in &ldquo;Everyday is a good day,&rdquo; and from that we want our travelers to feel the charm of Tainan&rsquo;s slow living lifestyle in every corner of the hotel. With this hotel opening opportunity, Kindness Day joins forces with the well-known Japanese illustrators Yu Nagaba, featuring a series of illustration products with &ldquo;Travelers&rdquo; as the main theme to guide our guest, the travelers, to quickly immerse in the local culture. Our first crossover collaboration took us twelve months of communication with the illustrator, allowing us to see Taiwan&rsquo;s scenery from a foreigner&rsquo;s standpoint.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Q1. This collaboration with the Kindness Day Hotel is the first time that Nagaba has launched a series of limited co-banding products with a Taiwan&rsquo;s local brand. What are your thoughts and expectations for your first Taiwan and Japan&rsquo;s collaboration? Do you wish to make an influence or create a topic during this collaboration?</p>\r\n\r\n<p><span style="text-align:justify;">-</span></p>\r\n\r\n<p style="text-align:justify"><span style="color:#999999;">I look forward to seeing the reaction of Taiwanese people to this joint collaboration. I will be very glad if they enjoy the work. I also wish there will be more opportunities in the future, with brands in different fields. </span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Q2. Have you ever visited Taiwan, and <span style="display: none;">&nbsp;</span>what is your imagination about Taiwan? Do these ideas influence this joint creation?<span style="font-size:10.5pt"><span style="line-height:115%"><span style="font-family:Century,serif"><span lang="EN-US" style="font-size:9.0pt"><span style="line-height:115%"><span style="font-family:&quot;Meiryo UI&quot;,&quot;sans-serif&quot;"><span style="color:#0b5a7c"> </span></span></span></span></span></span></span></p>\r\n\r\n<p><span style="text-align:justify;">-</span></p>\r\n\r\n<p><span style="text-align:justify;"><span style="color:#999999;">My impression of Taiwan is that the food are very tasty. The overall atmosphere is very similar to the old district of Tokyo with a sense of Showa era, which is very interesting in the way that it makes us feel like we are traveling back in time.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Q3. You have been invited to work with a lot of well-known brands in the past, so you are familiar with hotel or any space type collaboration. Comparing with your previous experience, what is the most impressive part during this collaboration with the Kindness Day hotel, or any particularly different feeling?</p>\r\n\r\n<p>-</p>\r\n\r\n<p><span style="text-align:justify;"><span style="color:#999999;">I believe if we overly change our style by client, we will eventually lose our characteristics and style. Therefore, after receiving the theme of the collaboration, &ldquo;how I feel&rdquo; is what I value the most. The communication process from draft to details and needs of the work revision, is very different from my Japanese Client. At this level I can feel the cultural difference. &nbsp;&nbsp;</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Q4.&nbsp;The theme of this crossover collaboration is &ldquo;Traveler.&rdquo; We would like to know what is your main source of inspiration after knowing the theme, from different scene settings to this series of illustration?</p>\r\n\r\n<p><span style="text-align:justify;">-</span></p>\r\n\r\n<p><span style="text-align:justify;"><span style="color:#999999;">For me, traveling is like taking a break, a time to rest in life. Being able to take a break from usual daily life, and enjoying the non-routine times, are my source of thoughts for this work. </span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Q5.&nbsp;There are three main groups of illustration in this crossover work: travel duo set, beer toast, potato chips girls. &nbsp;We would like to know more about the story behind this images and your thoughts when you drew them.<span style="font-size:10.5pt"><span style="line-height:115%"><span style="font-family:Century,serif"><span lang="EN-US" style="font-size:9.0pt"><span style="line-height:115%"><span style="font-family:&quot;Meiryo UI&quot;,&quot;sans-serif&quot;"><span style="color:#0b5a7c"> </span></span></span></span></span></span></span></p>\r\n\r\n<p><span style="text-align:justify;">-</span></p>\r\n\r\n<p style="text-align:justify"><span style="text-align:justify;"><span style="color:#999999;">The scene behind Travel duo set: Couples who have just arrived at the hotel, after taking a short break at Check-in, they walk towards the small streets and alleys in Tainan to look for delicious food.&nbsp; </span></span></p>\r\n\r\n<p><span style="text-align:justify;"><span style="color:#999999;">The scene behind beer toast: After walking on the streets, travelers return to the hotel bar and order a glass of wine as the end of the day. Only a little bit of tipsy, discussing tomorrow&rsquo;s itinerary while toasting with travel companion. </span></span></p>\r\n\r\n<p><span style="text-align:justify;"><span style="color:#999999;">The scene behind potato chips girls: After spending a few days in Tainan, feeling a bit tired of walking around the city, travelers choose to stay at hotel rooms during the day to rest and have some snacks. &nbsp;</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Q6. From our observation in your previous works, the proportion of female characters is higher than male characters, is there any particular reason behind this? How do you position the characters differently during your creation?<span style="font-size:10.5pt"><span style="line-height:115%"><span style="font-family:Century,serif"><span lang="EN-US" style="font-size:9.0pt"><span style="line-height:115%"><span style="font-family:&quot;Meiryo UI&quot;,&quot;sans-serif&quot;"><span style="color:#0b5a7c"> </span></span></span></span></span></span></span></p>\r\n\r\n<p><span style="text-align:justify;">-</span></p>\r\n\r\n<p><span style="text-align:justify;"><span style="color:#999999;">Maybe it is because I am a guy....? I am not sure if this is the reason, I usually fall eyes on woman naturally. In addition, I am very interested in fashion, so I also want my characters to fit in my favorite clothing styles. </span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Q7. In the future, what kind of fields do you want to cooperate if you have the opportunity? And what kind of collaboration work?<span style="font-size:10.5pt"><span style="line-height:115%"><span style="font-family:Century,serif"><span lang="EN-US" style="font-size:9.0pt"><span style="line-height:115%"><span style="font-family:&quot;Meiryo UI&quot;,&quot;sans-serif&quot;"><span style="color:#0b5a7c"> </span></span></span></span></span></span></span></p>\r\n\r\n<p><span style="text-align:justify;">-</span></p>\r\n\r\n<p><span style="text-align:justify;"><span style="color:#999999;">I like to take rides recently and I love watching cars. I want to make a car and give it a try! </span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Q8. Being an internationally well-known illustrator, how do you receive inspiration in this high-volume of work environment? And how do you balance between your work and life?</p>\r\n\r\n<p><span style="text-align:justify;">-</span></p>\r\n\r\n<p><span style="text-align:justify;"><span style="color:#999999;">I think maybe it is because of health! I always keep myself in the state of &nbsp;having interesting thoughts, and I also try my best to live a regular life. I usually manage my work time between 09:30～18:30, and prevent from working overtime. On weekends I will go out with my family. I believe that If you stay in the house all day, you will feel tired and lack of inspirations, so I prefer to go out to find new excitement and ideas.&nbsp; </span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Q9.&nbsp;As a full-time professional illustrator, what kind of influence do you hope the most to achieve through the power of illustration? &nbsp;</p>\r\n\r\n<p><span style="text-align:justify;">-</span></p>\r\n\r\n<p><span style="text-align:justify;"><span style="color:#999999;">If everyone can gain happiness from my work, that will be all. I&rsquo;ll be happy if you enjoy. </span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Q10. If you are not an illustrator, what do you want to do the most?<span style="font-size:10.5pt"><span style="line-height:115%"><span style="font-family:Century,serif"><span lang="EN-US" style="font-size:9.0pt"><span style="line-height:115%"><span style="font-family:&quot;Meiryo UI&quot;,&quot;sans-serif&quot;"><span style="color:#0b5a7c"> </span></span></span></span></span></span></span></p>\r\n\r\n<p><span style="text-align:justify;">-</span></p>\r\n\r\n<p><span style="text-align:justify;"><span style="color:#999999;">An inventor.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kindness Day hotel is very keen to design and communication with the art industry. With this hotel opening opportunity, we are very pleased to invite Yu Nagaba for this co-branding work and to bring a new image to the brand with a new and interesting vision. This Kindness Day x Yu Nagaba collaboration products has been released in January this year, and can only be purchased in the hotel. We will cooperate with more artists in the future to explore the imagination of traveling from different angels.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:justify">Hotel: Kindness Day Hotel</p>\r\n\r\n<p>Addr: No. 416, Sec. 2, Minsheng Rd., West Central Dist., Tainan City 700</p>\r\n\r\n<p>Date: January, 2020 ~ Offer valid while stocks last</p>\r\n\r\n<p>&nbsp;</p>\r\n	News	22	2020-04-06 06:45:37.906606	2020-05-11 06:49:28.18375
369	zh-TW	description	<p><span style="text-align:justify;">在探索一座城市之前，你會有什麼樣子的想像？</span></p>\r\n\r\n<p><span style="text-align:justify;">乍看台南，是座富含文化底蘊的歷史之都：舊城古蹟、美食雲集、綿延不盡的錯綜巷弄，伴著永遠降不下來的人情與溫度。然而在這些尋常印象外，是一股巨大能量潛伏在緩慢的日常節奏；源自於歲月與智慧的積累，各式各樣的創意灌溉這座充滿生命力的城市。</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="text-align:justify;">旅行可以看盡未知風景，也可以漫遊無目的。康橋慢旅是都市中的綠洲，提供一處休憩落腳處；以「日日是好日」作為起心動念，將台南的慢活魅力實踐在飯店的每一處角落。伴隨開幕契機，康橋慢旅聯手日本知名的插畫家 Yu Nagaba 長場雄，以「旅行者」作為主題繪製系列插畫商品，引導旅人與在地快速接軌。這場籌備一年的企劃是品牌首次的跨界聯名，在溝通過程中碰撞出有趣璀璨的火花；也藉由這次機會邀請插畫家本人與我們對談，用外國人的視角探索他眼中的台灣風景：</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="text-align:justify;">Q1. 這次與康橋慢旅的合作，是長場雄首次與台灣在地品牌推出限定聯名商品。對於第一次的台日合作，您有什麼想法與期待呢？以及是否希望藉這次合作，在台灣造成什麼樣的話題或影響？</span></p>\r\n\r\n<p><span style="text-align:justify;">-</span></p>\r\n\r\n<p><span style="color:#999999;"><span style="text-align:justify;">「我非常期待看到台灣人對這次聯名作品的反應，如果能夠喜歡的話我會覺得很開心。期待在未來能有更多的機會，跟不同領域的品牌合作看看。」</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="text-align:justify;">Q2. 您過去是否有拜訪過台灣，以及對於台灣的想像是什麼呢？以及這些想法是否有影響這次的聯名創作？</span></p>\r\n\r\n<p><span style="text-align:justify;">-</span></p>\r\n\r\n<p><span style="color:#999999;"><span style="text-align:justify;">「我對台灣的印象是，食物非常的好吃！整體的氛圍則像帶有昭和時代感的東京老街區，讓人感覺像在進行時間旅行，非常的有趣。」</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="text-align:justify;">Q3. 您過去曾受邀與許多知名品牌合作，對於飯店或空間類型的合作並不陌生。想請問比較先前的經驗，這次與康橋慢旅的合作有什麼印象深刻的地方，或特別不一樣的感受？</span></p>\r\n\r\n<p><span style="text-align:justify;">-</span></p>\r\n\r\n<p><span style="color:#999999;"><span style="text-align:justify;">「若是讓自己的畫風過度的被客戶牽著鼻子走，會很容易喪失掉自己的風格與特徵；因此通常在接收到主題後『自身對主題的感受』是我最重視的部分。根據草案去發展討論的模式，以及作品修正的細節與需求，都與日本客戶有所不同，在這些層面上我感受到了文化上的差異。」</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="text-align:justify;">Q4. 這次聯名插畫的主題是「旅行者」；想請問在得知主題後，從設定不同的場景畫面，到繪製這一系列的圖案的過程，什麼是您主要的靈感來源？</span></p>\r\n\r\n<p><span style="text-align:justify;">-</span></p>\r\n\r\n<p><span style="color:#999999;"><span style="text-align:justify;">「對我自己而言，旅行就像是人生當中歇一口氣、休息一下的時光。能夠脫離日常，輕鬆地享受那些非日常的時光 &mdash; 這便是我對這次作品的發想來源。」</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="text-align:justify;">Q5. 這次聯名有三組主要的插畫：旅行雙人組、啤酒乾杯、洋芋片女孩。我們想了解更多圖像背後的故事，以及您繪製時的想法。</span></p>\r\n\r\n<p><span style="text-align:justify;">-</span></p>\r\n\r\n<p><span style="color:#999999;"><span style="text-align:justify;">「旅行雙人組的情境：剛抵達飯店的情侶，在 Check-in 於飯店稍作休息之後，朝著台南的小街尋覓美味晚餐。啤酒乾杯男女的情境：在街上散步兜兜轉轉累了，回到飯店吧檯點杯小酒作為一天的結束；帶著一點微醺，一邊與旅伴討論明日行程、一起乾杯的愜意畫面。洋芋片女孩的情境：在台南待了兩三天，對於城市漫步感到有點膩了，白天便待在飯店的房間裡輕鬆一下、吃點零嘴偷閒。」</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="text-align:justify;">Q6. 我們觀察到您過往的作品中，女性角色的比例高於男性，是否有什麼特別原因呢？以及您在創作時，會怎麼為角色做不同定位？</span></p>\r\n\r\n<p><span style="text-align:justify;">-</span></p>\r\n\r\n<p><span style="color:#999999;"><span style="text-align:justify;">「說不定是因為我是男生的關係吧...？不知道是不是因為是男生的關係，目光自然而然容易落在女性身上。另外，因為對時尚流行很有興趣，所以也會想讓人物角色穿上自己喜歡的服裝風格。」</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="text-align:justify;">Q7. 若有機會的話，未來想與哪種沒接觸過的領域合作？以及最想合作什麼產品？</span></p>\r\n\r\n<p><span style="text-align:justify;">-</span></p>\r\n\r\n<p><span style="color:#999999;"><span style="text-align:justify;">「最近很喜歡搭車，也很喜歡看車子，想要做一台車子試試看耶！」</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="text-align:justify;">Q8. 作為國際知名的插畫家，在高案件量的工作環境下，您是怎麽獲得創作的靈感？ 以及如何在工作與生活間取得平衡呢？</span></p>\r\n\r\n<p><span style="text-align:justify;">-</span></p>\r\n\r\n<p><span style="color:#999999;"><span style="text-align:justify;">「我想應該是健康吧！把自己保持在隨時能夠發想有趣想法的狀態，並且用心經營正常規律的生活。平常會把工作時間控制在 09:30～18:30 之間，盡量不加班；周末則是與家人一起出門。如果一整天都待在屋子裡會覺得很疲憊，比較喜歡外出尋找一些新的刺激與發想。」</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="text-align:justify;">Q9. 身為一位全職的專業插畫家，您最希望透過插畫的力量達到什麼樣的影響？</span></p>\r\n\r\n<p><span style="text-align:justify;">-</span></p>\r\n\r\n<p><span style="color:#999999;"><span style="text-align:justify;">「世界上的人們如果都能從我的作品中獲得開心，那就好了呢！I&#39;ll be happy if you enjoy. 」</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="text-align:justify;">Q10. 如果不是插畫家的話，最想做什麼？</span></p>\r\n\r\n<p><span style="text-align:justify;">-</span></p>\r\n\r\n<p><span style="color:#999999;"><span style="text-align:justify;">「發明家。 」</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="text-align:justify;">Kindness Day Hotel 十分熱衷於與設計、藝術產業的交流，這次藉由飯店開幕的契機，很榮幸邀請到知名插畫家 Yu Nagaba 長場雄聯名合作，以嶄新有趣的視覺為品牌帶來新的風貌。這次 Kindness Day x Yu Nagaba 的聯名商品已於今年一月上市，僅限定在館內購買。未來將與更多藝術家合作，開拓各種不同角度對旅行的想像！</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="text-align:justify;">飯店：康橋慢旅 Kindness Day Hotel</span></p>\r\n\r\n<p><span style="text-align:justify;">地址：700 台南市中西區民生路二段416號</span></p>\r\n\r\n<p><span style="text-align:justify;">日期：2020年1月～售完為止</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>-------------------------------------------</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:justify"><span style="text-align:justify;">Kindness Day Hotelはデザイン業界・芸術業界との交流を注力しています。この度は、新ホテルの開業をきっかけに、大人気のイラストレーター・長場雄様と協業することで、ブランドを斬新なイメージに変身しました。</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="text-align:justify;">今回のコラボ企画では、デザイン会社のTransform Designより企画し、約１年の準備期間でこのおもしろいコラボレーションを完成しました。</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="text-align:justify;">イラストの制作過程及び、コラボ企画に対する思いをより理解できるため、長場雄様に特別にインタビューをさせて頂くことになりました。</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:justify"><span style="font-size:10.5pt"><span style="font-family:Century,serif"><b><span lang="JA" style="font-family:&quot;Meiryo UI&quot;,sans-serif">【日台交流】</span></b></span></span></p>\r\n\r\n<p style="text-align:justify"><span style="text-align:justify;">１、長場雄様の初めての日台コラボ商品</span></p>\r\n\r\n<p><span style="text-align:justify;">今回Kindness Day Hotelとの企画は、長場様にとって初めて台湾の地元のブランドとのコラボレーションだと思います。初めての日台交流に対して、どんな思いや期待がありますか？また、今回の交流をきっかけに、台湾にどんな話題、或いはどのような影響を与えるかを期待していますか？</span></p>\r\n\r\n<p><span style="text-align:justify;">-</span></p>\r\n\r\n<p><span style="color:#999999;"><span style="text-align:justify;">台湾の人の反応が楽しみです。喜んで受けていれてくれると嬉しいです。</span></span></p>\r\n\r\n<p><span style="color:#999999;"><span style="text-align:justify;">今後、台湾でも仕事が増えることを期待しております。</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:justify"><span style="text-align:justify;">２、台湾への印象</span></p>\r\n\r\n<p><span style="text-align:justify;">昔台湾にいらっしゃったことがありましたか？台湾にどのような印象を持っていますか？<br />\r\n（抽象的な表現か具体的な表現でもOK）</span></p>\r\n\r\n<p><span style="text-align:justify;">台湾への印象は作成して頂いたイラストに影響しましたか？</span></p>\r\n\r\n<p style="text-align:justify">-</p>\r\n\r\n<p style="text-align:justify"><span style="color:#999999;"><span style="text-align:justify;">台湾は食べ物が美味しかったことを覚えています。</span></span></p>\r\n\r\n<p><span style="color:#999999;"><span style="text-align:justify;">なんとなく東京の下町みたいな町並みにも似てて昭和にタイムスリップ感じがして面白いです。</span></span></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify"><span style="font-size:10.5pt"><span style="font-family:Century,serif"><b><span lang="JA" style="font-family:&quot;Meiryo UI&quot;,sans-serif">【イラストグッズ】</span></b></span></span></p>\r\n\r\n<p style="text-align:justify"><span style="text-align:justify;">１、過去の経験と今回の企画の違いは</span></p>\r\n\r\n<p><span style="text-align:justify;">長場様は過去様々な有名なブラント（例えば、Koe Donuts、Beams、大磯プリンスホテル等）とコラボし、特にホテル・店舗等の空間デザインに色々な経験をしてきたと思います。今回Kindness Day Hotelとの企画期間中、一番印象的だったことは何ですか？また、過去の経験と比べて、最も違う点は何ですか？</span></p>\r\n\r\n<p style="text-align:justify">-</p>\r\n\r\n<p style="text-align:justify"><span style="text-align:justify;"><span style="color:#999999;">自分の作風をクライアント毎に寄せすぎると自分の持ち味を失ってしまうので、いただいたお題を受けて自分の感じたことを一番大切にしています。ラフをみながらやり取りをしてると修正箇所が日本のクライアントと違うので、文化の違いを感じました。</span></span></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify"><span style="text-align:justify;">２、制作前：アイデア・発想について（テーマ「旅行者」に関する質問）</span></p>\r\n\r\n<p><span style="text-align:justify;">今回のイラストのテーマは「旅行者」です。コラボ企画を担当しているTransform Designに「旅行者」というテーマを決めた理由を聞きました。「台南市は歴史的風土・文化のある町なので、各地から観光に来た旅行者を大歓迎している都市だと考えています。ですから、コラボ企画のイラストはこのようなイメージをお客様に伝えてほしいと決めました。」と語りました。</span></p>\r\n\r\n<p><span style="text-align:justify;">長場雄様に伺いしたいのは、「旅行者」というテーマをもらった後、人物シーンの設定からイラストの制作まで、その発想・ひらめきの源泉は何ですか？（例えば、形容詞、写真、当地のアイテム&hellip;等）</span></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify">（振り返り・・・コラボ企画書に記載した内容）<br />\r\nコラボ企画について<br />\r\n■テーマ：Kindness Day Hotel<br />\r\n■イラスト：「旅行者」を中心の軸にして、イラストレーターのグラフィックスタイルで、Kindness Day Hotelへ宿泊に来る旅行者を表現します。「Kindness Day Hotel」の文字を含まれるイラストが望ましいです。</p>\r\n\r\n<p style="text-align:justify">-</p>\r\n\r\n<p style="text-align:justify"><span style="text-align:justify;"><span style="color:#999999;">自分にとって旅行は人生の中での一休みで、日常から離れて非日常を気楽に楽しむことです。そんなイメージを発想の元にしました。</span></span></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify"><span style="text-align:justify;">３、制作中：イラストのキャラクターとシーン（イラストの制作過程にフォーカス）</span></p>\r\n\r\n<p><span style="text-align:justify;">今回制作して頂いたイラストは３つあります：2人の旅行者、ビルで乾杯している男女、ポテトチップスを食べている女子。長場雄様にそれぞれのシーンの制作過程のストーリーを伺いしたく、そしてお客様とどのような共鳴を得たいのかを教えて頂けませんか？（例えば、旅行への欲望を引き出す為、旅が終わった後の楽しい思い出を描きたい&hellip;等）</span></p>\r\n\r\n<p style="text-align:justify">-</p>\r\n\r\n<p style="text-align:justify"><span style="text-align:justify;"><span style="color:#999999;">2人の旅行者&rarr;ホテルに着いたばかりのカップル。チェックインして、ホテルで少し休憩して、夕方から台南の街に繰り出し、夕食を食べに行くイメージです。</span></span></p>\r\n\r\n<p><span style="text-align:justify;"><span style="color:#999999;">ビールで乾杯している男女&rarr;街を散策した後、ホテルのバーでもう少し飲みたくなり、ほろ酔いで明日からのプランを話しながら一杯やってるイメージです。</span></span></p>\r\n\r\n<p><span style="text-align:justify;"><span style="color:#999999;">ポテトチップスを食べている女子&rarr;滞在３日目、街歩きも疲れてしまったので昼間の部屋でリラックスしてるイメージです。</span></span></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify"><span style="text-align:justify;">４、イラストの手法と構想</span></p>\r\n\r\n<p><span style="text-align:justify;">長場雄様の過去の作品から見ると、女性キャラクターの比率は男性より高いそうですが、何か特別な理由がありますか？</span></p>\r\n\r\n<p><span style="text-align:justify;">また、イラストを制作する時にキャラクターの人物像（例えば、年齢、個性、服装&hellip;等）はどのように設定しているのかを教えて頂けませんか？</span></p>\r\n\r\n<p style="text-align:justify">-</p>\r\n\r\n<p style="text-align:justify"><span style="text-align:justify;"><span style="color:#999999;">僕が男だからでしょうかね。。。自然と女性に目を奪われてしまいます。</span></span></p>\r\n\r\n<p><span style="text-align:justify;"><span style="color:#999999;">僕自身ファッションが好きなので、自分の好みのシルエットの服装を着せたくなります。</span></span></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify"><span style="font-size:10.5pt"><span style="font-family:Century,serif"><b><span lang="JA" style="font-family:&quot;Meiryo UI&quot;,sans-serif">【将来への展望】</span></b></span></span></p>\r\n\r\n<p style="text-align:justify"><span style="text-align:justify;">１、将来、試してみたい領域とは</span></p>\r\n\r\n<p><span style="text-align:justify;">長場雄様は過去色々な業界とコラボしたことがありました。例えば、建築、飲食、観光、芸術、流行＆トレンド&hellip;等</span></p>\r\n\r\n<p><span style="text-align:justify;">もし新しい産業とコラボするなら（制限一切なし）、どんな領域を選びますか？また、一番作りたい作品はどんなものでしょうか？（形を問わず）</span></p>\r\n\r\n<p style="text-align:justify">-</p>\r\n\r\n<p style="text-align:justify"><span style="text-align:justify;"><span style="color:#999999;">最近、車に乗るのも、いろんな車を見るのも楽しいので、車を作ってみたいですね。</span></span></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify"><span style="text-align:justify;">２、アイデア発想＆ライフスタイル</span></p>\r\n\r\n<p><span style="text-align:justify;">長場様は国際的に大人気のイラストレーターとして、積極的に様々なブランドとコラボしています。案件数が高い仕事環境の中に、どのようにアイデア・発想を生み出しますか？また、ワークライフバランスの取り組み方を教えて頂けませんか？</span></p>\r\n\r\n<p style="text-align:justify">-</p>\r\n\r\n<p style="text-align:justify"><span style="text-align:justify;"><span style="color:#999999;">健康であることが、おもいしろい発想を生む状態を作ると思っています。</span></span></p>\r\n\r\n<p><span style="text-align:justify;"><span style="color:#999999;">規則正しい生活を心がけています。</span></span></p>\r\n\r\n<p><span style="text-align:justify;"><span style="color:#999999;">平日は9時３０分〜18時30分まで働きなるべく残業はしないようにしています。週末は家族で出かけます。一日中部屋にいると疲れるので外に出て刺激を受けています。</span></span></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify"><span style="text-align:justify;">３、イラストの影響力</span></p>\r\n\r\n<p><span style="text-align:justify;">全職のプロイラストレーターとして、イラストの力で世の中にどのような影響を与えていきたいですか？</span></p>\r\n\r\n<p style="text-align:justify">-</p>\r\n\r\n<p style="text-align:justify"><span style="text-align:justify;"><span style="color:#999999;">世界中の人に僕のイラストを楽しんでもらえたらいいなと思っています。</span></span></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify"><span style="text-align:justify;">４、キャリアプラン</span></p>\r\n\r\n<p><span style="text-align:justify;">もしイラストレーターではなかったら、一番やってみたい職業とは何ですか？</span></p>\r\n\r\n<p style="text-align:justify">-</p>\r\n\r\n<p style="text-align:justify"><span style="text-align:justify;"><span style="color:#999999;">発明家</span></span></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n	News	22	2020-04-06 06:45:37.897975	2020-05-11 06:49:28.193116
383	zh-TW	description	<p>火鍋，源自於華夏民族以水或湯導熱鍋子涮煮食物烹調，流傳到現今吃火鍋還有「團圓」的意義。台灣的火鍋文化更具特色，街上各式各樣的火鍋店林立，而台灣人愛吃火鍋的心不分季節不分時間，尤其是宵夜時段的第一選擇「麻辣鍋」！無論冬天或夏天，一鼎大鍋裝著熱騰騰的麻辣湯底，滑嫩鴨血和吸滿湯汁的豆腐，一口下去暖胃又暖心，還有一種無法言喻的爽感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>康橋好食光企劃第四彈經過千辛萬苦，有幸邀請到台北經典老字號麻辣鍋品牌「鼎旺」，在許多老饕心中可是他們的私藏愛店。現在，入住慢旅就能享用排隊名店的精選佳餚，不用在門口癡癡候位。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>｜鼎旺麻辣鍋 Ding Wang｜</p>\r\n\r\n<p>1992年由老闆娘林鳳珠女士創立，選用天然食材並遵循古法熬煮湯頭，創造出香氣十足的麻辣湯底，近30年來堅持著食材品質與口碑，造就了如今的鼎旺麻辣鍋。 天然辛香料的香氣撲鼻，中藥材熬制的湯頭喝了不會口乾舌燥，口感溫潤不嗆，接著，花椒帶來的麻充斥在舌尖。簡單的白醋、麻油、蒜苗是鼎旺最推薦的食材沾醬，不需要複雜的醬料，有了鼎旺的麻辣湯頭，就能享受最真實湯頭與食材美妙結合。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>在這需要以熱治熱的炎熱暑假，慢旅與鼎旺麻辣鍋聯手推出「鴨血豆腐麻辣鍋」，彈牙的鴨血與細嫩的豆腐是麻辣鍋不可缺少的一味，另外，炸得酥脆的老油條及有著&quot;古代泡麵&quot;俗稱的麻油撒子，搭配麻辣湯頭，絕對滿足你的味蕾！</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>｜慢旅住客獨家限定｜</p>\r\n\r\n<p>活動時程：2020/7/15⁓2020/8/31</p>\r\n\r\n<p>供應地點：慢旅1F餐廳</p>\r\n\r\n<p>供應時段：19：00⁓22：00</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>---------------------⁣⁣</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>「康橋好食光」⁣</p>\r\n\r\n<p>⁣本著讓旅客能在旅途中盡興的初心，規劃了豐富的餐點服務，憑藉著「以食會友」的精神，分享美食與旅客聯歡，設計出一系列飲食活動。</p>\r\n	News	29	2020-07-01 10:00:23.080567	2020-07-02 15:07:06.559273
384	en	description	<p>While a hot pot full of flavoured broth is kept simmering, raw ingredients are placed into the pot and are cooked in a manner similar to fondue. Hot pot meals can enhance friendship and unite family members or colleagues as several people sit around a pot, talking and eating. Due to the high popularity and the unique way of eating, hot pot has already become the major attraction in Taiwan. Taiwanese people are obsessed with hot pot. The top choice of late-night supper is &ldquo;spicy hot pot&rdquo; in particular. A spicy soup base with Duck blood and stinky tofu is incredibly scrumptious. The soft and tender texture and juicy taste make this one of the most special Taiwanese local delicacies. Not only warm your hearts but also fill your bellies!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>It&rsquo;s our pleasure to invite Ding Wang, a spicy and numbing hot pot restaurant in Taipei, to be our partner for the food co-branding collaboration. For many epicures, it&rsquo;s one of their favorite restaurants. However, in addition to queuing up for this gourmet in Taipei, you could choose to stay at Kindness Day hotel to enjoy the delectable hot pot.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>｜Ding Wang｜</p>\r\n\r\n<p>Ding Wang Hot Pot was founded in 1992 by Ms. Lin. Well-chosen natural ingredients are boiled in the sophisticated spicy hot pot soup stock. Besides, Ding Wang strives to provide the high quality of ingredients and build a great brand reputation for thirty years.&nbsp;</p>\r\n\r\n<p>Smell the aroma of herbs and spices first, and the taste of spicy soup stock cooked with Chinese medicinal herbs is quite mild in taste but it won&rsquo;t make your throat dry. Also, Sichuan pepper creates a tingly numbness in the mouth. There is an easy but the most recommended dipping sauce recipe: white vinegar, sesame oil and garlic sprout. You can taste rich and flavourful soup base and original ingredients in hot pot with the simple dipping sauce for additional flavouring.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>In this broiling summer, Kindness Day collaborated with Ding Wang in launching a product - &ldquo;congealed duck blood and tofu spicy hot pot&rdquo;. Duck blood and stinky tofu are indispensable parts of a spicy hot pot. Adding some crunchy fried bread sticks and sesame oil fried dough twists to make your hot pot much more flavourful.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\n｜Kindness Day Exclusive｜<br />\r\nDate: July 15 ~ August 31, 2020<br />\r\nVenue: Restaurant on the 1st floor<br />\r\nSupply Period: 19：00⁓22：00 p.m.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>---------------------⁣⁣</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kindness Day strives to make sure all of our guests have a blast during travel. We plan a series of eating activities to share the delicacies with you.</p>\r\n	News	29	2020-07-01 10:00:23.083886	2020-07-13 06:28:11.144463
367	zh-TW	description	<p>優惠日期</p>\r\n\r\n<p>109年04月05日-109年05月31日&nbsp;(平假日皆適用)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>超優惠方案</p>\r\n\r\n<p>1️⃣ 標準雙人房三天兩夜2人同行優惠價3,870元(第二晚只要<wbr />1,290元)</p>\r\n\r\n<p>2️⃣ 標準四人房三天兩夜4人同行優惠價6,870元(第二晚只要<wbr />2,290元)</p>\r\n\r\n<p style="min-height: 19.1px;">&nbsp;</p>\r\n\r\n<p>訂房方式</p>\r\n\r\n<p>僅限「電話訂房」或「康橋慢旅官網之四方通行訂房」</p>\r\n\r\n<p style="min-height: 19.1px;">&nbsp;</p>\r\n\r\n<p>注意事項</p>\r\n\r\n<p>1.本專案依房型提供早餐</p>\r\n\r\n<p>2.此超優惠方案屬期間限定&nbsp;數量限定</p>\r\n\r\n<p>3.此專案不得與其他專案並用</p>\r\n\r\n<p>4.付款須知&nbsp;:&nbsp;入住時須一次付清兩晚房費，若因故取消第二晚<wbr />住宿，優惠將不適用，並須補足該房型現場售價之差額。</p>\r\n\r\n<p style="min-height: 19.1px;">&nbsp;</p>\r\n\r\n<p><strong>--------------------⠀</strong></p>\r\n\r\n<p><strong>康橋慢旅 Kindness Day Hotel&nbsp;</strong></p>\r\n\r\n<p>訂房專線｜06-<a href="tel:280 5566">280-5566</a></p>\r\n\r\n<p>飯店地址｜700台南市中西區民生路二段416號</p>\r\n	News	21	2020-04-01 10:39:19.10929	2020-04-20 05:23:28.662811
366	en	description	<p>In A Room of Her Own, Virginia Woolf writes, &ldquo;A woman must have money and a room of her own if she is to write fiction.&rdquo; The essay proposes the importance of economic self-sufficiency as a necessary tool of independence against a contextual backdrop that impedes truth. Unlike their male counterparts, women are routinely denied the time and space to produce creative works. Instead, they are saddled with household duties and are financially and legally bound to paternalism. This book has also become one of the most classic feminist literatures in the 20th century.⠀<br />\r\n⠀<br />\r\nThe symbol of the feminist movement is an awakening of women&#39;s self-consciousness. Most women already have &quot;their own rooms&quot; now, but when they walk out of the room, the world outside the room can literally be like Virginia Woolf said&mdash; &ldquo;No need to be anybody but oneself?&rdquo;⠀<br />\r\n⠀<br />\r\n【People who walk out of the room】Book fair is starting with Virginia Woolf&rsquo;s 1929 essay A Room of Her Own. Physical space was extended to be ideological and spiritual, also consistent with International Women&#39;s Day 2020 theme&mdash; I am Generation Equality: Realizing Women&#39;s Rights.&nbsp;There will be two major themes present at the fair - &ldquo;Feminism Buffet?&rdquo;, &ldquo;Sometimes be a mother and sometimes only be me.&rdquo;&nbsp;It covers the works related to feminism, the feminist movement and women&rsquo;s writing, leading the reader to work on self-talk through your reading.⠀<br />\r\n⠀<br />\r\nIt&rsquo;s the first time that we cooperate with the bookstore.⠀<br />\r\nThere are many guests drink coffee and read the books on our sofa area in the afternoon. We want to share diversity of knowledge with all you guys, so we invite Ubuntu Bookstore to feature theme of the month. Our guests can not only enjoy the service here, but also increase knowledge in different fields from all these featured books.⠀<br />\r\nIf that&rsquo;s not enough for you, you might be able to choose another way to enjoy your relaxing afternoon, such as take a walk along the canal and go to Ubuntu Bookstore to read more stories.&nbsp;⠀<br />\r\n⠀<br />\r\n⠀<br />\r\n--------------------⠀<br />\r\nDate: 2020/03/10 &ndash; 2020/04/10⠀<br />\r\nVenue: Kindness Day 1F rest area / Ubuntu Bookstore</p>\r\n	News	20	2020-03-10 09:30:41.294076	2020-04-20 05:19:56.516667
368	en	description	<p>Date:⠀<br />\r\nApril 5 , 2020 - May 31 , 2020 （Available on weekdays and weekends）⠀<br />\r\n⠀<br />\r\n⠀<br />\r\nSpecial Package:⠀<br />\r\n1️⃣ Standard double room for 3 Day 2 Night for 2 people : NTD&nbsp;3,870&nbsp;(The second-night is only NTD&nbsp;1,290)⠀<br />\r\n2️⃣ Standard quadruple room for 3 Day 2 Night for 4 people : NTD&nbsp;6,870&nbsp;(The second-night is only NTD&nbsp;2,290)⠀<br />\r\n⠀<br />\r\n⠀<br />\r\nBooking Methods:⠀<br />\r\nPlease only make reservations over the phone or on our official website.⠀<br />\r\n⠀<br />\r\n⠀<br />\r\nNOTICE:⠀<br />\r\n1.Breakfast included in selected room types.⠀<br />\r\n2.Limited period offer and limited quantity available.⠀<br />\r\n3.This offer cannot be used with other promotions.⠀<br />\r\n4.Payment notice: Room rates are requested to pay in a lump sum when check-in. This offer will not be applied if the second-night booking is cancelled for any reasons. Additional payment for differences between posted room rates and promotion room rates are needed.⠀<br />\r\n⠀<br />\r\n⠀<br />\r\n⠀<br />\r\n--------------------⠀<br />\r\n<strong>Kindness Day Hotel</strong><br />\r\nTEL: +886-6-280-5556⠀<br />\r\nAddress: No. 416, Sec. 2, Minsheng Rd., West Central Dist., Tainan City 700</p>\r\n	News	21	2020-04-01 10:39:19.11369	2020-04-20 05:23:51.567524
372	en	description	<p>｜Those things I learned from picture books｜⠀<br />\r\nKindness Day Hotel x Ubuntu Bookstore Joint Curation in April⠀<br />\r\n⠀<br />\r\nPicture books are the best bridge between children and this beautiful world. We have chosen some outstanding illustrators along with their creations which were selected by Bologna Children&#39;s Book Fair in Italy.⠀<br />\r\nThese illustration works build a bridge for us to feel love, to explore life, and even to find out the courage to pursue dreams bravely.&nbsp;⠀<br />\r\n⠀<br />\r\nWhen we were little, we always looked forward to celebrating and receiving the gifts on Children&#39;s Day. However, we&#39;ve gradually lost our passion for life during the process of growing up....&nbsp;⠀<br />\r\nWho says that being a grown-up cannot celebrate Children&#39;s Day?&nbsp;⠀<br />\r\nLet&rsquo;s go back to the days when we still have our pure heart through these picture books.⠀<br />\r\n⠀<br />\r\n⠀<br />\r\n--------------------⠀<br />\r\nDate: 2020/04/15 &ndash; 2020/05/15⠀<br />\r\nVenue: Kindness Day 1F rest area / Ubuntu Bookstore</p>\r\n	News	23	2020-04-20 05:11:34.71999	2020-04-20 05:18:34.196008
374	en	description	<p>You will be mesmerized by the charm of small allies in Tainan. Keep records of your warm daily memories that you ever stumbled upon and don&rsquo;t forget to slowdown your steps to enjoy this wonderful city!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Date:⠀<br />\r\nFrom now - June 30 , 2020 （Available on weekdays and weekends）⠀<br />\r\n⠀<br />\r\n⠀<br />\r\nSpecial Package:⠀<br />\r\n1️⃣ Standard double room for 3 Day 2 Night for 2 people : NTD&nbsp;3,870&nbsp;(The second-night is only NTD&nbsp;1,290)⠀<br />\r\n2️⃣ Standard quadruple room for 3 Day 2 Night for 4 people : NTD&nbsp;6,870&nbsp;(The second-night is only NTD&nbsp;2,290)⠀<br />\r\n⠀<br />\r\n⠀<br />\r\nBooking Methods:⠀<br />\r\nPlease only make reservations over the phone or on our official website.⠀<br />\r\n⠀<br />\r\n⠀<br />\r\nNOTICE:⠀<br />\r\n1.Breakfast included in selected room types.⠀<br />\r\n2.Limited period offer and limited quantity available.⠀<br />\r\n3.This offer cannot be used with other promotions.⠀<br />\r\n4.Payment notice: Room rates are requested to pay in a lump sum when check-in. This offer will not be applied if the second-night booking is cancelled for any reasons. Additional payment for differences between posted room rates and promotion room rates are needed.⠀<br />\r\n⠀<br />\r\n⠀</p>\r\n\r\n<p>Just reserve your stay right now!</p>\r\n\r\n<p>&nbsp;<br />\r\n⠀<br />\r\n--------------------⠀<br />\r\n<strong>Kindness Day Hotel</strong><br />\r\nTEL: +886-6-280-5556⠀<br />\r\nAddress: No. 416, Sec. 2, Minsheng Rd., West Central Dist., Tainan City 700</p>\r\n\r\n<p>&nbsp;</p>\r\n	News	24	2020-05-26 09:29:25.224025	2020-05-26 10:18:42.150826
389	zh-TW	description	<p>慢旅不藏私是一本介紹台南景點的精選指南，讓我們帶領你輕鬆探索這座城市！</p>\r\n\r\n<p><br />\r\n這本有深度沒難度的台南指南，將旅人分成四種類型、個別介紹五個景點，分享20個我們真心推薦的口袋名單。</p>\r\n\r\n<p>搜羅了所有台南的人情與熱度，不藏私聚焦旅遊的輪廓，拉近讀者對於陌生景點的距離及想像。</p>\r\n\r\n<p>我們秉持「連結旅人與旅途」的起心動念，希望所有旅客在難得的假期中，不僅住得舒適也玩得開心，打造獨一無二的的美好回憶！</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>---------------------⁣⁣</p>\r\n\r\n<p>｜慢旅不藏私 住客限定｜</p>\r\n\r\n<p>活動辦法：<br />\r\n自2020/11/1至2020/11/30，凡入住康橋慢旅，不分房型，每房贈送一本精心製作不藏私手冊</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>很重要！所以再提醒一次：<br />\r\n限量發送，送完為止，只送不賣！</p>\r\n	News	32	2020-09-25 10:52:01.127899	2020-10-12 06:02:39.783985
390	en	description	<p>Secret getaway is a featured guidebook introducing Tainan attractions, leading travelers to explore the city easily.</p>\r\n\r\n<p>Kindness Day Hotel takes the role of local guide, divides travelers into four types and introduces five scenic spots individually, sharing this pocket list of the 20 most recommended places.</p>\r\n\r\n<p>This is not a travel book or a collection of long articles; this guidebook gathers all enthusiasm and energies of Tainan, concretizes tourist&#39;s imagination of a ideal journey through vivid text and images, and narrows the reader&rsquo;s distance of unfamiliar attractions.</p>\r\n\r\n<p>Kindness Day Hotel devoted to connect people, city and culture. The brand expects travelers to not only stay comfortably in the hotel, but also explore the city as much as they can, creating their own unique memories.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>---------------------⁣⁣</p>\r\n\r\n<p>｜Kindness Day Exclusive｜</p>\r\n\r\n<p>Participation methods:<br />\r\nAll rooms, regardless of room type, will be given an elaborate manual as a gift from November 1, 2020&nbsp;to November 30, 2020.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Extremely important! Friendly remind again:<br />\r\nLimited gifts are available on a first-come-first-served basis and while stocks last. NOT FOR SALE.</p>\r\n	News	32	2020-09-25 10:52:01.131895	2020-10-12 06:02:39.787033
402	en	description	<p>As the COVID-19 pandemic continues to expand, Kindness Day Hotel is committed to providing ensure safe accommodation and dining experience for guests. We have instituted an epidemic prevention policy which is followed by all of our hotel employees.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1. All hotel employees, guests and firms have to wear a face mask, take the temperature, disinfect hands and fill out COVID-19 health declaration as entering the hotel.</p>\r\n\r\n<p>2. All used hotel room key cards, bikes and stuffs must be fully sterilized after returning.</p>\r\n\r\n<p>3. Disinfect public areas (such as lobby and elevator buttons) every hour</p>\r\n\r\n<p>4. The cleaning standard operating procedure is applied to the cleaning of rags in order to prevent cross-infection.</p>\r\n\r\n<p>5. The desktops, handles, buttons, remote control, and telephone in the room have been conducted thorough disinfection.</p>\r\n\r\n<p>6. To keep a safe distance in the seating arrangements for restaurants.</p>\r\n\r\n<p>7. Used plates are not recommended to be reused.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We hope that our guests could fully cooperate with our epidemic prevention policies. Kindness Day Hotel will work with you to protect everyone&#39;s health and safety.</p>\r\n	News	38	2021-05-18 10:14:31.21921	2021-05-18 10:15:26.440079
373	zh-TW	description	<p>巷弄內曬著令人心動的魅力，拍下溫暖的日常風貌，放慢腳步享受台南吧！⁣<br />\r\n<span style="color:#003333;">⁣</span><br />\r\n👉優惠日期⁣<br />\r\n即日起-2020/06/30(平假日皆適用)⁣<br />\r\n⁣<br />\r\n👉超優惠方案⁣<br />\r\n✖️標準雙人房三天兩夜2人同行優惠價3870元(第二晚只要1290元)⁣<br />\r\n✖️標準四人房三天兩夜4人同行優惠價6870元(第二晚只要2290元)⁣<br />\r\n⁣<br />\r\n👉訂房方式⁣<br />\r\n僅限電話訂房/康橋慢旅官網之四方通行訂房⁣<br />\r\n⁣<br />\r\n👉注意事項⁣<br />\r\n1️⃣本專案依房型提供早餐⁣<br />\r\n2️⃣此超優惠方案屬期間限定/數量限定⁣<br />\r\n3️⃣此專案不得與其他專案並用⁣<br />\r\n4️⃣付款須知 : 入住時須一次付清兩晚房費,若因故取消第二晚住宿，優惠將不適用，並須補足該房型現場售價之差額。⁣</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>此專案每日限量推出！手刀訂房旅行去~</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>--------------------⠀<br />\r\n👉康橋慢旅⁣<br />\r\n訂房專線｜06-280-5566⁣<br />\r\n飯店地址｜700台南市中西區民生路二段416號⁣<br />\r\n⁣</p>\r\n	News	24	2020-05-26 09:29:25.220204	2020-05-27 10:32:42.203598
385	zh-TW	description	<p>「細節不單只是細節，它們成就了設計。」&mdash;&mdash; 查爾斯 &middot; 伊默斯 (傢俱設計大師)</p>\r\n\r\n<p>當你結束了一整天的旅程回到康橋慢旅時，那些散發著溫柔氣息的椅子們正等著你來放鬆，舒服的與家人、朋友們一同回味專屬於你們的時光。</p>\r\n\r\n<p>康橋連鎖旅館一直以高CP值的服務體驗在南部屹立不搖，但我們希望能不斷的進步與改善提以供旅客更好的服務體驗。2018年，我們建立了新品牌計畫「 康橋慢旅Kindness Day Hotel 」，在原有的核心基礎上從建築、室內、家具、餐飲、服務等面向做了全面性的提升，讓慢旅在旅途當中不僅是單純過夜的一個地方，而是能夠讓旅人真正放慢步調，體驗在地生活的場域。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>「椅子」是支撐旅客疲憊身軀的重要角色，我們希望旅人在坐上去的瞬間便能感受到無比的放鬆，因此直學設計與STIMLIG為慢旅共同開發了一系列結合慢旅的品牌概念以及以人為本的椅子：Kindness Lounge、Kindness Stool、Kindness Sofa；概念跟外觀由STIMLIG進行設計，再由直學設計為慢旅依據空間及品牌調性做色彩規劃，讓家具能夠和諧的融入慢旅當中。</p>\r\n	News	30	2020-07-28 10:43:45.341691	2020-09-28 02:49:44.12604
377	zh-TW	description	<p>康橋好食光第二波邀請到台南知名咖啡廳「St.1 Caf&eacute;」與我們一同推出新活動，熱門飲品「氮氣系列」讓旅客們在慢旅內也能享受綿密順口的清爽滋味，喝上一杯暑意全消！</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>|&nbsp;一街咖啡&nbsp;St.1 Caf&eacute; |</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>座落台南永康大橋一街某個轉角處的咖啡店「St.1 Caf&eacute;」，邁入了第六年，至今仍保有初衷的熱情烘培著每一分咖啡豆，細心款待每一杯咖啡，傳達那份溫暖給每一位前來的朋友，也為了將這樣的美好分享給更多人，誕生了St.1 Caf&eacute;氮氣車憑藉一股傻勁的熱情，我們出沒在各個角落，煮著一杯又一杯的咖啡，透過每次的交流與您一起分享那喜悅，用感受記下單純的時刻，點綴著每一個重要時光，現在讓我們放慢腳步，讓St.1 Caf&eacute;陪您一起擁抱時刻的美好。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>令人期待不已的是，St.1 Caf&eacute;將整台氮氣車帶進了慢旅，在這酷熱的天氣提供旅客夏日人氣飲品「氮氣咖啡」以及「氮氣烏龍」，讓炎炎夏日注入了一絲沁涼，只要在活動期間拍照打卡即可免費享用一杯冰涼的氮氣系列飲品喔！</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>《氮氣咖啡》⁣⁣⁣</p>\r\n\r\n<p>咖啡在高壓、低溫的環境下注入氮氣，讓咖啡產生綿密氣泡，會有像似啤酒的感覺。氣泡不僅使咖啡質地變得平滑，同時也帶出咖啡本身的甜味，改變你對咖啡的刻板印象。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>⁣《氮氣烏龍》⁣⁣⁣</p>\r\n\r\n<p>茶葉使用龍眼木炭手工烘焙，香氣十足，加入氮氣萃取後擁有一層奶油般質地的泡沫，口感滑順、尾韻甘甜，有類似烏龍奶般的風味，讓人有一試就愛上的魔力。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>日期：2020/6/26⁓2020/6/27 7:00-11:00 a.m.</p>\r\n\r\n<p>7/11.18.25&nbsp;每週六&nbsp;15:00～19:00</p>\r\n\r\n<p>地點：慢旅一樓餐廳側門旁</p>\r\n\r\n<p>兌換方法：拍下飲食照片（如餐車佈置、飲品咖啡），於社群發布打卡貼文（FB/IG），即可跟服務人員兌換，每位住客限兌換乙杯，數量有限，換完為止！</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>---------------------⁣⁣</p>\r\n\r\n<p>⁣⁣</p>\r\n\r\n<p>「康橋好食光」⁣⁣</p>\r\n\r\n<p>⁣⁣本著讓旅客能在旅途中盡興的初心，規劃了豐富的餐點服務，憑藉著「以食會友」的精神，分享美食與旅客聯歡，設計出一系列飲食活動。</p>\r\n	News	26	2020-06-13 11:35:17.325351	2020-07-04 16:45:27.900388
376	en	description	<p>We invited Jim &amp; Dad&rsquo;s Brewing Co., a local craft brewer, to be our first partner for the food co-&nbsp;branding collaboration. Don&rsquo;t miss out on these several fantastic Taiwan local flavoured craft beers that had been well chosen in Kindness Day Hotel. There are a couple of different types of brews that we&rsquo;ve selected for our guests: tea aroma, fruity aroma, honey aroma and smoked flavour of caramelized malt. No matter which flavour you prefer, we&rsquo;ll definitely fulfill your wishes!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>In 2015, Jim Sung opened Taiwan&rsquo;s first destination brewery, Jim &amp; Dad&rsquo;s Brewing Co., located in the rice fields of rural Yuanshan in Yilan. When Jim graduated and came back to Taiwan, one of his best memories is the first time he drank craft beers in the United States. He misses the great tastes that cannot be found in Taiwan. Instead, he decided to brew beers by himself at home. Without knowing what this would lead him to a future, of him winning the Taiwan Homebrew competition in 2013 out of the blue.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>After getting the championship, Jim started to plan and invested in a craft brewery tourism factory, which is one of the most anticipated breweries in Taiwan. Jim&rsquo;s beers blend North American style brewing and hops with local ingredients.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We want our guests to see and understand &ldquo;Kindness Hotel&rdquo; in different angles. Therefore, after negotiating with Jim &amp; Dad&rsquo;s Co., we are finally able to launch our exclusive fascinating brews &mdash; 《&nbsp;GOLDEN BRIDGE&nbsp;》⁣ only in &ldquo;Kindness Day&rdquo; !</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ldquo;Bridge&rdquo; corresponds to the logo of Kindness day. Kindness Day will always be the connection between travelers and their adventures.《&nbsp;GOLDEN BRIDGE&nbsp;》 is a light and fruity concoction, with a little bitter taste at the finish but a fresh and an overall rich aroma. It is really great for summer!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Have a mixture of the night scene and a romantic encounter during your travel into the craft beer of yours. Cheers!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Notice: No drunk driving and please do not drink if you are under 18 years old!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>---------------------⁣⁣</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kindness Day strives to make sure all of our guests have a blast during travel. We plan a series of eating activities to share the delicacies with you.</p>\r\n	News	25	2020-05-28 04:02:50.708906	2020-06-30 04:00:00.621143
378	en	description	<p>We invited St.1 Caf&eacute;, a popular coffee shop, to be our partner for the food co-branding collaboration. You can enjoy their famous NITRO-INFUSED BEVERAGES at Kindness Day. Hey guys, come over for some drinks here, it is guaranteed to be fun and wild. Let&rsquo;s get rid of the summer heat!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>｜St.1 Caf&eacute;｜</p>\r\n\r\n<p>St.1 Caf&eacute; is located at a corner of Daqiao 1st Street in Yongkang District. It&rsquo;s been six years, they still stick to their original intention: roast coffee beans passionately, make every cup of coffee carefully and express the warm welcome to every person who comes to the coffee shop. In order to share something wonderful with all of you and record the simple but precious emotional memories remaining with us, St.1 Caf&eacute; nitrobrew car was born! Just slow down our steps and embrace the beauty of the moment.</p>\r\n\r\n<p>St.1 Caf&eacute; will supply nitro coffee and nitro oolong tea with nitrobrew car at Kindness Day, pouring out a classic nitro with the beautiful cascading bubbles in the hot summertime.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>《 Nitro Cold Brew Coffee 》<br />\r\nCoffee infused with nitrogen to give it a rich, creamy head, similar to nitro draft beer. Nitrogen bubbles result in a coffee with a silky mouthfeel and sweet taste.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>《 Nitro Oolong Tea 》<br />\r\nTea leaves are roasted manually with Longan Charcoal. Nitrogen adds a creaminess and an opaque quality and mellows out the flavours. Delicious taste make its flavour similar to oolong tea with milk.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Date: June 26 ~ June 27, 2020&nbsp;<br />\r\nTime: 07:00-11:00 a.m.<br />\r\n(Our event time in July will be announced separately on Kindness Day Facebook fan page. Please kindly pay close attention to it!)<br />\r\nVenue: Next to the side entrance of the restaurant on the 1st floor<br />\r\nHow to REDEEM one cup of nitrogen infused beverage?<br />\r\n&rarr;Take food &amp; beverage pictures and check in on your Facebook or Instagram. Please show them to our hotel staffs and you will get a free beverage. Please note each person can only redeem the offer once, offer valid while stocks last!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>---------------------⁣⁣</p>\r\n\r\n<p>⁣⁣</p>\r\n\r\n<p>⁣⁣Kindness Day strives to make sure all of our guests have a blast during travel. We plan a series of eating activities to share the delicacies with you.</p>\r\n	News	26	2020-06-13 11:35:17.331877	2020-07-01 14:59:04.562172
395	zh-TW	description	<p>一年一度的聖誕節，在國外是個團圓、溫馨的日子，而台灣也染上了不少佳節的氛圍，不論是與朋友交換禮物、親友家人聚餐、跟另一半享受甜蜜時光，都能讓生活中增添儀式感。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>許多旅人們選擇與慢旅一同度過這特殊節日，為了讓大家有個愉悅的相聚時光，慢旅邀請歌手Haley忻蕙&times;海風老師(吉他)，在聖誕的假期時刻，用溫柔的歌聲讓慢旅更有節慶氣息，旅人們能一邊享用晚點心，一邊享受溫暖美好的冬夜。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>忻蕙<br />\r\n現於台北Rocket Music駐唱，演唱風格情感豐富，演唱歌曲橫跨中、英、日文，個性活潑喜歡與觀眾互動，活動當日非常歡迎大家點歌。</p>\r\n\r\n<p>海風老師<br />\r\n致力於培養素人歌手、提攜後輩，有著豐富的LIVE表演、幕後經驗，是位吉他、爵士鼓、音響設備等都難不倒的通才。</p>\r\n\r\n<p><br />\r\n｜康橋慢旅&times;秘密集蕙 聖誕節演唱會｜</p>\r\n\r\n<p>住客限定活動</p>\r\n\r\n<p>日期：2020/12/24(四)-2020/12/26(六)<br />\r\n時間：19:00-20:00及20:30-21:30<br />\r\n地點：慢旅一樓沙發休憩區</p>\r\n<gdiv></gdiv><gdiv></gdiv><gdiv></gdiv><gdiv></gdiv><gdiv></gdiv>	News	35	2020-12-11 03:58:03.999121	2020-12-11 04:06:52.580885
380	en	description	<p>PARIPARI&nbsp;&ndash; means groovy and chic in Taiwanese<br />\r\nAlso be the combination of selection, coffee and hotel</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>PARIPARI provides pour-over coffee and espresso using specialty coffee beans from around the world. Back to the amazing days of historic buildings in the old town and inject new energy into them, so that locals and travelers can find their own Paripari time here.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>In the silent alley of the second section of Zhongyi Road, there are a row of antique wooden theater chairs at the door of an ancient apartment decorated with mosaic tiles and an eye-catching green canopy. There are more things to discover after you open the door. The three-floors building was renovated as a select shop, a cafe and a B&amp;B. The building is ornamented with warming furniture and splendid historical objects. Every corner of this building has its charm of the age.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The pace of life is extremely fast in a big city. Therefore, a majority of people who visit Tainan desire to live a slow-paced life and enjoy the historic moments and slow movement in this romantic city.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Welcome everyone who loves Kindness Day to have a look around the Paripari concept store. You are able to grab some souvenirs or order a cup of pour over coffee to enjoy your laid-back afternoon.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Scooter: 7min (The quickest way! Pay attention to safety!)<br />\r\nDrive car: 8min (The best way to travel with your family, but should be noted that you have to find the parking lot near your destination.)<br />\r\nBike: 10min (Gentle breeze cooling your face is suitable for a cup of coffee. You&rsquo;re able to borrow a bike from our hotel.)<br />\r\nWalk: 27min (If you are attracted by the charm of small allies in Tainan, then you will spend more time&hellip;^^)</p>\r\n\r\n<p><br />\r\n---------------------⁣⁣⁣<br />\r\n⁣</p>\r\n\r\n<p>PARIPARI APARTMENT<br />\r\nAddr: <a href="https://www.google.com/maps/place/Paripari+apt./@22.995792,120.2023409,17z/data=!3m1!4b1!4m5!3m4!1s0x346e766202a78277:0x1551f8d52d39587f!8m2!3d22.995792!4d120.2045296">No. 9, Ln. 158, Sec. 2, Zhongyi Rd., West Central Dist., Tainan City</a>&nbsp;<br />\r\nTel: 06-2213266<br />\r\nWeb: <a href="https://paripariapt.co/">https://paripariapt.co/</a><br />\r\nFB: <a href="https://www.facebook.com/paripariapt/">Paripari apt.</a></p>\r\n\r\n<p>3F－PARIPARI apt.&nbsp;<br />\r\n2F－St.1 CAFE &amp; MEAL<br />\r\n1F－PARIPARI CONCEPT&nbsp;STORE</p>\r\n	News	27	2020-06-15 10:18:19.72846	2020-06-21 16:33:58.171699
375	zh-TW	description	<p>「康橋好食光」第一波的飲食聯名企劃邀請在地的精釀啤酒職人 &mdash; 吉姆老爹合作，我們精心挑選了數款台灣當地風味的精釀啤酒於慢旅販售，讓大家能在慢旅chill一下，無論是茶香、果香、蜜香或是帶有煙燻口感的焦糖麥芽香，慢旅讓你多個願望一次滿足。⁣⁣<br />\r\n⁣⁣<br />\r\n⁣⁣<br />\r\n｜吉姆老爹啤酒工場 Jim &amp; Dad&#39;s Brewing Company｜⁣⁣<br />\r\n台灣第一家推行精釀啤酒的觀光工廠，坐落在水的故鄉-宜蘭員山鄉。⁣⁣<br />\r\n⁣⁣<br />\r\n老闆吉姆忘不了在美國念書時，初次嘗到精釀啤酒的美好滋味。畢業回台灣之後，卻找不到類似口味，於是勾起他自釀啤酒的欲望，起初只是利用週末在家自釀，沒想到鑽研一年後，於2013年自釀啤酒大賽一舉奪冠。⁣⁣<br />\r\n得獎後，吉姆便開始計畫並投入酒廠的籌備，把釀酒當職業，成立精釀啤酒觀光工廠。⁣⁣<br />\r\n⁣⁣<br />\r\n自開幕以來，從使用台灣小麥釀製，一直到許多的水果和辛香啤酒，吉姆老爹致力於使用在地食材跟風土滋味，創造屬於台灣的精釀啤酒，為台灣精釀界最令人期待的酒廠之一。⁣⁣<br />\r\n⁣⁣<br />\r\n⁣⁣<br />\r\n為了讓旅客能用不同的方式來認識慢旅，我們與吉姆老爹溝通、討論後，希望能推出專屬於慢旅的風味，而這個目標也在本次的企劃中實現了！為各位隆重介紹：⁣⁣<br />\r\n⁣《GOLDEN BRIDGE》⁣⁣⁣<br />\r\n⁣「專屬於康橋慢旅的黃金艾爾-GOLDEN BRIDGE⁣」⁣⁣<br />\r\n⁣&ldquo;Bridge&rdquo; 字意正是與慢旅的LOGO結合而成，康橋就是旅人與旅程美好的橋樑。⁣⁣⁣<br />\r\n⁣入口時酒體清爽，帶有一些果香味；尾韻略帶苦味，不過很清爽不留舌頭且帶有豐富的香氣。輕盈解渴，在炎熱的天氣暢飲最適合不過！⁣⁣⁣<br />\r\n⁣⁣<br />\r\n⁣⁣⁣<br />\r\n⁣把夜晚的景緻、旅行的邂逅，裝進屬於你的特調啤酒。乾杯！⁣⁣<br />\r\n⁣⁣<br />\r\n⁣⁣慢旅提醒您～酒後禁止酒駕！未滿18歲禁止飲酒！⁣⁣<br />\r\n⁣⁣<br />\r\n---------------------⁣⁣<br />\r\n⁣⁣<br />\r\n「康橋好食光」⁣⁣<br />\r\n⁣⁣本著讓旅客能在旅途中盡興的初心，規劃了豐富的餐點服務，憑藉著「以食會友」的精神，分享美食與旅客聯歡，設計出一系列飲食活動。</p>\r\n	News	25	2020-05-28 04:02:50.706453	2020-06-26 10:26:57.032479
386	en	description	<p>&ldquo;The details are not the details. They make the design. &ldquo; &mdash; Charles Eames, furniture designer</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>When you return to Kindness Day after a long day journey, those chairs which exude tender atmosphere are waiting for you. You can sit cozily on the chair with your family and friends and have nostalgia for those good times that only belong to you.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kindness Hotel strives to serve our customers with high quality in southern Taiwan. However, we hope to make continuous progress and improvements to provide our clients with a better service experience. A new brand -&ldquo;Kindness Day Hotel&rdquo; was born in 2018. We&rsquo;ve made a comprehensive upgrade in terms of architecture, interiors, furniture, food, and services, making it become a place not only to stay overnight, but also to make travelers to slow down their steps and literally enjoy local daily life here.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Chair&quot; is an important role in supporting the tired body of travelers. We&#39;d like to make travelers experience unparalleled relaxation when sitting on. Therefore, Ontology Studio and STIMLIG have collaborated to develop a series of chairs combined with brand essence and people-oriented concept for Kindness Day hotel: Kindness Lounge, Kindness Stool, Kindness Sofa. The concept and appearance are designed by STIMLIG, and then Ontology Studio customizes color scheme according to the hotel space and brand proposition, so that the personalized furniture can be harmoniously integrated into the Kindness Day.</p>\r\n	News	30	2020-07-28 10:43:45.347091	2020-07-28 10:43:45.347091
391	zh-TW	description	<p>萬聖節，一年一度的西洋鬼節。<br />\r\n關於萬聖節的傳說與故事有許多的典故與說法，在這裡我們就不一一論述。</p>\r\n\r\n<p>今年，康橋慢旅著墨的重點在於萬聖節的活動本身，希望能夠藉由這個節慶，帶給來訪的旅客們，一個難以忘懷的佳節體驗。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>相信入住過或者有在關注慢旅與精釀啤酒的朋友們，肯定對吉姆老爹這個在地的精釀啤酒品牌不陌生。</p>\r\n\r\n<p>這次，由吉姆老爹新推出的紅心芭樂風味啤酒，搭配康橋慢旅的萬聖節打卡拍照活動，使旅客在享受慢旅的佳節氛圍之餘，也同時能享用到伴有紅心芭樂自然風味的美味啤酒。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>關於本次萬聖節活動的主角 - George</p>\r\n\r\n<p>George是康橋慢旅一位很混的員工，每年只有在萬聖節的週末才會來上班，如果他像日暮警官一樣有超能力，讓他四年上一次班當然沒問題，</p>\r\n\r\n<p>問題是，他沒有。所以，我們需要來訪旅人們的協助，和我們一起找到這位散漫的不良員工George。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>在萬聖節最後的週末10/30~11/1，如果你恰巧有入住慢旅，然後找到George，跟他合照並打卡上傳或標記康橋慢旅至臉書或Instagram，我們便會幫你把啤酒免費升級為「季節限定紅心芭樂口味」。</p>\r\n\r\n<p>每房數量限定，一起來Trick or Drink!</p>\r\n\r\n<p><br />\r\n慢旅在這裡提醒各位來訪的旅人，</p>\r\n\r\n<p>感性入住，理性飲酒，開車不喝酒，喝酒不開車。</p>\r\n\r\n<p>&nbsp;</p>\r\n	News	33	2020-10-07 09:04:46.648942	2020-10-07 09:04:46.648942
392	en	description	<p>Halloween is a Western &quot;ghost festival &quot;that celebrates every once in a year.</p>\r\n\r\n<p>There have been numerous rumors, stories and allusion behind Halloween, which we will not deliberate here. This year, we want to focus on creating an unforgettable festival experience for our guests.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>If you&#39;ve ever stayed at Kindness Day Hotel or have been paying attention to our hotel or just craft beer, then you must be familiar with this Taiwan local craft brewer-Jim &amp; Dad&rsquo;s Brewing Company.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>This time, it is your chance to taste the newly launched guava wheat beer! All you need to do is to participate in our Halloween event: &quot; Taking pictures and check-in on our Facebook fan page at Kindness Day Hotel&quot;. For more details, please see the following.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>George -- the main character of this Halloween event</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>George is a lazy employee who works in Kindness Day Hotel, but he only comes to work on Halloween weekend! If George has super power just like a cartoon star, it is surely acceptable to let him work once every four years, but the problem is, he does not! Now, we need your help in finding this indolent employee, George.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>If you stay during the last weekend of Halloween at Kindness Day Hotel, from October 30 to November 1, please find George and take pictures with him, and then you need to check-in or hashtag us on Facebook or Instagram. You will get a free beer upgrade to &quot;Seasonal Limited/ Guava Wheat Beer&quot;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Limited Quantity for Each Room! Trick or Drink!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Friendly Reminder: DON&rsquo;T DRINK AND DRIVE.</p>\r\n	News	33	2020-10-07 09:04:46.651861	2020-10-12 06:08:58.424107
393	zh-TW	description	<p>10月，準備迎接氛圍詭譎的萬聖節吧！</p>\r\n\r\n<p>這是康橋慢旅與大家一同度過的第一個萬聖節，我們希望能帶給大家更多的活動與驚喜，因此邀請了「Beats on Eyes 大眼睛」來台南點亮大家的萬聖節！<br />\r\n&nbsp;<br />\r\nBeats on Eyes 是一個結合音樂與影像的創作平台，由插畫家李翰，JP Space 負責人蔣承翰與影像創作者吳昱緯發起。</p>\r\n\r\n<p>2016年1月創立至今，目前已累積了三百多件風格多元的音樂影像作品，每期設定不同主題也能讓參與者嘗試各個風格。⁣<br />\r\n&nbsp;<br />\r\n「大眼睛」是Beats on Eyes於2017白晝之夜首次實體演出的一部分，是由台灣設計師李翰帶領的設計團隊&mdash;翰你設計的裝置，團隊創作領域涵蓋插畫、平面設計、乃至於商品，同時也舉辦各種有趣的活動與Project，作品的最大目的就是分享快樂帶給更多人，幽默與豐富的故事是作品中兩個最重要的元素，作品包含「UPUP舉牌小人」、「快樂胯下」。⁣<br />\r\n&nbsp;<br />\r\n我們將萬聖節氣氛渲染至慢旅外觀，日夜都可以欣賞到不同景致，讓所有路過的行人都能一起享受萬聖節的氛圍，也讓入住慢旅的朋友們能盡興的聊天、玩耍、拍照，聽著音樂，來瓶紅心芭樂啤酒chill一下！⁣</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>展覽時間：2020/10/19-2020/11/8⁣</p>\r\n\r\n<p>展覽地點：康橋慢旅</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>--------------------</p>\r\n\r\n<p><strong>康橋慢旅 Kindness Day Hotel&nbsp;</strong><br />\r\n台南市中西區民生路二段416號</p>\r\n\r\n<p>&nbsp;</p>\r\n	News	34	2020-10-19 09:48:08.870985	2020-10-19 09:48:08.870985
399	zh-TW	description	<p>今年康橋慢旅開幕滿一周年，帶來了全新的企劃，這次，慢旅邀請來自丹麥的精釀啤酒品牌「Mikkeller米凱樂」，相信啤酒控們對於這個品牌並不陌生，米凱樂給人有點怪、有點可愛，輕鬆、不受拘束的印象，我們將意象融入康橋慢旅，攜手在飯店內打造出能輕鬆小酌、沒有距離感的Beer Bar，建立一個不分性別、不是專業品酒人，都能夠開心享受的一個空間，此次雙方合作限服務入住康橋慢旅之賓客，不用走遠就能有新鮮、各式風味的精釀啤酒。</p>\r\n\r\n<p>｜米凱樂 Mikkeller｜</p>\r\n\r\n<p>來自丹麥的精釀啤酒品牌「Mikkeller米凱樂」，天馬行空的創意、深厚的釀酒底子、特殊的啤酒配方，以及「流浪釀酒師」（Gypsy Brewer）的釀酒模式，讓釀造不受限、創造更靈活，讓米凱樂在精釀啤酒品牌百家爭鳴之中走出一條獨特的道路。<br />\r\n2006年才創立的年輕品牌，創辦人Mikkel borg bjergs&oslash;是位高中物理老師，因為太喜歡啤酒了，便與相識多年的友人一同研究釀造，他一頭栽進了啤酒的世界，除了熱衷嘗試各種穀麥、酒花、酵母進行實驗，還使用各種想不到的原料釀酒，創造出不少神奇配方。</p>\r\n\r\n<p>既是啤酒吧便少不了下酒小菜，我們將原有的晚點心結合了「以餐佐酒」的概念，與香氣、風味都極具特色的米凱樂啤酒做搭配，延伸出特製的餐點，未來會持續推出各式飲食聯名活動，挑選出適合的餐點，讓旅人們能享受各支啤酒與料理的結合。未來康橋慢旅與米凱樂啤酒將推出專屬的限定酒款以及各式聯名商品，喜愛啤酒的人千萬別錯過。</p>\r\n\r\n<p>目前提供四款Tap精釀啤酒、以及多款瓶裝啤酒，酒款不定期更換，希望旅人們都能在結束一天旅程後在慢旅開懷小酌。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>開跑日期：2021/2/1<br />\r\n營業時間：19:00-22:00<br />\r\nBeer Bar目前內用座位僅開放給住宿之賓客，造成不便敬請見諒。<br />\r\n⚠️酒後禁止酒駕，未滿18歲禁止飲酒。<br />\r\n&nbsp;</p>\r\n	News	37	2021-02-26 03:21:46.205167	2021-02-26 03:21:46.205167
394	en	description	<p>October, it&rsquo;s time to get into Halloween creepy haunted atmosphere!</p>\r\n\r\n<p>It will also be the first Halloween for Kindness Day Hotel. We&rsquo;d like to bring you much more activities and surprises, so we&rsquo;ve invited &ldquo;Beats on Eyes&rdquo; to brighten up everyone&rsquo;s Halloween!<br />\r\n&nbsp;<br />\r\nBeats on Eyes is a creative platform combined with music and video. It was initiated by illustrator Han Lee, JP Space principal Chenghan Jiang, and video creator Yuwei Wu. Since its establishment in January 2016, it has accumulated more than 300 pieces of music and video works with various styles. There are different themes in each issue that allows participants to try disparate styles.<br />\r\n&nbsp;<br />\r\n&nbsp;&quot;Big Eyes&quot; is a part of the first physical performance of Beats on Eyes in 2017. This installation art was also designed by a design team called Haniboi led by Taiwanese designer Han Lee. The team&rsquo;s creative field covers illustrations, graphic design, and even merchandise. At the same time, they also hold many different kinds of interesting activities and projects. The &nbsp;purpose of the creation is to share happiness with people. The humor and richness of the stories are the two most important elements for this creations. The creations of Haniboi include &ldquo;UP UP to you&rdquo; and &ldquo;happy crotch&rdquo;.</p>\r\n\r\n<p>We have created Halloween&rsquo;s atmosphere in the appearance of the hotel. Not only our guests but also the pedestrians are able to enjoy different views and atmosphere day and night. We want our guests and friends can chat, play, take pictures, listen to music and even drink a bottle of guava wheat beer to chill.<br />\r\n&nbsp;</p>\r\n\r\n<p><br />\r\nExhibition Date: October 19 to November 8, 2020</p>\r\n\r\n<p>Exhibition Venue: Kindness Day Hotel&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>--------------------</p>\r\n\r\n<p><strong>Kindness Day Hotel</strong><br />\r\nAddress: No. 416, Sec. 2, Minsheng Rd., West Central Dist., Tainan City 700, Taiwan</p>\r\n\r\n<p>&nbsp;</p>\r\n	News	34	2020-10-19 09:48:08.873889	2020-10-19 09:48:08.873889
396	en	description	<p>Christmas is a warm yearly reunion for western families, but it also throws Taiwan into a festive mood. Whether exchanging gifts with friends, having gathering meal with families, or even enjoying a sweet time with your partner, you&#39;re able to live your life with a sense of ritual.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Many travelers choose to celebrate this special festival with Kindness Day. In order to make our guests have a pleasant stay, we invite Haley (singer) and James Wu (guitarist) for the Christmas concert.</p>\r\n\r\n<p>&nbsp;</p>\r\n<gwofw>\r\n<p>Haley will use gentle singing to make Kindness Day soaking in a much more festive atmosphere during this Christmas holidays. Meanwhile, our guests can have supper or snacks while enjoying an alluring winter.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Singer - Haley<br />\r\nRegular singer in Taipei&#39;s Rocket Music Bar.<br />\r\nHer singing style is full of emotion.<br />\r\nThe range of songs&nbsp;contains&nbsp;Chinese, English and Japanese.<br />\r\nHaley is outgoing and likes to interact with the audience.<br />\r\nEveryone is very welcome to order songs on the day of the event.</p>\r\n\r\n<p>Guitarist - James Wu<br />\r\nJames is devoted to cultivating amateur singers and supporting younger generations.<br />\r\nHe is a seasoned musician who has lots of experiences in live performances and behind-the-scenes. He is also a polymath who is good at playing guitars, drums, sound equipment, etc.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>｜Kindness Day&times;Haley Christmas Concert｜</p>\r\n\r\n<p>Guest of&nbsp;Kindness Day Hotel Limited<br />\r\nDate: December 24, 2020 (Thursday) to December 26, 2020 (Saturday)<br />\r\nPerformance time: 19:00-20:00 and 20:30-21:30 p.m.<br />\r\nVenue: Sofa rest area on the 1st floor</p>\r\n</gwofw>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><gdiv></gdiv><gdiv></gdiv></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><gdiv></gdiv></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><gdiv></gdiv></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><gdiv></gdiv></p>\r\n\r\n<p>&nbsp;</p>\r\n	News	35	2020-12-11 03:58:04.001733	2021-02-26 02:55:51.482758
397	zh-TW	description	<p>它，來自火雞的故鄉，<br />\r\n遍及北中南的位置，攻略老中青的味蕾；</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>它，取自新鮮的食材，<br />\r\n也許會讓你吃不夠，但不會讓你吃不飽。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>它，或許會遲到，但從不會缺席，<br />\r\n辣個象徵自由的漢堡&mdash;&mdash;樂檸漢堡</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>眾所期待的康橋好食光企劃重磅登場！2021年第一檔好食光活動不會讓大家失望，慢旅榮幸邀請到本土漢堡連鎖品牌的驕傲「樂檸漢堡」推出限定品項，讓更多旅人們能享用健康、新鮮、美味的漢堡。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>｜樂檸漢堡 THEFREEN BURGER｜<br />\r\nTHEFREEN是由&quot;THE FRESH, REAL &amp; GREEN&quot;組合而成，這代表著對堅持食物要新鮮、真實，創辦人陳永中先生認為速食也可以吃得健康，一開始為蔬果店，發展至今，樂檸漢堡遍佈北、中、南，共有11間分店，堅持自製烘焙麵包，漢堡夾純牛肉與鮮蔬，搭配獨門醬料，扭轉了「速食不健康」的既定印象。</p>\r\n\r\n<p>慢旅與樂檸團隊經過多次商討、現場實做，克服了食材運送、烹飪等重重難關，推出了門市吃不到的限定品項「樂檸小俠堡」，為了讓忌口的朋友們也能品嘗小俠堡，這次活動推出了三個口味：經典純牛小俠堡、香草輕雞小俠堡、鮮蔬蕈菇小俠堡(蛋奶素)，搭配上樂檸的天然酵母麵包、新鮮萵苣、牛番茄、與醬料完美融合，讓旅人們能在慢旅體驗到「簡單，不簡單」的樂檸漢堡。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>｜慢旅住客獨家限定｜<br />\r\n活動日期：2021/2/1-2021/2/28<br />\r\n供應地點：慢旅1F餐廳<br />\r\n供應時段：19：00～22：00<br />\r\n兌換辦法：憑住宿提供之漢堡券與吧檯服務人員兌換，餐點現做敬請耐心等候。因備料有限，恕不提供續堡、加點之服務。本飯店保有修改及終止本活動之權利。</p>\r\n\r\n<p>---------------------⁣⁣</p>\r\n\r\n<p>「康橋好食光」⁣</p>\r\n\r\n<p>⁣本著讓旅客能在旅途中盡興的初心，規劃了豐富的餐點服務，憑藉著「以食會友」的精神，分享美食與旅客聯歡，設計出一系列飲食活動。</p>\r\n\r\n<p>&nbsp;</p>\r\n	News	36	2021-01-28 03:49:27.189958	2021-02-22 08:36:09.282445
400	en	description	<p>Kindness Day Hotel reaches anniversary from the opening of business this year. In event to celebrate appreciation, we&rsquo;ve launched a new project inviting Danish craft brewery &ldquo;Mikkeller&rdquo;. Beer lovers may be no strangers to this fabulous brewery&rsquo;s brand. Mikkeller gives the impression that it is a bit weird, cute, cozy and unrestrained. We integrated imagery into Kindness Day, and built a beer bar where you feel relaxed with a few drinks with no sense of distance. It will be a unisex space where everyone can enjoy it happily. Mikkeller is an exclusive beer bar for our hotel guests . You can taste fresh craft beer in various flavours without walking any further.</p>\r\n\r\n<p>｜Mikkeller｜<br />\r\nThe Denmark-based brewing brand &mdash; Since 2006. Showcasing all incredible creativity, good brewing ability, many magical recipes, and gypsy craft brewing styles, making a brewing universe whose endless possibilities become more flexible. Therefore, Mikkeller presents its unique path in a situation of a hundred schools contend.</p>\r\n\r\n<p>Mikkeller was founded by home brewer : Mikkel Borg Bjergs&oslash;, a high school physics teacher. He&rsquo;s such a big fan of beer, so this made him study brewing with friends he has known for a couple of years. He was very enthusiastic about the world of beer who started experimenting with hops, malt, yeast and a variety of unexpected ingredients at home.</p>\r\n\r\n<p>As a beer bar, side dishes are essential. We&rsquo;ve combined the original evening snacks with the concept of &quot;Food and wine pairings&quot; and paired them with Mikkeller beers, which have the unique aroma and flavour to expand the special meals. Afterward, we will continue to launch a wide variety of catering co-branded collaborations, select suitable meals, so that travelers can enjoy the perfect combination of all kinds of beers and gourmet meals. In the future, Kindness Day Hotel and Mikkeller Beer will roll out exclusive limited-beers and different kinds of co-branded products. Those who love beers should not miss out on it.</p>\r\n\r\n<p>We offer four taps of craft beer and a variety of bottled beers now. The beers will be changed from time to time. We hope that travelers can have a drink at the beer bar after a day trip.</p>\r\n\r\n<p>Starting date：February 21, 2021<br />\r\nOpening hours：19:00-22:00<br />\r\nThe seating area at Beer Bar is for hotel guests only. Sorry for the inconvenience caused. Your patience is very much appreciated.</p>\r\n\r\n<p>⚠️Do not drink and drive. Please do not drink if you are a minor aged below 18.</p>\r\n	News	37	2021-03-08 08:41:28.155627	2021-03-08 08:41:28.155627
398	en	description	<p>THEFREEN BURGER comes from the hometown of turkey, which branches spread all over the country and it will tickle your taste buds!</p>\r\n\r\n<p>Its fresh ingredients may not be enough but full for you.</p>\r\n\r\n<p>It may be late but never absent. Which burger symbolizes freedom? &mdash;&mdash;THEFREEN BURGER</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The highly anticipated Kindness Day Hotel Eating co-branded collaboration project is here! The first co-branded campaign in 2021 won&rsquo;t let you down. We&rsquo;re quite honored to invite and cooperate with the local burger chain enterprise &quot;THEFREEN BURGER&quot; to launch limited meals, and the campaign time will be extended to one month&nbsp;to let more travelers can enjoy healthy, fresh and appetizing burgers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>｜THEFREEN BURGER｜<br />\r\nTHEFREEN is a combination of &quot;THE FRESH, REAL &amp; GREEN&quot;, which means the food must be fresh and real. The founder Mr. Chen believes that fast food can also be healthy. It was originally a fruit and vegetable shop, and now there are 11 branches in northern, central and southern Taiwan, insisting on making homemade bread. THEFREEN burger uses pure beef and fresh vegetables, paired with its unique sauces, completely reversing the impression that &quot;fast food is unhealthy&quot;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kindness Day Hotel and THEFREEN&#39;s team overcame quite a few obstacles in food delivery and cooking after many discussions and practical implementation. Up to now, we have finally announced the launch of the limited meals called &quot;THEFREEN Ranger Burger&quot; which be offering exclusive Kindness Day. There are three choices: classic beef burger, vanilla chicken burger and vegetable burger with mushroom, which are perfectly matched with sourdough bread, fresh lettuces, tomatoes and sauce. If you want to taste what is &quot;simple but amazing&quot; exclusive meals, just come to stay at Kindness Day Hotel!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>｜Kindness Day Exclusive｜<br />\r\nDate: February 1, 2021 to&nbsp;February 28, 2021<br />\r\nVenue: Restaurant on the 1st floor<br />\r\nSupply Period: 19：00⁓22：00 p.m<br />\r\nTHEFREEN BURGER exchange method: The hamburger voucher provided with the accommodation can be redeemed with bartenders at the counter. The meal freshly prepared as ordered so please wait patiently for it. Due to the limited supply of materials, the service of more burgers and additional orders will not be provided.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>---------------------⁣⁣</p>\r\n\r\n<p>Kindness Day strives to make sure all of our guests have a blast during travel. We plan a series of eating activities to share the delicacies with you.</p>\r\n	News	36	2021-02-03 08:35:23.030385	2021-02-22 08:36:09.276752
401	zh-TW	description	<p>因應新冠疫情升溫，為提供旅人們安全無虞的住宿與用餐空間，康橋的所有工作夥伴們正一同努力著，在看不見的地方，夥伴們依然細心遵循&mdash;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1. 全體同仁、旅客、廠商進入飯店皆須戴口罩、測量體溫、手部酒精消毒、填寫健康聲明書</p>\r\n\r\n<p>2. 房卡、腳踏車、物品歸還後皆進行消毒</p>\r\n\r\n<p>3. 每小時消毒大廳、電梯按鍵等公共區域</p>\r\n\r\n<p>4. 清潔用抹布遵守清洗SOP，以免交叉感染</p>\r\n\r\n<p>5. 房內桌面、把手、按鍵、遙控器、電話徹底消毒</p>\r\n\r\n<p>6. 餐廳座位安排保持用餐安全距離</p>\r\n\r\n<p>7. 使用過的餐盤勸導不重複使用取餐</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>希望來訪的旅人們能全力配合，康橋慢旅與大家一起為防疫努力。</p>\r\n	News	38	2021-05-18 10:14:31.216732	2021-06-10 16:00:43.22645
\.


--
-- Data for Name: news; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.news (id, public_date, created_at, updated_at, image_ids, top) FROM stdin;
26	2020-06-13	2020-06-13 11:35:17.308974	2020-07-04 16:45:27.905147	{426,429,428,427}	f
33	2020-10-07	2020-10-07 09:04:46.632768	2021-02-26 02:56:32.403517	{520,486,489,488}	f
29	2020-07-01	2020-07-01 10:00:23.06175	2020-07-23 03:59:54.192174	{441,442}	f
28	2020-06-17	2020-06-17 05:51:41.426167	2020-07-28 01:05:31.53684	{437,438,439,440}	f
9	2020-02-12	2020-02-12 07:12:29.526624	2020-03-20 02:57:36.198516	{373,284,285,286,396}	f
20	2020-03-10	2020-03-10 09:30:41.263111	2020-04-20 05:20:11.412739	{397}	f
30	2020-07-28	2020-07-28 10:43:45.313252	2020-09-28 02:49:44.132099	{468,469,470,471,472,473}	f
23	2020-04-17	2020-04-20 05:11:34.697385	2020-04-23 06:25:22.949382	{409,415}	f
22	2020-04-06	2020-04-06 06:45:37.884983	2020-05-11 06:53:28.377302	{405,407}	f
27	2020-06-15	2020-06-15 10:18:19.707325	2020-06-21 16:33:58.174647	{431,432,433,434,435}	f
24	2020-05-26	2020-05-26 09:29:25.198984	2020-05-27 10:32:42.206009	{417,416}	f
32	2020-09-25	2020-09-25 10:52:01.100926	2020-12-12 13:58:35.788099	{479,484,480,481,482,483}	f
25	2020-05-28	2020-05-28 04:02:50.688529	2020-06-30 04:00:00.624737	{418,419,420,436}	f
37	2021-02-26	2021-02-26 03:21:46.1922	2021-07-05 10:50:15.189366	{535,537,523,522}	f
39	2021-06-08	2021-06-08 04:04:18.868884	2021-07-27 10:15:11.268293	{538,540,542,543,546,545}	f
38	2021-05-18	2021-05-18 10:14:31.199866	2021-08-30 06:58:07.930656	{526,527}	f
21	2020-04-01	2020-04-01 10:39:19.088796	2021-09-28 04:12:35.590268	{403}	f
40	2021-08-30	2021-08-30 06:57:24.429884	2021-09-28 09:35:21.887457	{547,548}	t
36	2021-01-28	2021-01-28 03:49:27.17395	2021-02-22 08:36:09.284238	{512,517,513,514}	f
34	2020-10-19	2020-10-19 09:48:08.846388	2021-02-26 02:55:06.078134	{518,497,502,505,504,501}	f
35	2020-12-11	2020-12-11 03:58:03.982393	2021-02-26 02:55:51.484424	{519,508,509,511,510}	f
\.


--
-- Data for Name: regions; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.regions (id, title, seq, created_at, updated_at, title_en) FROM stdin;
3	高屏	1	2019-03-11 12:26:48.857359	2019-05-08 15:39:29.573756	Kaohsiung, Pingtung
4	雲嘉南	2	2019-03-11 12:26:49.136796	2019-05-08 15:39:55.818615	Yunlin, Chiayi, Tainan
5	中彰投	3	2019-03-11 12:26:49.3748	2019-05-08 15:40:37.931331	 Taichung, Changhua, Nantou
6	桃竹苗	4	2019-03-11 12:26:49.647956	2019-05-08 15:41:04.458475	Taoyuan, Hsinchu, Miaoli
7	北北基	5	2019-03-11 12:26:49.893845	2019-05-08 15:41:27.346478	Taipei City, New Taipei City, Keelung
8	宜花東	6	2019-03-11 12:26:53.834453	2019-05-08 15:41:45.111568	Yilan, Hualien, Taitung
\.


--
-- Data for Name: rooms; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.rooms (id, cover, seq, store_id, created_at, updated_at, title, "desc", equipment, spec, image_ids, hash_data, cover_image_ids) FROM stdin;
2	\N	1	1	2019-03-16 16:43:59.414402	2021-09-28 09:31:49.316925	\N	\N	\N	\N	{322,328,329,330,331,332,315,316,317,318}	---\nequipment_left_zh_tw:\n- 免費無線網路\n- 49吋LCD電視\n- 多媒體藍芽音響電話\n- 無聲小冰箱\n- 雙層不鏽鋼快煮壺\n- 床頭壁燈\nequipment_left_en:\n- Free Wifi\n- 49 inch LCD television\n- Bluetooth telephone\n- Mini-bar\n- Stainless steel kettle\n- Bedside wall lamp\nequipment_right_zh_tw:\n- 乾溼分離浴室(無浴缸)\n- 日本原裝免治馬桶座\n- 精選沐浴用品組\n- 負離子吹風機\n- 精品咖啡及原萃茶包\n- 獨家馬克杯\nequipment_right_en:\n- Separate toilet area\n- Private bathroom\n- Handpicked toiletries\n- Anion hair dryer\n- Tea and coffee set\n- Exclusive mug\n	{314}
7	\N	2	1	2019-05-06 03:26:06.543114	2021-09-28 09:32:14.940633	\N	\N	\N	\N	{334,335,369,337,338,339,340,341,342,343}	---\nequipment_left_zh_tw:\n- 免費無線網路\n- 49吋LCD電視\n- 多媒體藍芽音響電話\n- 無聲小冰箱\n- 雙層不鏽鋼快煮壺\n- 床頭壁燈\nequipment_left_en:\n- Free Wifi\n- 49 inch LCD television\n- Bluetooth telephone\n- Mini-bar\n- Stainless steel kettle\n- Bedside wall lamp\nequipment_right_zh_tw:\n- 乾溼分離浴室(無浴缸)\n- 日本原裝免治馬桶座\n- 精選沐浴用品組\n- 負離子吹風機\n- 精品咖啡及原萃茶包\n- 獨家馬克杯\nequipment_right_en:\n- Separate toilet area\n- Private bathroom\n- Handpicked toiletries\n- Anion hair dryer\n- Tea and coffee set\n- Exclusive mug\n	{319}
11	\N	3	1	2019-10-30 07:51:47.36641	2021-09-28 09:32:48.893015	\N	\N	\N	\N	{344,345,346,347,349,348,350,351,352,353}	---\nequipment_left_zh_tw:\n- 免費無線網路\n- 49吋LCD電視\n- 多媒體藍芽音響電話\n- 無聲小冰箱\n- 雙層不鏽鋼快煮壺\n- 床頭壁燈\nequipment_left_en:\n- Free Wifi\n- 49 inch LCD television\n- Bluetooth telephone\n- Mini-bar\n- Stainless steel kettle\n- Bedside wall lamp\nequipment_right_zh_tw:\n- 乾溼分離浴室(無浴缸)\n- 日本原裝免治馬桶座\n- 精選沐浴用品組\n- 負離子吹風機\n- 精品咖啡及原萃茶包\n- 獨家馬克杯\nequipment_right_en:\n- Separate toilet area\n- Private bathroom\n- Handpicked toiletries\n- Anion hair dryer\n- Tea and coffee set\n- Exclusive mug\n	{320}
12	\N	4	1	2019-10-30 07:52:31.10161	2021-09-28 09:33:31.982142	\N	\N	\N	\N	{355,357,356,358,359,360,361,362,365,366}	---\nequipment_left_zh_tw:\n- 免費無線網路\n- 49吋LCD電視\n- 多媒體藍芽音響電話\n- 無聲小冰箱\n- 雙層不鏽鋼快煮壺\n- 床頭壁燈\nequipment_left_en:\n- Free Wifi\n- 49 inch LCD television\n- Bluetooth telephone\n- Mini-bar\n- Stainless steel kettle\n- Bedside wall lamp\nequipment_right_zh_tw:\n- 乾溼分離浴室(無浴缸)\n- 日本原裝免治馬桶座\n- 精選沐浴用品組\n- 負離子吹風機\n- 精品咖啡及原萃茶包\n- 獨家馬克杯\nequipment_right_en:\n- Separate toilet area\n- Private bathroom\n- Handpicked toiletries\n- Anion hair dryer\n- Tea and coffee set\n- Exclusive mug\n	{321}
5	\N	\N	2	2019-04-28 18:36:04.150332	2019-04-28 18:41:13.023774	\N	\N	\N	\N	{238}		{239}
1	\N	0	1	2019-03-08 07:44:06.90618	2021-09-28 09:31:19.225974	\N	\N	\N	\N	{304,308,305,306,307,309,310,311,312,313}	---\nequipment_left_zh_tw:\n- 免費無線網路\n- 49吋LCD電視\n- 多媒體藍芽音響電話\n- 無聲小冰箱\n- 雙層不鏽鋼快煮壺\n- 床頭壁燈\nequipment_left_en:\n- Free Wifi\n- 49 inch LCD television\n- Bluetooth telephone\n- Mini-bar\n- Stainless steel kettle\n- Bedside wall lamp\nequipment_right_zh_tw:\n- 乾溼分離浴室(無浴缸)\n- 日本原裝免治馬桶座\n- 精選沐浴用品組\n- 負離子吹風機\n- 精品咖啡及原萃茶包\n- 獨家馬克杯\nequipment_right_en:\n- Separate toilet area\n- Private bathroom\n- Handpicked toiletries\n- Anion hair dryer\n- Tea and coffee set\n- Exclusive mug\n	{303}
9	\N	\N	6	2019-05-08 06:51:23.94711	2019-05-08 06:51:24.002098	\N	\N	\N	\N	{}		{250}
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.schema_migrations (version) FROM stdin;
20181103115540
20190303070628
20190303071059
20190303081920
20190303081921
20190303090129
20190303152629
20190303154126
20190304020419
20190304020532
20190304020921
20190308071257
20190309050306
20190309051031
20190309053621
20190309073002
20190311123234
20190311124500
20190316165405
20190316171408
20190317063312
20190317065336
20190317065851
20190324070623
20190324071352
20190330031854
20190404080049
20190410134252
20190412023233
20190412072317
20190412052150
20190415122502
20190415123343
20190415123923
20190415145038
20190417135925
20190507034011
20190508153658
\.


--
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.settings (id, hash_data, created_at, updated_at, og_image) FROM stdin;
2	\N	2019-04-15 12:02:38.725596	2019-04-15 12:02:39.106325	\N
3	\N	2019-04-15 12:05:53.353768	2019-04-15 12:05:53.619954	\N
4	\N	2019-04-15 12:07:43.078192	2019-04-15 12:07:43.384895	\N
5	\N	2019-04-15 12:09:37.448013	2019-04-15 12:09:37.74701	\N
6	\N	2019-04-15 12:10:38.12236	2019-04-15 12:10:38.548099	\N
7	\N	2019-04-15 12:10:48.87555	2019-04-15 12:10:49.238497	\N
8	\N	2019-04-15 12:12:08.730074	2019-04-15 12:12:09.010042	\N
9	\N	2019-04-15 12:13:19.112593	2019-04-15 12:13:19.411419	\N
10	\N	2019-04-15 12:14:01.183688	2019-04-15 12:14:01.492747	\N
11	\N	2019-04-15 12:15:39.789522	2019-04-15 12:15:40.103942	\N
12	\N	2019-04-15 12:19:09.515582	2019-04-15 12:19:09.776961	\N
1	---\nkeyword: 康橋慢旅｜Kindness Day｜Kindness Day Hotel｜慢旅｜康橋｜康橋商旅｜商旅｜旅館｜連鎖｜台南｜台南訂房｜康橋大飯店｜大飯店｜Kindness\n  Day Hotel｜Hotel｜Kindness｜Day\ndesigned: Transform Design\ndescription: 我們重視旅客的住宿過程，致力於每個細節，提供乾淨的房間、整潔的用餐環境、美味的餐飲。康橋，就是這麼舒適溫暖！\nfb_url: https://www.facebook.com/kindnessdayhotel/\nig_url: https://www.instagram.com/kindnessday_hotel/?igshid=7i9mwynzzdfb\nhr_url: https://www.104.com.tw/company/b9h2ar4?page=1&pageSize=20&order=undefined&asc=undefined&jobsource=\nig_token: 842986798.decb9b5.da4a2948c82b4c188a4db9edb4fa31e6\nvimeo_token: ''\nabout_vimeo: ''\nog_title: ''\nog_description: ''\ncopyright: Copyright @ 2020 Kindness Day Hotel\neasytravel_url: http://www.easytravel.com.tw/ehotel/swhotel.aspx?posvn=kindnessday&n=10538\nbooking_url: https://www.agoda.com/kindness-day-hotel/hotel/tainan-tw.html?adults=2&checkIn=2020-04-11&cid=1731641&los=1&rooms=1&searchrequestid=def0b7f0-01dd-492b-aa05-51bbc82bbbf2&travellerType=-1\ntripadvisor_url: https://www.tripadvisor.com.tw/Hotel_Review-g13808400-d20099193-Reviews-Kindness_Day_Hotel-West_Central_District_Tainan.html\ntripadvisor_en_url: https://www.tripadvisor.com.tw/Hotel_Review-g13808400-d20099193-Reviews-Kindness_Day_Hotel-West_Central_District_Tainan.html\ntitle: 康橋 kindness\ncopy_right: ''\nvimeo_url: ''\ncopywrite: Copyright @ 2019 Kindness Day Hotel\n	2019-03-08 07:34:28.367625	2021-06-10 16:06:04.54949	\N
\.


--
-- Data for Name: spots; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.spots (id, tel, created_at, updated_at, image_ids, store_id, tags) FROM stdin;
1	\N	2019-03-09 07:33:44.939601	2019-04-11 15:41:15.925569	{48,16,37,17}	\N	{}
3	\N	2019-04-12 02:23:14.922507	2019-04-12 02:23:15.407787	{111}	\N	{}
4	\N	2019-04-12 02:24:14.734713	2019-04-12 02:24:15.20149	{112}	\N	{}
5	\N	2019-04-12 02:26:11.729004	2019-04-12 02:26:12.355821	{112}	\N	{}
6	\N	2019-04-12 02:28:00.834286	2019-04-12 02:28:01.477599	{113}	\N	{}
31	\N	2020-02-13 09:06:26.396356	2020-03-04 09:37:31.106243	{374}	1	{hotspot}
21	\N	2020-02-13 08:01:23.270034	2020-03-04 09:38:32.6672	{375}	1	{hotspot}
22	\N	2020-02-13 08:04:26.056787	2020-03-04 09:39:26.761471	{376}	1	{hotspot}
23	\N	2020-02-13 08:40:48.115379	2020-03-04 09:40:28.082673	{377}	1	{hotspot}
24	\N	2020-02-13 08:42:07.305985	2020-03-04 09:41:25.961117	{378}	1	{hotspot}
30	\N	2020-02-13 09:05:45.886784	2020-03-04 09:42:08.538534	{379}	1	{hotspot}
25	\N	2020-02-13 08:45:20.894269	2020-03-04 10:00:26.274443	{389}	1	{shopping}
27	\N	2020-02-13 08:47:28.607241	2020-03-04 10:00:57.402329	{380}	1	{shopping}
26	\N	2020-02-13 08:46:16.119467	2020-03-04 10:01:45.705787	{382}	1	{shopping}
29	\N	2020-02-13 08:50:01.753928	2020-03-04 10:01:54.74217	{384}	1	{shopping}
28	\N	2020-02-13 08:49:04.446305	2020-03-04 10:02:01.088743	{386}	1	{shopping}
14	\N	2019-05-01 02:36:36.917787	2019-05-01 02:36:37.959149	{}	2	{hotspot}
15	\N	2019-05-01 02:41:05.289984	2019-05-01 02:41:06.034409	{}	2	{hotspot}
16	\N	2019-05-01 03:30:09.156825	2019-05-01 03:30:09.922798	{}	2	{shopping}
\.


--
-- Data for Name: store_spots; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.store_spots (id, store_id, spot_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: stores; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.stores (id, region_id, seq, created_at, updated_at, display, cover_image_ids, traffic_image_ids) FROM stdin;
1	4	1	2019-03-11 12:40:27.917166	2020-10-31 04:55:53.248161	t	{290}	{289}
\.


--
-- Data for Name: traffics; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.traffics (id, store_id, seq, created_at, updated_at) FROM stdin;
10	6	1	2019-06-04 07:34:39.385131	2019-06-04 07:34:39.434327
2	1	3	2019-03-11 14:14:52.389238	2020-02-27 13:50:31.412125
4	1	2	2019-04-11 16:02:58.147298	2020-02-27 13:51:56.595178
3	1	1	2019-04-04 14:39:34.525183	2020-02-27 14:36:27.530735
5	1	4	2019-04-23 13:39:41.297042	2020-07-30 15:54:58.318141
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, role) FROM stdin;
2	hotel@gmail.com	$2a$11$UYgEqpZeBqv0mppIPWAITeGkPfcNSzBo/Xe50BldCGwc41J4Nuw1a	\N	\N	\N	2019-04-07 14:33:18.129334	2019-04-07 14:33:18.129334	2
3	store1@gmail.com	$2a$11$6AHnARF.pG6ibgDKMEXQXe9AURnR2ClFwXYNJ0mrPfG/yJjk21bYe	\N	\N	\N	2019-05-07 11:00:39.459316	2019-05-07 11:00:39.459316	2
1	admin@gmail.com	$2a$11$CL.2b26Agivwae4dS2nE2.LQP4Hel5Ip07oJ23mM9wE6UQksHPeDy	\N	\N	2020-12-11 02:52:05.38755	2019-03-08 07:34:27.027321	2020-12-11 02:52:05.388613	0
\.


--
-- Name: banners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app
--

SELECT pg_catalog.setval('public.banners_id_seq', 3, true);


--
-- Name: ckeditor_assets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app
--

SELECT pg_catalog.setval('public.ckeditor_assets_id_seq', 1, true);


--
-- Name: foods_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app
--

SELECT pg_catalog.setval('public.foods_id_seq', 6, true);


--
-- Name: images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app
--

SELECT pg_catalog.setval('public.images_id_seq', 550, true);


--
-- Name: mobility_string_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app
--

SELECT pg_catalog.setval('public.mobility_string_translations_id_seq', 708, true);


--
-- Name: mobility_text_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app
--

SELECT pg_catalog.setval('public.mobility_text_translations_id_seq', 406, true);


--
-- Name: news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app
--

SELECT pg_catalog.setval('public.news_id_seq', 40, true);


--
-- Name: regions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app
--

SELECT pg_catalog.setval('public.regions_id_seq', 8, true);


--
-- Name: rooms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app
--

SELECT pg_catalog.setval('public.rooms_id_seq', 14, true);


--
-- Name: settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app
--

SELECT pg_catalog.setval('public.settings_id_seq', 12, true);


--
-- Name: spots_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app
--

SELECT pg_catalog.setval('public.spots_id_seq', 31, true);


--
-- Name: store_spots_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app
--

SELECT pg_catalog.setval('public.store_spots_id_seq', 1, false);


--
-- Name: stores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app
--

SELECT pg_catalog.setval('public.stores_id_seq', 35, true);


--
-- Name: traffics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app
--

SELECT pg_catalog.setval('public.traffics_id_seq', 11, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app
--

SELECT pg_catalog.setval('public.users_id_seq', 3, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: banners banners_pkey; Type: CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.banners
    ADD CONSTRAINT banners_pkey PRIMARY KEY (id);


--
-- Name: ckeditor_assets ckeditor_assets_pkey; Type: CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.ckeditor_assets
    ADD CONSTRAINT ckeditor_assets_pkey PRIMARY KEY (id);


--
-- Name: foods foods_pkey; Type: CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.foods
    ADD CONSTRAINT foods_pkey PRIMARY KEY (id);


--
-- Name: images images_pkey; Type: CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);


--
-- Name: mobility_string_translations mobility_string_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.mobility_string_translations
    ADD CONSTRAINT mobility_string_translations_pkey PRIMARY KEY (id);


--
-- Name: mobility_text_translations mobility_text_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.mobility_text_translations
    ADD CONSTRAINT mobility_text_translations_pkey PRIMARY KEY (id);


--
-- Name: news news_pkey; Type: CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_pkey PRIMARY KEY (id);


--
-- Name: regions regions_pkey; Type: CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_pkey PRIMARY KEY (id);


--
-- Name: rooms rooms_pkey; Type: CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT rooms_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: settings settings_pkey; Type: CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_pkey PRIMARY KEY (id);


--
-- Name: spots spots_pkey; Type: CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.spots
    ADD CONSTRAINT spots_pkey PRIMARY KEY (id);


--
-- Name: store_spots store_spots_pkey; Type: CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.store_spots
    ADD CONSTRAINT store_spots_pkey PRIMARY KEY (id);


--
-- Name: stores stores_pkey; Type: CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.stores
    ADD CONSTRAINT stores_pkey PRIMARY KEY (id);


--
-- Name: traffics traffics_pkey; Type: CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.traffics
    ADD CONSTRAINT traffics_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_ckeditor_assets_on_type; Type: INDEX; Schema: public; Owner: app
--

CREATE INDEX index_ckeditor_assets_on_type ON public.ckeditor_assets USING btree (type);


--
-- Name: index_mobility_string_translations_on_keys; Type: INDEX; Schema: public; Owner: app
--

CREATE UNIQUE INDEX index_mobility_string_translations_on_keys ON public.mobility_string_translations USING btree (translatable_id, translatable_type, locale, key);


--
-- Name: index_mobility_string_translations_on_query_keys; Type: INDEX; Schema: public; Owner: app
--

CREATE INDEX index_mobility_string_translations_on_query_keys ON public.mobility_string_translations USING btree (translatable_type, key, value, locale);


--
-- Name: index_mobility_string_translations_on_translatable_attribute; Type: INDEX; Schema: public; Owner: app
--

CREATE INDEX index_mobility_string_translations_on_translatable_attribute ON public.mobility_string_translations USING btree (translatable_id, translatable_type, key);


--
-- Name: index_mobility_text_translations_on_keys; Type: INDEX; Schema: public; Owner: app
--

CREATE UNIQUE INDEX index_mobility_text_translations_on_keys ON public.mobility_text_translations USING btree (translatable_id, translatable_type, locale, key);


--
-- Name: index_mobility_text_translations_on_translatable_attribute; Type: INDEX; Schema: public; Owner: app
--

CREATE INDEX index_mobility_text_translations_on_translatable_attribute ON public.mobility_text_translations USING btree (translatable_id, translatable_type, key);


--
-- Name: index_stores_on_region_id; Type: INDEX; Schema: public; Owner: app
--

CREATE INDEX index_stores_on_region_id ON public.stores USING btree (region_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: app
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: app
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: stores fk_rails_b4b2ad1c19; Type: FK CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.stores
    ADD CONSTRAINT fk_rails_b4b2ad1c19 FOREIGN KEY (region_id) REFERENCES public.regions(id);


--
-- PostgreSQL database dump complete
--

