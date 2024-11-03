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
SELECT pg_catalog.set_config('search_path', 'public', false);
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

CREATE TABLE IF NOT EXISTS devices(
    id integer NOT NULL,
    name character varying(255),
    state integer
);


ALTER TABLE devices OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 17020)
-- Name: devices_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE IF NOT EXISTS devices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE devices_id_seq OWNER TO postgres;

--
-- TOC entry 4906 (class 0 OID 0)
-- Dependencies: 227
-- Name: devices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE devices_id_seq OWNED BY devices.id;


--
-- TOC entry 224 (class 1259 OID 16577)
-- Name: scenes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE IF NOT EXISTS scenes (
    id bigint NOT NULL,
    designation character varying(255)
);


ALTER TABLE scenes OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16576)
-- Name: scenes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE IF NOT EXISTS scenes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE scenes_id_seq OWNER TO postgres;

--
-- TOC entry 4907 (class 0 OID 0)
-- Dependencies: 223
-- Name: scenes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE scenes_id_seq OWNED BY scenes.id;


--
-- TOC entry 226 (class 1259 OID 16987)
-- Name: templates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE IF NOT EXISTS templates (
    id bigint NOT NULL,
    author character varying(255),
    name character varying(255),
    scene bigint,
    "time" bigint,
    video bigint,
    voice bigint,
    weather bigint
);


ALTER TABLE templates OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16986)
-- Name: templates_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE IF NOT EXISTS templates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE templates_id_seq OWNER TO postgres;

--
-- TOC entry 4908 (class 0 OID 0)
-- Dependencies: 225
-- Name: templates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE templates_id_seq OWNED BY templates.id;


--
-- TOC entry 218 (class 1259 OID 16524)
-- Name: times; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE IF NOT EXISTS times (
    id bigint NOT NULL,
    designation character varying(255)
);


ALTER TABLE times OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16523)
-- Name: times_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE IF NOT EXISTS times_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE times_id_seq OWNER TO postgres;

--
-- TOC entry 4909 (class 0 OID 0)
-- Dependencies: 217
-- Name: times_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE times_id_seq OWNED BY times.id;


--
-- TOC entry 222 (class 1259 OID 16542)
-- Name: videos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE IF NOT EXISTS videos (
    id bigint NOT NULL,
    designation character varying(255)
);


ALTER TABLE videos OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16541)
-- Name: videos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE IF NOT EXISTS videos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE videos_id_seq OWNER TO postgres;

--
-- TOC entry 4910 (class 0 OID 0)
-- Dependencies: 221
-- Name: videos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE videos_id_seq OWNED BY videos.id;


--
-- TOC entry 220 (class 1259 OID 16533)
-- Name: voices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE IF NOT EXISTS voices (
    id bigint NOT NULL,
    designation character varying(255)
);


ALTER TABLE voices OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16532)
-- Name: voices_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE IF NOT EXISTS voices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE voices_id_seq OWNER TO postgres;

--
-- TOC entry 4911 (class 0 OID 0)
-- Dependencies: 219
-- Name: voices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE voices_id_seq OWNED BY voices.id;


--
-- TOC entry 216 (class 1259 OID 16515)
-- Name: weathers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE IF NOT EXISTS weathers (
    id bigint NOT NULL,
    designation character varying(255)
);


ALTER TABLE weathers OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16514)
-- Name: wheathers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE IF NOT EXISTS wheathers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE wheathers_id_seq OWNER TO postgres;

--
-- TOC entry 4912 (class 0 OID 0)
-- Dependencies: 215
-- Name: wheathers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE wheathers_id_seq OWNED BY weathers.id;


--
-- TOC entry 4724 (class 2604 OID 17024)
-- Name: devices id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY devices ALTER COLUMN id SET DEFAULT nextval('devices_id_seq'::regclass);


--
-- TOC entry 4722 (class 2604 OID 16861)
-- Name: scenes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY scenes ALTER COLUMN id SET DEFAULT nextval('scenes_id_seq'::regclass);


--
-- TOC entry 4723 (class 2604 OID 16990)
-- Name: templates id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY templates ALTER COLUMN id SET DEFAULT nextval('templates_id_seq'::regclass);


--
-- TOC entry 4719 (class 2604 OID 16888)
-- Name: times id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY times ALTER COLUMN id SET DEFAULT nextval('times_id_seq'::regclass);


--
-- TOC entry 4721 (class 2604 OID 16906)
-- Name: videos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY videos ALTER COLUMN id SET DEFAULT nextval('videos_id_seq'::regclass);


--
-- TOC entry 4720 (class 2604 OID 16924)
-- Name: voices id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY voices ALTER COLUMN id SET DEFAULT nextval('voices_id_seq'::regclass);


--
-- TOC entry 4718 (class 2604 OID 16942)
-- Name: weathers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY weathers ALTER COLUMN id SET DEFAULT nextval('wheathers_id_seq'::regclass);


--
-- TOC entry 4900 (class 0 OID 17021)
-- Dependencies: 228
-- Data for Name: devices; Type: TABLE DATA; Schema: public; Owner: postgres
--

-- Вставка данных в таблицу devices
INSERT INTO devices (id, name, state) VALUES
(1, 'fan', 0),
(2, 'humidifier', 0),
(3, 'freshener', 1);

-- Вставка данных в таблицу scenes
INSERT INTO scenes (id, designation) VALUES
(1, 'Сад камней');

-- Вставка данных в таблицу templates
INSERT INTO templates (id, author, name, scene, "time", video, voice, weather) VALUES
(1, 'test', 'Main Template', 1, 1, 1, 1, 1),
(2, 'test', 'a', 1, 2, 1, 1, 1),
(3, 'sasha', 'Main2 Template', 1, 1, 1, 1, 1);

-- Вставка данных в таблицу times
INSERT INTO times (id, designation) VALUES
(1, 'День'),
(2, 'Ночь');

-- Вставка данных в таблицу videos
INSERT INTO videos (id, designation) VALUES
(1, 'Замок');

-- Вставка данных в таблицу voices
INSERT INTO voices (id, designation) VALUES
(1, 'Сверчки'),
(2, 'Вода'),
(3, 'Птицы'),
(4, 'Камин');

-- Вставка данных в таблицу weathers
INSERT INTO weathers (id, designation) VALUES
(1, 'Ясно'),
(2, 'Дождь'),
(3, 'Облачно');


--
-- TOC entry 4913 (class 0 OID 0)
-- Dependencies: 227
-- Name: devices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('devices_id_seq', 1, false);


--
-- TOC entry 4914 (class 0 OID 0)
-- Dependencies: 223
-- Name: scenes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('scenes_id_seq', 1, false);


--
-- TOC entry 4915 (class 0 OID 0)
-- Dependencies: 225
-- Name: templates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('templates_id_seq', 3, true);


--
-- TOC entry 4916 (class 0 OID 0)
-- Dependencies: 217
-- Name: times_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('times_id_seq', 1, false);


--
-- TOC entry 4917 (class 0 OID 0)
-- Dependencies: 221
-- Name: videos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('videos_id_seq', 1, false);


--
-- TOC entry 4918 (class 0 OID 0)
-- Dependencies: 219
-- Name: voices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('voices_id_seq', 1, false);


--
-- TOC entry 4919 (class 0 OID 0)
-- Dependencies: 215
-- Name: wheathers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wheathers_id_seq', 1, false);


--
-- TOC entry 4738 (class 2606 OID 17026)
-- Name: devices devices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY devices
    ADD CONSTRAINT devices_pkey PRIMARY KEY (id);


--
-- TOC entry 4734 (class 2606 OID 16863)
-- Name: scenes scenes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY scenes
    ADD CONSTRAINT scenes_pkey PRIMARY KEY (id);


--
-- TOC entry 4736 (class 2606 OID 16994)
-- Name: templates templates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY templates
    ADD CONSTRAINT templates_pkey PRIMARY KEY (id);


--
-- TOC entry 4728 (class 2606 OID 16890)
-- Name: times times_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY times
    ADD CONSTRAINT times_pkey PRIMARY KEY (id);


--
-- TOC entry 4732 (class 2606 OID 16908)
-- Name: videos videos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY videos
    ADD CONSTRAINT videos_pkey PRIMARY KEY (id);


--
-- TOC entry 4730 (class 2606 OID 16926)
-- Name: voices voices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY voices
    ADD CONSTRAINT voices_pkey PRIMARY KEY (id);


--
-- TOC entry 4726 (class 2606 OID 16944)
-- Name: weathers wheathers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY weathers
    ADD CONSTRAINT wheathers_pkey PRIMARY KEY (id);


--
-- TOC entry 4739 (class 2606 OID 17010)
-- Name: templates fk8dl5u2wreyumy6dkyisf9qlxq; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY templates
    ADD CONSTRAINT fk8dl5u2wreyumy6dkyisf9qlxq FOREIGN KEY (voice) REFERENCES voices(id);


--
-- TOC entry 4740 (class 2606 OID 17005)
-- Name: templates fk9gw1hrm6cogvcydtdcccurd28; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY templates
    ADD CONSTRAINT fk9gw1hrm6cogvcydtdcccurd28 FOREIGN KEY (video) REFERENCES videos(id);


--
-- TOC entry 4741 (class 2606 OID 17015)
-- Name: templates fk9t3juw85phb7nsr7ktxgvbdbd; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY templates
    ADD CONSTRAINT fk9t3juw85phb7nsr7ktxgvbdbd FOREIGN KEY (weather) REFERENCES weathers(id);


--
-- TOC entry 4742 (class 2606 OID 16995)
-- Name: templates fki6sr7ymjl8e5pnb78vavuuabc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY templates
    ADD CONSTRAINT fki6sr7ymjl8e5pnb78vavuuabc FOREIGN KEY (scene) REFERENCES scenes(id);


--
-- TOC entry 4743 (class 2606 OID 17000)
-- Name: templates fkmua4uo158yj7ck3njfl88txv2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY templates
    ADD CONSTRAINT fkmua4uo158yj7ck3njfl88txv2 FOREIGN KEY ("time") REFERENCES times(id);


-- Completed on 2024-07-24 00:43:13

--
-- PostgreSQL database dump complete
--

