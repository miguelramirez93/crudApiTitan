--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.3
-- Dumped by pg_dump version 9.5.4

-- Started on 2016-10-11 20:01:19 COT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 7 (class 2615 OID 27164)
-- Name: ruler; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA ruler;


ALTER SCHEMA ruler OWNER TO postgres;

--
-- TOC entry 1 (class 3079 OID 12435)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2210 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = ruler, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 182 (class 1259 OID 27165)
-- Name: dominio; Type: TABLE; Schema: ruler; Owner: postgres
--

CREATE TABLE dominio (
    id integer NOT NULL,
    nombre character varying(35) NOT NULL,
    descripcion character varying(150)
);


ALTER TABLE dominio OWNER TO postgres;

--
-- TOC entry 2211 (class 0 OID 0)
-- Dependencies: 182
-- Name: COLUMN dominio.id; Type: COMMENT; Schema: ruler; Owner: postgres
--

COMMENT ON COLUMN dominio.id IS 'Identificador del dominio';


--
-- TOC entry 2212 (class 0 OID 0)
-- Dependencies: 182
-- Name: COLUMN dominio.nombre; Type: COMMENT; Schema: ruler; Owner: postgres
--

COMMENT ON COLUMN dominio.nombre IS 'Nombre del dominio';


--
-- TOC entry 2213 (class 0 OID 0)
-- Dependencies: 182
-- Name: COLUMN dominio.descripcion; Type: COMMENT; Schema: ruler; Owner: postgres
--

COMMENT ON COLUMN dominio.descripcion IS 'Descripcion del dominio';


--
-- TOC entry 183 (class 1259 OID 27168)
-- Name: dominio_id_seq; Type: SEQUENCE; Schema: ruler; Owner: postgres
--

CREATE SEQUENCE dominio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dominio_id_seq OWNER TO postgres;

--
-- TOC entry 2214 (class 0 OID 0)
-- Dependencies: 183
-- Name: dominio_id_seq; Type: SEQUENCE OWNED BY; Schema: ruler; Owner: postgres
--

ALTER SEQUENCE dominio_id_seq OWNED BY dominio.id;


--
-- TOC entry 184 (class 1259 OID 27170)
-- Name: predicado; Type: TABLE; Schema: ruler; Owner: postgres
--

CREATE TABLE predicado (
    id integer NOT NULL,
    dominio integer NOT NULL,
    nombre character varying(300) NOT NULL,
    descripcion character varying(150) NOT NULL,
    tipo_predicado smallint NOT NULL
);


ALTER TABLE predicado OWNER TO postgres;

--
-- TOC entry 2215 (class 0 OID 0)
-- Dependencies: 184
-- Name: COLUMN predicado.id; Type: COMMENT; Schema: ruler; Owner: postgres
--

COMMENT ON COLUMN predicado.id IS 'Identificador del predicado';


--
-- TOC entry 2216 (class 0 OID 0)
-- Dependencies: 184
-- Name: COLUMN predicado.dominio; Type: COMMENT; Schema: ruler; Owner: postgres
--

COMMENT ON COLUMN predicado.dominio IS 'Identificador del dominio';


--
-- TOC entry 2217 (class 0 OID 0)
-- Dependencies: 184
-- Name: COLUMN predicado.nombre; Type: COMMENT; Schema: ruler; Owner: postgres
--

COMMENT ON COLUMN predicado.nombre IS 'Texto del predicado';


--
-- TOC entry 2218 (class 0 OID 0)
-- Dependencies: 184
-- Name: COLUMN predicado.descripcion; Type: COMMENT; Schema: ruler; Owner: postgres
--

COMMENT ON COLUMN predicado.descripcion IS 'Descripcion del predicado';


--
-- TOC entry 2219 (class 0 OID 0)
-- Dependencies: 184
-- Name: COLUMN predicado.tipo_predicado; Type: COMMENT; Schema: ruler; Owner: postgres
--

COMMENT ON COLUMN predicado.tipo_predicado IS 'Define si es un hecho o una regla';


--
-- TOC entry 185 (class 1259 OID 27173)
-- Name: predicado_id_seq; Type: SEQUENCE; Schema: ruler; Owner: postgres
--

CREATE SEQUENCE predicado_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE predicado_id_seq OWNER TO postgres;

--
-- TOC entry 2220 (class 0 OID 0)
-- Dependencies: 185
-- Name: predicado_id_seq; Type: SEQUENCE OWNED BY; Schema: ruler; Owner: postgres
--

ALTER SEQUENCE predicado_id_seq OWNED BY predicado.id;


--
-- TOC entry 186 (class 1259 OID 27175)
-- Name: tipo_predicado; Type: TABLE; Schema: ruler; Owner: postgres
--

CREATE TABLE tipo_predicado (
    id integer NOT NULL,
    nombre character varying(20)
);


ALTER TABLE tipo_predicado OWNER TO postgres;

--
-- TOC entry 2221 (class 0 OID 0)
-- Dependencies: 186
-- Name: COLUMN tipo_predicado.id; Type: COMMENT; Schema: ruler; Owner: postgres
--

COMMENT ON COLUMN tipo_predicado.id IS 'Identificador del tipo de predicado';


--
-- TOC entry 2222 (class 0 OID 0)
-- Dependencies: 186
-- Name: COLUMN tipo_predicado.nombre; Type: COMMENT; Schema: ruler; Owner: postgres
--

COMMENT ON COLUMN tipo_predicado.nombre IS 'Nombre del tipo de predicado';


--
-- TOC entry 187 (class 1259 OID 27178)
-- Name: tipo_predicado_id_seq; Type: SEQUENCE; Schema: ruler; Owner: postgres
--

CREATE SEQUENCE tipo_predicado_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tipo_predicado_id_seq OWNER TO postgres;

--
-- TOC entry 2223 (class 0 OID 0)
-- Dependencies: 187
-- Name: tipo_predicado_id_seq; Type: SEQUENCE OWNED BY; Schema: ruler; Owner: postgres
--

ALTER SEQUENCE tipo_predicado_id_seq OWNED BY tipo_predicado.id;


--
-- TOC entry 2072 (class 2604 OID 27180)
-- Name: id; Type: DEFAULT; Schema: ruler; Owner: postgres
--

ALTER TABLE ONLY dominio ALTER COLUMN id SET DEFAULT nextval('dominio_id_seq'::regclass);


--
-- TOC entry 2073 (class 2604 OID 27181)
-- Name: id; Type: DEFAULT; Schema: ruler; Owner: postgres
--

ALTER TABLE ONLY predicado ALTER COLUMN id SET DEFAULT nextval('predicado_id_seq'::regclass);


--
-- TOC entry 2074 (class 2604 OID 27182)
-- Name: id; Type: DEFAULT; Schema: ruler; Owner: postgres
--

ALTER TABLE ONLY tipo_predicado ALTER COLUMN id SET DEFAULT nextval('tipo_predicado_id_seq'::regclass);


--
-- TOC entry 2197 (class 0 OID 27165)
-- Dependencies: 182
-- Data for Name: dominio; Type: TABLE DATA; Schema: ruler; Owner: postgres
--

INSERT INTO dominio VALUES (1, 'NominaHC', 'Dominio para las liquidaciones de Nomina de HC');


--
-- TOC entry 2224 (class 0 OID 0)
-- Dependencies: 183
-- Name: dominio_id_seq; Type: SEQUENCE SET; Schema: ruler; Owner: postgres
--

SELECT pg_catalog.setval('dominio_id_seq', 1, false);


--
-- TOC entry 2199 (class 0 OID 27170)
-- Dependencies: 184
-- Data for Name: predicado; Type: TABLE DATA; Schema: ruler; Owner: postgres
--

INSERT INTO predicado VALUES (2, 1, 'valor_uvt(29753,2016).', 'Valor uvt por periodo', 1);
INSERT INTO predicado VALUES (4, 1, 'tarifa(ret383,0,95,0,0).', 'Tarifa para la retencion 383 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (7, 1, 'tarifa(ret383,95,150,0.19,0).', 'Tarifa para la retencion 383 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (9, 1, 'tarifa(ret383,150,360,0.28,10).', 'Tarifa para la retencion 383 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (11, 1, 'tarifa(ret383,360,999999999999,0.33,69).', 'Tarifa para la retencion 383 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (13, 1, 'tarifa(ret384,0,128.96,0,0).
tarifa(ret384,0,128.96,0,0).
', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (14, 1, 'tarifa(ret384,128.96,132.36,0.09,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (15, 1, 'tarifa(ret384,132.36,135.75,0.09,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (16, 1, 'tarifa(ret384,135.75,139.14,0.09,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (17, 1, 'tarifa(ret384,139.14,142.54,0.09,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (18, 1, 'tarifa(ret384,142.54,145.93,0.1,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (19, 1, 'tarifa(ret384,145.93,149.32,0.2,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (20, 1, 'tarifa(ret384,149.32,152.72,0.2,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (21, 1, 'tarifa(ret384,152.72,156.11,0.21,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (23, 1, 'tarifa(ret384,156.11,159.51,0.4,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (24, 1, 'tarifa(ret384,159.51,162.9,0.41,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (25, 1, 'tarifa(ret384,162.9,166.29,0.1,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (26, 1, 'tarifa(ret384,162.9,166.29,0.41,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (27, 1, 'tarifa(ret384,166.29,169.69,0.7,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (28, 1, 'tarifa(ret384,169.69,176.47,0.73,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (29, 1, 'tarifa(ret384,176.47,183.26,1.15,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (30, 1, 'tarifa(ret384,183.26,190.05,1.19,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (31, 1, 'tarifa(ret384,190.05,196.84,1.65,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (32, 1, 'tarifa(ret384,196.84,203.62,2.14,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (33, 1, 'tarifa(ret384,203.62,210.41,2.21).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (34, 1, 'tarifa(ret384,210.41,217.2,2.96,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (35, 1, 'tarifa(ret384,217.2,230.77,3.87,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (36, 1, 'tarifa(ret384,230.77,237.56,4.63,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (38, 1, 'tarifa(ret384,237.56,244.35,5.06,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (39, 1, 'tarifa(ret384,244.35,257.92,5.96,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (40, 1, 'tarifa(ret384,257.92,264.71,6.44,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (42, 1, 'tarifa(ret384,271.5,278.29,7.44,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (41, 1, 'tarifa(ret384,264.71,271.5,6.93,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (43, 1, 'tarifa(ret384,278.29,285.07,7.96,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (44, 1, 'tarifa(ret384,285.07,291.86,8.5,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (45, 1, 'tarifa(ret384,291.86,298.65,9.05,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (47, 1, 'tarifa(ret384,298.65,305.44,9.62,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (48, 1, 'tarifa(ret384,305.44,312.22,10.21,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (49, 1, 'tarifa(ret384,312.22,319.01,10.81,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (50, 1, 'tarifa(ret384,319.01,325.8,11.43,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (51, 1, 'tarifa(ret384,325.8,332.59,12.07,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (52, 1, 'tarifa(ret384,332.59,339.37,12.71,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (53, 1, 'tarifa(ret384,339.37,356.34,14.06,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (54, 1, 'tarifa(ret384,356.34,373.31,15.83,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (55, 1, 'tarifa(ret384,373.31,390.28,17.69,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (56, 1, 'tarifa(ret384,390.28,407.25,19.65,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (57, 1, 'tarifa(ret384,407.25,424.22,21.69,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (58, 1, 'tarifa(ret384,424.22,441.19,23.84,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (59, 1, 'tarifa(ret384,441.19,458.16,26.07,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (61, 1, 'tarifa(ret384,458.16,475.12,28.39,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (62, 1, 'tarifa(ret384,475.12,492.09,30.8,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (63, 1, 'tarifa(ret384,492.09,509.06,33.29,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (64, 1, 'tarifa(ret384,509.06,526.03,35.87,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (65, 1, 'tarifa(ret384,526.03,543,38.54,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (66, 1, 'tarifa(ret384,543,559.97,41.29,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (68, 1, 'tarifa(ret384,559.97,576.94,44.11,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (69, 1, 'tarifa(ret384,576.94,593.9,47.02,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (71, 1, 'tarifa(ret384,593.9,610.87,50,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (72, 1, 'tarifa(ret384,610.87,627.84,53.06,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (73, 1, 'tarifa(ret384,627.84,644.81,56.2,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (74, 1, 'tarifa(ret384,644.81,661.78,59.4,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (75, 1, 'tarifa(ret384,661.78,678.75,62.68,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (76, 1, 'tarifa(ret384,678.75,695.72,66.02,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (78, 1, 'tarifa(ret384,695.72,712.69,69.43,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (79, 1, 'tarifa(ret384,712.69,729.65,72.9,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (80, 1, 'tarifa(ret384,729.65,746.62,76.43,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (81, 1, 'tarifa(ret384,746.62,763.59,80.03,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (82, 1, 'tarifa(ret384,763.59,780.56,83.68,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (83, 1, 'tarifa(ret384,780.56,797.53,87.39,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (84, 1, 'tarifa(ret384,797.53,814.5,91.15,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (85, 1, 'tarifa(ret384,814.5,831.47,94.96,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (86, 1, 'tarifa(ret384,831.47,848.44,98.81,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (87, 1, 'tarifa(ret384,848.44,865.4,102.72,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (88, 1, 'tarifa(ret384,865.4,882.37,106.67,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (89, 1, 'tarifa(ret384,882.37,899.34,110.65,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (91, 1, 'tarifa(ret384,899.34,916.31,114.68,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (92, 1, 'tarifa(ret384,916.31,933.28,118.74,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (93, 1, 'tarifa(ret384,933.28,950.25,122.84,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (94, 1, 'tarifa(ret384,950.25,967.22,126.96,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (95, 1, 'tarifa(ret384,967.22,984.19,131.11,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (96, 1, 'tarifa(ret384,984.19,1001.15,135.29,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (97, 1, 'tarifa(ret384,1001.15,1018.12,139.49,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (98, 1, 'tarifa(ret384,1018.12,1035.09,143.71,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (99, 1, 'tarifa(ret384,1035.09,1052.06,147.94,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (101, 1, 'tarifa(ret384,1052.06,1069.03,152.19,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (103, 1, 'tarifa(ret384,1069.03,1086,156.45,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (104, 1, 'tarifa(ret384,1086,1102.97,160.72,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (105, 1, 'tarifa(ret384,1102.97,1119.93,164.99,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (106, 1, 'tarifa(ret384,1119.93,1136.92,169.26,0).', 'Tarifa para la retencion 384 *cada tarifa tiene 5 variables, en este caso nombre,limite inferior, lim superior, valor, valor adicional*', 1);
INSERT INTO predicado VALUES (107, 1, 'tarifa(reteIca,9.66,1000,0,0).', 'Tarifa para reteica *no se usan los 5 campos, el primero representa un factor y el otro una base para el calculo de este descuento*', 1);
INSERT INTO predicado VALUES (108, 1, 'tarifa(estampillaUD,0.01,0,0,0).', 'Tarifa para estampilla UD *no se usan los 5 campos, el primero representa el porsentaje de descuento que se aplica a la base*', 1);
INSERT INTO predicado VALUES (110, 1, 'tarifa(proCultura,0.005,0,0,0).', 'Tarifa para procultura *no se usan los 5 campos, el primero representa el porsentaje de descuento que se aplica a la base*', 1);
INSERT INTO predicado VALUES (111, 1, 'tarifa(adultoMayor,0.005,0,0,0).', 'Tarifa para adilto mayor*no se usan los 5 campos, el primero representa el porsentaje de descuento que se aplica a la base*', 1);
INSERT INTO predicado VALUES (113, 1, 'base_desc_ley(X,Y,P,rete384):- valor_pago(X,P,Y).', 'Calculo de la base para cada descuento', 1);
INSERT INTO predicado VALUES (114, 1, 'base_desc_ley(X,Y,P,secrHacienda):- base_desc_ley(X,Y,P,rete383).', 'Calculo de la base para cada descuento', 1);
INSERT INTO predicado VALUES (122, 1, 'valores(X,T,P,L):-findall((X, Y, N, Z, R),((factor(X,T,Y,N,Z,P),Y==porcentaje,valor_pago(X,P,V),R is P * Z)),L).', 'Trae una lista de los valores de novedades para un empleado', 1);
INSERT INTO predicado VALUES (123, 1, 'valores(X,T,P,L):-findall((X, Y, N, Z, R),((factor(X,T,Y,N,Z,P),Y==fijo,R is Z)),L).', 'Trae una lista de los valores fijos de novedades para un empleado', 1);
INSERT INTO predicado VALUES (124, 1, 'descuentos_ley(X,T,P,L):-findall((X, T, P,Z, R),(descuento_ley(X,R,P,Z,T)),L).', 'Trae una lista de los descuentos de ley para el empleado.', 1);
INSERT INTO predicado VALUES (125, 1, 'unir([], Cs, Cs).', 'Funcion para unir listas', 1);
INSERT INTO predicado VALUES (127, 1, 'unir([A|As],Bs,[A|Cs]):-unir(As, Bs, Cs).', 'Funcion para unir listas', 1);
INSERT INTO predicado VALUES (130, 1, 'total_descuentos([], 0).', 'Funcion para sumar el total de los descuentos en una lista', 1);
INSERT INTO predicado VALUES (131, 1, 'total_descuentos([(X, _, _, _, R)|Xs], S):-total_descuentos(Xs, S2),S is S2 + R.', 'Funcion para sumar el total de los descuentos en una lista', 1);
INSERT INTO predicado VALUES (133, 1, 'valor_pago_neto(X,Y,P,V,L,L2):-valor_pago(X,P,V),valores(X,descuento,P,L),descuentos_ley(X,T,P,L2),unir(L,L2,LS),total_descuentos(LS,D),Y is V - D.', 'Hace el calculo de el total a pagar al empleado tomenado en cuenta novedades y descu8entos de ley', 1);
INSERT INTO predicado VALUES (134, 1, 'valor_pago(X,V,P):-valor_contrato(X,Y), duracion_contrato(X,D,V), P is Y / D.', 'a', 1);
INSERT INTO predicado VALUES (135, 1, 'factor(prueba, descuento, porcentaje, salud, 0.04, 2016).', 'factor para la funcion findall (ejemplo)', 1);
INSERT INTO predicado VALUES (112, 1, 'base_desc_ley(X,Y,P,rete383):- valor_pago(X,P,V),R is (V * 0.25) rnd 0 , S is V - R,Y is (S rnd 0).', 'Calculo de la base para cada descuento', 1);
INSERT INTO predicado VALUES (115, 1, 'descuento_ley(X,Y,P,V,rete383):- base_desc_ley(X,V,P,rete383),valor_uvt(U,P),T is V / U ,tarifa(ret383,I,S,C,A),T@>I,T@=<S,R is (((T-I)*C)+A)*U,Y is (R rnd 0).', 'Calculo de los descuentos a aplicar', 1);
INSERT INTO predicado VALUES (117, 1, 'descuento_ley(X,Y,P,V,reteIca):- base_desc_ley(X,V,P,''secrHacienda''),tarifa(reteIca,I,S,C,A),R is (V*I/S),Y is (R rnd 0).', 'Calculo de los descuentos a aplicar', 1);
INSERT INTO predicado VALUES (119, 1, 'descuento_ley(X,Y,P,V,estampillaUD):-base_desc_ley(X,V,P,''secrHacienda''),tarifa(estampillaUD,I,S,C,A),R is (V*I),Y is (R rnd 0).', 'Calculo de los descuentos a aplicar', 1);
INSERT INTO predicado VALUES (120, 1, 'descuento_ley(X,Y,P,V,proCultura):-base_desc_ley(X,V,P,''secrHacienda''),tarifa(proCultura,I,S,C,A),R is (V*I),Y is (R rnd 0).', '1', 1);
INSERT INTO predicado VALUES (121, 1, 'descuento_ley(X,Y,P,V,adultoMayor):-base_desc_ley(X,V,P,''secrHacienda''),tarifa(adultoMayor,I,S,C,A),R is (V*I),Y is (R rnd 0).', 'Calculo de los descuentos a aplicar', 1);
INSERT INTO predicado VALUES (116, 1, 'descuento_ley(X,Y,P,V,rete384):- base_desc_ley(X,V,P,rete384),valor_uvt(U,P),T is V / U ,tarifa(ret384,I,S,C,A), (T@>I,T@=<S)-> (R is (C * U),Y is (R rnd 0)); (R is (((0.27*T)-135.17) * U) ,Y is (R rnd 0)).', 'Calculo de los descuentos a aplicar', 1);


--
-- TOC entry 2225 (class 0 OID 0)
-- Dependencies: 185
-- Name: predicado_id_seq; Type: SEQUENCE SET; Schema: ruler; Owner: postgres
--

SELECT pg_catalog.setval('predicado_id_seq', 135, true);


--
-- TOC entry 2201 (class 0 OID 27175)
-- Dependencies: 186
-- Data for Name: tipo_predicado; Type: TABLE DATA; Schema: ruler; Owner: postgres
--

INSERT INTO tipo_predicado VALUES (1, 'predicado');
INSERT INTO tipo_predicado VALUES (2, 'regla');


--
-- TOC entry 2226 (class 0 OID 0)
-- Dependencies: 187
-- Name: tipo_predicado_id_seq; Type: SEQUENCE SET; Schema: ruler; Owner: postgres
--

SELECT pg_catalog.setval('tipo_predicado_id_seq', 1, false);


--
-- TOC entry 2078 (class 2606 OID 27184)
-- Name: pk_componente; Type: CONSTRAINT; Schema: ruler; Owner: postgres
--

ALTER TABLE ONLY predicado
    ADD CONSTRAINT pk_componente PRIMARY KEY (id);


--
-- TOC entry 2076 (class 2606 OID 27186)
-- Name: pk_dominio; Type: CONSTRAINT; Schema: ruler; Owner: postgres
--

ALTER TABLE ONLY dominio
    ADD CONSTRAINT pk_dominio PRIMARY KEY (id);


--
-- TOC entry 2080 (class 2606 OID 27188)
-- Name: pk_tipo_predicado; Type: CONSTRAINT; Schema: ruler; Owner: postgres
--

ALTER TABLE ONLY tipo_predicado
    ADD CONSTRAINT pk_tipo_predicado PRIMARY KEY (id);


--
-- TOC entry 2081 (class 2606 OID 27189)
-- Name: dominio; Type: FK CONSTRAINT; Schema: ruler; Owner: postgres
--

ALTER TABLE ONLY predicado
    ADD CONSTRAINT dominio FOREIGN KEY (dominio) REFERENCES dominio(id) MATCH FULL;


--
-- TOC entry 2082 (class 2606 OID 27194)
-- Name: fk_predicado_tipo_predicado; Type: FK CONSTRAINT; Schema: ruler; Owner: postgres
--

ALTER TABLE ONLY predicado
    ADD CONSTRAINT fk_predicado_tipo_predicado FOREIGN KEY (tipo_predicado) REFERENCES tipo_predicado(id) MATCH FULL;


--
-- TOC entry 2209 (class 0 OID 0)
-- Dependencies: 8
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2016-10-11 20:01:19 COT

--
-- PostgreSQL database dump complete
--

