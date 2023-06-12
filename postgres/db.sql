--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

-- Started on 2023-06-11 22:54:18

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
-- TOC entry 216 (class 1259 OID 16422)
-- Name: Ad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Ad" (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    image_url character varying(200) NOT NULL
);


ALTER TABLE public."Ad" OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16421)
-- Name: Ad_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Ad_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Ad_id_seq" OWNER TO postgres;

--
-- TOC entry 3334 (class 0 OID 0)
-- Dependencies: 215
-- Name: Ad_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Ad_id_seq" OWNED BY public."Ad".id;


--
-- TOC entry 214 (class 1259 OID 16410)
-- Name: _prisma_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);


ALTER TABLE public._prisma_migrations OWNER TO postgres;

--
-- TOC entry 3179 (class 2604 OID 16425)
-- Name: Ad id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ad" ALTER COLUMN id SET DEFAULT nextval('public."Ad_id_seq"'::regclass);


--
-- TOC entry 3328 (class 0 OID 16422)
-- Dependencies: 216
-- Data for Name: Ad; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Ad" (id, title, image_url) FROM stdin;
2	For sale apartment 3+kt 114 m² (Mezonet)	https://d18-a.sdn.cz/d_18/c_img_QM_Kb/aFPBtZx.jpeg?fl=res,400,300,3|shr,,20|jpg,90
3	For sale apartment 1+kt 34 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jn/PhbjHT.jpeg?fl=res,400,300,3|shr,,20|jpg,90
4	For sale apartment unusual 132 m² (Mezonet)	https://d18-a.sdn.cz/d_18/c_img_QR_MC/A1GBthw.jpeg?fl=res,400,300,3|shr,,20|jpg,90
5	For sale apartment 2+1 55 m²	https://d18-a.sdn.cz/d_18/c_img_QO_K1/DtXPNp.jpeg?fl=res,400,300,3|shr,,20|jpg,90
6	For sale apartment 5+1 195 m²	https://d18-a.sdn.cz/d_18/c_img_QO_K1/aJ3PNq.jpeg?fl=res,400,300,3|shr,,20|jpg,90
7	For sale apartment 3+kt 79 m²	https://d18-a.sdn.cz/d_18/c_img_QO_K1/9zfPNr.jpeg?fl=res,400,300,3|shr,,20|jpg,90
8	For sale apartment 4+kt 137 m² (Attic)	https://d18-a.sdn.cz/d_18/c_img_QO_K0/5trwyA.jpeg?fl=res,400,300,3|shr,,20|jpg,90
9	For sale apartment 3+1 65 m²	https://d18-a.sdn.cz/d_18/c_img_QP_K3/AF1M7E.jpeg?fl=res,400,300,3|shr,,20|jpg,90
10	For sale apartment 3+1 124 m²	https://d18-a.sdn.cz/d_18/c_img_QP_K3/3hCM7F.jpeg?fl=res,400,300,3|shr,,20|jpg,90
11	For sale apartment 4+kt 127 m²	https://d18-a.sdn.cz/d_18/c_img_QM_Kb/Ac1LAn.jpeg?fl=res,400,300,3|shr,,20|jpg,90
12	For sale apartment 2+kt 42 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/ANHK6t.jpeg?fl=res,400,300,3|shr,,20|jpg,90
13	For sale apartment 4+1 99 m²	https://d18-a.sdn.cz/d_18/c_img_QL_J3/JmXKwJ.jpeg?fl=res,400,300,3|shr,,20|jpg,90
14	For sale apartment 3+1 95 m²	https://d18-a.sdn.cz/d_18/c_img_QR_MB/nWJBnDH.jpeg?fl=res,400,300,3|shr,,20|jpg,90
15	For sale apartment 2+kt 47 m²	https://d18-a.sdn.cz/d_18/c_img_QO_K0/QlLIri.jpeg?fl=res,400,300,3|shr,,20|jpg,90
16	For sale apartment 4+1 90 m²	https://d18-a.sdn.cz/d_18/c_img_QL_J2/IJvBm3h.jpeg?fl=res,400,300,3|shr,,20|jpg,90
17	For sale apartment 5+kt 116 m²	https://d18-a.sdn.cz/d_18/c_img_QL_J2/5UfBm3i.jpeg?fl=res,400,300,3|shr,,20|jpg,90
18	For sale apartment 1+kt 44 m²	https://d18-a.sdn.cz/d_18/c_img_QQ_Ld/9S3Bmxj.jpeg?fl=res,400,300,3|shr,,20|jpg,90
19	For sale apartment 4+1 83 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/PT8HrK.jpeg?fl=res,400,300,3|shr,,20|jpg,90
20	For sale apartment 4+kt 118 m²	https://d18-a.sdn.cz/d_18/c_img_QQ_Le/LTpHol.jpeg?fl=res,400,300,3|shr,,20|jpg,90
21	For sale apartment 3+1 64 m²	https://d18-a.sdn.cz/d_18/c_img_QQ_Le/TBKHom.jpeg?fl=res,400,300,3|shr,,20|jpg,90
22	For sale apartment 2+1 91 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/DpuHrL.jpeg?fl=res,400,300,3|shr,,20|jpg,90
23	For sale apartment 3+kt 78 m²	https://d18-a.sdn.cz/d_18/c_img_QP_K3/2btJyC.jpeg?fl=res,400,300,3|shr,,20|jpg,90
24	For sale apartment 3+1 65 m²	https://d18-a.sdn.cz/d_18/c_img_QO_K0/bMDtjs.jpeg?fl=res,400,300,3|shr,,20|jpg,90
25	For sale apartment 4+kt 115 m²	https://d18-a.sdn.cz/d_18/c_img_QR_L8/iO9FpB.jpeg?fl=res,400,300,3|shr,,20|jpg,90
26	For sale apartment 2+kt 42 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jh/LPWFha.jpeg?fl=res,400,300,3|shr,,20|jpg,90
27	For sale apartment 1+1 42 m²	https://d18-a.sdn.cz/d_18/c_img_QO_Kv/TR0Fkc.jpeg?fl=res,400,300,3|shr,,20|jpg,90
28	For sale apartment 4+kt 115 m²	https://d18-a.sdn.cz/d_18/c_img_QL_Jz/lREFgA.jpeg?fl=res,400,300,3|shr,,20|jpg,90
29	For sale apartment 4+kt 97 m²	https://d18-a.sdn.cz/d_18/c_img_QL_Jz/aAyFgB.jpeg?fl=res,400,300,3|shr,,20|jpg,90
30	For sale apartment 2+kt 68 m² (Mezonet)	https://d18-a.sdn.cz/d_18/c_img_QQ_La/MteFmb.jpeg?fl=res,400,300,3|shr,,20|jpg,90
31	For sale apartment 4+kt 125 m²	https://d18-a.sdn.cz/d_18/c_img_QI_Jg/0S5BOFn.jpeg?fl=res,400,300,3|shr,,20|jpg,90
32	For sale apartment 3+1 73 m²	https://d18-a.sdn.cz/d_18/c_img_QQ_Le/m0DBNmR.jpeg?fl=res,400,300,3|shr,,20|jpg,90
33	For sale apartment 3+1 102 m²	https://d18-a.sdn.cz/d_18/c_img_QO_K0/TDjBzk3.jpeg?fl=res,400,300,3|shr,,20|jpg,90
34	For sale apartment 2+1 64 m²	https://d18-a.sdn.cz/d_18/c_img_QO_K0/81RBzk4.jpeg?fl=res,400,300,3|shr,,20|jpg,90
35	For sale apartment 4+1 98 m²	https://d18-a.sdn.cz/d_18/c_img_QL_J4/drbn7b.jpeg?fl=res,400,300,3|shr,,20|jpg,90
36	For sale apartment 2+1 89 m²	https://d18-a.sdn.cz/d_18/c_img_QO_K0/vMiCDBa.jpeg?fl=res,400,300,3|shr,,20|jpg,90
37	For sale apartment 3+1 93 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jn/PrCQxz.jpeg?fl=res,400,300,3|shr,,20|jpg,90
38	For sale apartment 2+1 54 m²	https://d18-a.sdn.cz/d_18/c_img_QL_J4/lTk1Ym.jpeg?fl=res,400,300,3|shr,,20|jpg,90
39	For sale apartment 2+1 50 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jn/5DuQx0.jpeg?fl=res,400,300,3|shr,,20|jpg,90
40	For sale apartment 3+kt 67 m²	https://d18-a.sdn.cz/d_18/c_img_QO_K0/jh8CDBb.jpeg?fl=res,400,300,3|shr,,20|jpg,90
41	For sale apartment 2+kt 47 m²	https://d18-a.sdn.cz/d_18/c_img_QQ_Le/58rBbAz.jpeg?fl=res,400,300,3|shr,,20|jpg,90
42	For sale apartment 2+1 64 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jn/2EDb62.jpeg?fl=res,400,300,3|shr,,20|jpg,90
43	For sale apartment 2+kt 47 m²	https://d18-a.sdn.cz/d_18/c_img_QN_J5/oS7r7f.jpeg?fl=res,400,300,3|shr,,20|jpg,90
44	For sale apartment 2+kt 60 m² (Mezonet)	https://d18-a.sdn.cz/d_18/c_img_QL_J4/C75BCip.jpeg?fl=res,400,300,3|shr,,20|jpg,90
45	For sale apartment 2+kt 63 m² (Mezonet)	https://d18-a.sdn.cz/d_18/c_img_QR_MC/ND8BmRc.jpeg?fl=res,400,300,3|shr,,20|jpg,90
46	For sale apartment 3+1 123 m² (Mezonet)	https://d18-a.sdn.cz/d_18/c_img_QN_J5/DNUr7g.jpeg?fl=res,400,300,3|shr,,20|jpg,90
47	For sale apartment 5+kt 155 m² (Mezonet)	https://d18-a.sdn.cz/d_18/c_img_QO_K1/YtqIFm.jpeg?fl=res,400,300,3|shr,,20|jpg,90
48	For sale apartment 2+kt 36 m²	https://d18-a.sdn.cz/d_18/c_img_QP_K5/NrFpNi.jpeg?fl=res,400,300,3|shr,,20|jpg,90
49	For sale apartment 3+kt 85 m²	https://d18-a.sdn.cz/d_18/c_img_QI_Jg/9YNBhjO.jpeg?fl=res,400,300,3|shr,,20|jpg,90
50	For sale apartment 2+kt 60 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jn/96HW6X.jpeg?fl=res,400,300,3|shr,,20|jpg,90
51	For sale apartment 2+1 56 m²	https://d18-a.sdn.cz/d_18/c_img_QP_K5/rcYpNj.jpeg?fl=res,400,300,3|shr,,20|jpg,90
52	For sale apartment 3+1 80 m²	https://d18-a.sdn.cz/d_18/c_img_QI_Jg/m0dBhjP.jpeg?fl=res,400,300,3|shr,,20|jpg,90
53	For sale apartment 1+kt 42 m²	https://d18-a.sdn.cz/d_18/c_img_QQ_Lf/bUBFRz.jpeg?fl=res,400,300,3|shr,,20|jpg,90
54	For sale apartment 1+kt 28 m²	https://d18-a.sdn.cz/d_18/c_img_QP_K5/vJo1Fx.jpeg?fl=res,400,300,3|shr,,20|jpg,90
55	For sale apartment 3+1 80 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/QFkBtOO.jpeg?fl=res,400,300,3|shr,,20|jpg,90
56	For sale apartment 1+kt 47 m²	https://d18-a.sdn.cz/d_18/c_img_QQ_Lf/sKmFR0.jpeg?fl=res,400,300,3|shr,,20|jpg,90
57	For sale apartment 2+1 57 m²	https://d18-a.sdn.cz/d_18/c_img_QM_Kb/f9ABtD4.jpeg?fl=res,400,300,3|shr,,20|jpg,90
58	For sale apartment 4+kt 115 m²	https://d18-a.sdn.cz/d_18/c_img_QL_J4/bDHBJWD.jpeg?fl=res,400,300,3|shr,,20|jpg,90
59	For sale apartment 4+kt 130 m²	https://d18-a.sdn.cz/d_18/c_img_QN_J5/Pgnyut.jpeg?fl=res,400,300,3|shr,,20|jpg,90
60	For sale apartment 3+1 70 m²	https://d18-a.sdn.cz/d_18/c_img_QQ_Lf/BTXFRn.jpeg?fl=res,400,300,3|shr,,20|jpg,90
61	For sale apartment 2+kt 51 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/Wi9BtOC.jpeg?fl=res,400,300,3|shr,,20|jpg,90
62	For sale apartment 2+kt 47 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jn/vm6iuy.jpeg?fl=res,400,300,3|shr,,20|jpg,90
63	For sale apartment 2+kt 52 m²	https://d18-a.sdn.cz/d_18/c_img_QR_MC/NESBtLo.jpeg?fl=res,400,300,3|shr,,20|jpg,90
64	For sale apartment 5+kt 265 m²	https://d18-a.sdn.cz/d_18/c_img_QO_K1/fFdO0v.jpeg?fl=res,400,300,3|shr,,20|jpg,90
65	For sale apartment 2+kt 49 m²	https://d18-a.sdn.cz/d_18/c_img_QO_K0/LJeBI2J.jpeg?fl=res,400,300,3|shr,,20|jpg,90
66	For sale apartment 3+kt 107 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/LyWhCh.jpeg?fl=res,400,300,3|shr,,20|jpg,90
67	For sale apartment 4+kt 196 m²	https://d18-a.sdn.cz/d_18/c_img_QR_MC/wTwhKT.jpeg?fl=res,400,300,3|shr,,20|jpg,90
68	For sale apartment 1+kt 31 m²	https://d18-a.sdn.cz/d_18/c_img_QP_K4/wLsOfZ.jpeg?fl=res,400,300,3|shr,,20|jpg,90
69	For sale apartment 2+kt 41 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/AVfhCi.jpeg?fl=res,400,300,3|shr,,20|jpg,90
70	For sale apartment 1+kt 43 m²	https://d18-a.sdn.cz/d_18/c_img_QN_J4/ra7y6o.jpeg?fl=res,400,300,3|shr,,20|jpg,90
71	For sale apartment 6 rooms plus 320 m²	https://d18-a.sdn.cz/d_18/c_img_QN_J4/BgZy6p.jpeg?fl=res,400,300,3|shr,,20|jpg,90
72	For sale apartment 2+1 49 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jl/U9ZBvgW.jpeg?fl=res,400,300,3|shr,,20|jpg,90
73	For sale apartment 2+1 52 m²	https://d18-a.sdn.cz/d_18/c_img_QP_K4/yupga7.jpeg?fl=res,400,300,3|shr,,20|jpg,90
74	For sale apartment 1+1 54 m²	https://d18-a.sdn.cz/d_18/c_img_QM_Kb/hFUzC5.jpeg?fl=res,400,300,3|shr,,20|jpg,90
75	For sale apartment 3+kt 47 m²	https://d18-a.sdn.cz/d_18/c_img_QM_Kb/DK9zC6.jpeg?fl=res,400,300,3|shr,,20|jpg,90
76	For sale apartment 5+1 206 m²	https://d18-a.sdn.cz/d_18/c_img_QM_Kb/uYIzDB.jpeg?fl=res,400,300,3|shr,,20|jpg,90
77	For sale apartment 2+kt 61 m²	https://d18-a.sdn.cz/d_18/c_img_QN_J4/j44y6u.jpeg?fl=res,400,300,3|shr,,20|jpg,90
78	For sale apartment 3+1 70 m²	https://d18-a.sdn.cz/d_18/c_img_QN_J4/ZJmy6v.jpeg?fl=res,400,300,3|shr,,20|jpg,90
79	For sale apartment 1+kt 38 m²	https://d18-a.sdn.cz/d_18/c_img_QO_K0/5AABaoc.jpeg?fl=res,400,300,3|shr,,20|jpg,90
80	For sale apartment 2+1 58 m²	https://d18-a.sdn.cz/d_18/c_img_QP_K4/D35gbD.jpeg?fl=res,400,300,3|shr,,20|jpg,90
81	For sale apartment 3+1 85 m²	https://d18-a.sdn.cz/d_18/c_img_QP_K4/DqAgbE.jpeg?fl=res,400,300,3|shr,,20|jpg,90
82	For sale apartment 2+kt 56 m²	https://d18-a.sdn.cz/d_18/c_img_QL_J4/4ZLBJS2.png?fl=res,400,300,3|shr,,20|jpg,90
83	For sale apartment 1+kt 28 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/iAfBtKl.jpeg?fl=res,400,300,3|shr,,20|jpg,90
84	For sale apartment 1+kt 32 m²	https://d18-a.sdn.cz/d_18/c_img_QO_K1/do7Oxd.jpeg?fl=res,400,300,3|shr,,20|jpg,90
85	For sale apartment 2+kt 57 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jl/LvLxCG.jpeg?fl=res,400,300,3|shr,,20|jpg,90
86	For sale apartment 3+kt 70 m²	https://d18-a.sdn.cz/d_18/c_img_QQ_Ld/6SDB6fh.jpeg?fl=res,400,300,3|shr,,20|jpg,90
87	For sale apartment 3+kt 80 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jl/42yBAGB.jpeg?fl=res,400,300,3|shr,,20|jpg,90
88	For sale apartment 2+1 51 m²	https://d18-a.sdn.cz/d_18/c_img_QI_Jg/zh3Dyc.jpeg?fl=res,400,300,3|shr,,20|jpg,90
89	For sale apartment 4+kt 113 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/rxGDgP.jpeg?fl=res,400,300,3|shr,,20|jpg,90
90	For sale apartment 3+kt 75 m²	https://d18-a.sdn.cz/d_18/c_img_QQ_Le/JJ6DeV.jpeg?fl=res,400,300,3|shr,,20|jpg,90
91	For sale apartment 4+kt 89 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/f7uDgR.jpeg?fl=res,400,300,3|shr,,20|jpg,90
92	For sale apartment 2+kt 62 m²	https://d18-a.sdn.cz/d_18/c_img_QO_K0/btwpaM.jpeg?fl=res,400,300,3|shr,,20|jpg,90
93	For sale apartment 3+kt 101 m² (Mezonet)	https://d18-a.sdn.cz/d_18/c_img_QK_Jl/IolBKTB.jpeg?fl=res,400,300,3|shr,,20|jpg,90
94	For sale apartment 4+kt 117 m²	https://d18-a.sdn.cz/d_18/c_img_QM_Kb/KXQNyL.jpeg?fl=res,400,300,3|shr,,20|jpg,90
95	For sale apartment 3+kt 68 m²	https://d18-a.sdn.cz/d_18/c_img_QQ_Le/E2CNot.jpeg?fl=res,400,300,3|shr,,20|jpg,90
96	For sale apartment 1+kt 35 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/WLbNtP.jpeg?fl=res,400,300,3|shr,,20|jpg,90
97	For sale apartment 2+kt 49 m²	https://d18-a.sdn.cz/d_18/c_img_QR_MC/7FeN0n.jpeg?fl=res,400,300,3|shr,,20|jpg,90
98	For sale apartment 3+kt 71 m²	https://d18-a.sdn.cz/d_18/c_img_QI_Jg/HBrOBV.jpeg?fl=res,400,300,3|shr,,20|jpg,90
99	For sale apartment 4+kt 97 m²	https://d18-a.sdn.cz/d_18/c_img_QP_K5/M25qmX.jpeg?fl=res,400,300,3|shr,,20|jpg,90
100	For sale apartment 2+kt 58 m²	https://d18-a.sdn.cz/d_18/c_img_QL_J4/PgY82l.png?fl=res,400,300,3|shr,,20|jpg,90
101	For sale apartment 2+kt 61 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jl/ym5BF9U.png?fl=res,400,300,3|shr,,20|jpg,90
102	For sale apartment 4+kt 117 m²	https://d18-a.sdn.cz/d_18/c_img_QO_K1/Ed2EZs.jpeg?fl=res,400,300,3|shr,,20|jpg,90
103	For sale apartment 4+kt 97 m²	https://d18-a.sdn.cz/d_18/c_img_QO_K1/8APEZv.png?fl=res,400,300,3|shr,,20|jpg,90
104	For sale apartment 1+kt 34 m²	https://d18-a.sdn.cz/d_18/c_img_gT_r/vC3yOz.jpeg?fl=res,400,300,3|shr,,20|jpg,90
105	For sale apartment 3+kt 70 m²	https://d18-a.sdn.cz/d_18/c_img_QP_Kq/l16f4S.jpeg?fl=res,400,300,3|shr,,20|jpg,90
106	For sale apartment 3+kt 76 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jf/s3If42.jpeg?fl=res,400,300,3|shr,,20|jpg,90
107	For sale apartment 3+kt 71 m²	https://d18-a.sdn.cz/d_18/c_img_gQ_p/9zPySn.jpeg?fl=res,400,300,3|shr,,20|jpg,90
108	For sale apartment 1+kt 38 m²	https://d18-a.sdn.cz/d_18/c_img_gZ_q/cBEyJE.jpeg?fl=res,400,300,3|shr,,20|jpg,90
109	For sale apartment 2+kt 57 m²	https://d18-a.sdn.cz/d_18/c_img_QM_KR/JCof2V.jpeg?fl=res,400,300,3|shr,,20|jpg,90
110	For sale apartment unusual 27 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Ji/L6KJie.jpeg?fl=res,400,300,3|shr,,20|jpg,90
111	For sale apartment unusual 66 m²	https://d18-a.sdn.cz/d_18/c_img_QR_L8/SDqJrb.jpeg?fl=res,400,300,3|shr,,20|jpg,90
112	For sale apartment 3+kt 97 m²	https://d18-a.sdn.cz/d_18/c_img_QI_Jc/zcMJjw.jpeg?fl=res,400,300,3|shr,,20|jpg,90
113	For sale apartment 4+kt 108 m²	https://d18-a.sdn.cz/d_18/c_img_QO_Kv/SwXJpz.jpeg?fl=res,400,300,3|shr,,20|jpg,90
114	For sale apartment 2+1 68 m²	https://d18-a.sdn.cz/d_18/c_img_QI_Jc/TLAJjx.jpeg?fl=res,400,300,3|shr,,20|jpg,90
115	For sale apartment 2+kt 75 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jh/LekJka.jpeg?fl=res,400,300,3|shr,,20|jpg,90
116	For sale apartment 1+kt 36 m²	https://d18-a.sdn.cz/d_18/c_img_QP_Kz/vbbJwg.jpeg?fl=res,400,300,3|shr,,20|jpg,90
117	For sale apartment 1+kt 32 m²	https://d18-a.sdn.cz/d_18/c_img_QR_L8/9n1Jse.jpeg?fl=res,400,300,3|shr,,20|jpg,90
118	For sale apartment 2+kt 56 m²	https://d18-a.sdn.cz/d_18/c_img_QQ_La/AhfJsE.jpeg?fl=res,400,300,3|shr,,20|jpg,90
119	For sale apartment 3+1 59 m²	https://d18-a.sdn.cz/d_18/c_img_QO_Kv/HTdJqw.jpeg?fl=res,400,300,3|shr,,20|jpg,90
120	For sale apartment 3+kt 106 m²	https://d18-a.sdn.cz/d_18/c_img_QI_Jc/YpQJk0.jpeg?fl=res,400,300,3|shr,,20|jpg,90
121	For sale apartment 3+1 86 m²	https://d18-a.sdn.cz/d_18/c_img_QI_Jg/IKVBm9r.jpeg?fl=res,400,300,3|shr,,20|jpg,90
122	For sale apartment 3+1 73 m²	https://d18-a.sdn.cz/d_18/c_img_QI_Jg/3kyBm9s.jpeg?fl=res,400,300,3|shr,,20|jpg,90
123	For sale apartment 2+1 53 m²	https://d18-a.sdn.cz/d_18/c_img_QM_Kb/NVsBmpU.jpeg?fl=res,400,300,3|shr,,20|jpg,90
124	For sale apartment 3+1 77 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/Q4BBmvr.jpeg?fl=res,400,300,3|shr,,20|jpg,90
125	For sale apartment 3+kt 73 m²	https://d18-a.sdn.cz/d_18/c_img_QI_Jg/87ZBm9w.jpeg?fl=res,400,300,3|shr,,20|jpg,90
126	For sale apartment 3+1 115 m²	https://d18-a.sdn.cz/d_18/c_img_QN_J5/UQ8sWk.jpeg?fl=res,400,300,3|shr,,20|jpg,90
127	For sale apartment 2+kt 62 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/0t3Bh0n.jpeg?fl=res,400,300,3|shr,,20|jpg,90
128	For sale apartment 1+kt 36 m²	https://d18-a.sdn.cz/d_18/c_img_QN_J5/aOkndz.jpeg?fl=res,400,300,3|shr,,20|jpg,90
129	For sale apartment 6 rooms plus 200 m²	https://d18-a.sdn.cz/d_18/c_img_QO_K1/k0jDhw.jpeg?fl=res,400,300,3|shr,,20|jpg,90
130	For sale apartment 2+1 67 m²	https://d18-a.sdn.cz/d_18/c_img_QL_J4/RX379a.jpeg?fl=res,400,300,3|shr,,20|jpg,90
131	For sale apartment 3+1 70 m²	https://d18-a.sdn.cz/d_18/c_img_QQ_Le/E0KBhou.jpeg?fl=res,400,300,3|shr,,20|jpg,90
132	For sale apartment 2+kt 45 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/y0MBh0o.jpeg?fl=res,400,300,3|shr,,20|jpg,90
133	For sale apartment 4+1 93 m²	https://d18-a.sdn.cz/d_18/c_img_QN_J2/ElOGyA.jpeg?fl=res,400,300,3|shr,,20|jpg,90
134	For sale apartment 2+kt 75 m²	https://d18-a.sdn.cz/d_18/c_img_QI_Je/fqBGqr.jpeg?fl=res,400,300,3|shr,,20|jpg,90
135	For sale apartment 3+1 80 m²	https://d18-a.sdn.cz/d_18/c_img_QR_MA/7iHG1L.jpeg?fl=res,400,300,3|shr,,20|jpg,90
136	For sale apartment 1+kt 40 m²	https://d18-a.sdn.cz/d_18/c_img_QN_J2/24IGyB.jpeg?fl=res,400,300,3|shr,,20|jpg,90
137	For sale apartment 3+kt 99 m²	https://d18-a.sdn.cz/d_18/c_img_QR_MA/HoOG1M.jpeg?fl=res,400,300,3|shr,,20|jpg,90
138	For sale apartment 2+1 49 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jk/fHJzhd.jpeg?fl=res,400,300,3|shr,,20|jpg,90
139	For sale apartment 3+1 73 m²	https://d18-a.sdn.cz/d_18/c_img_QL_J2/DfAzbe.jpeg?fl=res,400,300,3|shr,,20|jpg,90
140	For sale apartment 2+1 61 m²	https://d18-a.sdn.cz/d_18/c_img_QN_J3/CNyzjt.jpeg?fl=res,400,300,3|shr,,20|jpg,90
141	For sale apartment 2+1 56 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jk/Yi1zhe.jpeg?fl=res,400,300,3|shr,,20|jpg,90
142	For sale apartment 1+kt 16 m²	https://d18-a.sdn.cz/d_18/c_img_QN_J3/uX5zju.jpeg?fl=res,400,300,3|shr,,20|jpg,90
143	For sale apartment 2+kt 46 m²	https://d18-a.sdn.cz/d_18/c_img_QI_Jf/HTozk6.jpeg?fl=res,400,300,3|shr,,20|jpg,90
144	For sale apartment 3+1 69 m²	https://d18-a.sdn.cz/d_18/c_img_QR_MB/gUZzhy.jpeg?fl=res,400,300,3|shr,,20|jpg,90
145	For sale apartment 1+kt 33 m²	https://d18-a.sdn.cz/d_18/c_img_QP_K2/u21zrs.jpeg?fl=res,400,300,3|shr,,20|jpg,90
146	For sale apartment 3+kt 63 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jk/Hxkzof.jpeg?fl=res,400,300,3|shr,,20|jpg,90
147	For sale apartment 2+kt 36 m²	https://d18-a.sdn.cz/d_18/c_img_QL_J2/uiiziY.jpeg?fl=res,400,300,3|shr,,20|jpg,90
148	For sale apartment 3+kt 220 m²	https://d18-a.sdn.cz/d_18/c_img_QL_J2/SCzziZ.jpeg?fl=res,400,300,3|shr,,20|jpg,90
149	For sale apartment 2+1 98 m²	https://d18-a.sdn.cz/d_18/c_img_QO_Kz/e0lajT.jpeg?fl=res,400,300,3|shr,,20|jpg,90
150	For sale apartment 3+1 95 m²	https://d18-a.sdn.cz/d_18/c_img_QR_MC/jV3BUg5.jpeg?fl=res,400,300,3|shr,,20|jpg,90
151	For sale apartment 3+kt 72 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/jNIBUiw.jpeg?fl=res,400,300,3|shr,,20|jpg,90
152	For sale apartment 1+kt 37 m²	https://d18-a.sdn.cz/d_18/c_img_QO_K0/1JbB6Vb.jpeg?fl=res,400,300,3|shr,,20|jpg,90
153	For sale apartment 3+kt 85 m²	https://d18-a.sdn.cz/d_18/c_img_QR_MC/JvnBUg6.jpeg?fl=res,400,300,3|shr,,20|jpg,90
154	For sale apartment 2+kt 65 m²	https://d18-a.sdn.cz/d_18/c_img_QM_Kb/qO3BUkM.jpeg?fl=res,400,300,3|shr,,20|jpg,90
155	For sale apartment 4+kt 99 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jl/HryBbUQ.jpeg?fl=res,400,300,3|shr,,20|jpg,90
156	For sale apartment 2+1 50 m²	https://d18-a.sdn.cz/d_18/c_img_QI_Jf/OcbBblS.jpeg?fl=res,400,300,3|shr,,20|jpg,90
157	For sale apartment 2+kt 69 m²	https://d18-a.sdn.cz/d_18/c_img_QM_Ka/LDcBbcz.jpeg?fl=res,400,300,3|shr,,20|jpg,90
158	For sale apartment 3+1 94 m²	https://d18-a.sdn.cz/d_18/c_img_QQ_Ld/lYbBbYR.jpeg?fl=res,400,300,3|shr,,20|jpg,90
159	For sale apartment 2+1 66 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jl/gm3BbUR.jpeg?fl=res,400,300,3|shr,,20|jpg,90
160	For sale apartment 2+1 71 m²	https://d18-a.sdn.cz/d_18/c_img_QN_J3/OywBbla.jpeg?fl=res,400,300,3|shr,,20|jpg,90
161	For sale apartment 3+kt 63 m²	https://d18-a.sdn.cz/d_18/c_img_QQ_Le/bzTo8g.jpeg?fl=res,400,300,3|shr,,20|jpg,90
162	For sale apartment 3+kt 70 m²	https://d18-a.sdn.cz/d_18/c_img_QR_MC/YbYpMX.jpeg?fl=res,400,300,3|shr,,20|jpg,90
163	For sale apartment 3+kt 72 m²	https://d18-a.sdn.cz/d_18/c_img_QI_Jg/zDspTi.jpeg?fl=res,400,300,3|shr,,20|jpg,90
164	For sale apartment 2+1 52 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/w00pEw.jpeg?fl=res,400,300,3|shr,,20|jpg,90
165	For sale apartment 5+1 205 m²	https://d18-a.sdn.cz/d_18/c_img_QP_K4/SVdWhx.jpeg?fl=res,400,300,3|shr,,20|jpg,90
166	For sale apartment 2+kt 46 m²	https://d18-a.sdn.cz/d_18/c_img_QI_Jg/bm2pTj.jpeg?fl=res,400,300,3|shr,,20|jpg,90
167	For sale apartment 2+kt 39 m²	https://d18-a.sdn.cz/d_18/c_img_QN_J5/lK0QT.jpeg?fl=res,400,300,3|shr,,20|jpg,90
168	For sale apartment 3+kt 76 m²	https://d18-a.sdn.cz/d_18/c_img_QR_MC/cZ8l6q.jpeg?fl=res,400,300,3|shr,,20|jpg,90
169	For sale apartment 3+1 68 m²	https://d18-a.sdn.cz/d_18/c_img_QL_J4/Kr3Bz1.jpeg?fl=res,400,300,3|shr,,20|jpg,90
170	For sale apartment 2+kt 41 m²	https://d18-a.sdn.cz/d_18/c_img_QO_K0/NRoBNkI.jpeg?fl=res,400,300,3|shr,,20|jpg,90
171	For sale apartment 2+kt 114 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/CuJlzJ.jpeg?fl=res,400,300,3|shr,,20|jpg,90
172	For sale apartment 2+kt 50 m²	https://d18-a.sdn.cz/d_18/c_img_QO_K0/JuAB8Hh.jpeg?fl=res,400,300,3|shr,,20|jpg,90
173	For sale apartment 1+kt 32 m²	https://d18-a.sdn.cz/d_18/c_img_QL_J4/8tpwfo.jpeg?fl=res,400,300,3|shr,,20|jpg,90
174	For sale apartment 2+kt 52 m²	https://d18-a.sdn.cz/d_18/c_img_QL_J4/3jswfp.jpeg?fl=res,400,300,3|shr,,20|jpg,90
175	For sale apartment 2+kt 80 m²	https://d18-a.sdn.cz/d_18/c_img_QN_J5/7TAb47.jpeg?fl=res,400,300,3|shr,,20|jpg,90
176	For sale apartment 2+kt 73 m²	https://d18-a.sdn.cz/d_18/c_img_QR_MC/gcjBWRK.jpeg?fl=res,400,300,3|shr,,20|jpg,90
177	For sale apartment 2+kt 75 m²	https://d18-a.sdn.cz/d_18/c_img_QN_J5/Dcjb48.jpeg?fl=res,400,300,3|shr,,20|jpg,90
178	For sale apartment 3+kt 93 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/30dBMOL.jpeg?fl=res,400,300,3|shr,,20|jpg,90
179	For sale apartment 2+kt 80 m²	https://d18-a.sdn.cz/d_18/c_img_QL_J4/xr5maC.jpeg?fl=res,400,300,3|shr,,20|jpg,90
180	For sale apartment 3+kt 91 m²	https://d18-a.sdn.cz/d_18/c_img_QQ_Le/01zBMEJ.jpeg?fl=res,400,300,3|shr,,20|jpg,90
181	For sale apartment 3+kt 105 m²	https://d18-a.sdn.cz/d_18/c_img_QO_K0/9LlByCj.jpeg?fl=res,400,300,3|shr,,20|jpg,90
182	For sale apartment 3+kt 105 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/5q7BMOM.jpeg?fl=res,400,300,3|shr,,20|jpg,90
183	For sale apartment 3+1 69 m²	https://d18-a.sdn.cz/d_18/c_img_QO_K0/5rmByCk.jpeg?fl=res,400,300,3|shr,,20|jpg,90
184	For sale apartment 2+kt 79 m²	https://d18-a.sdn.cz/d_18/c_img_QR_MC/1Cb3Z6.jpeg?fl=res,400,300,3|shr,,20|jpg,90
185	For sale apartment 2+1 46 m²	https://d18-a.sdn.cz/d_18/c_img_QP_K5/ILhBOa.jpeg?fl=res,400,300,3|shr,,20|jpg,90
186	For sale apartment 2+1 71 m²	https://d18-a.sdn.cz/d_18/c_img_QL_J4/hriTdi.jpeg?fl=res,400,300,3|shr,,20|jpg,90
187	For sale apartment 3+kt 60 m²	https://d18-a.sdn.cz/d_18/c_img_QN_J4/Vxx3Ym.jpeg?fl=res,400,300,3|shr,,20|jpg,90
188	For sale apartment 1+kt 58 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jl/XRaBz9G.jpeg?fl=res,400,300,3|shr,,20|jpg,90
189	For sale apartment 3+kt 49 m²	https://d18-a.sdn.cz/d_18/c_img_QM_Kb/Vy7BC4v.jpeg?fl=res,400,300,3|shr,,20|jpg,90
190	For sale apartment 1+kt 34 m²	https://d18-a.sdn.cz/d_18/c_img_QR_MC/Wg9BC0d.jpeg?fl=res,400,300,3|shr,,20|jpg,90
191	For sale apartment 3+kt 79 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/QxJBFES.jpeg?fl=res,400,300,3|shr,,20|jpg,90
192	For sale apartment 2+kt 91 m² (Attic)	https://d18-a.sdn.cz/d_18/c_img_QL_J4/M7GdAv.jpeg?fl=res,400,300,3|shr,,20|jpg,90
193	For sale apartment 3+kt 114 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/AWyBC0W.jpeg?fl=res,400,300,3|shr,,20|jpg,90
194	For sale apartment 3+kt 98 m² (Attic)	https://d18-a.sdn.cz/d_18/c_img_QM_Kb/F4IBC4y.jpeg?fl=res,400,300,3|shr,,20|jpg,90
195	For sale apartment 4+kt 161 m² (Attic)	https://d18-a.sdn.cz/d_18/c_img_QP_K5/gtqKvC.jpeg?fl=res,400,300,3|shr,,20|jpg,90
196	For sale apartment 3+kt 82 m²	https://d18-a.sdn.cz/d_18/c_img_QP_K5/lGMKs9.jpeg?fl=res,400,300,3|shr,,20|jpg,90
197	For sale apartment 3+kt 73 m²	https://d18-a.sdn.cz/d_18/c_img_QI_Jg/wt1BDMH.jpeg?fl=res,400,300,3|shr,,20|jpg,90
198	For sale apartment 4+kt 115 m² (Attic)	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/WKBBFGs.jpeg?fl=res,400,300,3|shr,,20|jpg,90
199	For sale apartment 3+kt 67 m²	https://d18-a.sdn.cz/d_18/c_img_QR_MC/Rs4BC2f.jpeg?fl=res,400,300,3|shr,,20|jpg,90
200	For sale apartment 3+1 82 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jm/MeZc5.jpeg?fl=res,400,300,3|shr,,20|jpg,90
201	For sale apartment 4+kt 128 m²	https://d18-a.sdn.cz/d_18/c_img_QN_J5/YrxInz.jpeg?fl=res,400,300,3|shr,,20|jpg,90
202	For sale apartment 3+1 84 m²	https://d18-a.sdn.cz/d_18/c_img_QL_J4/4BwdCm.jpeg?fl=res,400,300,3|shr,,20|jpg,90
203	For sale apartment 3+kt 93 m²	https://d18-a.sdn.cz/d_18/c_img_QN_J5/0OjKwj.jpeg?fl=res,400,300,3|shr,,20|jpg,90
204	For sale apartment 2+1 48 m²	https://d18-a.sdn.cz/d_18/c_img_QR_MC/ePgBFAk.jpeg?fl=res,400,300,3|shr,,20|jpg,90
205	For sale apartment 2+kt 63 m²	https://d18-a.sdn.cz/d_18/c_img_QO_K0/ZaCBqv1.jpeg?fl=res,400,300,3|shr,,20|jpg,90
206	For sale apartment 4+kt 85 m²	https://d18-a.sdn.cz/d_18/c_img_QP_K2/q0rBXtz.jpeg?fl=res,400,300,3|shr,,20|jpg,90
207	For sale apartment 2+kt 63 m²	https://d18-a.sdn.cz/d_18/c_img_QL_J2/uv5BXo4.jpeg?fl=res,400,300,3|shr,,20|jpg,90
208	For sale apartment 2+1 44 m²	https://d18-a.sdn.cz/d_18/c_img_QR_MB/4qmBb2p.jpeg?fl=res,400,300,3|shr,,20|jpg,90
209	For sale apartment 3+1 80 m²	https://d18-a.sdn.cz/d_18/c_img_QR_MB/KpyBXsK.jpeg?fl=res,400,300,3|shr,,20|jpg,90
210	For sale apartment 2+1 69 m²	https://d18-a.sdn.cz/d_18/c_img_QO_Kz/FCE8sM.jpeg?fl=res,400,300,3|shr,,20|jpg,90
211	For sale apartment 1+kt 30 m²	https://d18-a.sdn.cz/d_18/c_img_QP_K2/LoOBXuE.jpeg?fl=res,400,300,3|shr,,20|jpg,90
212	For sale apartment 3+kt 67 m²	https://d18-a.sdn.cz/d_18/c_img_QR_L5/46lBFH1.jpeg?fl=res,400,300,3|shr,,20|jpg,90
213	For sale apartment 2+kt 45 m²	https://d18-a.sdn.cz/d_18/c_img_gZ_r/wZT9jj.jpeg?fl=res,400,300,3|shr,,20|jpg,90
214	For sale apartment 4+kt 82 m²	https://d18-a.sdn.cz/d_18/c_img_gV_s/2qW9Vx.jpeg?fl=res,400,300,3|shr,,20|jpg,90
215	For sale apartment 2+kt 54 m² (Loft)	https://d18-a.sdn.cz/d_18/c_img_gR_r/CqJc8.jpeg?fl=res,400,300,3|shr,,20|jpg,90
216	For sale apartment 3+kt 82 m² (Attic)	https://d18-a.sdn.cz/d_18/c_img_gZ_r/74g9jp.jpeg?fl=res,400,300,3|shr,,20|jpg,90
217	For sale apartment 3+kt 66 m² (Loft)	https://d18-a.sdn.cz/d_18/c_img_QK_Jb/xgDBFZY.jpeg?fl=res,400,300,3|shr,,20|jpg,90
218	For sale apartment 2+1 68 m²	https://d18-a.sdn.cz/d_18/c_img_QP_K5/lsxbfA.jpeg?fl=res,400,300,3|shr,,20|jpg,90
219	For sale apartment 2+kt 49 m²	https://d18-a.sdn.cz/d_18/c_img_QQ_Le/Pj0BTY4.jpeg?fl=res,400,300,3|shr,,20|jpg,90
220	For sale apartment 1+1 35 m²	https://d18-a.sdn.cz/d_18/c_img_QR_MC/oYUBTjP.jpeg?fl=res,400,300,3|shr,,20|jpg,90
221	For sale apartment 2+kt 50 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jn/dDpJPG.jpeg?fl=res,400,300,3|shr,,20|jpg,90
222	For sale apartment 3+1 65 m²	https://d18-a.sdn.cz/d_18/c_img_QM_Kb/wTkBTm3.jpeg?fl=res,400,300,3|shr,,20|jpg,90
223	For sale apartment 2+kt 80 m²	https://d18-a.sdn.cz/d_18/c_img_QP_K5/q4rXGH.jpeg?fl=res,400,300,3|shr,,20|jpg,90
224	For sale apartment 2+kt 55 m²	https://d18-a.sdn.cz/d_18/c_img_QM_Kb/dYRBPKv.jpeg?fl=res,400,300,3|shr,,20|jpg,90
225	For sale apartment 3+1 75 m²	https://d18-a.sdn.cz/d_18/c_img_QM_Kb/jkfBPKx.jpeg?fl=res,400,300,3|shr,,20|jpg,90
226	For sale apartment 3+kt 82 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/1urBPLD.jpeg?fl=res,400,300,3|shr,,20|jpg,90
227	For sale apartment 3+1 74 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jn/P7sE0Q.jpeg?fl=res,400,300,3|shr,,20|jpg,90
228	For sale apartment 3+kt 65 m²	https://d18-a.sdn.cz/d_18/c_img_QL_J4/ciupU8.jpeg?fl=res,400,300,3|shr,,20|jpg,90
229	For sale apartment 3+kt 67 m²	https://d18-a.sdn.cz/d_18/c_img_gW_q/Yac9Hh.jpeg?fl=res,400,300,3|shr,,20|jpg,90
230	For sale apartment 3+kt 77 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jb/XuRBEl7.jpeg?fl=res,400,300,3|shr,,20|jpg,90
231	For sale apartment 3+1 73 m²	https://d18-a.sdn.cz/d_18/c_img_QN_Jx/9TNEWX.jpeg?fl=res,400,300,3|shr,,20|jpg,90
232	For sale apartment 2+kt 52 m²	https://d18-a.sdn.cz/d_18/c_img_QM_KT/ntYVnq.jpeg?fl=res,400,300,3|shr,,20|jpg,90
233	For sale apartment 3+1 95 m²	https://d18-a.sdn.cz/d_18/c_img_gQ_q/blu88n.jpeg?fl=res,400,300,3|shr,,20|jpg,90
234	For sale apartment 3+1 73 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jg/uJaBEq5.jpeg?fl=res,400,300,3|shr,,20|jpg,90
235	For sale apartment 3+kt 88 m²	https://d18-a.sdn.cz/d_18/c_img_QP_K5/Au80ke.jpeg?fl=res,400,300,3|shr,,20|jpg,90
236	For sale apartment 1+kt 40 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/VTrBstM.jpeg?fl=res,400,300,3|shr,,20|jpg,90
237	For sale apartment 2+kt 54 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/YQeBstN.jpeg?fl=res,400,300,3|shr,,20|jpg,90
238	For sale apartment 2+kt 52 m²	https://d18-a.sdn.cz/d_18/c_img_QI_Jg/FLHBs9n.jpeg?fl=res,400,300,3|shr,,20|jpg,90
239	For sale apartment 3+1 122 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jn/opDiQA.jpeg?fl=res,400,300,3|shr,,20|jpg,90
240	For sale apartment 2+kt 47 m²	https://d18-a.sdn.cz/d_18/c_img_gY_q/j4gBXRx.png?fl=res,400,300,3|shr,,20|jpg,90
241	For sale apartment 3+kt 73 m²	https://d18-a.sdn.cz/d_18/c_img_QL_Jx/gSmBb7D.png?fl=res,400,300,3|shr,,20|jpg,90
242	For sale apartment 2+kt 61 m²	https://d18-a.sdn.cz/d_18/c_img_QI_Jf/FUfBIaO.png?fl=res,400,300,3|shr,,20|jpg,90
243	For sale apartment 3+kt 93 m²	https://d18-a.sdn.cz/d_18/c_img_QL_J2/Tt9BO3s.png?fl=res,400,300,3|shr,,20|jpg,90
244	For sale apartment 2+kt 61 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jg/p0KBcTL.png?fl=res,400,300,3|shr,,20|jpg,90
245	For sale apartment 2+kt 53 m²	https://d18-a.sdn.cz/d_18/c_img_QO_Kz/Jcwz44.png?fl=res,400,300,3|shr,,20|jpg,90
246	For sale apartment 2+kt 71 m²	https://d18-a.sdn.cz/d_18/c_img_QM_Ka/OIPBO9n.png?fl=res,400,300,3|shr,,20|jpg,90
247	For sale apartment 2+kt 48 m²	https://d18-a.sdn.cz/d_18/c_img_gU_p/FBaBWkO.png?fl=res,400,300,3|shr,,20|jpg,90
248	For sale apartment 2+kt 48 m²	https://d18-a.sdn.cz/d_18/c_img_gR_s/TrLTVF.png?fl=res,400,300,3|shr,,20|jpg,90
249	For sale apartment 4+1 72 m²	https://d18-a.sdn.cz/d_18/c_img_QL_J2/7TxBO43.png?fl=res,400,300,3|shr,,20|jpg,90
250	For sale apartment 3+1 85 m²	https://d18-a.sdn.cz/d_18/c_img_QO_Kz/qoWz6D.png?fl=res,400,300,3|shr,,20|jpg,90
251	For sale apartment 2+kt 44 m²	https://d18-a.sdn.cz/d_18/c_img_gZ_r/fOkBXRO.png?fl=res,400,300,3|shr,,20|jpg,90
252	For sale apartment 3+kt 109 m²	https://d18-a.sdn.cz/d_18/c_img_QL_J2/8XLBLmC.png?fl=res,400,300,3|shr,,20|jpg,90
253	For sale apartment 2+kt 29 m²	https://d18-a.sdn.cz/d_18/c_img_gZ_r/0ioBXSk.png?fl=res,400,300,3|shr,,20|jpg,90
254	For sale apartment 1+kt 32 m²	https://d18-a.sdn.cz/d_18/c_img_gX_q/RleBXTI.png?fl=res,400,300,3|shr,,20|jpg,90
255	For sale apartment 2+kt 44 m²	https://d18-a.sdn.cz/d_18/c_img_gW_q/qZeBXex.jpeg?fl=res,400,300,3|shr,,20|jpg,90
256	For sale apartment 2+1 57 m²	https://d18-a.sdn.cz/d_18/c_img_QL_J2/je0BLmB.png?fl=res,400,300,3|shr,,20|jpg,90
257	For sale apartment 5+kt 179 m²	https://d18-a.sdn.cz/d_18/c_img_gS_o/jnrES9.jpeg?fl=res,400,300,3|shr,,20|jpg,90
258	For sale apartment 2+kt 76 m²	https://d18-a.sdn.cz/d_18/c_img_gT_p/Vlkith.jpeg?fl=res,400,300,3|shr,,20|jpg,90
259	For sale apartment 3+1 83 m²	https://d18-a.sdn.cz/d_18/c_img_gT_p/u7hiti.jpeg?fl=res,400,300,3|shr,,20|jpg,90
260	For sale apartment 2+1 70 m²	https://d18-a.sdn.cz/d_18/c_img_gR_n/vEyEN0.jpeg?fl=res,400,300,3|shr,,20|jpg,90
261	For sale apartment 2+kt 43 m²	https://d18-a.sdn.cz/d_18/c_img_gY_o/8KuER2.jpeg?fl=res,400,300,3|shr,,20|jpg,90
262	For sale apartment 4+kt 103 m²	https://d18-a.sdn.cz/d_18/c_img_gX_n/tSwENq.jpeg?fl=res,400,300,3|shr,,20|jpg,90
263	For sale apartment 2+kt 44 m²	https://d18-a.sdn.cz/d_18/c_img_QR_MC/EWFBFUu.jpeg?fl=res,400,300,3|shr,,20|jpg,90
264	For sale apartment 3+1 71 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/WLyBFXj.jpeg?fl=res,400,300,3|shr,,20|jpg,90
265	For sale apartment 3+1 68 m²	https://d18-a.sdn.cz/d_18/c_img_QM_Kb/9utBFZm.jpeg?fl=res,400,300,3|shr,,20|jpg,90
266	For sale apartment 3+kt 58 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/G3PBFXk.jpeg?fl=res,400,300,3|shr,,20|jpg,90
267	For sale apartment 3+1 77 m²	https://d18-a.sdn.cz/d_18/c_img_QN_J5/4FbLGl.jpeg?fl=res,400,300,3|shr,,20|jpg,90
268	For sale apartment 2+kt 49 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/u7zBFXl.jpeg?fl=res,400,300,3|shr,,20|jpg,90
269	For sale apartment 3+kt 165 m² (Mezonet)	https://d18-a.sdn.cz/d_18/c_img_gV_s/BgUBImj.jpeg?fl=res,400,300,3|shr,,20|jpg,90
270	For sale apartment 2+kt 78 m²	https://d18-a.sdn.cz/d_18/c_img_gV_s/D1SBImk.jpeg?fl=res,400,300,3|shr,,20|jpg,90
271	For sale apartment 3+1 66 m²	https://d18-a.sdn.cz/d_18/c_img_QO_Kr/BFMQge.jpeg?fl=res,400,300,3|shr,,20|jpg,90
272	For sale apartment 3+1 108 m²	https://d18-a.sdn.cz/d_18/c_img_QM_KU/ydHKHu.jpeg?fl=res,400,300,3|shr,,20|jpg,90
273	For sale apartment 3+1 60 m²	https://d18-a.sdn.cz/d_18/c_img_gW_q/Rv9BJG1.jpeg?fl=res,400,300,3|shr,,20|jpg,90
274	For sale apartment 3+kt 78 m²	https://d18-a.sdn.cz/d_18/c_img_QN_J5/oA5yH0.jpeg?fl=res,400,300,3|shr,,20|jpg,90
275	For sale apartment 1+1 53 m²	https://d18-a.sdn.cz/d_18/c_img_QL_J4/xaWBIs0.jpeg?fl=res,400,300,3|shr,,20|jpg,90
276	For sale apartment 2+1 53 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jn/SqNiHP.jpeg?fl=res,400,300,3|shr,,20|jpg,90
277	For sale apartment 1+kt 29 m²	https://d18-a.sdn.cz/d_18/c_img_QL_J4/nneBIs1.jpeg?fl=res,400,300,3|shr,,20|jpg,90
278	For sale apartment 1+1 33 m²	https://d18-a.sdn.cz/d_18/c_img_QQ_Lf/13vEnD.jpeg?fl=res,400,300,3|shr,,20|jpg,90
279	For sale apartment 1+1 31 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jn/55ViHQ.jpeg?fl=res,400,300,3|shr,,20|jpg,90
280	For sale apartment 1+1 29 m²	https://d18-a.sdn.cz/d_18/c_img_QP_K5/yPt0cW.jpeg?fl=res,400,300,3|shr,,20|jpg,90
281	For sale apartment 1+kt 30 m²	https://d18-a.sdn.cz/d_18/c_img_QM_Kb/u5bBscH.jpeg?fl=res,400,300,3|shr,,20|jpg,90
282	For sale apartment 1+1 34 m²	https://d18-a.sdn.cz/d_18/c_img_QM_Kb/8m8BscI.jpeg?fl=res,400,300,3|shr,,20|jpg,90
283	For sale apartment 6 rooms plus 250 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jn/Cs8iHg.jpeg?fl=res,400,300,3|shr,,20|jpg,90
284	For sale apartment 1+kt 48 m²	https://d18-a.sdn.cz/d_18/c_img_QM_Kb/K1kBscJ.jpeg?fl=res,400,300,3|shr,,20|jpg,90
285	For sale apartment 1+kt 30 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jn/I1aiHh.jpeg?fl=res,400,300,3|shr,,20|jpg,90
286	For sale apartment 1+kt 35 m²	https://d18-a.sdn.cz/d_18/c_img_QR_MC/52yBGsn.jpeg?fl=res,400,300,3|shr,,20|jpg,90
287	For sale apartment 1+1 33 m²	https://d18-a.sdn.cz/d_18/c_img_QM_Kb/uWZBGvZ.jpeg?fl=res,400,300,3|shr,,20|jpg,90
288	For sale apartment 1+kt 30 m²	https://d18-a.sdn.cz/d_18/c_img_QM_Kb/n9EBGva.jpeg?fl=res,400,300,3|shr,,20|jpg,90
289	For sale apartment 1+1 34 m²	https://d18-a.sdn.cz/d_18/c_img_QP_K5/o9SOmQ.jpeg?fl=res,400,300,3|shr,,20|jpg,90
290	For sale apartment 1+kt 14 m²	https://d18-a.sdn.cz/d_18/c_img_QN_J5/ZGfMeJ.jpeg?fl=res,400,300,3|shr,,20|jpg,90
291	For sale apartment 1+kt 13 m²	https://d18-a.sdn.cz/d_18/c_img_QN_J5/ysZSrG.jpeg?fl=res,400,300,3|shr,,20|jpg,90
292	For sale apartment 1+kt 22 m²	https://d18-a.sdn.cz/d_18/c_img_QL_J4/ln0nM2.jpeg?fl=res,400,300,3|shr,,20|jpg,90
293	For sale apartment 3+kt 68 m²	https://d18-a.sdn.cz/d_18/c_img_QL_J4/xzqnM3.jpeg?fl=res,400,300,3|shr,,20|jpg,90
294	For sale apartment 1+kt 17 m²	https://d18-a.sdn.cz/d_18/c_img_QL_J4/4DKnM4.jpeg?fl=res,400,300,3|shr,,20|jpg,90
295	For sale apartment 3+kt 107 m²	https://d18-a.sdn.cz/d_18/c_img_QM_Kb/WfZBNBK.jpeg?fl=res,400,300,3|shr,,20|jpg,90
296	For sale apartment 1+kt 45 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jn/NX9Ct9.jpeg?fl=res,400,300,3|shr,,20|jpg,90
297	For sale apartment 3+kt 85 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jn/7GbCs7.jpeg?fl=res,400,300,3|shr,,20|jpg,90
298	For sale apartment 1+kt 45 m²	https://d18-a.sdn.cz/d_18/c_img_QR_MC/6UJBNCA.jpeg?fl=res,400,300,3|shr,,20|jpg,90
299	For sale apartment 1+kt 38 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/TzQBM82.jpeg?fl=res,400,300,3|shr,,20|jpg,90
300	For sale apartment 1+kt 28 m²	https://d18-a.sdn.cz/d_18/c_img_QL_J4/C5KnLl.jpeg?fl=res,400,300,3|shr,,20|jpg,90
301	For sale apartment 3+kt 67 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/ut3BM83.jpeg?fl=res,400,300,3|shr,,20|jpg,90
302	For sale apartment 1+kt 28 m²	https://d18-a.sdn.cz/d_18/c_img_QI_Jg/5cPBNUU.jpeg?fl=res,400,300,3|shr,,20|jpg,90
303	For sale apartment 4+kt 115 m²	https://d18-a.sdn.cz/d_18/c_img_QQ_Le/Qm0BMyr.jpeg?fl=res,400,300,3|shr,,20|jpg,90
304	For sale apartment 2+kt 62 m²	https://d18-a.sdn.cz/d_18/c_img_QN_J5/vlcSpK.jpeg?fl=res,400,300,3|shr,,20|jpg,90
305	For sale apartment 3+1 73 m²	https://d18-a.sdn.cz/d_18/c_img_QI_Jg/hxfBNTN.jpeg?fl=res,400,300,3|shr,,20|jpg,90
306	For sale apartment 3+kt 155 m²	https://d18-a.sdn.cz/d_18/c_img_QR_MC/Z4KBNAr.jpeg?fl=res,400,300,3|shr,,20|jpg,90
307	For sale apartment 1+kt 28 m²	https://d18-a.sdn.cz/d_18/c_img_QN_J5/R0CSpL.jpeg?fl=res,400,300,3|shr,,20|jpg,90
308	For sale apartment 2+kt 49 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/5jJBOaF.jpeg?fl=res,400,300,3|shr,,20|jpg,90
309	For sale apartment 2+kt 61 m² (Loft)	https://d18-a.sdn.cz/d_18/c_img_QM_Kb/mMCBOYU.jpeg?fl=res,400,300,3|shr,,20|jpg,90
310	For sale apartment 3+kt 126 m²	https://d18-a.sdn.cz/d_18/c_img_QR_MC/amtBObG.jpeg?fl=res,400,300,3|shr,,20|jpg,90
311	For sale apartment 2+kt 61 m² (Loft)	https://d18-a.sdn.cz/d_18/c_img_QI_Jg/4qUBOrE.jpeg?fl=res,400,300,3|shr,,20|jpg,90
312	For sale apartment 3+1 95 m²	https://d18-a.sdn.cz/d_18/c_img_QQ_Le/Uc5BOPc.jpeg?fl=res,400,300,3|shr,,20|jpg,90
313	For sale apartment 2+kt 49 m²	https://d18-a.sdn.cz/d_18/c_img_QN_J5/z6lUEa.jpeg?fl=res,400,300,3|shr,,20|jpg,90
314	For sale apartment 3+kt 76 m²	https://d18-a.sdn.cz/d_18/c_img_QM_Kb/fAqBMpY.jpeg?fl=res,400,300,3|shr,,20|jpg,90
315	For sale apartment 3+kt 82 m²	https://d18-a.sdn.cz/d_18/c_img_QM_Kb/DuCBMpZ.jpeg?fl=res,400,300,3|shr,,20|jpg,90
316	For sale apartment 1+kt 47 m²	https://d18-a.sdn.cz/d_18/c_img_QQ_Le/cDtBMeu.jpeg?fl=res,400,300,3|shr,,20|jpg,90
317	For sale apartment 2+1 51 m²	https://d18-a.sdn.cz/d_18/c_img_QR_MC/CLFBMqo.jpeg?fl=res,400,300,3|shr,,20|jpg,90
318	For sale apartment 1+kt 24 m²	https://d18-a.sdn.cz/d_18/c_img_QP_K5/pwuUl7.jpeg?fl=res,400,300,3|shr,,20|jpg,90
319	For sale apartment 3+1 74 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/M70BMnv.jpeg?fl=res,400,300,3|shr,,20|jpg,90
320	For sale apartment 2+1 54 m²	https://d18-a.sdn.cz/d_18/c_img_QQ_Le/zEXBORN.jpeg?fl=res,400,300,3|shr,,20|jpg,90
321	For sale apartment 3+1 104 m²	https://d18-a.sdn.cz/d_18/c_img_QI_Jg/xzZBOsd.jpeg?fl=res,400,300,3|shr,,20|jpg,90
322	For sale apartment 3+1 58 m²	https://d18-a.sdn.cz/d_18/c_img_QP_K5/9QxWWw.jpeg?fl=res,400,300,3|shr,,20|jpg,90
323	For sale apartment 2+1 58 m²	https://d18-a.sdn.cz/d_18/c_img_QO_K0/WEDB0PV.jpeg?fl=res,400,300,3|shr,,20|jpg,90
324	For sale apartment 1+kt 38 m²	https://d18-a.sdn.cz/d_18/c_img_QP_K5/SN4WWx.jpeg?fl=res,400,300,3|shr,,20|jpg,90
325	For sale apartment 2+kt 74 m²	https://d18-a.sdn.cz/d_18/c_img_QP_K5/U3Qszb.jpeg?fl=res,400,300,3|shr,,20|jpg,90
326	For sale apartment 3+1 68 m²	https://d18-a.sdn.cz/d_18/c_img_QI_Jg/LiRBlJW.jpeg?fl=res,400,300,3|shr,,20|jpg,90
327	For sale apartment 4+kt 139 m²	https://d18-a.sdn.cz/d_18/c_img_QL_J4/N6sBBG2.jpeg?fl=res,400,300,3|shr,,20|jpg,90
328	For sale apartment 2+kt 75 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jn/E3XahX.jpeg?fl=res,400,300,3|shr,,20|jpg,90
329	For sale apartment 3+1 72 m²	https://d18-a.sdn.cz/d_18/c_img_QR_MC/xXwBkzu.jpeg?fl=res,400,300,3|shr,,20|jpg,90
330	For sale apartment 2+1 64 m²	https://d18-a.sdn.cz/d_18/c_img_QP_K5/Ignszc.jpeg?fl=res,400,300,3|shr,,20|jpg,90
331	For sale apartment 6 rooms plus 138 m²	https://d18-a.sdn.cz/d_18/c_img_QL_J3/YanZHJ.png?fl=res,400,300,3|shr,,20|jpg,90
332	For sale apartment 2+1 63 m²	https://d18-a.sdn.cz/d_18/c_img_QP_K4/guVIut.png?fl=res,400,300,3|shr,,20|jpg,90
333	For sale apartment 2+1 57 m²	https://d18-a.sdn.cz/d_18/c_img_QI_Jg/0lnbjp.png?fl=res,400,300,3|shr,,20|jpg,90
334	For sale apartment 1+1 39 m²	https://d18-a.sdn.cz/d_18/c_img_QN_J4/CfqbSj.png?fl=res,400,300,3|shr,,20|jpg,90
335	For sale apartment 1+kt 32 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jl/6ffBX1O.png?fl=res,400,300,3|shr,,20|jpg,90
336	For sale apartment 2+1 63 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/GqXZHW.jpeg?fl=res,400,300,3|shr,,20|jpg,90
337	For sale apartment 2+1 51 m²	https://d18-a.sdn.cz/d_18/c_img_QL_J4/77F04I.jpeg?fl=res,400,300,3|shr,,20|jpg,90
338	For sale apartment 1+kt 41 m²	https://d18-a.sdn.cz/d_18/c_img_QL_J4/Ah304J.jpeg?fl=res,400,300,3|shr,,20|jpg,90
339	For sale apartment 1+1 35 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jn/DRZQVP.jpeg?fl=res,400,300,3|shr,,20|jpg,90
340	For sale apartment 3+1 70 m²	https://d18-a.sdn.cz/d_18/c_img_QP_K5/flCiln.jpeg?fl=res,400,300,3|shr,,20|jpg,90
341	For sale apartment 3+kt 85 m²	https://d18-a.sdn.cz/d_18/c_img_QI_Jg/8LqBa9I.jpeg?fl=res,400,300,3|shr,,20|jpg,90
342	For sale apartment 4+kt 109 m²	https://d18-a.sdn.cz/d_18/c_img_QP_K5/9oNPau.jpeg?fl=res,400,300,3|shr,,20|jpg,90
343	For sale apartment 3+1 72 m²	https://d18-a.sdn.cz/d_18/c_img_QN_J5/rWuNTA.jpeg?fl=res,400,300,3|shr,,20|jpg,90
344	For sale apartment 2+1 50 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/Z8lBHjI.jpeg?fl=res,400,300,3|shr,,20|jpg,90
345	For sale apartment 3+1 68 m²	https://d18-a.sdn.cz/d_18/c_img_QN_J5/InUNTB.jpeg?fl=res,400,300,3|shr,,20|jpg,90
346	For sale apartment 3+kt 72 m²	https://d18-a.sdn.cz/d_18/c_img_QR_MC/uBFBHgj.jpeg?fl=res,400,300,3|shr,,20|jpg,90
347	For sale apartment 2+1 57 m²	https://d18-a.sdn.cz/d_18/c_img_QP_K5/ZGDPaw.jpeg?fl=res,400,300,3|shr,,20|jpg,90
348	For sale apartment 2+kt 75 m²	https://d18-a.sdn.cz/d_18/c_img_QL_Jy/7SndmY.jpeg?fl=res,400,300,3|shr,,20|jpg,90
349	For sale apartment 2+kt 50 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jc/jIQdwK.jpeg?fl=res,400,300,3|shr,,20|jpg,90
350	For sale apartment 2+kt 47 m²	https://d18-a.sdn.cz/d_18/c_img_QN_Jy/GZDBYqg.jpeg?fl=res,400,300,3|shr,,20|jpg,90
351	For sale apartment 2+kt 62 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jh/esNd8o.jpeg?fl=res,400,300,3|shr,,20|jpg,90
352	For sale apartment 1+1 46 m²	https://d18-a.sdn.cz/d_18/c_img_QL_Jy/UZpdmZ.jpeg?fl=res,400,300,3|shr,,20|jpg,90
353	For sale apartment 1+kt 36 m²	https://d18-a.sdn.cz/d_18/c_img_QO_Ks/Bc8BS6e.jpeg?fl=res,400,300,3|shr,,20|jpg,90
354	For sale apartment 3+kt 114 m²	https://d18-a.sdn.cz/d_18/c_img_QP_Kx/gqSz5U.jpeg?fl=res,400,300,3|shr,,20|jpg,90
355	For sale apartment 5+kt 350 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jh/VtRGjn.jpeg?fl=res,400,300,3|shr,,20|jpg,90
356	For sale apartment 1+1 42 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jc/Tn3GSf.jpeg?fl=res,400,300,3|shr,,20|jpg,90
357	For sale apartment 3+1 126 m² (Attic)	https://d18-a.sdn.cz/d_18/c_img_QK_Jc/oyUGSg.jpeg?fl=res,400,300,3|shr,,20|jpg,90
358	For sale apartment 2+kt 131 m²	https://d18-a.sdn.cz/d_18/c_img_QL_Jy/2qYGJC.jpeg?fl=res,400,300,3|shr,,20|jpg,90
359	For sale apartment 3+kt 64 m²	https://d18-a.sdn.cz/d_18/c_img_QN_J5/GoyDLM.jpeg?fl=res,400,300,3|shr,,20|jpg,90
360	For sale apartment 1+1 30 m²	https://d18-a.sdn.cz/d_18/c_img_QQ_Le/tGd7Q4.jpeg?fl=res,400,300,3|shr,,20|jpg,90
361	For sale apartment 5+kt 161 m²	https://d18-a.sdn.cz/d_18/c_img_QP_K5/YktFTO.jpeg?fl=res,400,300,3|shr,,20|jpg,90
362	For sale apartment 3+1 105 m²	https://d18-a.sdn.cz/d_18/c_img_QM_Kb/3RN7dR.jpeg?fl=res,400,300,3|shr,,20|jpg,90
363	For sale apartment 1+kt 49 m²	https://d18-a.sdn.cz/d_18/c_img_QM_Kb/Wsq7dS.jpeg?fl=res,400,300,3|shr,,20|jpg,90
364	For sale apartment 2+kt 40 m²	https://d18-a.sdn.cz/d_18/c_img_QR_MC/Lj27cW.jpeg?fl=res,400,300,3|shr,,20|jpg,90
365	For sale apartment 3+kt 88 m²	https://d18-a.sdn.cz/d_18/c_img_QM_KY/rUjDKQ.jpeg?fl=res,400,300,3|shr,,20|jpg,90
366	For sale apartment 2+kt 74 m²	https://d18-a.sdn.cz/d_18/c_img_QI_Jd/8OQDIs.jpeg?fl=res,400,300,3|shr,,20|jpg,90
367	For sale apartment 2+1 57 m²	https://d18-a.sdn.cz/d_18/c_img_QM_KY/3VmDKS.jpeg?fl=res,400,300,3|shr,,20|jpg,90
368	For sale apartment 3+1 76 m²	https://d18-a.sdn.cz/d_18/c_img_QL_J0/TCEDHu.jpeg?fl=res,400,300,3|shr,,20|jpg,90
369	For sale apartment 2+1 53 m²	https://d18-a.sdn.cz/d_18/c_img_QM_KY/OjrDKT.jpeg?fl=res,400,300,3|shr,,20|jpg,90
370	For sale apartment 2+kt 57 m²	https://d18-a.sdn.cz/d_18/c_img_QM_KY/gLxDKU.jpeg?fl=res,400,300,3|shr,,20|jpg,90
371	For sale apartment 1+1 35 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/xyfGTS.jpeg?fl=res,400,300,3|shr,,20|jpg,90
372	For sale apartment 2+kt 54 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jl/FGXBC4y.jpeg?fl=res,400,300,3|shr,,20|jpg,90
373	For sale apartment 4+kt 102 m² (Mezonet)	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/b1fGTT.jpeg?fl=res,400,300,3|shr,,20|jpg,90
374	For sale apartment 2+1 58 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/y3dGTU.jpeg?fl=res,400,300,3|shr,,20|jpg,90
375	For sale apartment 3+kt 72 m²	https://d18-a.sdn.cz/d_18/c_img_QP_K3/i5HIaR.jpeg?fl=res,400,300,3|shr,,20|jpg,90
376	For sale apartment 1+kt 22 m²	https://d18-a.sdn.cz/d_18/c_img_QP_K3/GONyt.jpeg?fl=res,400,300,3|shr,,20|jpg,90
377	For sale apartment 3+1 78 m²	https://d18-a.sdn.cz/d_18/c_img_QI_Jf/qKRCFCe.jpeg?fl=res,400,300,3|shr,,20|jpg,90
378	For sale apartment 2+kt 55 m² (Attic)	https://d18-a.sdn.cz/d_18/c_img_QJ_Jl/oOnCEwx.jpeg?fl=res,400,300,3|shr,,20|jpg,90
379	For sale apartment 4+1 89 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jl/Ju65SV.jpeg?fl=res,400,300,3|shr,,20|jpg,90
380	For sale apartment 3+1 69 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jl/L435SW.jpeg?fl=res,400,300,3|shr,,20|jpg,90
381	For sale apartment 3+1 88 m²	https://d18-a.sdn.cz/d_18/c_img_QO_K0/fTTkg6.jpeg?fl=res,400,300,3|shr,,20|jpg,90
382	For sale apartment 1+kt 30 m²	https://d18-a.sdn.cz/d_18/c_img_QI_Jg/FBpBqYC.jpeg?fl=res,400,300,3|shr,,20|jpg,90
383	For sale apartment 1+kt 40 m²	https://d18-a.sdn.cz/d_18/c_img_QQ_Lf/qR2CMH.jpeg?fl=res,400,300,3|shr,,20|jpg,90
384	For sale apartment 1+kt 39 m²	https://d18-a.sdn.cz/d_18/c_img_QI_Jg/fl2BqYF.jpeg?fl=res,400,300,3|shr,,20|jpg,90
385	For sale apartment 3+kt 201 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/FenBqGL.jpeg?fl=res,400,300,3|shr,,20|jpg,90
386	For sale apartment 3+kt 86 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/C4OBqGN.jpeg?fl=res,400,300,3|shr,,20|jpg,90
387	For sale apartment 3+1 86 m²	https://d18-a.sdn.cz/d_18/c_img_QM_Kb/XfFBqA6.jpeg?fl=res,400,300,3|shr,,20|jpg,90
388	For sale apartment 2+kt 59 m²	https://d18-a.sdn.cz/d_18/c_img_QM_KW/m2Hp93.jpeg?fl=res,400,300,3|shr,,20|jpg,90
389	For sale apartment 3+kt 147 m²	https://d18-a.sdn.cz/d_18/c_img_QM_KW/2gjp94.jpeg?fl=res,400,300,3|shr,,20|jpg,90
390	For sale apartment 3+kt 149 m² (Mezonet)	https://d18-a.sdn.cz/d_18/c_img_QI_Jb/L2dXBi.jpeg?fl=res,400,300,3|shr,,20|jpg,90
391	For sale apartment 2+1 58 m²	https://d18-a.sdn.cz/d_18/c_img_QI_Jb/o1GXBj.jpeg?fl=res,400,300,3|shr,,20|jpg,90
392	For sale apartment 4+kt 93 m²	https://d18-a.sdn.cz/d_18/c_img_QN_Jy/e9UBSEc.jpeg?fl=res,400,300,3|shr,,20|jpg,90
393	For sale apartment 3+1 127 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jl/o5ABQLk.jpeg?fl=res,400,300,3|shr,,20|jpg,90
394	For sale apartment 4+kt 74 m²	https://d18-a.sdn.cz/d_18/c_img_QR_MC/y0ITtT.jpeg?fl=res,400,300,3|shr,,20|jpg,90
395	For sale apartment 3+1 73 m²	https://d18-a.sdn.cz/d_18/c_img_QI_Jg/d9lTx2.jpeg?fl=res,400,300,3|shr,,20|jpg,90
396	For sale apartment 1+1 39 m²	https://d18-a.sdn.cz/d_18/c_img_QR_MC/y3pTtU.jpeg?fl=res,400,300,3|shr,,20|jpg,90
397	For sale apartment 3+1 72 m²	https://d18-a.sdn.cz/d_18/c_img_QM_Kb/gecTph.jpeg?fl=res,400,300,3|shr,,20|jpg,90
398	For sale apartment 2+kt 26 m²	https://d18-a.sdn.cz/d_18/c_img_QO_K0/yH65dV.jpeg?fl=res,400,300,3|shr,,20|jpg,90
399	For sale apartment 2+1 53 m²	https://d18-a.sdn.cz/d_18/c_img_QO_K0/xkEBdta.jpeg?fl=res,400,300,3|shr,,20|jpg,90
400	For sale apartment 3+1 83 m²	https://d18-a.sdn.cz/d_18/c_img_QQ_Le/rbm13R.jpeg?fl=res,400,300,3|shr,,20|jpg,90
401	For sale apartment 2+1 56 m²	https://d18-a.sdn.cz/d_18/c_img_QP_K4/yD3jgd.jpeg?fl=res,400,300,3|shr,,20|jpg,90
402	For sale apartment 2+1 57 m²	https://d18-a.sdn.cz/d_18/c_img_QI_Jg/Y2D2XH.jpeg?fl=res,400,300,3|shr,,20|jpg,90
403	For sale apartment 2+1 65 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jl/klEByoJ.jpeg?fl=res,400,300,3|shr,,20|jpg,90
404	For sale apartment 3+1 84 m²	https://d18-a.sdn.cz/d_18/c_img_QN_J4/tBn2Di.jpeg?fl=res,400,300,3|shr,,20|jpg,90
405	For sale apartment 3+kt 147 m²	https://d18-a.sdn.cz/d_18/c_img_QM_Kb/o9TBsQp.jpeg?fl=res,400,300,3|shr,,20|jpg,90
406	For sale apartment 1+kt 29 m²	https://d18-a.sdn.cz/d_18/c_img_QL_J4/aaHBIhE.jpeg?fl=res,400,300,3|shr,,20|jpg,90
407	For sale apartment 3+kt 75 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/3dCBsZY.jpeg?fl=res,400,300,3|shr,,20|jpg,90
408	For sale apartment 2+kt 61 m²	https://d18-a.sdn.cz/d_18/c_img_QO_K1/psFOCs.jpeg?fl=res,400,300,3|shr,,20|jpg,90
409	For sale apartment 2+kt 64 m²	https://d18-a.sdn.cz/d_18/c_img_QM_Kb/UMqBsQq.jpeg?fl=res,400,300,3|shr,,20|jpg,90
410	For sale apartment 4+1 110 m²	https://d18-a.sdn.cz/d_18/c_img_QN_Jz/zlqbwM.jpeg?fl=res,400,300,3|shr,,20|jpg,90
411	For sale apartment 4+kt 117 m²	https://d18-a.sdn.cz/d_18/c_img_QO_Ku/LUKbw.jpeg?fl=res,400,300,3|shr,,20|jpg,90
412	For sale apartment 2+kt 50 m²	https://d18-a.sdn.cz/d_18/c_img_QL_Jy/IUiBm4s.jpeg?fl=res,400,300,3|shr,,20|jpg,90
413	For sale apartment 3+1 103 m²	https://d18-a.sdn.cz/d_18/c_img_QP_Ky/geMQqG.jpeg?fl=res,400,300,3|shr,,20|jpg,90
414	For sale apartment 2+kt 53 m²	https://d18-a.sdn.cz/d_18/c_img_QQ_LZ/rGqBCh9.jpeg?fl=res,400,300,3|shr,,20|jpg,90
415	For sale apartment 2+kt 60 m²	https://d18-a.sdn.cz/d_18/c_img_QL_Jy/mHPBm4t.jpeg?fl=res,400,300,3|shr,,20|jpg,90
416	For sale apartment 2+kt 54 m²	https://d18-a.sdn.cz/d_18/c_img_QP_K5/73rCWr.jpeg?fl=res,400,300,3|shr,,20|jpg,90
417	For sale apartment 2+1 63 m²	https://d18-a.sdn.cz/d_18/c_img_QO_K0/FcsBgNf.jpeg?fl=res,400,300,3|shr,,20|jpg,90
418	For sale apartment 2+1 51 m²	https://d18-a.sdn.cz/d_18/c_img_QQ_Le/wEX4WZ.jpeg?fl=res,400,300,3|shr,,20|jpg,90
419	For sale apartment 3+1 74 m²	https://d18-a.sdn.cz/d_18/c_img_QQ_Le/3hJ4Wa.jpeg?fl=res,400,300,3|shr,,20|jpg,90
420	For sale apartment 3+kt 68 m²	https://d18-a.sdn.cz/d_18/c_img_QP_K5/0sbCWt.jpeg?fl=res,400,300,3|shr,,20|jpg,90
421	For sale apartment 2+kt 44 m² (Mezonet)	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/d8S4ct.jpeg?fl=res,400,300,3|shr,,20|jpg,90
422	For sale apartment 3+kt 77 m²	https://d18-a.sdn.cz/d_18/c_img_QL_J2/TdsBrc2.jpeg?fl=res,400,300,3|shr,,20|jpg,90
423	For sale apartment 4+1 82 m²	https://d18-a.sdn.cz/d_18/c_img_QM_Ka/Z3uBrjm.jpeg?fl=res,400,300,3|shr,,20|jpg,90
424	For sale apartment 4+kt 122 m² (Mezonet)	https://d18-a.sdn.cz/d_18/c_img_QQ_Ld/67yBrXX.jpeg?fl=res,400,300,3|shr,,20|jpg,90
425	For sale apartment 3+kt 88 m²	https://d18-a.sdn.cz/d_18/c_img_QR_MB/T6lBrls.jpeg?fl=res,400,300,3|shr,,20|jpg,90
426	For sale apartment 1+kt 31 m²	https://d18-a.sdn.cz/d_18/c_img_QO_K0/38lNSC.jpeg?fl=res,400,300,3|shr,,20|jpg,90
427	For sale apartment 3+kt 117 m²	https://d18-a.sdn.cz/d_18/c_img_QR_MB/ZVbK6l.jpeg?fl=res,400,300,3|shr,,20|jpg,90
428	For sale apartment 4+1 94 m²	https://d18-a.sdn.cz/d_18/c_img_QN_J3/YXLK5U.jpeg?fl=res,400,300,3|shr,,20|jpg,90
429	For sale apartment 1+kt 46 m² (Mezonet)	https://d18-a.sdn.cz/d_18/c_img_QP_K2/OXwK6K.jpeg?fl=res,400,300,3|shr,,20|jpg,90
430	For sale apartment 2+1 53 m²	https://d18-a.sdn.cz/d_18/c_img_QQ_Ld/JBIK6A.jpeg?fl=res,400,300,3|shr,,20|jpg,90
431	For sale apartment 2+kt 64 m²	https://d18-a.sdn.cz/d_18/c_img_QN_J3/eEiK5W.jpeg?fl=res,400,300,3|shr,,20|jpg,90
432	For sale apartment 2+1 55 m²	https://d18-a.sdn.cz/d_18/c_img_QP_K2/L8RK6M.jpeg?fl=res,400,300,3|shr,,20|jpg,90
433	For sale apartment 2+kt 57 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/FgNBpxY.jpeg?fl=res,400,300,3|shr,,20|jpg,90
434	For sale apartment 2+kt 45 m²	https://d18-a.sdn.cz/d_18/c_img_QM_Kb/SjEBpta.jpeg?fl=res,400,300,3|shr,,20|jpg,90
435	For sale apartment 5+kt 260 m²	https://d18-a.sdn.cz/d_18/c_img_QR_MC/UeuBpyx.jpeg?fl=res,400,300,3|shr,,20|jpg,90
436	For sale apartment 1+kt 19 m² (Attic)	https://d18-a.sdn.cz/d_18/c_img_QK_Jn/TfzfaN.jpeg?fl=res,400,300,3|shr,,20|jpg,90
437	For sale apartment 1+1 48 m²	https://d18-a.sdn.cz/d_18/c_img_QP_K5/2ocxsG.jpeg?fl=res,400,300,3|shr,,20|jpg,90
438	For sale apartment 3+1 66 m²	https://d18-a.sdn.cz/d_18/c_img_QN_J5/f8JvXE.jpeg?fl=res,400,300,3|shr,,20|jpg,90
439	For sale apartment 2+kt 69 m²	https://d18-a.sdn.cz/d_18/c_img_QQ_Ld/BkJBtOm.jpeg?fl=res,400,300,3|shr,,20|jpg,90
440	For sale apartment 2+kt 50 m²	https://d18-a.sdn.cz/d_18/c_img_QN_J3/AlvBtcv.jpeg?fl=res,400,300,3|shr,,20|jpg,90
441	For sale apartment 2+kt 59 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jl/Dt1BtVV.jpeg?fl=res,400,300,3|shr,,20|jpg,90
442	For sale apartment 2+kt 81 m²	https://d18-a.sdn.cz/d_18/c_img_QI_Jf/Da6Btin.jpeg?fl=res,400,300,3|shr,,20|jpg,90
443	For sale apartment 1+kt 34 m²	https://d18-a.sdn.cz/d_18/c_img_QQ_Ld/1heBtOn.jpeg?fl=res,400,300,3|shr,,20|jpg,90
444	For sale apartment 2+kt 80 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jl/2HPyTg.jpeg?fl=res,400,300,3|shr,,20|jpg,90
445	For sale apartment 2+kt 45 m²	https://d18-a.sdn.cz/d_18/c_img_QQ_Ld/wGYyVG.jpeg?fl=res,400,300,3|shr,,20|jpg,90
446	For sale apartment 4+kt 241 m²	https://d18-a.sdn.cz/d_18/c_img_QR_MB/qU1yTf.jpeg?fl=res,400,300,3|shr,,20|jpg,90
447	For sale apartment 1+kt 32 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jk/tfyyZA.jpeg?fl=res,400,300,3|shr,,20|jpg,90
448	For sale apartment 3+1 78 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jl/ASzyTj.jpeg?fl=res,400,300,3|shr,,20|jpg,90
449	For sale apartment 2+kt 66 m²	https://d18-a.sdn.cz/d_18/c_img_QM_Ka/7uryV4.jpeg?fl=res,400,300,3|shr,,20|jpg,90
450	For sale apartment 1+kt 35 m²	https://d18-a.sdn.cz/d_18/c_img_QR_L6/lL8BsxO.jpeg?fl=res,400,300,3|shr,,20|jpg,90
451	For sale apartment 4+kt 132 m²	https://d18-a.sdn.cz/d_18/c_img_QO_Ku/DcFF4h.jpeg?fl=res,400,300,3|shr,,20|jpg,90
452	For sale apartment 1+kt 20 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jg/afKxaP.jpeg?fl=res,400,300,3|shr,,20|jpg,90
453	For sale apartment 4+kt 165 m² (Mezonet)	https://d18-a.sdn.cz/d_18/c_img_QO_Ku/2r1F4i.jpeg?fl=res,400,300,3|shr,,20|jpg,90
454	For sale apartment 3+kt 83 m² (Mezonet)	https://d18-a.sdn.cz/d_18/c_img_QM_KW/TfrCBTX.jpeg?fl=res,400,300,3|shr,,20|jpg,90
455	For sale apartment 1+kt 48 m²	https://d18-a.sdn.cz/d_18/c_img_QO_Ku/vnDF4j.jpeg?fl=res,400,300,3|shr,,20|jpg,90
456	For sale apartment 3+kt 70 m²	https://d18-a.sdn.cz/d_18/c_img_QL_J4/K1VvFz.jpeg?fl=res,400,300,3|shr,,20|jpg,90
457	For sale apartment 2+kt 68 m²	https://d18-a.sdn.cz/d_18/c_img_QL_J4/MvZvF0.jpeg?fl=res,400,300,3|shr,,20|jpg,90
458	For sale apartment 2+kt 58 m²	https://d18-a.sdn.cz/d_18/c_img_QR_MC/UK5BU3h.jpeg?fl=res,400,300,3|shr,,20|jpg,90
459	For sale apartment 4+kt 167 m²	https://d18-a.sdn.cz/d_18/c_img_QP_K5/iM6c02.jpeg?fl=res,400,300,3|shr,,20|jpg,90
460	For sale apartment 2+kt 59 m²	https://d18-a.sdn.cz/d_18/c_img_QP_K5/hZPc03.jpeg?fl=res,400,300,3|shr,,20|jpg,90
461	For sale apartment 3+kt 69 m²	https://d18-a.sdn.cz/d_18/c_img_QQ_Le/rakGQ6.jpeg?fl=res,400,300,3|shr,,20|jpg,90
462	For sale apartment 4+1 158 m² (Mezonet)	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/tcXGRH.jpeg?fl=res,400,300,3|shr,,20|jpg,90
463	For sale apartment 4+kt 191 m²	https://d18-a.sdn.cz/d_18/c_img_QM_Kb/pTVGcK.jpeg?fl=res,400,300,3|shr,,20|jpg,90
464	For sale apartment 1+kt 39 m²	https://d18-a.sdn.cz/d_18/c_img_QN_J4/ARkGT0.jpeg?fl=res,400,300,3|shr,,20|jpg,90
465	For sale apartment 1+kt 30 m²	https://d18-a.sdn.cz/d_18/c_img_QI_Jg/miBGh7.jpeg?fl=res,400,300,3|shr,,20|jpg,90
466	For sale apartment 2+kt 88 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jl/LL2BC2s.jpeg?fl=res,400,300,3|shr,,20|jpg,90
467	For sale apartment 2+1 81 m²	https://d18-a.sdn.cz/d_18/c_img_QR_MC/1zo7Oy.jpeg?fl=res,400,300,3|shr,,20|jpg,90
468	For sale apartment 3+kt 83 m²	https://d18-a.sdn.cz/d_18/c_img_QO_K0/HvbBi56.jpeg?fl=res,400,300,3|shr,,20|jpg,90
469	For sale apartment 4+kt 80 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jm/XiF7Lj.jpeg?fl=res,400,300,3|shr,,20|jpg,90
470	For sale apartment 2+kt 43 m²	https://d18-a.sdn.cz/d_18/c_img_QN_J5/2VEC7o.jpeg?fl=res,400,300,3|shr,,20|jpg,90
471	For sale apartment 2+1 43 m²	https://d18-a.sdn.cz/d_18/c_img_QM_Kb/7SX7Pl.jpeg?fl=res,400,300,3|shr,,20|jpg,90
472	For sale apartment 2+kt 46 m²	https://d18-a.sdn.cz/d_18/c_img_QR_MC/X9J7Oz.jpeg?fl=res,400,300,3|shr,,20|jpg,90
473	For sale apartment 3+kt 61 m²	https://d18-a.sdn.cz/d_18/c_img_QM_Ka/EPMRWT.jpeg?fl=res,400,300,3|shr,,20|jpg,90
474	For sale apartment 2+1 43 m²	https://d18-a.sdn.cz/d_18/c_img_QM_Ka/wl0RWU.jpeg?fl=res,400,300,3|shr,,20|jpg,90
475	For sale apartment 3+kt 78 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jl/udbRYN.jpeg?fl=res,400,300,3|shr,,20|jpg,90
476	For sale apartment 1+kt 32 m²	https://d18-a.sdn.cz/d_18/c_img_QI_Jf/4cCRZM.jpeg?fl=res,400,300,3|shr,,20|jpg,90
477	For sale apartment 3+kt 76 m²	https://d18-a.sdn.cz/d_18/c_img_QI_Jf/jMVRZN.jpeg?fl=res,400,300,3|shr,,20|jpg,90
478	For sale apartment 4+kt 163 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jl/IZ6Pxy.jpeg?fl=res,400,300,3|shr,,20|jpg,90
479	For sale apartment 2+kt 65 m²	https://d18-a.sdn.cz/d_18/c_img_QO_Ky/SV6P3l.jpeg?fl=res,400,300,3|shr,,20|jpg,90
480	For sale apartment 2+kt 53 m²	https://d18-a.sdn.cz/d_18/c_img_QR_MB/TnXP3w.jpeg?fl=res,400,300,3|shr,,20|jpg,90
481	For sale apartment 4+kt 91 m²	https://d18-a.sdn.cz/d_18/c_img_QN_J3/8cRP1S.jpeg?fl=res,400,300,3|shr,,20|jpg,90
482	For sale apartment 3+kt 92 m²	https://d18-a.sdn.cz/d_18/c_img_QL_J2/cEbP19.jpeg?fl=res,400,300,3|shr,,20|jpg,90
483	For sale apartment 3+kt 85 m²	https://d18-a.sdn.cz/d_18/c_img_QI_Jf/QJoPyl.jpeg?fl=res,400,300,3|shr,,20|jpg,90
484	For sale apartment 1+kt 26 m²	https://d18-a.sdn.cz/d_18/c_img_QQ_LR/bZxsRT.jpeg?fl=res,400,300,3|shr,,20|jpg,90
485	For sale apartment 4+kt 103 m²	https://d18-a.sdn.cz/d_18/c_img_QI_JW/Rg8sYL.jpeg?fl=res,400,300,3|shr,,20|jpg,90
486	For sale apartment 3+kt 65 m²	https://d18-a.sdn.cz/d_18/c_img_QJ_Jb/bHesRL.jpeg?fl=res,400,300,3|shr,,20|jpg,90
487	For sale apartment 4+kt 93 m²	https://d18-a.sdn.cz/d_18/c_img_QQ_LR/J0tsRV.jpeg?fl=res,400,300,3|shr,,20|jpg,90
488	For sale apartment 4+kt 126 m²	https://d18-a.sdn.cz/d_18/c_img_QM_KO/rfLsT1.jpeg?fl=res,400,300,3|shr,,20|jpg,90
489	For sale apartment 3+kt 113 m²	https://d18-a.sdn.cz/d_18/c_img_QN_Jr/FNjsSn.jpeg?fl=res,400,300,3|shr,,20|jpg,90
490	For sale apartment 4+kt 136 m²	https://d18-a.sdn.cz/d_18/c_img_gR_k/X7wCNM.jpeg?fl=res,400,300,3|shr,,20|jpg,90
491	For sale apartment 4+kt 247 m²	https://d18-a.sdn.cz/d_18/c_img_gS_m/sqUCOe.jpeg?fl=res,400,300,3|shr,,20|jpg,90
492	For sale apartment 4+kt 137 m²	https://d18-a.sdn.cz/d_18/c_img_gV_o/PLgCO5.jpeg?fl=res,400,300,3|shr,,20|jpg,90
493	For sale apartment 4+kt 142 m²	https://d18-a.sdn.cz/d_18/c_img_gV_o/BMJCO6.jpeg?fl=res,400,300,3|shr,,20|jpg,90
494	For sale apartment 3+kt 63 m²	https://d18-a.sdn.cz/d_18/c_img_gR_k/4srCNN.jpeg?fl=res,400,300,3|shr,,20|jpg,90
495	For sale apartment 2+kt 54 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jn/G4kVUh.jpeg?fl=res,400,300,3|shr,,20|jpg,90
496	For sale apartment 3+kt 191 m²	https://d18-a.sdn.cz/d_18/c_img_QI_Jg/uyXBf6y.jpeg?fl=res,400,300,3|shr,,20|jpg,90
497	For sale apartment 2+1 46 m²	https://d18-a.sdn.cz/d_18/c_img_QP_K5/zYnnmB.jpeg?fl=res,400,300,3|shr,,20|jpg,90
498	For sale apartment 2+1 62 m²	https://d18-a.sdn.cz/d_18/c_img_QQ_Le/zCkBfgF.jpeg?fl=res,400,300,3|shr,,20|jpg,90
499	For sale apartment 1+kt 180 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jn/YrTVUi.jpeg?fl=res,400,300,3|shr,,20|jpg,90
500	For sale apartment 3+kt 81 m²	https://d18-a.sdn.cz/d_18/c_img_QR_MC/GxxBfoJ.jpeg?fl=res,400,300,3|shr,,20|jpg,90
501	For sale apartment 3+1 79 m²	https://d18-a.sdn.cz/d_18/c_img_QK_Jn/4ubVUX.jpeg?fl=res,400,300,3|shr,,20|jpg,90
\.


--
-- TOC entry 3326 (class 0 OID 16410)
-- Dependencies: 214
-- Data for Name: _prisma_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
4c6f8550-adc2-4679-96a9-01eb3ed862ae	1f581757ac31c5f10d5092690b8577296050ef50e3651950d10721753afb4ba1	2023-06-07 01:34:07.099887+02	20230606233407_initial_db_setup	\N	\N	2023-06-07 01:34:07.073601+02	1
\.


--
-- TOC entry 3335 (class 0 OID 0)
-- Dependencies: 215
-- Name: Ad_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Ad_id_seq"', 501, true);


--
-- TOC entry 3183 (class 2606 OID 16427)
-- Name: Ad Ad_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ad"
    ADD CONSTRAINT "Ad_pkey" PRIMARY KEY (id);


--
-- TOC entry 3181 (class 2606 OID 16418)
-- Name: _prisma_migrations _prisma_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);


-- Completed on 2023-06-11 22:54:18

--
-- PostgreSQL database dump complete
--

