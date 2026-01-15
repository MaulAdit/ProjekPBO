--
-- PostgreSQL database dump
--

\restrict fioHQruMrfeKn576pC6zdjW0H8vtbe7DXq5C93ggFwCucEGYFkVGnR7HXGI9bh1

-- Dumped from database version 18.1
-- Dumped by pg_dump version 18.1

-- Started on 2026-01-15 23:59:45

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 226 (class 1259 OID 16466)
-- Name: absensi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.absensi (
    id integer NOT NULL,
    idmahasiswa integer NOT NULL,
    idmatakuliah integer NOT NULL,
    tanggal date NOT NULL,
    status character varying(10) NOT NULL,
    CONSTRAINT absensi_status_check CHECK (((status)::text = ANY ((ARRAY['Hadir'::character varying, 'Izin'::character varying, 'Sakit'::character varying, 'Alpa'::character varying])::text[])))
);


ALTER TABLE public.absensi OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16465)
-- Name: absensi_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.absensi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.absensi_id_seq OWNER TO postgres;

--
-- TOC entry 5069 (class 0 OID 0)
-- Dependencies: 225
-- Name: absensi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.absensi_id_seq OWNED BY public.absensi.id;


--
-- TOC entry 220 (class 1259 OID 16424)
-- Name: jurusan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jurusan (
    id integer NOT NULL,
    nama character varying(50) NOT NULL
);


ALTER TABLE public.jurusan OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16423)
-- Name: jurusan_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.jurusan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.jurusan_id_seq OWNER TO postgres;

--
-- TOC entry 5070 (class 0 OID 0)
-- Dependencies: 219
-- Name: jurusan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.jurusan_id_seq OWNED BY public.jurusan.id;


--
-- TOC entry 222 (class 1259 OID 16435)
-- Name: mahasiswa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mahasiswa (
    id integer NOT NULL,
    nim character varying(15) NOT NULL,
    nama character varying(100) NOT NULL,
    idjurusan integer,
    email character varying(100)
);


ALTER TABLE public.mahasiswa OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16434)
-- Name: mahasiswa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mahasiswa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.mahasiswa_id_seq OWNER TO postgres;

--
-- TOC entry 5071 (class 0 OID 0)
-- Dependencies: 221
-- Name: mahasiswa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mahasiswa_id_seq OWNED BY public.mahasiswa.id;


--
-- TOC entry 224 (class 1259 OID 16454)
-- Name: mata_kuliah; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mata_kuliah (
    id integer NOT NULL,
    kode character varying(10) NOT NULL,
    nama character varying(100) NOT NULL
);


ALTER TABLE public.mata_kuliah OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16453)
-- Name: mata_kuliah_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mata_kuliah_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.mata_kuliah_id_seq OWNER TO postgres;

--
-- TOC entry 5072 (class 0 OID 0)
-- Dependencies: 223
-- Name: mata_kuliah_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mata_kuliah_id_seq OWNED BY public.mata_kuliah.id;


--
-- TOC entry 228 (class 1259 OID 16489)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    fullname character varying(100) NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(32) NOT NULL,
    email character varying(100),
    role character varying(20) NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16488)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 5073 (class 0 OID 0)
-- Dependencies: 227
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 4879 (class 2604 OID 16469)
-- Name: absensi id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.absensi ALTER COLUMN id SET DEFAULT nextval('public.absensi_id_seq'::regclass);


--
-- TOC entry 4876 (class 2604 OID 16427)
-- Name: jurusan id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jurusan ALTER COLUMN id SET DEFAULT nextval('public.jurusan_id_seq'::regclass);


--
-- TOC entry 4877 (class 2604 OID 16438)
-- Name: mahasiswa id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mahasiswa ALTER COLUMN id SET DEFAULT nextval('public.mahasiswa_id_seq'::regclass);


--
-- TOC entry 4878 (class 2604 OID 16457)
-- Name: mata_kuliah id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mata_kuliah ALTER COLUMN id SET DEFAULT nextval('public.mata_kuliah_id_seq'::regclass);


--
-- TOC entry 4880 (class 2604 OID 16492)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 5061 (class 0 OID 16466)
-- Dependencies: 226
-- Data for Name: absensi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.absensi (id, idmahasiswa, idmatakuliah, tanggal, status) FROM stdin;
18	1	7	2025-01-10	Hadir
19	1	8	2025-01-11	Hadir
20	2	7	2025-01-10	Izin
21	2	8	2025-01-11	Hadir
22	3	5	2025-01-10	Hadir
23	3	6	2025-01-11	Sakit
24	4	7	2025-01-10	Hadir
25	4	8	2025-01-11	Hadir
26	4	9	2025-01-12	Alpa
27	5	10	2025-01-10	Hadir
28	5	11	2025-01-11	Hadir
29	6	12	2025-01-10	Izin
30	6	13	2025-01-11	Hadir
31	7	7	2025-01-10	Hadir
32	8	8	2025-01-10	Sakit
33	9	5	2025-01-10	Hadir
34	10	9	2025-01-10	Hadir
\.


--
-- TOC entry 5055 (class 0 OID 16424)
-- Dependencies: 220
-- Data for Name: jurusan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jurusan (id, nama) FROM stdin;
1	Fakultas Kedokteran
2	Fakultas Teknik
3	Fakultas Hukum
4	Fakultas Ilmu Komputer dan Informatika
5	Fakultas Ilmu Pendidikan
6	Fakultas Ilmu Sosial dan Politik
\.


--
-- TOC entry 5057 (class 0 OID 16435)
-- Dependencies: 222
-- Data for Name: mahasiswa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mahasiswa (id, nim, nama, idjurusan, email) FROM stdin;
1	2023001	Andi Wijaya	1	andi@mail.com
2	2023002	Siti Aminah	2	siti@mail.com
3	2023003	Budi Santoso	3	budi@mail.com
4	2023004	Rina Lestari	4	rina@mail.com
5	2023005	Agus Prasetyo	5	agus@mail.com
6	2023006	Dewi Permata	6	dewi@mail.com
7	2023007	Eko Setiawan	1	eko@mail.com
8	2023008	Fitri Handayani	2	fitri@mail.com
9	2023009	Hendra Gunawan	3	hendra@mail.com
10	2023010	Lina Marlina	4	lina@mail.com
\.


--
-- TOC entry 5059 (class 0 OID 16454)
-- Dependencies: 224
-- Data for Name: mata_kuliah; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mata_kuliah (id, kode, nama) FROM stdin;
1	MED101	Anatomi Manusia
2	MED102	Fisiologi
3	TEK101	Matematika Teknik
4	TEK102	Fisika Dasar
5	HUK101	Hukum Perdata
6	HUK102	Hukum Pidana
7	IF101	Pemrograman Berorientasi Objek
8	IF102	Basis Data
9	IF103	Jaringan Komputer
10	PDIK101	Psikologi Pendidikan
11	PDIK102	Metodologi Pengajaran
12	SOSP101	Sosiologi
13	SOSP102	Ilmu Politik
\.


--
-- TOC entry 5063 (class 0 OID 16489)
-- Dependencies: 228
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, fullname, username, password, email, role) FROM stdin;
1	Administrator Sistem	admin	0192023a7bbd73250516f069df18b500	admin@kampus.com	ADMIN
2	Andi Wijaya	2023001	e10adc3949ba59abbe56e057f20f883e	andi@mail.com	MAHASISWA
3	Siti Aminah	2023002	e10adc3949ba59abbe56e057f20f883e	siti@mail.com	MAHASISWA
4	Budi Santoso	2023003	e10adc3949ba59abbe56e057f20f883e	budi@mail.com	MAHASISWA
5	Rina Lestari	2023004	e10adc3949ba59abbe56e057f20f883e	rina@mail.com	MAHASISWA
6	Agus Prasetyo	2023005	e10adc3949ba59abbe56e057f20f883e	agus@mail.com	MAHASISWA
7	Dewi Permata	2023006	e10adc3949ba59abbe56e057f20f883e	dewi@mail.com	MAHASISWA
8	Eko Setiawan	2023007	e10adc3949ba59abbe56e057f20f883e	eko@mail.com	MAHASISWA
9	Fitri Handayani	2023008	e10adc3949ba59abbe56e057f20f883e	fitri@mail.com	MAHASISWA
10	Hendra Gunawan	2023009	e10adc3949ba59abbe56e057f20f883e	hendra@mail.com	MAHASISWA
11	Lina Marlina	2023010	e10adc3949ba59abbe56e057f20f883e	lina@mail.com	MAHASISWA
\.


--
-- TOC entry 5074 (class 0 OID 0)
-- Dependencies: 225
-- Name: absensi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.absensi_id_seq', 34, true);


--
-- TOC entry 5075 (class 0 OID 0)
-- Dependencies: 219
-- Name: jurusan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.jurusan_id_seq', 6, true);


--
-- TOC entry 5076 (class 0 OID 0)
-- Dependencies: 221
-- Name: mahasiswa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mahasiswa_id_seq', 10, true);


--
-- TOC entry 5077 (class 0 OID 0)
-- Dependencies: 223
-- Name: mata_kuliah_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mata_kuliah_id_seq', 13, true);


--
-- TOC entry 5078 (class 0 OID 0)
-- Dependencies: 227
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 11, true);


--
-- TOC entry 4897 (class 2606 OID 16477)
-- Name: absensi absensi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.absensi
    ADD CONSTRAINT absensi_pkey PRIMARY KEY (id);


--
-- TOC entry 4883 (class 2606 OID 16433)
-- Name: jurusan jurusan_nama_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jurusan
    ADD CONSTRAINT jurusan_nama_key UNIQUE (nama);


--
-- TOC entry 4885 (class 2606 OID 16431)
-- Name: jurusan jurusan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jurusan
    ADD CONSTRAINT jurusan_pkey PRIMARY KEY (id);


--
-- TOC entry 4887 (class 2606 OID 16447)
-- Name: mahasiswa mahasiswa_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mahasiswa
    ADD CONSTRAINT mahasiswa_email_key UNIQUE (email);


--
-- TOC entry 4889 (class 2606 OID 16445)
-- Name: mahasiswa mahasiswa_nim_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mahasiswa
    ADD CONSTRAINT mahasiswa_nim_key UNIQUE (nim);


--
-- TOC entry 4891 (class 2606 OID 16443)
-- Name: mahasiswa mahasiswa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mahasiswa
    ADD CONSTRAINT mahasiswa_pkey PRIMARY KEY (id);


--
-- TOC entry 4893 (class 2606 OID 16464)
-- Name: mata_kuliah mata_kuliah_kode_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mata_kuliah
    ADD CONSTRAINT mata_kuliah_kode_key UNIQUE (kode);


--
-- TOC entry 4895 (class 2606 OID 16462)
-- Name: mata_kuliah mata_kuliah_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mata_kuliah
    ADD CONSTRAINT mata_kuliah_pkey PRIMARY KEY (id);


--
-- TOC entry 4899 (class 2606 OID 16503)
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- TOC entry 4901 (class 2606 OID 16499)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 4903 (class 2606 OID 16501)
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- TOC entry 4905 (class 2606 OID 16478)
-- Name: absensi absensi_idmahasiswa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.absensi
    ADD CONSTRAINT absensi_idmahasiswa_fkey FOREIGN KEY (idmahasiswa) REFERENCES public.mahasiswa(id);


--
-- TOC entry 4906 (class 2606 OID 16483)
-- Name: absensi absensi_idmatakuliah_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.absensi
    ADD CONSTRAINT absensi_idmatakuliah_fkey FOREIGN KEY (idmatakuliah) REFERENCES public.mata_kuliah(id);


--
-- TOC entry 4904 (class 2606 OID 16448)
-- Name: mahasiswa mahasiswa_idjurusan_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mahasiswa
    ADD CONSTRAINT mahasiswa_idjurusan_fkey FOREIGN KEY (idjurusan) REFERENCES public.jurusan(id);


-- Completed on 2026-01-15 23:59:46

--
-- PostgreSQL database dump complete
--

\unrestrict fioHQruMrfeKn576pC6zdjW0H8vtbe7DXq5C93ggFwCucEGYFkVGnR7HXGI9bh1

