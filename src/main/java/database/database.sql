--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

-- Started on 2024-07-24 00:43:12

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 228 (class 1259 OID 17021)
-- Name: devices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.devices (
    id integer NOT NULL,
    name character varying(255),
    state integer
);


ALTER TABLE public.devices OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 17020)
-- Name: devices_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.devices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.devices_id_seq OWNER TO postgres;

--
-- TOC entry 4906 (class 0 OID 0)
-- Dependencies: 227
-- Name: devices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.devices_id_seq OWNED BY public.devices.id;


--
-- TOC entry 224 (class 1259 OID 16577)
-- Name: scenes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.scenes (
    id bigint NOT NULL,
    designation character varying(255)
);


ALTER TABLE public.scenes OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16576)
-- Name: scenes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.scenes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.scenes_id_seq OWNER TO postgres;

--
-- TOC entry 4907 (class 0 OID 0)
-- Dependencies: 223
-- Name: scenes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.scenes_id_seq OWNED BY public.scenes.id;


--
-- TOC entry 226 (class 1259 OID 16987)
-- Name: templates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.templates (
    id bigint NOT NULL,
    author character varying(255),
    name character varying(255),
    scene bigint,
    "time" bigint,
    video bigint,
    voice bigint,
    weather bigint
);


ALTER TABLE public.templates OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16986)
-- Name: templates_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.templates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.templates_id_seq OWNER TO postgres;

--
-- TOC entry 4908 (class 0 OID 0)
-- Dependencies: 225
-- Name: templates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.templates_id_seq OWNED BY public.templates.id;


--
-- TOC entry 218 (class 1259 OID 16524)
-- Name: times; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.times (
    id bigint NOT NULL,
    designation character varying(255)
);


ALTER TABLE public.times OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16523)
-- Name: times_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.times_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.times_id_seq OWNER TO postgres;

--
-- TOC entry 4909 (class 0 OID 0)
-- Dependencies: 217
-- Name: times_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.times_id_seq OWNED BY public.times.id;


--
-- TOC entry 222 (class 1259 OID 16542)
-- Name: videos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.videos (
    id bigint NOT NULL,
    designation character varying(255)
);


ALTER TABLE public.videos OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16541)
-- Name: videos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.videos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.videos_id_seq OWNER TO postgres;

--
-- TOC entry 4910 (class 0 OID 0)
-- Dependencies: 221
-- Name: videos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.videos_id_seq OWNED BY public.videos.id;


--
-- TOC entry 220 (class 1259 OID 16533)
-- Name: voices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.voices (
    id bigint NOT NULL,
    designation character varying(255)
);


ALTER TABLE public.voices OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16532)
-- Name: voices_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.voices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.voices_id_seq OWNER TO postgres;

--
-- TOC entry 4911 (class 0 OID 0)
-- Dependencies: 219
-- Name: voices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.voices_id_seq OWNED BY public.voices.id;


--
-- TOC entry 216 (class 1259 OID 16515)
-- Name: weathers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.weathers (
    id bigint NOT NULL,
    designation character varying(255)
);


ALTER TABLE public.weathers OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16514)
-- Name: wheathers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.wheathers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.wheathers_id_seq OWNER TO postgres;

--
-- TOC entry 4912 (class 0 OID 0)
-- Dependencies: 215
-- Name: wheathers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.wheathers_id_seq OWNED BY public.weathers.id;


--
-- TOC entry 4724 (class 2604 OID 17024)
-- Name: devices id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.devices ALTER COLUMN id SET DEFAULT nextval('public.devices_id_seq'::regclass);


--
-- TOC entry 4722 (class 2604 OID 16861)
-- Name: scenes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.scenes ALTER COLUMN id SET DEFAULT nextval('public.scenes_id_seq'::regclass);


--
-- TOC entry 4723 (class 2604 OID 16990)
-- Name: templates id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.templates ALTER COLUMN id SET DEFAULT nextval('public.templates_id_seq'::regclass);


--
-- TOC entry 4719 (class 2604 OID 16888)
-- Name: times id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.times ALTER COLUMN id SET DEFAULT nextval('public.times_id_seq'::regclass);


--
-- TOC entry 4721 (class 2604 OID 16906)
-- Name: videos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.videos ALTER COLUMN id SET DEFAULT nextval('public.videos_id_seq'::regclass);


--
-- TOC entry 4720 (class 2604 OID 16924)
-- Name: voices id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.voices ALTER COLUMN id SET DEFAULT nextval('public.voices_id_seq'::regclass);


--
-- TOC entry 4718 (class 2604 OID 16942)
-- Name: weathers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.weathers ALTER COLUMN id SET DEFAULT nextval('public.wheathers_id_seq'::regclass);


--
-- TOC entry 4900 (class 0 OID 17021)
-- Dependencies: 228
-- Data for Name: devices; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.devices (id, name, state) FROM stdin;
1	fan	0
2	humidifier	0
3	freshener	1
\.


--
-- TOC entry 4896 (class 0 OID 16577)
-- Dependencies: 224
-- Data for Name: scenes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.scenes (id, designation) FROM stdin;
1	stone
\.


--
-- TOC entry 4898 (class 0 OID 16987)
-- Dependencies: 226
-- Data for Name: templates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.templates (id, author, name, scene, "time", video, voice, weather) FROM stdin;
1	test	Main Template	1	1	1	1	1
2	test	a	1	2	1	1	1
3	sasha	Main2 Template	1	1	1	1	1
\.


--
-- TOC entry 4890 (class 0 OID 16524)
-- Dependencies: 218
-- Data for Name: times; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.times (id, designation) FROM stdin;
1	day
2	night
\.


--
-- TOC entry 4894 (class 0 OID 16542)
-- Dependencies: 222
-- Data for Name: videos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.videos (id, designation) FROM stdin;
1	mountain
\.


--
-- TOC entry 4892 (class 0 OID 16533)
-- Dependencies: 220
-- Data for Name: voices; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.voices (id, designation) FROM stdin;
1	birds
\.


--
-- TOC entry 4888 (class 0 OID 16515)
-- Dependencies: 216
-- Data for Name: weathers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.weathers (id, designation) FROM stdin;
1	sunny
2	rain
\.


--
-- TOC entry 4913 (class 0 OID 0)
-- Dependencies: 227
-- Name: devices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.devices_id_seq', 1, false);


--
-- TOC entry 4914 (class 0 OID 0)
-- Dependencies: 223
-- Name: scenes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.scenes_id_seq', 1, false);


--
-- TOC entry 4915 (class 0 OID 0)
-- Dependencies: 225
-- Name: templates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.templates_id_seq', 3, true);


--
-- TOC entry 4916 (class 0 OID 0)
-- Dependencies: 217
-- Name: times_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.times_id_seq', 1, false);


--
-- TOC entry 4917 (class 0 OID 0)
-- Dependencies: 221
-- Name: videos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.videos_id_seq', 1, false);


--
-- TOC entry 4918 (class 0 OID 0)
-- Dependencies: 219
-- Name: voices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.voices_id_seq', 1, false);


--
-- TOC entry 4919 (class 0 OID 0)
-- Dependencies: 215
-- Name: wheathers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wheathers_id_seq', 1, false);


--
-- TOC entry 4738 (class 2606 OID 17026)
-- Name: devices devices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.devices
    ADD CONSTRAINT devices_pkey PRIMARY KEY (id);


--
-- TOC entry 4734 (class 2606 OID 16863)
-- Name: scenes scenes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.scenes
    ADD CONSTRAINT scenes_pkey PRIMARY KEY (id);


--
-- TOC entry 4736 (class 2606 OID 16994)
-- Name: templates templates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.templates
    ADD CONSTRAINT templates_pkey PRIMARY KEY (id);


--
-- TOC entry 4728 (class 2606 OID 16890)
-- Name: times times_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.times
    ADD CONSTRAINT times_pkey PRIMARY KEY (id);


--
-- TOC entry 4732 (class 2606 OID 16908)
-- Name: videos videos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.videos
    ADD CONSTRAINT videos_pkey PRIMARY KEY (id);


--
-- TOC entry 4730 (class 2606 OID 16926)
-- Name: voices voices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.voices
    ADD CONSTRAINT voices_pkey PRIMARY KEY (id);


--
-- TOC entry 4726 (class 2606 OID 16944)
-- Name: weathers wheathers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.weathers
    ADD CONSTRAINT wheathers_pkey PRIMARY KEY (id);


--
-- TOC entry 4739 (class 2606 OID 17010)
-- Name: templates fk8dl5u2wreyumy6dkyisf9qlxq; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.templates
    ADD CONSTRAINT fk8dl5u2wreyumy6dkyisf9qlxq FOREIGN KEY (voice) REFERENCES public.voices(id);


--
-- TOC entry 4740 (class 2606 OID 17005)
-- Name: templates fk9gw1hrm6cogvcydtdcccurd28; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.templates
    ADD CONSTRAINT fk9gw1hrm6cogvcydtdcccurd28 FOREIGN KEY (video) REFERENCES public.videos(id);


--
-- TOC entry 4741 (class 2606 OID 17015)
-- Name: templates fk9t3juw85phb7nsr7ktxgvbdbd; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.templates
    ADD CONSTRAINT fk9t3juw85phb7nsr7ktxgvbdbd FOREIGN KEY (weather) REFERENCES public.weathers(id);


--
-- TOC entry 4742 (class 2606 OID 16995)
-- Name: templates fki6sr7ymjl8e5pnb78vavuuabc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.templates
    ADD CONSTRAINT fki6sr7ymjl8e5pnb78vavuuabc FOREIGN KEY (scene) REFERENCES public.scenes(id);


--
-- TOC entry 4743 (class 2606 OID 17000)
-- Name: templates fkmua4uo158yj7ck3njfl88txv2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.templates
    ADD CONSTRAINT fkmua4uo158yj7ck3njfl88txv2 FOREIGN KEY ("time") REFERENCES public.times(id);


-- Completed on 2024-07-24 00:43:13

--
-- PostgreSQL database dump complete
--

