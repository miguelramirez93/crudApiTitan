--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.3
-- Dumped by pg_dump version 9.5.4

-- Started on 2016-09-18 16:01:46 COT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 8 (class 2615 OID 19176)
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
-- TOC entry 183 (class 1259 OID 19179)
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
-- Dependencies: 183
-- Name: COLUMN dominio.id; Type: COMMENT; Schema: ruler; Owner: postgres
--

COMMENT ON COLUMN dominio.id IS 'Identificador del dominio';


--
-- TOC entry 2212 (class 0 OID 0)
-- Dependencies: 183
-- Name: COLUMN dominio.nombre; Type: COMMENT; Schema: ruler; Owner: postgres
--

COMMENT ON COLUMN dominio.nombre IS 'Nombre del dominio';


--
-- TOC entry 2213 (class 0 OID 0)
-- Dependencies: 183
-- Name: COLUMN dominio.descripcion; Type: COMMENT; Schema: ruler; Owner: postgres
--

COMMENT ON COLUMN dominio.descripcion IS 'Descripcion del dominio';


--
-- TOC entry 182 (class 1259 OID 19177)
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
-- Dependencies: 182
-- Name: dominio_id_seq; Type: SEQUENCE OWNED BY; Schema: ruler; Owner: postgres
--

ALTER SEQUENCE dominio_id_seq OWNED BY dominio.id;


--
-- TOC entry 185 (class 1259 OID 19187)
-- Name: predicado; Type: TABLE; Schema: ruler; Owner: postgres
--

CREATE TABLE predicado (
    id integer NOT NULL,
    dominio integer NOT NULL,
    nombre character varying(150) NOT NULL,
    descripcion character varying(150) NOT NULL,
    tipo_predicado smallint NOT NULL
);


ALTER TABLE predicado OWNER TO postgres;

--
-- TOC entry 2215 (class 0 OID 0)
-- Dependencies: 185
-- Name: COLUMN predicado.id; Type: COMMENT; Schema: ruler; Owner: postgres
--

COMMENT ON COLUMN predicado.id IS 'Identificador del predicado';


--
-- TOC entry 2216 (class 0 OID 0)
-- Dependencies: 185
-- Name: COLUMN predicado.dominio; Type: COMMENT; Schema: ruler; Owner: postgres
--

COMMENT ON COLUMN predicado.dominio IS 'Identificador del dominio';


--
-- TOC entry 2217 (class 0 OID 0)
-- Dependencies: 185
-- Name: COLUMN predicado.nombre; Type: COMMENT; Schema: ruler; Owner: postgres
--

COMMENT ON COLUMN predicado.nombre IS 'Texto del predicado';


--
-- TOC entry 2218 (class 0 OID 0)
-- Dependencies: 185
-- Name: COLUMN predicado.descripcion; Type: COMMENT; Schema: ruler; Owner: postgres
--

COMMENT ON COLUMN predicado.descripcion IS 'Descripcion del predicado';


--
-- TOC entry 2219 (class 0 OID 0)
-- Dependencies: 185
-- Name: COLUMN predicado.tipo_predicado; Type: COMMENT; Schema: ruler; Owner: postgres
--

COMMENT ON COLUMN predicado.tipo_predicado IS 'Define si es un hecho o una regla';


--
-- TOC entry 184 (class 1259 OID 19185)
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
-- Dependencies: 184
-- Name: predicado_id_seq; Type: SEQUENCE OWNED BY; Schema: ruler; Owner: postgres
--

ALTER SEQUENCE predicado_id_seq OWNED BY predicado.id;


--
-- TOC entry 187 (class 1259 OID 19195)
-- Name: tipo_predicado; Type: TABLE; Schema: ruler; Owner: postgres
--

CREATE TABLE tipo_predicado (
    id integer NOT NULL,
    nombre character varying(20)
);


ALTER TABLE tipo_predicado OWNER TO postgres;

--
-- TOC entry 2221 (class 0 OID 0)
-- Dependencies: 187
-- Name: COLUMN tipo_predicado.id; Type: COMMENT; Schema: ruler; Owner: postgres
--

COMMENT ON COLUMN tipo_predicado.id IS 'Identificador del tipo de predicado';


--
-- TOC entry 2222 (class 0 OID 0)
-- Dependencies: 187
-- Name: COLUMN tipo_predicado.nombre; Type: COMMENT; Schema: ruler; Owner: postgres
--

COMMENT ON COLUMN tipo_predicado.nombre IS 'Nombre del tipo de predicado';


--
-- TOC entry 186 (class 1259 OID 19193)
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
-- Dependencies: 186
-- Name: tipo_predicado_id_seq; Type: SEQUENCE OWNED BY; Schema: ruler; Owner: postgres
--

ALTER SEQUENCE tipo_predicado_id_seq OWNED BY tipo_predicado.id;


--
-- TOC entry 2072 (class 2604 OID 19182)
-- Name: id; Type: DEFAULT; Schema: ruler; Owner: postgres
--

ALTER TABLE ONLY dominio ALTER COLUMN id SET DEFAULT nextval('dominio_id_seq'::regclass);


--
-- TOC entry 2073 (class 2604 OID 19190)
-- Name: id; Type: DEFAULT; Schema: ruler; Owner: postgres
--

ALTER TABLE ONLY predicado ALTER COLUMN id SET DEFAULT nextval('predicado_id_seq'::regclass);


--
-- TOC entry 2074 (class 2604 OID 19198)
-- Name: id; Type: DEFAULT; Schema: ruler; Owner: postgres
--

ALTER TABLE ONLY tipo_predicado ALTER COLUMN id SET DEFAULT nextval('tipo_predicado_id_seq'::regclass);


--
-- TOC entry 2198 (class 0 OID 19179)
-- Dependencies: 183
-- Data for Name: dominio; Type: TABLE DATA; Schema: ruler; Owner: postgres
--

INSERT INTO dominio VALUES (1, 'NominaHC', 'Dominio para las liquidaciones de Nomina de HC');


--
-- TOC entry 2224 (class 0 OID 0)
-- Dependencies: 182
-- Name: dominio_id_seq; Type: SEQUENCE SET; Schema: ruler; Owner: postgres
--

SELECT pg_catalog.setval('dominio_id_seq', 1, false);


--
-- TOC entry 2200 (class 0 OID 19187)
-- Dependencies: 185
-- Data for Name: predicado; Type: TABLE DATA; Schema: ruler; Owner: postgres
--

INSERT INTO predicado VALUES (31, 1, 'tarifa(ret383,0,95,0,0).', 'a', 1);
INSERT INTO predicado VALUES (28, 1, 'valor_uvt(29753,2016).', 'a', 1);
INSERT INTO predicado VALUES (33, 1, 'tarifa(ret383,95,150,0.19,0).', 'a', 1);
INSERT INTO predicado VALUES (34, 1, 'tarifa(ret383,150,360,0.28,10).', 'a', 1);
INSERT INTO predicado VALUES (35, 1, 'tarifa(ret383,360,999999999999,0.33,69).', 'a', 1);
INSERT INTO predicado VALUES (36, 1, 'base_ret(X,Y,P,rete383):- valor_pago(X,P,V),R is V * 0.25 , Y is V - R.', 'a', 1);
INSERT INTO predicado VALUES (39, 1, 'valores(X,T,P,L):-findall((X, Y, N, Z, R),((factor(X,T,Y,N,Z,P),Y==porcentaje,valor_pago(X,P,V),R is P * Z)),L).', 'a', 1);
INSERT INTO predicado VALUES (40, 1, 'valores(X,T,P,L):-findall((X, Y, N, Z, R),((factor(X,T,Y,N,Z,P),Y==fijo,R is Z)),L).', 'a', 1);
INSERT INTO predicado VALUES (41, 1, 'retenciones(X,T,P,L):-findall((X, T, P ,Z, R),(retencion(X,R,P,T),base_ret(X,Z,P,T)),L).', 'a', 1);
INSERT INTO predicado VALUES (42, 1, 'unir([], Cs, Cs).', 'a', 1);
INSERT INTO predicado VALUES (43, 1, 'unir([A|As],Bs,[A|Cs]):-unir(As, Bs, Cs).', 'a', 1);
INSERT INTO predicado VALUES (44, 1, 'total_descuentos([], 0).', 'a', 1);
INSERT INTO predicado VALUES (45, 1, 'total_descuentos([(X, _, _, _, R)|Xs], S):-total_descuentos(Xs, S2),S is S2 + R.', 'a', 1);
INSERT INTO predicado VALUES (46, 1, 'valor_pago_neto(X,Y,P,V,L,L2):-valor_pago(X,P,V),valores(X,descuento,P,L),retenciones(X,T,P,L2),unir(L,L2,LS),total_descuentos(LS,D),Y is V - D.', 'a', 1);
INSERT INTO predicado VALUES (47, 1, 'factor(prueba, descuento, porcentaje, salud, 0.04, 2016).', 'a', 1);
INSERT INTO predicado VALUES (38, 1, 'retencion(X,Y,P,rete383):- base_ret(X,V,P,rete383),valor_uvt(U,P),T is V / U ,tarifa(ret383,I,S,C,A),(T@>I),(T@<S),Y is (((T-I)*C)+A)*U.', 'a', 1);
INSERT INTO predicado VALUES (27, 1, 'valor_pago(X,V,P):-valor_contrato(X,Y), duracion_contrato(X,D,V), P is Y / D.', 'a', 1);


--
-- TOC entry 2225 (class 0 OID 0)
-- Dependencies: 184
-- Name: predicado_id_seq; Type: SEQUENCE SET; Schema: ruler; Owner: postgres
--

SELECT pg_catalog.setval('predicado_id_seq', 47, true);


--
-- TOC entry 2202 (class 0 OID 19195)
-- Dependencies: 187
-- Data for Name: tipo_predicado; Type: TABLE DATA; Schema: ruler; Owner: postgres
--

INSERT INTO tipo_predicado VALUES (1, 'predicado');
INSERT INTO tipo_predicado VALUES (2, 'regla');


--
-- TOC entry 2226 (class 0 OID 0)
-- Dependencies: 186
-- Name: tipo_predicado_id_seq; Type: SEQUENCE SET; Schema: ruler; Owner: postgres
--

SELECT pg_catalog.setval('tipo_predicado_id_seq', 1, false);


--
-- TOC entry 2078 (class 2606 OID 19192)
-- Name: pk_componente; Type: CONSTRAINT; Schema: ruler; Owner: postgres
--

ALTER TABLE ONLY predicado
    ADD CONSTRAINT pk_componente PRIMARY KEY (id);


--
-- TOC entry 2076 (class 2606 OID 19184)
-- Name: pk_dominio; Type: CONSTRAINT; Schema: ruler; Owner: postgres
--

ALTER TABLE ONLY dominio
    ADD CONSTRAINT pk_dominio PRIMARY KEY (id);


--
-- TOC entry 2080 (class 2606 OID 19200)
-- Name: pk_tipo_predicado; Type: CONSTRAINT; Schema: ruler; Owner: postgres
--

ALTER TABLE ONLY tipo_predicado
    ADD CONSTRAINT pk_tipo_predicado PRIMARY KEY (id);


--
-- TOC entry 2081 (class 2606 OID 19201)
-- Name: dominio; Type: FK CONSTRAINT; Schema: ruler; Owner: postgres
--

ALTER TABLE ONLY predicado
    ADD CONSTRAINT dominio FOREIGN KEY (dominio) REFERENCES dominio(id) MATCH FULL;


--
-- TOC entry 2082 (class 2606 OID 19206)
-- Name: fk_predicado_tipo_predicado; Type: FK CONSTRAINT; Schema: ruler; Owner: postgres
--

ALTER TABLE ONLY predicado
    ADD CONSTRAINT fk_predicado_tipo_predicado FOREIGN KEY (tipo_predicado) REFERENCES tipo_predicado(id) MATCH FULL;


--
-- TOC entry 2209 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2016-09-18 16:01:46 COT

--
-- PostgreSQL database dump complete
--

