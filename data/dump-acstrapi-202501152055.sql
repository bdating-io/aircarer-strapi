--
-- PostgreSQL database cluster dump
--

-- Started on 2025-01-15 20:55:22 AEDT

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE acstrapi;
ALTER ROLE acstrapi WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS;

--
-- User Configurations
--






--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.0
-- Dumped by pg_dump version 17.2

-- Started on 2025-01-15 20:55:22 AEDT

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

--
-- TOC entry 6 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: acstrapi
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO acstrapi;

--
-- TOC entry 2917 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: acstrapi
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2025-01-15 20:55:22 AEDT

--
-- PostgreSQL database dump complete
--

--
-- Database "acstrapi" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.0
-- Dumped by pg_dump version 17.2

-- Started on 2025-01-15 20:55:22 AEDT

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

--
-- TOC entry 3804 (class 1262 OID 16384)
-- Name: acstrapi; Type: DATABASE; Schema: -; Owner: acstrapi
--

CREATE DATABASE acstrapi WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE acstrapi OWNER TO acstrapi;

\connect acstrapi

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

--
-- TOC entry 7 (class 2615 OID 2200)
-- Name: acstrapi; Type: SCHEMA; Schema: -; Owner: acstrapi
--

CREATE SCHEMA acstrapi;


ALTER SCHEMA acstrapi OWNER TO acstrapi;

--
-- TOC entry 3805 (class 0 OID 0)
-- Dependencies: 7
-- Name: SCHEMA acstrapi; Type: COMMENT; Schema: -; Owner: acstrapi
--

COMMENT ON SCHEMA acstrapi IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 231 (class 1259 OID 16580)
-- Name: abouts; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.abouts (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.abouts OWNER TO acstrapi;

--
-- TOC entry 229 (class 1259 OID 16564)
-- Name: abouts_cmps; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.abouts_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE acstrapi.abouts_cmps OWNER TO acstrapi;

--
-- TOC entry 228 (class 1259 OID 16562)
-- Name: abouts_cmps_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.abouts_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.abouts_cmps_id_seq OWNER TO acstrapi;

--
-- TOC entry 3806 (class 0 OID 0)
-- Dependencies: 228
-- Name: abouts_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.abouts_cmps_id_seq OWNED BY acstrapi.abouts_cmps.id;


--
-- TOC entry 230 (class 1259 OID 16578)
-- Name: abouts_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.abouts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.abouts_id_seq OWNER TO acstrapi;

--
-- TOC entry 3807 (class 0 OID 0)
-- Dependencies: 230
-- Name: abouts_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.abouts_id_seq OWNED BY acstrapi.abouts.id;


--
-- TOC entry 245 (class 1259 OID 16682)
-- Name: admin_permissions; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.admin_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    action_parameters jsonb,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.admin_permissions OWNER TO acstrapi;

--
-- TOC entry 244 (class 1259 OID 16680)
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.admin_permissions_id_seq OWNER TO acstrapi;

--
-- TOC entry 3808 (class 0 OID 0)
-- Dependencies: 244
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.admin_permissions_id_seq OWNED BY acstrapi.admin_permissions.id;


--
-- TOC entry 297 (class 1259 OID 17006)
-- Name: admin_permissions_role_lnk; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.admin_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);


ALTER TABLE acstrapi.admin_permissions_role_lnk OWNER TO acstrapi;

--
-- TOC entry 296 (class 1259 OID 17004)
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.admin_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.admin_permissions_role_lnk_id_seq OWNER TO acstrapi;

--
-- TOC entry 3809 (class 0 OID 0)
-- Dependencies: 296
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.admin_permissions_role_lnk_id_seq OWNED BY acstrapi.admin_permissions_role_lnk.id;


--
-- TOC entry 249 (class 1259 OID 16710)
-- Name: admin_roles; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.admin_roles (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.admin_roles OWNER TO acstrapi;

--
-- TOC entry 248 (class 1259 OID 16708)
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.admin_roles_id_seq OWNER TO acstrapi;

--
-- TOC entry 3810 (class 0 OID 0)
-- Dependencies: 248
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.admin_roles_id_seq OWNED BY acstrapi.admin_roles.id;


--
-- TOC entry 247 (class 1259 OID 16696)
-- Name: admin_users; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.admin_users (
    id integer NOT NULL,
    document_id character varying(255),
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.admin_users OWNER TO acstrapi;

--
-- TOC entry 246 (class 1259 OID 16694)
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.admin_users_id_seq OWNER TO acstrapi;

--
-- TOC entry 3811 (class 0 OID 0)
-- Dependencies: 246
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.admin_users_id_seq OWNED BY acstrapi.admin_users.id;


--
-- TOC entry 299 (class 1259 OID 17019)
-- Name: admin_users_roles_lnk; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.admin_users_roles_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_ord double precision,
    user_ord double precision
);


ALTER TABLE acstrapi.admin_users_roles_lnk OWNER TO acstrapi;

--
-- TOC entry 298 (class 1259 OID 17017)
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.admin_users_roles_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.admin_users_roles_lnk_id_seq OWNER TO acstrapi;

--
-- TOC entry 3812 (class 0 OID 0)
-- Dependencies: 298
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.admin_users_roles_lnk_id_seq OWNED BY acstrapi.admin_users_roles_lnk.id;


--
-- TOC entry 235 (class 1259 OID 16610)
-- Name: articles; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.articles (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    description text,
    slug character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.articles OWNER TO acstrapi;

--
-- TOC entry 293 (class 1259 OID 16980)
-- Name: articles_author_lnk; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.articles_author_lnk (
    id integer NOT NULL,
    article_id integer,
    author_id integer,
    article_ord double precision
);


ALTER TABLE acstrapi.articles_author_lnk OWNER TO acstrapi;

--
-- TOC entry 292 (class 1259 OID 16978)
-- Name: articles_author_lnk_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.articles_author_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.articles_author_lnk_id_seq OWNER TO acstrapi;

--
-- TOC entry 3813 (class 0 OID 0)
-- Dependencies: 292
-- Name: articles_author_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.articles_author_lnk_id_seq OWNED BY acstrapi.articles_author_lnk.id;


--
-- TOC entry 295 (class 1259 OID 16993)
-- Name: articles_category_lnk; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.articles_category_lnk (
    id integer NOT NULL,
    article_id integer,
    category_id integer,
    article_ord double precision
);


ALTER TABLE acstrapi.articles_category_lnk OWNER TO acstrapi;

--
-- TOC entry 294 (class 1259 OID 16991)
-- Name: articles_category_lnk_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.articles_category_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.articles_category_lnk_id_seq OWNER TO acstrapi;

--
-- TOC entry 3814 (class 0 OID 0)
-- Dependencies: 294
-- Name: articles_category_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.articles_category_lnk_id_seq OWNED BY acstrapi.articles_category_lnk.id;


--
-- TOC entry 233 (class 1259 OID 16594)
-- Name: articles_cmps; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.articles_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE acstrapi.articles_cmps OWNER TO acstrapi;

--
-- TOC entry 232 (class 1259 OID 16592)
-- Name: articles_cmps_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.articles_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.articles_cmps_id_seq OWNER TO acstrapi;

--
-- TOC entry 3815 (class 0 OID 0)
-- Dependencies: 232
-- Name: articles_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.articles_cmps_id_seq OWNED BY acstrapi.articles_cmps.id;


--
-- TOC entry 234 (class 1259 OID 16608)
-- Name: articles_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.articles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.articles_id_seq OWNER TO acstrapi;

--
-- TOC entry 3816 (class 0 OID 0)
-- Dependencies: 234
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.articles_id_seq OWNED BY acstrapi.articles.id;


--
-- TOC entry 237 (class 1259 OID 16624)
-- Name: authors; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.authors (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    email character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.authors OWNER TO acstrapi;

--
-- TOC entry 236 (class 1259 OID 16622)
-- Name: authors_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.authors_id_seq OWNER TO acstrapi;

--
-- TOC entry 3817 (class 0 OID 0)
-- Dependencies: 236
-- Name: authors_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.authors_id_seq OWNED BY acstrapi.authors.id;


--
-- TOC entry 239 (class 1259 OID 16638)
-- Name: categories; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.categories (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    slug character varying(255),
    description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.categories OWNER TO acstrapi;

--
-- TOC entry 238 (class 1259 OID 16636)
-- Name: categories_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.categories_id_seq OWNER TO acstrapi;

--
-- TOC entry 3818 (class 0 OID 0)
-- Dependencies: 238
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.categories_id_seq OWNED BY acstrapi.categories.id;


--
-- TOC entry 267 (class 1259 OID 16821)
-- Name: components_shared_media; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.components_shared_media (
    id integer NOT NULL
);


ALTER TABLE acstrapi.components_shared_media OWNER TO acstrapi;

--
-- TOC entry 266 (class 1259 OID 16819)
-- Name: components_shared_media_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.components_shared_media_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.components_shared_media_id_seq OWNER TO acstrapi;

--
-- TOC entry 3819 (class 0 OID 0)
-- Dependencies: 266
-- Name: components_shared_media_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.components_shared_media_id_seq OWNED BY acstrapi.components_shared_media.id;


--
-- TOC entry 265 (class 1259 OID 16810)
-- Name: components_shared_quotes; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.components_shared_quotes (
    id integer NOT NULL,
    title character varying(255),
    body text
);


ALTER TABLE acstrapi.components_shared_quotes OWNER TO acstrapi;

--
-- TOC entry 264 (class 1259 OID 16808)
-- Name: components_shared_quotes_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.components_shared_quotes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.components_shared_quotes_id_seq OWNER TO acstrapi;

--
-- TOC entry 3820 (class 0 OID 0)
-- Dependencies: 264
-- Name: components_shared_quotes_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.components_shared_quotes_id_seq OWNED BY acstrapi.components_shared_quotes.id;


--
-- TOC entry 263 (class 1259 OID 16799)
-- Name: components_shared_rich_texts; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.components_shared_rich_texts (
    id integer NOT NULL,
    body text
);


ALTER TABLE acstrapi.components_shared_rich_texts OWNER TO acstrapi;

--
-- TOC entry 262 (class 1259 OID 16797)
-- Name: components_shared_rich_texts_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.components_shared_rich_texts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.components_shared_rich_texts_id_seq OWNER TO acstrapi;

--
-- TOC entry 3821 (class 0 OID 0)
-- Dependencies: 262
-- Name: components_shared_rich_texts_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.components_shared_rich_texts_id_seq OWNED BY acstrapi.components_shared_rich_texts.id;


--
-- TOC entry 261 (class 1259 OID 16788)
-- Name: components_shared_seos; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.components_shared_seos (
    id integer NOT NULL,
    meta_title character varying(255),
    meta_description text
);


ALTER TABLE acstrapi.components_shared_seos OWNER TO acstrapi;

--
-- TOC entry 260 (class 1259 OID 16786)
-- Name: components_shared_seos_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.components_shared_seos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.components_shared_seos_id_seq OWNER TO acstrapi;

--
-- TOC entry 3822 (class 0 OID 0)
-- Dependencies: 260
-- Name: components_shared_seos_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.components_shared_seos_id_seq OWNED BY acstrapi.components_shared_seos.id;


--
-- TOC entry 259 (class 1259 OID 16780)
-- Name: components_shared_sliders; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.components_shared_sliders (
    id integer NOT NULL
);


ALTER TABLE acstrapi.components_shared_sliders OWNER TO acstrapi;

--
-- TOC entry 258 (class 1259 OID 16778)
-- Name: components_shared_sliders_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.components_shared_sliders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.components_shared_sliders_id_seq OWNER TO acstrapi;

--
-- TOC entry 3823 (class 0 OID 0)
-- Dependencies: 258
-- Name: components_shared_sliders_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.components_shared_sliders_id_seq OWNED BY acstrapi.components_shared_sliders.id;


--
-- TOC entry 209 (class 1259 OID 16414)
-- Name: files; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.files (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.files OWNER TO acstrapi;

--
-- TOC entry 277 (class 1259 OID 16877)
-- Name: files_folder_lnk; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.files_folder_lnk (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_ord double precision
);


ALTER TABLE acstrapi.files_folder_lnk OWNER TO acstrapi;

--
-- TOC entry 276 (class 1259 OID 16875)
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.files_folder_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.files_folder_lnk_id_seq OWNER TO acstrapi;

--
-- TOC entry 3824 (class 0 OID 0)
-- Dependencies: 276
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.files_folder_lnk_id_seq OWNED BY acstrapi.files_folder_lnk.id;


--
-- TOC entry 208 (class 1259 OID 16412)
-- Name: files_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.files_id_seq OWNER TO acstrapi;

--
-- TOC entry 3825 (class 0 OID 0)
-- Dependencies: 208
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.files_id_seq OWNED BY acstrapi.files.id;


--
-- TOC entry 275 (class 1259 OID 16863)
-- Name: files_related_mph; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.files_related_mph (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE acstrapi.files_related_mph OWNER TO acstrapi;

--
-- TOC entry 274 (class 1259 OID 16861)
-- Name: files_related_mph_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.files_related_mph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.files_related_mph_id_seq OWNER TO acstrapi;

--
-- TOC entry 3826 (class 0 OID 0)
-- Dependencies: 274
-- Name: files_related_mph_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.files_related_mph_id_seq OWNED BY acstrapi.files_related_mph.id;


--
-- TOC entry 243 (class 1259 OID 16668)
-- Name: globals; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.globals (
    id integer NOT NULL,
    document_id character varying(255),
    site_name character varying(255),
    site_description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.globals OWNER TO acstrapi;

--
-- TOC entry 241 (class 1259 OID 16652)
-- Name: globals_cmps; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.globals_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE acstrapi.globals_cmps OWNER TO acstrapi;

--
-- TOC entry 240 (class 1259 OID 16650)
-- Name: globals_cmps_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.globals_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.globals_cmps_id_seq OWNER TO acstrapi;

--
-- TOC entry 3827 (class 0 OID 0)
-- Dependencies: 240
-- Name: globals_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.globals_cmps_id_seq OWNED BY acstrapi.globals_cmps.id;


--
-- TOC entry 242 (class 1259 OID 16666)
-- Name: globals_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.globals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.globals_id_seq OWNER TO acstrapi;

--
-- TOC entry 3828 (class 0 OID 0)
-- Dependencies: 242
-- Name: globals_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.globals_id_seq OWNED BY acstrapi.globals.id;


--
-- TOC entry 213 (class 1259 OID 16452)
-- Name: i18n_locale; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.i18n_locale (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.i18n_locale OWNER TO acstrapi;

--
-- TOC entry 212 (class 1259 OID 16450)
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.i18n_locale_id_seq OWNER TO acstrapi;

--
-- TOC entry 3829 (class 0 OID 0)
-- Dependencies: 212
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.i18n_locale_id_seq OWNED BY acstrapi.i18n_locale.id;


--
-- TOC entry 305 (class 1259 OID 24583)
-- Name: jobs; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.jobs (
    id integer NOT NULL,
    document_id character varying(255),
    type character varying(255),
    title character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.jobs OWNER TO acstrapi;

--
-- TOC entry 309 (class 1259 OID 32786)
-- Name: jobs_bidder_lnk; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.jobs_bidder_lnk (
    id integer NOT NULL,
    job_id integer,
    user_id integer
);


ALTER TABLE acstrapi.jobs_bidder_lnk OWNER TO acstrapi;

--
-- TOC entry 308 (class 1259 OID 32784)
-- Name: jobs_bidder_lnk_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.jobs_bidder_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.jobs_bidder_lnk_id_seq OWNER TO acstrapi;

--
-- TOC entry 3830 (class 0 OID 0)
-- Dependencies: 308
-- Name: jobs_bidder_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.jobs_bidder_lnk_id_seq OWNED BY acstrapi.jobs_bidder_lnk.id;


--
-- TOC entry 304 (class 1259 OID 24581)
-- Name: jobs_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.jobs_id_seq OWNER TO acstrapi;

--
-- TOC entry 3831 (class 0 OID 0)
-- Dependencies: 304
-- Name: jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.jobs_id_seq OWNED BY acstrapi.jobs.id;


--
-- TOC entry 307 (class 1259 OID 25840)
-- Name: jobs_postedby_lnk; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.jobs_postedby_lnk (
    id integer NOT NULL,
    job_id integer,
    user_id integer
);


ALTER TABLE acstrapi.jobs_postedby_lnk OWNER TO acstrapi;

--
-- TOC entry 306 (class 1259 OID 25838)
-- Name: jobs_postedby_lnk_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.jobs_postedby_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.jobs_postedby_lnk_id_seq OWNER TO acstrapi;

--
-- TOC entry 3832 (class 0 OID 0)
-- Dependencies: 306
-- Name: jobs_postedby_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.jobs_postedby_lnk_id_seq OWNED BY acstrapi.jobs_postedby_lnk.id;


--
-- TOC entry 253 (class 1259 OID 16738)
-- Name: strapi_api_token_permissions; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.strapi_api_token_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.strapi_api_token_permissions OWNER TO acstrapi;

--
-- TOC entry 252 (class 1259 OID 16736)
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.strapi_api_token_permissions_id_seq OWNER TO acstrapi;

--
-- TOC entry 3833 (class 0 OID 0)
-- Dependencies: 252
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.strapi_api_token_permissions_id_seq OWNED BY acstrapi.strapi_api_token_permissions.id;


--
-- TOC entry 301 (class 1259 OID 17033)
-- Name: strapi_api_token_permissions_token_lnk; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.strapi_api_token_permissions_token_lnk (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_ord double precision
);


ALTER TABLE acstrapi.strapi_api_token_permissions_token_lnk OWNER TO acstrapi;

--
-- TOC entry 300 (class 1259 OID 17031)
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.strapi_api_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.strapi_api_token_permissions_token_lnk_id_seq OWNER TO acstrapi;

--
-- TOC entry 3834 (class 0 OID 0)
-- Dependencies: 300
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.strapi_api_token_permissions_token_lnk_id_seq OWNED BY acstrapi.strapi_api_token_permissions_token_lnk.id;


--
-- TOC entry 251 (class 1259 OID 16724)
-- Name: strapi_api_tokens; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.strapi_api_tokens (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.strapi_api_tokens OWNER TO acstrapi;

--
-- TOC entry 250 (class 1259 OID 16722)
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.strapi_api_tokens_id_seq OWNER TO acstrapi;

--
-- TOC entry 3835 (class 0 OID 0)
-- Dependencies: 250
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.strapi_api_tokens_id_seq OWNED BY acstrapi.strapi_api_tokens.id;


--
-- TOC entry 269 (class 1259 OID 16829)
-- Name: strapi_core_store_settings; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE acstrapi.strapi_core_store_settings OWNER TO acstrapi;

--
-- TOC entry 268 (class 1259 OID 16827)
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.strapi_core_store_settings_id_seq OWNER TO acstrapi;

--
-- TOC entry 3836 (class 0 OID 0)
-- Dependencies: 268
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.strapi_core_store_settings_id_seq OWNED BY acstrapi.strapi_core_store_settings.id;


--
-- TOC entry 207 (class 1259 OID 16403)
-- Name: strapi_database_schema; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE acstrapi.strapi_database_schema OWNER TO acstrapi;

--
-- TOC entry 206 (class 1259 OID 16401)
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.strapi_database_schema_id_seq OWNER TO acstrapi;

--
-- TOC entry 3837 (class 0 OID 0)
-- Dependencies: 206
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.strapi_database_schema_id_seq OWNED BY acstrapi.strapi_database_schema.id;


--
-- TOC entry 273 (class 1259 OID 16851)
-- Name: strapi_history_versions; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.strapi_history_versions (
    id integer NOT NULL,
    content_type character varying(255) NOT NULL,
    related_document_id character varying(255),
    locale character varying(255),
    status character varying(255),
    data jsonb,
    schema jsonb,
    created_at timestamp(6) without time zone,
    created_by_id integer
);


ALTER TABLE acstrapi.strapi_history_versions OWNER TO acstrapi;

--
-- TOC entry 272 (class 1259 OID 16849)
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.strapi_history_versions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.strapi_history_versions_id_seq OWNER TO acstrapi;

--
-- TOC entry 3838 (class 0 OID 0)
-- Dependencies: 272
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.strapi_history_versions_id_seq OWNED BY acstrapi.strapi_history_versions.id;


--
-- TOC entry 205 (class 1259 OID 16393)
-- Name: strapi_migrations; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE acstrapi.strapi_migrations OWNER TO acstrapi;

--
-- TOC entry 202 (class 1259 OID 16385)
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.strapi_migrations_id_seq OWNER TO acstrapi;

--
-- TOC entry 3839 (class 0 OID 0)
-- Dependencies: 202
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.strapi_migrations_id_seq OWNED BY acstrapi.strapi_migrations.id;


--
-- TOC entry 204 (class 1259 OID 16389)
-- Name: strapi_migrations_internal; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.strapi_migrations_internal (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE acstrapi.strapi_migrations_internal OWNER TO acstrapi;

--
-- TOC entry 203 (class 1259 OID 16387)
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.strapi_migrations_internal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.strapi_migrations_internal_id_seq OWNER TO acstrapi;

--
-- TOC entry 3840 (class 0 OID 0)
-- Dependencies: 203
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.strapi_migrations_internal_id_seq OWNED BY acstrapi.strapi_migrations_internal.id;


--
-- TOC entry 217 (class 1259 OID 16480)
-- Name: strapi_release_actions; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.strapi_release_actions (
    id integer NOT NULL,
    document_id character varying(255),
    type character varying(255),
    content_type character varying(255),
    entry_document_id character varying(255),
    locale character varying(255),
    is_entry_valid boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE acstrapi.strapi_release_actions OWNER TO acstrapi;

--
-- TOC entry 216 (class 1259 OID 16478)
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.strapi_release_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.strapi_release_actions_id_seq OWNER TO acstrapi;

--
-- TOC entry 3841 (class 0 OID 0)
-- Dependencies: 216
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.strapi_release_actions_id_seq OWNED BY acstrapi.strapi_release_actions.id;


--
-- TOC entry 281 (class 1259 OID 16903)
-- Name: strapi_release_actions_release_lnk; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.strapi_release_actions_release_lnk (
    id integer NOT NULL,
    release_action_id integer,
    release_id integer,
    release_action_ord double precision
);


ALTER TABLE acstrapi.strapi_release_actions_release_lnk OWNER TO acstrapi;

--
-- TOC entry 280 (class 1259 OID 16901)
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.strapi_release_actions_release_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.strapi_release_actions_release_lnk_id_seq OWNER TO acstrapi;

--
-- TOC entry 3842 (class 0 OID 0)
-- Dependencies: 280
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.strapi_release_actions_release_lnk_id_seq OWNED BY acstrapi.strapi_release_actions_release_lnk.id;


--
-- TOC entry 215 (class 1259 OID 16466)
-- Name: strapi_releases; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.strapi_releases (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    released_at timestamp(6) without time zone,
    scheduled_at timestamp(6) without time zone,
    timezone character varying(255),
    status character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.strapi_releases OWNER TO acstrapi;

--
-- TOC entry 214 (class 1259 OID 16464)
-- Name: strapi_releases_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.strapi_releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.strapi_releases_id_seq OWNER TO acstrapi;

--
-- TOC entry 3843 (class 0 OID 0)
-- Dependencies: 214
-- Name: strapi_releases_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.strapi_releases_id_seq OWNED BY acstrapi.strapi_releases.id;


--
-- TOC entry 257 (class 1259 OID 16766)
-- Name: strapi_transfer_token_permissions; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.strapi_transfer_token_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.strapi_transfer_token_permissions OWNER TO acstrapi;

--
-- TOC entry 256 (class 1259 OID 16764)
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.strapi_transfer_token_permissions_id_seq OWNER TO acstrapi;

--
-- TOC entry 3844 (class 0 OID 0)
-- Dependencies: 256
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.strapi_transfer_token_permissions_id_seq OWNED BY acstrapi.strapi_transfer_token_permissions.id;


--
-- TOC entry 303 (class 1259 OID 17046)
-- Name: strapi_transfer_token_permissions_token_lnk; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.strapi_transfer_token_permissions_token_lnk (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_ord double precision
);


ALTER TABLE acstrapi.strapi_transfer_token_permissions_token_lnk OWNER TO acstrapi;

--
-- TOC entry 302 (class 1259 OID 17044)
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.strapi_transfer_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.strapi_transfer_token_permissions_token_lnk_id_seq OWNER TO acstrapi;

--
-- TOC entry 3845 (class 0 OID 0)
-- Dependencies: 302
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.strapi_transfer_token_permissions_token_lnk_id_seq OWNED BY acstrapi.strapi_transfer_token_permissions_token_lnk.id;


--
-- TOC entry 255 (class 1259 OID 16752)
-- Name: strapi_transfer_tokens; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.strapi_transfer_tokens (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.strapi_transfer_tokens OWNER TO acstrapi;

--
-- TOC entry 254 (class 1259 OID 16750)
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.strapi_transfer_tokens_id_seq OWNER TO acstrapi;

--
-- TOC entry 3846 (class 0 OID 0)
-- Dependencies: 254
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.strapi_transfer_tokens_id_seq OWNED BY acstrapi.strapi_transfer_tokens.id;


--
-- TOC entry 271 (class 1259 OID 16840)
-- Name: strapi_webhooks; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE acstrapi.strapi_webhooks OWNER TO acstrapi;

--
-- TOC entry 270 (class 1259 OID 16838)
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.strapi_webhooks_id_seq OWNER TO acstrapi;

--
-- TOC entry 3847 (class 0 OID 0)
-- Dependencies: 270
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.strapi_webhooks_id_seq OWNED BY acstrapi.strapi_webhooks.id;


--
-- TOC entry 219 (class 1259 OID 16494)
-- Name: strapi_workflows; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.strapi_workflows (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    content_types jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.strapi_workflows OWNER TO acstrapi;

--
-- TOC entry 218 (class 1259 OID 16492)
-- Name: strapi_workflows_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.strapi_workflows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.strapi_workflows_id_seq OWNER TO acstrapi;

--
-- TOC entry 3848 (class 0 OID 0)
-- Dependencies: 218
-- Name: strapi_workflows_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.strapi_workflows_id_seq OWNED BY acstrapi.strapi_workflows.id;


--
-- TOC entry 283 (class 1259 OID 16916)
-- Name: strapi_workflows_stage_required_to_publish_lnk; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.strapi_workflows_stage_required_to_publish_lnk (
    id integer NOT NULL,
    workflow_id integer,
    workflow_stage_id integer
);


ALTER TABLE acstrapi.strapi_workflows_stage_required_to_publish_lnk OWNER TO acstrapi;

--
-- TOC entry 282 (class 1259 OID 16914)
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.strapi_workflows_stage_required_to_publish_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.strapi_workflows_stage_required_to_publish_lnk_id_seq OWNER TO acstrapi;

--
-- TOC entry 3849 (class 0 OID 0)
-- Dependencies: 282
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.strapi_workflows_stage_required_to_publish_lnk_id_seq OWNED BY acstrapi.strapi_workflows_stage_required_to_publish_lnk.id;


--
-- TOC entry 221 (class 1259 OID 16508)
-- Name: strapi_workflows_stages; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.strapi_workflows_stages (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    color character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.strapi_workflows_stages OWNER TO acstrapi;

--
-- TOC entry 220 (class 1259 OID 16506)
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.strapi_workflows_stages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.strapi_workflows_stages_id_seq OWNER TO acstrapi;

--
-- TOC entry 3850 (class 0 OID 0)
-- Dependencies: 220
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.strapi_workflows_stages_id_seq OWNED BY acstrapi.strapi_workflows_stages.id;


--
-- TOC entry 287 (class 1259 OID 16941)
-- Name: strapi_workflows_stages_permissions_lnk; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.strapi_workflows_stages_permissions_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    permission_id integer,
    permission_ord double precision
);


ALTER TABLE acstrapi.strapi_workflows_stages_permissions_lnk OWNER TO acstrapi;

--
-- TOC entry 286 (class 1259 OID 16939)
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.strapi_workflows_stages_permissions_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.strapi_workflows_stages_permissions_lnk_id_seq OWNER TO acstrapi;

--
-- TOC entry 3851 (class 0 OID 0)
-- Dependencies: 286
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.strapi_workflows_stages_permissions_lnk_id_seq OWNED BY acstrapi.strapi_workflows_stages_permissions_lnk.id;


--
-- TOC entry 285 (class 1259 OID 16928)
-- Name: strapi_workflows_stages_workflow_lnk; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.strapi_workflows_stages_workflow_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    workflow_id integer,
    workflow_stage_ord double precision
);


ALTER TABLE acstrapi.strapi_workflows_stages_workflow_lnk OWNER TO acstrapi;

--
-- TOC entry 284 (class 1259 OID 16926)
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.strapi_workflows_stages_workflow_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.strapi_workflows_stages_workflow_lnk_id_seq OWNER TO acstrapi;

--
-- TOC entry 3852 (class 0 OID 0)
-- Dependencies: 284
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.strapi_workflows_stages_workflow_lnk_id_seq OWNED BY acstrapi.strapi_workflows_stages_workflow_lnk.id;


--
-- TOC entry 223 (class 1259 OID 16522)
-- Name: up_permissions; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.up_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.up_permissions OWNER TO acstrapi;

--
-- TOC entry 222 (class 1259 OID 16520)
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.up_permissions_id_seq OWNER TO acstrapi;

--
-- TOC entry 3853 (class 0 OID 0)
-- Dependencies: 222
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.up_permissions_id_seq OWNED BY acstrapi.up_permissions.id;


--
-- TOC entry 289 (class 1259 OID 16954)
-- Name: up_permissions_role_lnk; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.up_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);


ALTER TABLE acstrapi.up_permissions_role_lnk OWNER TO acstrapi;

--
-- TOC entry 288 (class 1259 OID 16952)
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.up_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.up_permissions_role_lnk_id_seq OWNER TO acstrapi;

--
-- TOC entry 3854 (class 0 OID 0)
-- Dependencies: 288
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.up_permissions_role_lnk_id_seq OWNED BY acstrapi.up_permissions_role_lnk.id;


--
-- TOC entry 225 (class 1259 OID 16536)
-- Name: up_roles; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.up_roles (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.up_roles OWNER TO acstrapi;

--
-- TOC entry 224 (class 1259 OID 16534)
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.up_roles_id_seq OWNER TO acstrapi;

--
-- TOC entry 3855 (class 0 OID 0)
-- Dependencies: 224
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.up_roles_id_seq OWNED BY acstrapi.up_roles.id;


--
-- TOC entry 227 (class 1259 OID 16550)
-- Name: up_users; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.up_users (
    id integer NOT NULL,
    document_id character varying(255),
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.up_users OWNER TO acstrapi;

--
-- TOC entry 226 (class 1259 OID 16548)
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.up_users_id_seq OWNER TO acstrapi;

--
-- TOC entry 3856 (class 0 OID 0)
-- Dependencies: 226
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.up_users_id_seq OWNED BY acstrapi.up_users.id;


--
-- TOC entry 291 (class 1259 OID 16967)
-- Name: up_users_role_lnk; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.up_users_role_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_ord double precision
);


ALTER TABLE acstrapi.up_users_role_lnk OWNER TO acstrapi;

--
-- TOC entry 290 (class 1259 OID 16965)
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.up_users_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.up_users_role_lnk_id_seq OWNER TO acstrapi;

--
-- TOC entry 3857 (class 0 OID 0)
-- Dependencies: 290
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.up_users_role_lnk_id_seq OWNED BY acstrapi.up_users_role_lnk.id;


--
-- TOC entry 211 (class 1259 OID 16434)
-- Name: upload_folders; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.upload_folders (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.upload_folders OWNER TO acstrapi;

--
-- TOC entry 210 (class 1259 OID 16432)
-- Name: upload_folders_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.upload_folders_id_seq OWNER TO acstrapi;

--
-- TOC entry 3858 (class 0 OID 0)
-- Dependencies: 210
-- Name: upload_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.upload_folders_id_seq OWNED BY acstrapi.upload_folders.id;


--
-- TOC entry 279 (class 1259 OID 16890)
-- Name: upload_folders_parent_lnk; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.upload_folders_parent_lnk (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_ord double precision
);


ALTER TABLE acstrapi.upload_folders_parent_lnk OWNER TO acstrapi;

--
-- TOC entry 278 (class 1259 OID 16888)
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.upload_folders_parent_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.upload_folders_parent_lnk_id_seq OWNER TO acstrapi;

--
-- TOC entry 3859 (class 0 OID 0)
-- Dependencies: 278
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.upload_folders_parent_lnk_id_seq OWNED BY acstrapi.upload_folders_parent_lnk.id;


--
-- TOC entry 3158 (class 2604 OID 16583)
-- Name: abouts id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.abouts ALTER COLUMN id SET DEFAULT nextval('acstrapi.abouts_id_seq'::regclass);


--
-- TOC entry 3157 (class 2604 OID 16567)
-- Name: abouts_cmps id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.abouts_cmps ALTER COLUMN id SET DEFAULT nextval('acstrapi.abouts_cmps_id_seq'::regclass);


--
-- TOC entry 3165 (class 2604 OID 16685)
-- Name: admin_permissions id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_permissions ALTER COLUMN id SET DEFAULT nextval('acstrapi.admin_permissions_id_seq'::regclass);


--
-- TOC entry 3191 (class 2604 OID 17009)
-- Name: admin_permissions_role_lnk id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.admin_permissions_role_lnk_id_seq'::regclass);


--
-- TOC entry 3167 (class 2604 OID 16713)
-- Name: admin_roles id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_roles ALTER COLUMN id SET DEFAULT nextval('acstrapi.admin_roles_id_seq'::regclass);


--
-- TOC entry 3166 (class 2604 OID 16699)
-- Name: admin_users id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_users ALTER COLUMN id SET DEFAULT nextval('acstrapi.admin_users_id_seq'::regclass);


--
-- TOC entry 3192 (class 2604 OID 17022)
-- Name: admin_users_roles_lnk id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_users_roles_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.admin_users_roles_lnk_id_seq'::regclass);


--
-- TOC entry 3160 (class 2604 OID 16613)
-- Name: articles id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.articles ALTER COLUMN id SET DEFAULT nextval('acstrapi.articles_id_seq'::regclass);


--
-- TOC entry 3189 (class 2604 OID 16983)
-- Name: articles_author_lnk id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.articles_author_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.articles_author_lnk_id_seq'::regclass);


--
-- TOC entry 3190 (class 2604 OID 16996)
-- Name: articles_category_lnk id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.articles_category_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.articles_category_lnk_id_seq'::regclass);


--
-- TOC entry 3159 (class 2604 OID 16597)
-- Name: articles_cmps id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.articles_cmps ALTER COLUMN id SET DEFAULT nextval('acstrapi.articles_cmps_id_seq'::regclass);


--
-- TOC entry 3161 (class 2604 OID 16627)
-- Name: authors id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.authors ALTER COLUMN id SET DEFAULT nextval('acstrapi.authors_id_seq'::regclass);


--
-- TOC entry 3162 (class 2604 OID 16641)
-- Name: categories id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.categories ALTER COLUMN id SET DEFAULT nextval('acstrapi.categories_id_seq'::regclass);


--
-- TOC entry 3176 (class 2604 OID 16824)
-- Name: components_shared_media id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.components_shared_media ALTER COLUMN id SET DEFAULT nextval('acstrapi.components_shared_media_id_seq'::regclass);


--
-- TOC entry 3175 (class 2604 OID 16813)
-- Name: components_shared_quotes id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.components_shared_quotes ALTER COLUMN id SET DEFAULT nextval('acstrapi.components_shared_quotes_id_seq'::regclass);


--
-- TOC entry 3174 (class 2604 OID 16802)
-- Name: components_shared_rich_texts id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.components_shared_rich_texts ALTER COLUMN id SET DEFAULT nextval('acstrapi.components_shared_rich_texts_id_seq'::regclass);


--
-- TOC entry 3173 (class 2604 OID 16791)
-- Name: components_shared_seos id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.components_shared_seos ALTER COLUMN id SET DEFAULT nextval('acstrapi.components_shared_seos_id_seq'::regclass);


--
-- TOC entry 3172 (class 2604 OID 16783)
-- Name: components_shared_sliders id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.components_shared_sliders ALTER COLUMN id SET DEFAULT nextval('acstrapi.components_shared_sliders_id_seq'::regclass);


--
-- TOC entry 3147 (class 2604 OID 16417)
-- Name: files id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.files ALTER COLUMN id SET DEFAULT nextval('acstrapi.files_id_seq'::regclass);


--
-- TOC entry 3181 (class 2604 OID 16880)
-- Name: files_folder_lnk id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.files_folder_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.files_folder_lnk_id_seq'::regclass);


--
-- TOC entry 3180 (class 2604 OID 16866)
-- Name: files_related_mph id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.files_related_mph ALTER COLUMN id SET DEFAULT nextval('acstrapi.files_related_mph_id_seq'::regclass);


--
-- TOC entry 3164 (class 2604 OID 16671)
-- Name: globals id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.globals ALTER COLUMN id SET DEFAULT nextval('acstrapi.globals_id_seq'::regclass);


--
-- TOC entry 3163 (class 2604 OID 16655)
-- Name: globals_cmps id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.globals_cmps ALTER COLUMN id SET DEFAULT nextval('acstrapi.globals_cmps_id_seq'::regclass);


--
-- TOC entry 3149 (class 2604 OID 16455)
-- Name: i18n_locale id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.i18n_locale ALTER COLUMN id SET DEFAULT nextval('acstrapi.i18n_locale_id_seq'::regclass);


--
-- TOC entry 3195 (class 2604 OID 24586)
-- Name: jobs id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.jobs ALTER COLUMN id SET DEFAULT nextval('acstrapi.jobs_id_seq'::regclass);


--
-- TOC entry 3197 (class 2604 OID 32789)
-- Name: jobs_bidder_lnk id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.jobs_bidder_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.jobs_bidder_lnk_id_seq'::regclass);


--
-- TOC entry 3196 (class 2604 OID 25843)
-- Name: jobs_postedby_lnk id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.jobs_postedby_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.jobs_postedby_lnk_id_seq'::regclass);


--
-- TOC entry 3169 (class 2604 OID 16741)
-- Name: strapi_api_token_permissions id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_api_token_permissions_id_seq'::regclass);


--
-- TOC entry 3193 (class 2604 OID 17036)
-- Name: strapi_api_token_permissions_token_lnk id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_api_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_api_token_permissions_token_lnk_id_seq'::regclass);


--
-- TOC entry 3168 (class 2604 OID 16727)
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_api_tokens_id_seq'::regclass);


--
-- TOC entry 3177 (class 2604 OID 16832)
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_core_store_settings_id_seq'::regclass);


--
-- TOC entry 3146 (class 2604 OID 16406)
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_database_schema_id_seq'::regclass);


--
-- TOC entry 3179 (class 2604 OID 16854)
-- Name: strapi_history_versions id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_history_versions ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_history_versions_id_seq'::regclass);


--
-- TOC entry 3145 (class 2604 OID 16396)
-- Name: strapi_migrations id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_migrations_id_seq'::regclass);


--
-- TOC entry 3144 (class 2604 OID 16392)
-- Name: strapi_migrations_internal id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_migrations_internal ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_migrations_internal_id_seq'::regclass);


--
-- TOC entry 3151 (class 2604 OID 16483)
-- Name: strapi_release_actions id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_release_actions_id_seq'::regclass);


--
-- TOC entry 3183 (class 2604 OID 16906)
-- Name: strapi_release_actions_release_lnk id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_release_actions_release_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_release_actions_release_lnk_id_seq'::regclass);


--
-- TOC entry 3150 (class 2604 OID 16469)
-- Name: strapi_releases id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_releases ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_releases_id_seq'::regclass);


--
-- TOC entry 3171 (class 2604 OID 16769)
-- Name: strapi_transfer_token_permissions id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_transfer_token_permissions_id_seq'::regclass);


--
-- TOC entry 3194 (class 2604 OID 17049)
-- Name: strapi_transfer_token_permissions_token_lnk id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_transfer_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_transfer_token_permissions_token_lnk_id_seq'::regclass);


--
-- TOC entry 3170 (class 2604 OID 16755)
-- Name: strapi_transfer_tokens id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_transfer_tokens_id_seq'::regclass);


--
-- TOC entry 3178 (class 2604 OID 16843)
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_webhooks_id_seq'::regclass);


--
-- TOC entry 3152 (class 2604 OID 16497)
-- Name: strapi_workflows id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_workflows_id_seq'::regclass);


--
-- TOC entry 3184 (class 2604 OID 16919)
-- Name: strapi_workflows_stage_required_to_publish_lnk id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows_stage_required_to_publish_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_workflows_stage_required_to_publish_lnk_id_seq'::regclass);


--
-- TOC entry 3153 (class 2604 OID 16511)
-- Name: strapi_workflows_stages id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows_stages ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_workflows_stages_id_seq'::regclass);


--
-- TOC entry 3186 (class 2604 OID 16944)
-- Name: strapi_workflows_stages_permissions_lnk id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows_stages_permissions_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_workflows_stages_permissions_lnk_id_seq'::regclass);


--
-- TOC entry 3185 (class 2604 OID 16931)
-- Name: strapi_workflows_stages_workflow_lnk id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows_stages_workflow_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_workflows_stages_workflow_lnk_id_seq'::regclass);


--
-- TOC entry 3154 (class 2604 OID 16525)
-- Name: up_permissions id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_permissions ALTER COLUMN id SET DEFAULT nextval('acstrapi.up_permissions_id_seq'::regclass);


--
-- TOC entry 3187 (class 2604 OID 16957)
-- Name: up_permissions_role_lnk id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.up_permissions_role_lnk_id_seq'::regclass);


--
-- TOC entry 3155 (class 2604 OID 16539)
-- Name: up_roles id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_roles ALTER COLUMN id SET DEFAULT nextval('acstrapi.up_roles_id_seq'::regclass);


--
-- TOC entry 3156 (class 2604 OID 16553)
-- Name: up_users id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_users ALTER COLUMN id SET DEFAULT nextval('acstrapi.up_users_id_seq'::regclass);


--
-- TOC entry 3188 (class 2604 OID 16970)
-- Name: up_users_role_lnk id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_users_role_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.up_users_role_lnk_id_seq'::regclass);


--
-- TOC entry 3148 (class 2604 OID 16437)
-- Name: upload_folders id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.upload_folders ALTER COLUMN id SET DEFAULT nextval('acstrapi.upload_folders_id_seq'::regclass);


--
-- TOC entry 3182 (class 2604 OID 16893)
-- Name: upload_folders_parent_lnk id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.upload_folders_parent_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.upload_folders_parent_lnk_id_seq'::regclass);


--
-- TOC entry 3720 (class 0 OID 16580)
-- Dependencies: 231
-- Data for Name: abouts; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.abouts (id, document_id, title, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	c030n2onrh88qoal6p25ghdq	About the strapi blog	2025-01-05 23:38:48.256	2025-01-05 23:38:48.256	2025-01-05 23:38:48.239	\N	\N	\N
\.


--
-- TOC entry 3718 (class 0 OID 16564)
-- Dependencies: 229
-- Data for Name: abouts_cmps; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.abouts_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
1	1	6	shared.quote	blocks	1
2	1	11	shared.rich-text	blocks	2
3	1	6	shared.media	blocks	3
\.


--
-- TOC entry 3734 (class 0 OID 16682)
-- Dependencies: 245
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.admin_permissions (id, document_id, action, action_parameters, subject, properties, conditions, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	xvka4few5jk26jv24ayy4uer	plugin::content-manager.explorer.create	{}	api::about.about	{"fields": ["title", "blocks"]}	[]	2025-01-05 23:38:38.622	2025-01-05 23:38:38.622	2025-01-05 23:38:38.622	\N	\N	\N
2	e1jmkcsg2zowd602chztc0dh	plugin::content-manager.explorer.create	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "author", "category", "blocks"]}	[]	2025-01-05 23:38:38.654	2025-01-05 23:38:38.654	2025-01-05 23:38:38.655	\N	\N	\N
3	srj4lobmn9myd803897c084j	plugin::content-manager.explorer.create	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	[]	2025-01-05 23:38:38.686	2025-01-05 23:38:38.686	2025-01-05 23:38:38.687	\N	\N	\N
4	imqzwy084jgvkuo9zviwqexh	plugin::content-manager.explorer.create	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	[]	2025-01-05 23:38:38.717	2025-01-05 23:38:38.717	2025-01-05 23:38:38.717	\N	\N	\N
5	qecram63g4h5dbn6mtsyua75	plugin::content-manager.explorer.create	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	[]	2025-01-05 23:38:38.748	2025-01-05 23:38:38.748	2025-01-05 23:38:38.748	\N	\N	\N
6	s14usganq30tnzwb9svspc3g	plugin::content-manager.explorer.read	{}	api::about.about	{"fields": ["title", "blocks"]}	[]	2025-01-05 23:38:38.779	2025-01-05 23:38:38.779	2025-01-05 23:38:38.779	\N	\N	\N
7	zyn9lwypjkra0v21mktvxl2e	plugin::content-manager.explorer.read	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "author", "category", "blocks"]}	[]	2025-01-05 23:38:38.81	2025-01-05 23:38:38.81	2025-01-05 23:38:38.81	\N	\N	\N
8	pgwt7s0h157yn4mfm1whoh96	plugin::content-manager.explorer.read	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	[]	2025-01-05 23:38:38.841	2025-01-05 23:38:38.841	2025-01-05 23:38:38.841	\N	\N	\N
9	gnce5uktryfw12kdaobzd5te	plugin::content-manager.explorer.read	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	[]	2025-01-05 23:38:38.87	2025-01-05 23:38:38.87	2025-01-05 23:38:38.871	\N	\N	\N
10	rugwijlb2tey4lasdeuyk58z	plugin::content-manager.explorer.read	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	[]	2025-01-05 23:38:38.917	2025-01-05 23:38:38.917	2025-01-05 23:38:38.917	\N	\N	\N
11	sup7lzpvu23jspi9ecnqbr4q	plugin::content-manager.explorer.update	{}	api::about.about	{"fields": ["title", "blocks"]}	[]	2025-01-05 23:38:38.952	2025-01-05 23:38:38.952	2025-01-05 23:38:38.953	\N	\N	\N
12	bshy4ojc14asxuxaf9kyiz9w	plugin::content-manager.explorer.update	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "author", "category", "blocks"]}	[]	2025-01-05 23:38:38.984	2025-01-05 23:38:38.984	2025-01-05 23:38:38.985	\N	\N	\N
13	y9o5iufxjy4szl1ifpughidz	plugin::content-manager.explorer.update	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	[]	2025-01-05 23:38:39.016	2025-01-05 23:38:39.016	2025-01-05 23:38:39.016	\N	\N	\N
14	y7z71uwjh8li274hxwvlj63v	plugin::content-manager.explorer.update	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	[]	2025-01-05 23:38:39.046	2025-01-05 23:38:39.046	2025-01-05 23:38:39.047	\N	\N	\N
15	w3q3hljik2t9rbd3td3a9gsd	plugin::content-manager.explorer.update	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	[]	2025-01-05 23:38:39.081	2025-01-05 23:38:39.081	2025-01-05 23:38:39.081	\N	\N	\N
16	ftmej5j7jz3oo2krwly06lrn	plugin::content-manager.explorer.delete	{}	api::about.about	{}	[]	2025-01-05 23:38:39.116	2025-01-05 23:38:39.116	2025-01-05 23:38:39.116	\N	\N	\N
17	fsfvbavkgzlo42xh6s3i4rwn	plugin::content-manager.explorer.delete	{}	api::article.article	{}	[]	2025-01-05 23:38:39.147	2025-01-05 23:38:39.147	2025-01-05 23:38:39.147	\N	\N	\N
18	c240cfvqdjtrpfl7lm4wvauj	plugin::content-manager.explorer.delete	{}	api::author.author	{}	[]	2025-01-05 23:38:39.182	2025-01-05 23:38:39.182	2025-01-05 23:38:39.182	\N	\N	\N
19	zqdqqx704azwvsjxbmrgiix6	plugin::content-manager.explorer.delete	{}	api::category.category	{}	[]	2025-01-05 23:38:39.212	2025-01-05 23:38:39.212	2025-01-05 23:38:39.212	\N	\N	\N
20	mcblesqexeup091rr5fuxq42	plugin::content-manager.explorer.delete	{}	api::global.global	{}	[]	2025-01-05 23:38:39.241	2025-01-05 23:38:39.241	2025-01-05 23:38:39.241	\N	\N	\N
21	hp9sox42u6r9ra60t97juzdr	plugin::content-manager.explorer.publish	{}	api::about.about	{}	[]	2025-01-05 23:38:39.271	2025-01-05 23:38:39.271	2025-01-05 23:38:39.272	\N	\N	\N
22	n23zrt77vr8h3a8ni5dr5u86	plugin::content-manager.explorer.publish	{}	api::article.article	{}	[]	2025-01-05 23:38:39.301	2025-01-05 23:38:39.301	2025-01-05 23:38:39.301	\N	\N	\N
23	hjh3tbg3c5ws9s35k8y6drlx	plugin::content-manager.explorer.publish	{}	api::author.author	{}	[]	2025-01-05 23:38:39.332	2025-01-05 23:38:39.332	2025-01-05 23:38:39.332	\N	\N	\N
24	gor6e5truhuzhx0qy43mykp1	plugin::content-manager.explorer.publish	{}	api::category.category	{}	[]	2025-01-05 23:38:39.367	2025-01-05 23:38:39.367	2025-01-05 23:38:39.367	\N	\N	\N
25	gl9fdi7571lhv169fxcywrdq	plugin::content-manager.explorer.publish	{}	api::global.global	{}	[]	2025-01-05 23:38:39.398	2025-01-05 23:38:39.398	2025-01-05 23:38:39.398	\N	\N	\N
26	mmq6u52wn1n0ewixx19kr4a0	plugin::upload.read	{}	\N	{}	[]	2025-01-05 23:38:39.427	2025-01-05 23:38:39.427	2025-01-05 23:38:39.427	\N	\N	\N
27	sugo7c0jr3xooluwpro4vr60	plugin::upload.configure-view	{}	\N	{}	[]	2025-01-05 23:38:39.457	2025-01-05 23:38:39.457	2025-01-05 23:38:39.457	\N	\N	\N
28	ts7okfigyp2y9pe2onawzph2	plugin::upload.assets.create	{}	\N	{}	[]	2025-01-05 23:38:39.486	2025-01-05 23:38:39.486	2025-01-05 23:38:39.486	\N	\N	\N
29	mwpj3yaqhfcd063hyem27a1k	plugin::upload.assets.update	{}	\N	{}	[]	2025-01-05 23:38:39.517	2025-01-05 23:38:39.517	2025-01-05 23:38:39.517	\N	\N	\N
30	et1qmk30dpdrl86z9l6w8z8k	plugin::upload.assets.download	{}	\N	{}	[]	2025-01-05 23:38:39.549	2025-01-05 23:38:39.549	2025-01-05 23:38:39.549	\N	\N	\N
31	bhnjsxwqls9435vjpaftsddb	plugin::upload.assets.copy-link	{}	\N	{}	[]	2025-01-05 23:38:39.579	2025-01-05 23:38:39.579	2025-01-05 23:38:39.579	\N	\N	\N
32	q8x3w69xrn43cy7izleke08m	plugin::content-manager.explorer.create	{}	api::about.about	{"fields": ["title", "blocks"]}	["admin::is-creator"]	2025-01-05 23:38:39.613	2025-01-05 23:38:39.613	2025-01-05 23:38:39.614	\N	\N	\N
33	ds3jkne4r4w6t1630i2qrmlm	plugin::content-manager.explorer.create	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "author", "category", "blocks"]}	["admin::is-creator"]	2025-01-05 23:38:39.645	2025-01-05 23:38:39.645	2025-01-05 23:38:39.645	\N	\N	\N
34	vkaj0zz4zif26w4oyp106jdn	plugin::content-manager.explorer.create	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	["admin::is-creator"]	2025-01-05 23:38:39.675	2025-01-05 23:38:39.675	2025-01-05 23:38:39.675	\N	\N	\N
35	pukghe6rniw4hg0f1dt85rlv	plugin::content-manager.explorer.create	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	["admin::is-creator"]	2025-01-05 23:38:39.705	2025-01-05 23:38:39.705	2025-01-05 23:38:39.705	\N	\N	\N
36	j34cn50vzrm5dzpcazapxo6s	plugin::content-manager.explorer.create	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	["admin::is-creator"]	2025-01-05 23:38:39.735	2025-01-05 23:38:39.735	2025-01-05 23:38:39.736	\N	\N	\N
37	qezt3di5xbv8fl8sek5bet08	plugin::content-manager.explorer.read	{}	api::about.about	{"fields": ["title", "blocks"]}	["admin::is-creator"]	2025-01-05 23:38:39.766	2025-01-05 23:38:39.766	2025-01-05 23:38:39.767	\N	\N	\N
38	pkq594k05rlsqulkco0x1a4m	plugin::content-manager.explorer.read	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "author", "category", "blocks"]}	["admin::is-creator"]	2025-01-05 23:38:39.811	2025-01-05 23:38:39.811	2025-01-05 23:38:39.811	\N	\N	\N
39	hfhx10mucu4jg38rm5d1eoy7	plugin::content-manager.explorer.read	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	["admin::is-creator"]	2025-01-05 23:38:39.849	2025-01-05 23:38:39.849	2025-01-05 23:38:39.849	\N	\N	\N
40	nv5e82mrxgu50ymyzqqnpl86	plugin::content-manager.explorer.read	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	["admin::is-creator"]	2025-01-05 23:38:39.883	2025-01-05 23:38:39.883	2025-01-05 23:38:39.884	\N	\N	\N
41	j4iozi6zg9atmewnhipr5m0s	plugin::content-manager.explorer.read	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	["admin::is-creator"]	2025-01-05 23:38:39.913	2025-01-05 23:38:39.913	2025-01-05 23:38:39.913	\N	\N	\N
42	b8k8zqa80xzylht690rqw5il	plugin::content-manager.explorer.update	{}	api::about.about	{"fields": ["title", "blocks"]}	["admin::is-creator"]	2025-01-05 23:38:39.942	2025-01-05 23:38:39.942	2025-01-05 23:38:39.942	\N	\N	\N
43	w51wyw1tf6cwi5b9nq9x55ef	plugin::content-manager.explorer.update	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "author", "category", "blocks"]}	["admin::is-creator"]	2025-01-05 23:38:39.972	2025-01-05 23:38:39.972	2025-01-05 23:38:39.972	\N	\N	\N
44	pyd7hjjq8hd0lt5lkpybaitn	plugin::content-manager.explorer.update	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	["admin::is-creator"]	2025-01-05 23:38:40.01	2025-01-05 23:38:40.01	2025-01-05 23:38:40.01	\N	\N	\N
45	gtu4384j7qt6v60fe5yjz3f7	plugin::content-manager.explorer.update	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	["admin::is-creator"]	2025-01-05 23:38:40.042	2025-01-05 23:38:40.042	2025-01-05 23:38:40.042	\N	\N	\N
46	mdup66fcx59mqto140t38uhz	plugin::content-manager.explorer.update	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	["admin::is-creator"]	2025-01-05 23:38:40.071	2025-01-05 23:38:40.071	2025-01-05 23:38:40.071	\N	\N	\N
47	s7gym39ufyzdzxdh9xsdtg4j	plugin::content-manager.explorer.delete	{}	api::about.about	{}	["admin::is-creator"]	2025-01-05 23:38:40.097	2025-01-05 23:38:40.097	2025-01-05 23:38:40.098	\N	\N	\N
48	dhx5tos71gzc2fmjj3l5lelj	plugin::content-manager.explorer.delete	{}	api::article.article	{}	["admin::is-creator"]	2025-01-05 23:38:40.132	2025-01-05 23:38:40.132	2025-01-05 23:38:40.132	\N	\N	\N
49	dh6w45iccc1gcb695o4dnee6	plugin::content-manager.explorer.delete	{}	api::author.author	{}	["admin::is-creator"]	2025-01-05 23:38:40.165	2025-01-05 23:38:40.165	2025-01-05 23:38:40.165	\N	\N	\N
50	jmsfl9d5l2oh1eu1oxxg5zub	plugin::content-manager.explorer.delete	{}	api::category.category	{}	["admin::is-creator"]	2025-01-05 23:38:40.198	2025-01-05 23:38:40.198	2025-01-05 23:38:40.199	\N	\N	\N
51	kww4cv8q0l7d2ysqcmkl8xs6	plugin::content-manager.explorer.delete	{}	api::global.global	{}	["admin::is-creator"]	2025-01-05 23:38:40.229	2025-01-05 23:38:40.229	2025-01-05 23:38:40.229	\N	\N	\N
52	z1qyywfh78zl3jy2eiihuu3i	plugin::upload.read	{}	\N	{}	["admin::is-creator"]	2025-01-05 23:38:40.26	2025-01-05 23:38:40.26	2025-01-05 23:38:40.26	\N	\N	\N
53	qe5ofia88cryszv97mip97k1	plugin::upload.configure-view	{}	\N	{}	[]	2025-01-05 23:38:40.303	2025-01-05 23:38:40.303	2025-01-05 23:38:40.304	\N	\N	\N
54	t6fy49mrf4vprukgjipgev5w	plugin::upload.assets.create	{}	\N	{}	[]	2025-01-05 23:38:40.381	2025-01-05 23:38:40.381	2025-01-05 23:38:40.381	\N	\N	\N
55	lm7a1bkldt6tvo37bqmvcot4	plugin::upload.assets.update	{}	\N	{}	["admin::is-creator"]	2025-01-05 23:38:40.413	2025-01-05 23:38:40.413	2025-01-05 23:38:40.413	\N	\N	\N
56	r4ntpbfwwhjz6r201bxyp2v4	plugin::upload.assets.download	{}	\N	{}	[]	2025-01-05 23:38:40.45	2025-01-05 23:38:40.45	2025-01-05 23:38:40.45	\N	\N	\N
57	zfrfqi7dlekww1pgbaoxodig	plugin::upload.assets.copy-link	{}	\N	{}	[]	2025-01-05 23:38:40.481	2025-01-05 23:38:40.481	2025-01-05 23:38:40.482	\N	\N	\N
59	alutrqg7rms9b6bgukk1d3t9	plugin::content-manager.explorer.create	{}	api::about.about	{"fields": ["title", "blocks"]}	[]	2025-01-05 23:38:40.613	2025-01-05 23:38:40.613	2025-01-05 23:38:40.613	\N	\N	\N
60	xdawey3letsicjs4ji0bjk4p	plugin::content-manager.explorer.create	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "author", "category", "blocks"]}	[]	2025-01-05 23:38:40.647	2025-01-05 23:38:40.647	2025-01-05 23:38:40.647	\N	\N	\N
61	jlhnh5ud038hdsjtgpsdo2pa	plugin::content-manager.explorer.create	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	[]	2025-01-05 23:38:40.678	2025-01-05 23:38:40.678	2025-01-05 23:38:40.678	\N	\N	\N
62	omtr2l2r3t1gdtftbj46g9cs	plugin::content-manager.explorer.create	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	[]	2025-01-05 23:38:40.713	2025-01-05 23:38:40.713	2025-01-05 23:38:40.713	\N	\N	\N
63	l8xmlxjw2armdcxbffe8q8z2	plugin::content-manager.explorer.create	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	[]	2025-01-05 23:38:40.742	2025-01-05 23:38:40.742	2025-01-05 23:38:40.742	\N	\N	\N
65	fx32e304j9qls1e7zp65570h	plugin::content-manager.explorer.read	{}	api::about.about	{"fields": ["title", "blocks"]}	[]	2025-01-05 23:38:40.803	2025-01-05 23:38:40.803	2025-01-05 23:38:40.803	\N	\N	\N
66	cdy7rs10ua4wa2rflw4vk7g8	plugin::content-manager.explorer.read	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "author", "category", "blocks"]}	[]	2025-01-05 23:38:40.833	2025-01-05 23:38:40.833	2025-01-05 23:38:40.833	\N	\N	\N
67	jwtbs46wyk8qw6ykd6xsli25	plugin::content-manager.explorer.read	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	[]	2025-01-05 23:38:40.865	2025-01-05 23:38:40.865	2025-01-05 23:38:40.865	\N	\N	\N
68	h8gavaea73sm074sz8cjk4wx	plugin::content-manager.explorer.read	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	[]	2025-01-05 23:38:40.895	2025-01-05 23:38:40.895	2025-01-05 23:38:40.895	\N	\N	\N
69	b3hji2fqr1fh9zghhlijw6al	plugin::content-manager.explorer.read	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	[]	2025-01-05 23:38:40.928	2025-01-05 23:38:40.928	2025-01-05 23:38:40.928	\N	\N	\N
71	aa6ys2ughtyzxijbp3bvp8hi	plugin::content-manager.explorer.update	{}	api::about.about	{"fields": ["title", "blocks"]}	[]	2025-01-05 23:38:41.014	2025-01-05 23:38:41.014	2025-01-05 23:38:41.015	\N	\N	\N
72	a7qy7rllpmbznoy0ead1p5il	plugin::content-manager.explorer.update	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "author", "category", "blocks"]}	[]	2025-01-05 23:38:41.045	2025-01-05 23:38:41.045	2025-01-05 23:38:41.046	\N	\N	\N
73	azhe5wtdsjc9pw0a7o7n5buv	plugin::content-manager.explorer.update	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	[]	2025-01-05 23:38:41.075	2025-01-05 23:38:41.075	2025-01-05 23:38:41.076	\N	\N	\N
74	pv2dyhlhm4c8ra5yvm1bkyos	plugin::content-manager.explorer.update	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	[]	2025-01-05 23:38:41.106	2025-01-05 23:38:41.106	2025-01-05 23:38:41.106	\N	\N	\N
75	gbj1tz9zlhtj1fuq25l9xk3q	plugin::content-manager.explorer.update	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	[]	2025-01-05 23:38:41.136	2025-01-05 23:38:41.136	2025-01-05 23:38:41.137	\N	\N	\N
76	a9oxxfec4ok6bjkj4290h1s9	plugin::content-manager.explorer.delete	{}	plugin::users-permissions.user	{}	[]	2025-01-05 23:38:41.168	2025-01-05 23:38:41.168	2025-01-05 23:38:41.168	\N	\N	\N
77	umn9iwjn71xky6i6khfip0zx	plugin::content-manager.explorer.delete	{}	api::about.about	{}	[]	2025-01-05 23:38:41.199	2025-01-05 23:38:41.199	2025-01-05 23:38:41.199	\N	\N	\N
78	blfad39l61fhxubei4p2ok7n	plugin::content-manager.explorer.delete	{}	api::article.article	{}	[]	2025-01-05 23:38:41.228	2025-01-05 23:38:41.228	2025-01-05 23:38:41.228	\N	\N	\N
79	zvi7yz5h1fh9b8o3axchd7lz	plugin::content-manager.explorer.delete	{}	api::author.author	{}	[]	2025-01-05 23:38:41.258	2025-01-05 23:38:41.258	2025-01-05 23:38:41.258	\N	\N	\N
80	dddmgh7fac82tsbqh162r8qu	plugin::content-manager.explorer.delete	{}	api::category.category	{}	[]	2025-01-05 23:38:41.286	2025-01-05 23:38:41.286	2025-01-05 23:38:41.286	\N	\N	\N
81	uz8h1nqukocf42tub8sqy14q	plugin::content-manager.explorer.delete	{}	api::global.global	{}	[]	2025-01-05 23:38:41.317	2025-01-05 23:38:41.317	2025-01-05 23:38:41.317	\N	\N	\N
82	we0bddhybs3cnplygicg12w4	plugin::content-manager.explorer.publish	{}	plugin::users-permissions.user	{}	[]	2025-01-05 23:38:41.349	2025-01-05 23:38:41.349	2025-01-05 23:38:41.349	\N	\N	\N
83	eybml90qk4k1p7tpq9xyxif3	plugin::content-manager.explorer.publish	{}	api::about.about	{}	[]	2025-01-05 23:38:41.38	2025-01-05 23:38:41.38	2025-01-05 23:38:41.38	\N	\N	\N
84	whcms5km81hgueehhapsf5pn	plugin::content-manager.explorer.publish	{}	api::article.article	{}	[]	2025-01-05 23:38:41.42	2025-01-05 23:38:41.42	2025-01-05 23:38:41.42	\N	\N	\N
85	apg8kc2gx7vbiqh2pm9igxal	plugin::content-manager.explorer.publish	{}	api::author.author	{}	[]	2025-01-05 23:38:41.447	2025-01-05 23:38:41.447	2025-01-05 23:38:41.448	\N	\N	\N
86	hrod8xbgzsmntmbq8fe6hmw4	plugin::content-manager.explorer.publish	{}	api::category.category	{}	[]	2025-01-05 23:38:41.477	2025-01-05 23:38:41.477	2025-01-05 23:38:41.477	\N	\N	\N
87	g9bhpyfffwnlpffzj2f2oqkp	plugin::content-manager.explorer.publish	{}	api::global.global	{}	[]	2025-01-05 23:38:41.508	2025-01-05 23:38:41.508	2025-01-05 23:38:41.508	\N	\N	\N
88	o7sdgqfn8t7hp8al744glgen	plugin::content-manager.single-types.configure-view	{}	\N	{}	[]	2025-01-05 23:38:41.542	2025-01-05 23:38:41.542	2025-01-05 23:38:41.542	\N	\N	\N
89	ciwuyw4zt8wxmw4i9289tn97	plugin::content-manager.collection-types.configure-view	{}	\N	{}	[]	2025-01-05 23:38:41.579	2025-01-05 23:38:41.579	2025-01-05 23:38:41.579	\N	\N	\N
90	h3mmnek1bri9v0qprvwmpa8m	plugin::content-manager.components.configure-layout	{}	\N	{}	[]	2025-01-05 23:38:41.609	2025-01-05 23:38:41.609	2025-01-05 23:38:41.609	\N	\N	\N
91	hlojdtljzmstm5hgfpmpf9pg	plugin::content-type-builder.read	{}	\N	{}	[]	2025-01-05 23:38:41.643	2025-01-05 23:38:41.643	2025-01-05 23:38:41.643	\N	\N	\N
92	lvbn72ug7sk0s7v3o4vqfmdk	plugin::email.settings.read	{}	\N	{}	[]	2025-01-05 23:38:41.672	2025-01-05 23:38:41.672	2025-01-05 23:38:41.672	\N	\N	\N
93	okn0gt2966xteukcsu06wftv	plugin::upload.read	{}	\N	{}	[]	2025-01-05 23:38:41.705	2025-01-05 23:38:41.705	2025-01-05 23:38:41.706	\N	\N	\N
94	ald8dro19vz3fnq83vblvkck	plugin::upload.assets.create	{}	\N	{}	[]	2025-01-05 23:38:41.735	2025-01-05 23:38:41.735	2025-01-05 23:38:41.735	\N	\N	\N
95	gtghlmtk7lxjcb6mgwggmhtc	plugin::upload.assets.update	{}	\N	{}	[]	2025-01-05 23:38:41.766	2025-01-05 23:38:41.766	2025-01-05 23:38:41.766	\N	\N	\N
96	gx75bn1dhah3va5dndv7701a	plugin::upload.assets.download	{}	\N	{}	[]	2025-01-05 23:38:41.802	2025-01-05 23:38:41.802	2025-01-05 23:38:41.803	\N	\N	\N
97	qyryxow1y1y9euilsd79jyj3	plugin::upload.assets.copy-link	{}	\N	{}	[]	2025-01-05 23:38:41.831	2025-01-05 23:38:41.831	2025-01-05 23:38:41.832	\N	\N	\N
98	eo4boo9as5yvkc3m2jjx5ivi	plugin::upload.configure-view	{}	\N	{}	[]	2025-01-05 23:38:41.868	2025-01-05 23:38:41.868	2025-01-05 23:38:41.868	\N	\N	\N
99	xj9i22i94anap7n8n0ilmtd9	plugin::upload.settings.read	{}	\N	{}	[]	2025-01-05 23:38:41.902	2025-01-05 23:38:41.902	2025-01-05 23:38:41.902	\N	\N	\N
100	eufp9m000s5j5t7asf26qvxo	plugin::i18n.locale.create	{}	\N	{}	[]	2025-01-05 23:38:41.933	2025-01-05 23:38:41.933	2025-01-05 23:38:41.933	\N	\N	\N
101	eb9wtn3pzf2js4pf0leteucu	plugin::i18n.locale.read	{}	\N	{}	[]	2025-01-05 23:38:41.965	2025-01-05 23:38:41.965	2025-01-05 23:38:41.965	\N	\N	\N
102	wdrjck8q1ve5r6eoji88ya88	plugin::i18n.locale.update	{}	\N	{}	[]	2025-01-05 23:38:41.995	2025-01-05 23:38:41.995	2025-01-05 23:38:41.995	\N	\N	\N
103	tu4yea7bbb8i0n6a3qlqtclb	plugin::i18n.locale.delete	{}	\N	{}	[]	2025-01-05 23:38:42.025	2025-01-05 23:38:42.025	2025-01-05 23:38:42.025	\N	\N	\N
104	i0rk9fbjfa98y6zzjlmcql05	plugin::users-permissions.roles.create	{}	\N	{}	[]	2025-01-05 23:38:42.054	2025-01-05 23:38:42.054	2025-01-05 23:38:42.054	\N	\N	\N
105	jhgfenqom24sam74gykl0gdj	plugin::users-permissions.roles.read	{}	\N	{}	[]	2025-01-05 23:38:42.084	2025-01-05 23:38:42.084	2025-01-05 23:38:42.084	\N	\N	\N
106	dkbxkm994ntptcqbzbbqo1nv	plugin::users-permissions.roles.update	{}	\N	{}	[]	2025-01-05 23:38:42.113	2025-01-05 23:38:42.113	2025-01-05 23:38:42.113	\N	\N	\N
107	hbfslz9md25m321ai313bygw	plugin::users-permissions.roles.delete	{}	\N	{}	[]	2025-01-05 23:38:42.14	2025-01-05 23:38:42.14	2025-01-05 23:38:42.14	\N	\N	\N
108	h31329quw7q7jwrj0fdggnqx	plugin::users-permissions.providers.read	{}	\N	{}	[]	2025-01-05 23:38:42.172	2025-01-05 23:38:42.172	2025-01-05 23:38:42.172	\N	\N	\N
109	ddqu4pg2j60b7k83d0rv8gaw	plugin::users-permissions.providers.update	{}	\N	{}	[]	2025-01-05 23:38:42.204	2025-01-05 23:38:42.204	2025-01-05 23:38:42.204	\N	\N	\N
110	ur9gx5gpi8ngemjsq2u8f63h	plugin::users-permissions.email-templates.read	{}	\N	{}	[]	2025-01-05 23:38:42.235	2025-01-05 23:38:42.235	2025-01-05 23:38:42.235	\N	\N	\N
111	gbe0grrfkcefjm5yu2xsvklt	plugin::users-permissions.email-templates.update	{}	\N	{}	[]	2025-01-05 23:38:42.266	2025-01-05 23:38:42.266	2025-01-05 23:38:42.266	\N	\N	\N
112	ab99ob64hhch1wmkqgbyypr3	plugin::users-permissions.advanced-settings.read	{}	\N	{}	[]	2025-01-05 23:38:42.296	2025-01-05 23:38:42.296	2025-01-05 23:38:42.296	\N	\N	\N
113	h3iif2qvsyv3nkcok53687ev	plugin::users-permissions.advanced-settings.update	{}	\N	{}	[]	2025-01-05 23:38:42.325	2025-01-05 23:38:42.325	2025-01-05 23:38:42.325	\N	\N	\N
114	p3ki6etez457pzr67ajq008l	admin::marketplace.read	{}	\N	{}	[]	2025-01-05 23:38:42.354	2025-01-05 23:38:42.354	2025-01-05 23:38:42.354	\N	\N	\N
115	hex4y8h250r7prne8oea5t23	admin::webhooks.create	{}	\N	{}	[]	2025-01-05 23:38:42.385	2025-01-05 23:38:42.385	2025-01-05 23:38:42.385	\N	\N	\N
116	lcig6r6zzxi11w183pqwsqv9	admin::webhooks.read	{}	\N	{}	[]	2025-01-05 23:38:42.414	2025-01-05 23:38:42.414	2025-01-05 23:38:42.414	\N	\N	\N
117	jlpwro9m6z3d0blfc52xj4x7	admin::webhooks.update	{}	\N	{}	[]	2025-01-05 23:38:42.443	2025-01-05 23:38:42.443	2025-01-05 23:38:42.443	\N	\N	\N
118	ogvigs8yd6led4hole51ffq4	admin::webhooks.delete	{}	\N	{}	[]	2025-01-05 23:38:42.474	2025-01-05 23:38:42.474	2025-01-05 23:38:42.474	\N	\N	\N
119	cayo9adi7ndn4fkw8ogy3ga1	admin::users.create	{}	\N	{}	[]	2025-01-05 23:38:42.508	2025-01-05 23:38:42.508	2025-01-05 23:38:42.508	\N	\N	\N
120	t0tfanjma25ql7hbizkurzyo	admin::users.read	{}	\N	{}	[]	2025-01-05 23:38:42.536	2025-01-05 23:38:42.536	2025-01-05 23:38:42.536	\N	\N	\N
121	mcy5kuhn1ivukl0yvgujj5ol	admin::users.update	{}	\N	{}	[]	2025-01-05 23:38:42.57	2025-01-05 23:38:42.57	2025-01-05 23:38:42.57	\N	\N	\N
122	s8pkqud9etpia1d61qqo1d3m	admin::users.delete	{}	\N	{}	[]	2025-01-05 23:38:42.601	2025-01-05 23:38:42.601	2025-01-05 23:38:42.601	\N	\N	\N
123	ru0kivkek92wspg1487g27hd	admin::roles.create	{}	\N	{}	[]	2025-01-05 23:38:42.634	2025-01-05 23:38:42.634	2025-01-05 23:38:42.635	\N	\N	\N
124	ajnvvw11m8tzmtg1zoy8ni0l	admin::roles.read	{}	\N	{}	[]	2025-01-05 23:38:42.665	2025-01-05 23:38:42.665	2025-01-05 23:38:42.666	\N	\N	\N
125	ntqzpp6xro5r66c262a9zifh	admin::roles.update	{}	\N	{}	[]	2025-01-05 23:38:42.695	2025-01-05 23:38:42.695	2025-01-05 23:38:42.695	\N	\N	\N
126	sbgd5j2irkd6vx9jkztgb5oq	admin::roles.delete	{}	\N	{}	[]	2025-01-05 23:38:42.725	2025-01-05 23:38:42.725	2025-01-05 23:38:42.725	\N	\N	\N
127	k0zvmnbd3kq7l3km4qauz06u	admin::api-tokens.access	{}	\N	{}	[]	2025-01-05 23:38:42.755	2025-01-05 23:38:42.755	2025-01-05 23:38:42.755	\N	\N	\N
128	edqllthfc4ju5n69lk1vrq33	admin::api-tokens.create	{}	\N	{}	[]	2025-01-05 23:38:42.784	2025-01-05 23:38:42.784	2025-01-05 23:38:42.784	\N	\N	\N
129	thjayqzxq9kvno4si9lfxjxe	admin::api-tokens.read	{}	\N	{}	[]	2025-01-05 23:38:42.814	2025-01-05 23:38:42.814	2025-01-05 23:38:42.814	\N	\N	\N
130	jlxqza4vv0kuceh69bh7js6q	admin::api-tokens.update	{}	\N	{}	[]	2025-01-05 23:38:42.843	2025-01-05 23:38:42.843	2025-01-05 23:38:42.843	\N	\N	\N
131	faas7v6o3b6m8tqs01uedlno	admin::api-tokens.regenerate	{}	\N	{}	[]	2025-01-05 23:38:42.873	2025-01-05 23:38:42.873	2025-01-05 23:38:42.873	\N	\N	\N
132	ko4zw94m9yzvhcnb9h3u9pkn	admin::api-tokens.delete	{}	\N	{}	[]	2025-01-05 23:38:42.907	2025-01-05 23:38:42.907	2025-01-05 23:38:42.907	\N	\N	\N
133	ffkpqcf4ugh3tno6a5fzrr4f	admin::project-settings.update	{}	\N	{}	[]	2025-01-05 23:38:42.945	2025-01-05 23:38:42.945	2025-01-05 23:38:42.945	\N	\N	\N
134	wnip5orkk2d8u36gijn851z2	admin::project-settings.read	{}	\N	{}	[]	2025-01-05 23:38:42.988	2025-01-05 23:38:42.988	2025-01-05 23:38:42.988	\N	\N	\N
135	twxkbaqajlgbnmagbvmr65pi	admin::transfer.tokens.access	{}	\N	{}	[]	2025-01-05 23:38:43.017	2025-01-05 23:38:43.017	2025-01-05 23:38:43.018	\N	\N	\N
136	yeyhkppiymwylaatxg6pyyug	admin::transfer.tokens.create	{}	\N	{}	[]	2025-01-05 23:38:43.045	2025-01-05 23:38:43.045	2025-01-05 23:38:43.046	\N	\N	\N
137	ds6qx07ehw2lk6w9uv4961io	admin::transfer.tokens.read	{}	\N	{}	[]	2025-01-05 23:38:43.073	2025-01-05 23:38:43.073	2025-01-05 23:38:43.073	\N	\N	\N
138	wubgj9jdlqqibekkpbjx3olx	admin::transfer.tokens.update	{}	\N	{}	[]	2025-01-05 23:38:43.107	2025-01-05 23:38:43.107	2025-01-05 23:38:43.107	\N	\N	\N
139	qg2i2qumtimoxibm4v3u5gop	admin::transfer.tokens.regenerate	{}	\N	{}	[]	2025-01-05 23:38:43.141	2025-01-05 23:38:43.141	2025-01-05 23:38:43.141	\N	\N	\N
140	cs8xjlsjk9d2rgu6b76dqx9y	admin::transfer.tokens.delete	{}	\N	{}	[]	2025-01-05 23:38:43.173	2025-01-05 23:38:43.173	2025-01-05 23:38:43.173	\N	\N	\N
141	tssqhbvvdp8z6zcika2ce5yb	plugin::upload.assets.create	{}	\N	{}	[]	2025-01-06 22:59:51.655	2025-01-06 22:59:51.655	2025-01-06 22:59:51.656	\N	\N	\N
142	ueolenf4ljupejmu9w4hrfql	plugin::upload.assets.update	{}	\N	{}	[]	2025-01-06 22:59:51.851	2025-01-06 22:59:51.851	2025-01-06 22:59:51.851	\N	\N	\N
160	vtjowm7gcmpg6w0u9s2ymfdb	plugin::content-manager.explorer.create	{}	api::job.job	{"fields": ["type", "title"], "locales": ["en"]}	["admin::is-creator"]	2025-01-07 01:08:17.006	2025-01-07 01:08:17.006	2025-01-07 01:08:17.006	\N	\N	\N
161	axqfhydzd6k10efkjowww10n	plugin::content-manager.explorer.read	{}	api::job.job	{"fields": ["type", "title"], "locales": ["en"]}	["admin::is-creator"]	2025-01-07 01:08:17.075	2025-01-07 01:08:17.075	2025-01-07 01:08:17.076	\N	\N	\N
162	vczaihi3ak5nlt170egngief	plugin::content-manager.explorer.update	{}	api::job.job	{"fields": ["type", "title"], "locales": ["en"]}	["admin::is-creator"]	2025-01-07 01:08:17.136	2025-01-07 01:08:17.136	2025-01-07 01:08:17.137	\N	\N	\N
163	sfhyc2yhmff54t63d3l34rgn	plugin::content-manager.explorer.delete	{}	api::job.job	{"locales": ["en"]}	["admin::is-creator"]	2025-01-07 01:08:17.172	2025-01-07 01:08:17.172	2025-01-07 01:08:17.173	\N	\N	\N
164	k5mkfwo4sm910hf1alnphqnq	plugin::content-manager.explorer.publish	{}	api::job.job	{"locales": ["en"]}	["admin::is-creator"]	2025-01-07 01:08:17.201	2025-01-07 01:08:17.201	2025-01-07 01:08:17.201	\N	\N	\N
177	f3ol22x006ur8c02rpxywn6w	plugin::content-manager.explorer.create	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role", "postedjobs"]}	[]	2025-01-08 22:06:07.977	2025-01-08 22:06:07.977	2025-01-08 22:06:07.978	\N	\N	\N
178	l1n6qqftx9fyridmld4brbjf	plugin::content-manager.explorer.read	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role", "postedjobs"]}	[]	2025-01-08 22:06:08.083	2025-01-08 22:06:08.083	2025-01-08 22:06:08.084	\N	\N	\N
179	zvb5r79zl782jwvhwg55nhhp	plugin::content-manager.explorer.update	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role", "postedjobs"]}	[]	2025-01-08 22:06:08.151	2025-01-08 22:06:08.151	2025-01-08 22:06:08.151	\N	\N	\N
146	ien9n2az2edpejh2h231c1zh	plugin::content-manager.explorer.delete	{}	api::job.job	{"locales": ["en", "zh-CN"]}	[]	2025-01-09 01:50:00.278	2025-01-09 01:50:00.278	2025-01-09 01:50:00.278	\N	\N	\N
181	wo6th7m6o76fjfsohgcuu628	plugin::content-manager.explorer.read	{}	api::job.job	{"fields": ["type", "title", "postedby", "bidder"], "locales": ["en", "zh-CN"]}	[]	2025-01-09 01:50:00.314	2025-01-09 01:50:00.314	2025-01-09 01:50:00.314	\N	\N	\N
147	r89nq8evxyx5u7z5xk80fa2z	plugin::content-manager.explorer.publish	{}	api::job.job	{"locales": ["en", "zh-CN"]}	[]	2025-01-09 01:50:00.351	2025-01-09 01:50:00.351	2025-01-09 01:50:00.351	\N	\N	\N
182	tzbkxxqv39e76e6yewgw4jgy	plugin::content-manager.explorer.update	{}	api::job.job	{"fields": ["type", "title", "postedby", "bidder"], "locales": ["en", "zh-CN"]}	[]	2025-01-09 01:50:00.387	2025-01-09 01:50:00.387	2025-01-09 01:50:00.387	\N	\N	\N
180	vhm2g3mbeiev6oqvd5fxeyoz	plugin::content-manager.explorer.create	{}	api::job.job	{"fields": ["type", "title", "postedby", "bidder"], "locales": ["en", "zh-CN"]}	[]	2025-01-09 01:50:00.419	2025-01-09 01:50:00.419	2025-01-09 01:50:00.419	\N	\N	\N
\.


--
-- TOC entry 3786 (class 0 OID 17006)
-- Dependencies: 297
-- Data for Name: admin_permissions_role_lnk; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.admin_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
1	1	2	1
2	2	2	2
3	3	2	3
4	4	2	4
5	5	2	5
6	6	2	6
7	7	2	7
8	8	2	8
9	9	2	9
10	10	2	10
11	11	2	11
12	12	2	12
13	13	2	13
14	14	2	14
15	15	2	15
16	16	2	16
17	17	2	17
18	18	2	18
19	19	2	19
20	20	2	20
21	21	2	21
22	22	2	22
23	23	2	23
24	24	2	24
25	25	2	25
26	26	2	26
27	27	2	27
28	28	2	28
29	29	2	29
30	30	2	30
31	31	2	31
32	32	3	1
33	33	3	2
34	34	3	3
35	35	3	4
36	36	3	5
37	37	3	6
38	38	3	7
39	39	3	8
40	40	3	9
41	41	3	10
42	42	3	11
43	43	3	12
44	44	3	13
45	45	3	14
46	46	3	15
47	47	3	16
48	48	3	17
49	49	3	18
50	50	3	19
51	51	3	20
52	52	3	21
53	53	3	22
54	54	3	23
55	55	3	24
56	56	3	25
57	57	3	26
59	59	1	2
60	60	1	3
61	61	1	4
62	62	1	5
63	63	1	6
65	65	1	8
66	66	1	9
67	67	1	10
68	68	1	11
69	69	1	12
71	71	1	14
72	72	1	15
73	73	1	16
74	74	1	17
75	75	1	18
76	76	1	19
77	77	1	20
78	78	1	21
79	79	1	22
80	80	1	23
81	81	1	24
82	82	1	25
83	83	1	26
84	84	1	27
85	85	1	28
86	86	1	29
87	87	1	30
88	88	1	31
89	89	1	32
90	90	1	33
91	91	1	34
92	92	1	35
93	93	1	36
94	94	1	37
95	95	1	38
96	96	1	39
97	97	1	40
98	98	1	41
99	99	1	42
100	100	1	43
101	101	1	44
102	102	1	45
103	103	1	46
104	104	1	47
105	105	1	48
106	106	1	49
107	107	1	50
108	108	1	51
109	109	1	52
110	110	1	53
111	111	1	54
112	112	1	55
113	113	1	56
114	114	1	57
115	115	1	58
116	116	1	59
117	117	1	60
118	118	1	61
119	119	1	62
120	120	1	63
121	121	1	64
122	122	1	65
123	123	1	66
124	124	1	67
125	125	1	68
126	126	1	69
127	127	1	70
128	128	1	71
129	129	1	72
130	130	1	73
131	131	1	74
132	132	1	75
133	133	1	76
134	134	1	77
135	135	1	78
136	136	1	79
137	137	1	80
138	138	1	81
139	139	1	82
140	140	1	83
141	141	4	1
142	142	4	2
160	160	4	3
161	161	4	4
162	162	4	5
163	163	4	6
164	164	4	7
177	177	1	97
178	178	1	98
179	179	1	99
183	146	1	100
184	181	1	101
185	147	1	102
186	182	1	103
187	180	1	104
\.


--
-- TOC entry 3738 (class 0 OID 16710)
-- Dependencies: 249
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.admin_roles (id, document_id, name, code, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	mz1r05hlycbbl7s9n2d0w6va	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2025-01-05 23:38:38.517	2025-01-05 23:38:38.517	2025-01-05 23:38:38.517	\N	\N	\N
2	o3z8ut4zithpnf3l0g8za9r9	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2025-01-05 23:38:38.573	2025-01-05 23:38:38.573	2025-01-05 23:38:38.573	\N	\N	\N
3	gpoucm0ar7j3ud1lheo2i3x4	Author	strapi-author	Authors can manage the content they have created.	2025-01-05 23:38:38.594	2025-01-05 23:38:38.594	2025-01-05 23:38:38.594	\N	\N	\N
4	smhhq4rdrpk3835e7lvqn83u	Customer	customer-m5kzoupu	Customer that need to hire Service Provider to do a job\nCreated January 6th, 2025	2025-01-06 22:59:51.426	2025-01-07 01:08:16.844	2025-01-06 22:59:51.432	\N	\N	\N
5	cifoyqz63rl2v0qsi4rfr5iv	Service Provider	service-provider-m5kzq06w	Service Provider that completes task for money\nCreated January 6th, 2025	2025-01-06 23:00:45.176	2025-01-07 01:09:16.104	2025-01-06 23:00:45.177	\N	\N	\N
\.


--
-- TOC entry 3736 (class 0 OID 16696)
-- Dependencies: 247
-- Data for Name: admin_users; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.admin_users (id, document_id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	ktfrg4d4t92x98zwv4r5fxv0	JoJo	G	\N	jojo5544+strapilocal@gmail.com	$2a$10$0kHzses3l9pgsWIT4DI0NO99YroaqysKprre/iZ1ndt301MUiadJC	\N	\N	t	f	\N	2025-01-06 00:29:52.593	2025-01-06 00:29:52.593	2025-01-06 00:29:52.594	\N	\N	\N
\.


--
-- TOC entry 3788 (class 0 OID 17019)
-- Dependencies: 299
-- Data for Name: admin_users_roles_lnk; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.admin_users_roles_lnk (id, user_id, role_id, role_ord, user_ord) FROM stdin;
1	1	1	1	1
\.


--
-- TOC entry 3724 (class 0 OID 16610)
-- Dependencies: 235
-- Data for Name: articles; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.articles (id, document_id, title, description, slug, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	chzb2v5ddf2os38qheatqtyr	The internet's Own boy	Follow the story of Aaron Swartz, the boy who could change the world	the-internet-s-own-boy	2025-01-05 23:38:46.41	2025-01-05 23:38:46.41	\N	\N	\N	\N
2	g9fjrt3ql8xm3qa0mbfi71z5	This shrimp is awesome	Mantis shrimps, or stomatopods, are marine crustaceans of the order Stomatopoda.	this-shrimp-is-awesome	2025-01-05 23:38:46.627	2025-01-05 23:38:46.627	\N	\N	\N	\N
3	qwmoofurnv0vmanwp1uy1mrm	A bug is becoming a meme on the internet	How a bug on MySQL is becoming a meme on the internet	a-bug-is-becoming-a-meme-on-the-internet	2025-01-05 23:38:47.04	2025-01-05 23:38:47.04	\N	\N	\N	\N
4	u52jte9tphlleohi1pkfo8l1	Beautiful picture	Description of a beautiful picture	beautiful-picture	2025-01-05 23:38:47.51	2025-01-05 23:38:47.51	\N	\N	\N	\N
5	bqwlvidqenvlqydpjl3shqul	What's inside a Black Hole	Maybe the answer is in this article, or not...	what-s-inside-a-black-hole	2025-01-05 23:38:47.68	2025-01-05 23:38:47.68	\N	\N	\N	\N
6	qwmoofurnv0vmanwp1uy1mrm	A bug is becoming a meme on the internet	How a bug on MySQL is becoming a meme on the internet	a-bug-is-becoming-a-meme-on-the-internet	2025-01-05 23:38:47.04	2025-01-05 23:38:47.04	2025-01-06 01:39:28.258	\N	\N	\N
7	u52jte9tphlleohi1pkfo8l1	Beautiful picture	Description of a beautiful picture	beautiful-picture	2025-01-05 23:38:47.51	2025-01-05 23:38:47.51	2025-01-06 01:39:28.261	\N	\N	\N
8	chzb2v5ddf2os38qheatqtyr	The internet's Own boy	Follow the story of Aaron Swartz, the boy who could change the world	the-internet-s-own-boy	2025-01-05 23:38:46.41	2025-01-05 23:38:46.41	2025-01-06 01:39:28.262	\N	\N	\N
\.


--
-- TOC entry 3782 (class 0 OID 16980)
-- Dependencies: 293
-- Data for Name: articles_author_lnk; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.articles_author_lnk (id, article_id, author_id, article_ord) FROM stdin;
1	1	1	1
2	2	1	2
3	3	2	1
4	4	2	2
5	5	2	3
6	6	2	4
7	7	2	4
8	8	1	3
\.


--
-- TOC entry 3784 (class 0 OID 16993)
-- Dependencies: 295
-- Data for Name: articles_category_lnk; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.articles_category_lnk (id, article_id, category_id, article_ord) FROM stdin;
1	1	5	1
2	2	4	1
3	3	2	1
4	4	4	2
5	5	1	1
6	6	2	2
7	7	4	3
8	8	5	2
\.


--
-- TOC entry 3722 (class 0 OID 16594)
-- Dependencies: 233
-- Data for Name: articles_cmps; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.articles_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
1	1	1	shared.rich-text	blocks	1
2	1	1	shared.quote	blocks	2
3	1	1	shared.media	blocks	3
4	1	2	shared.rich-text	blocks	4
5	1	1	shared.slider	blocks	5
6	2	3	shared.rich-text	blocks	1
7	2	2	shared.quote	blocks	2
8	2	2	shared.media	blocks	3
9	2	4	shared.rich-text	blocks	4
10	2	2	shared.slider	blocks	5
11	3	5	shared.rich-text	blocks	1
12	3	3	shared.quote	blocks	2
13	3	3	shared.media	blocks	3
14	3	6	shared.rich-text	blocks	4
15	3	3	shared.slider	blocks	5
16	4	7	shared.rich-text	blocks	1
17	4	4	shared.quote	blocks	2
18	4	4	shared.media	blocks	3
19	4	8	shared.rich-text	blocks	4
20	4	4	shared.slider	blocks	5
21	5	9	shared.rich-text	blocks	1
22	5	5	shared.quote	blocks	2
23	5	5	shared.media	blocks	3
24	5	10	shared.rich-text	blocks	4
25	5	5	shared.slider	blocks	5
26	6	12	shared.rich-text	blocks	1
27	6	7	shared.quote	blocks	2
28	6	7	shared.media	blocks	3
29	6	13	shared.rich-text	blocks	4
30	6	6	shared.slider	blocks	5
31	7	14	shared.rich-text	blocks	1
32	7	8	shared.quote	blocks	2
33	7	8	shared.media	blocks	3
34	7	15	shared.rich-text	blocks	4
35	7	7	shared.slider	blocks	5
36	8	16	shared.rich-text	blocks	1
37	8	9	shared.quote	blocks	2
38	8	9	shared.media	blocks	3
39	8	17	shared.rich-text	blocks	4
40	8	8	shared.slider	blocks	5
\.


--
-- TOC entry 3726 (class 0 OID 16624)
-- Dependencies: 237
-- Data for Name: authors; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.authors (id, document_id, name, email, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	j6de7czzmscj6f011ue3btqz	David Doe	daviddoe@strapi.io	2025-01-05 23:38:43.895	2025-01-05 23:38:43.895	2025-01-05 23:38:43.891	\N	\N	\N
2	ikol124ihciu2sr9h7ho5i7i	Sarah Baker	sarahbaker@strapi.io	2025-01-05 23:38:44.332	2025-01-05 23:38:44.332	2025-01-05 23:38:44.329	\N	\N	\N
\.


--
-- TOC entry 3728 (class 0 OID 16638)
-- Dependencies: 239
-- Data for Name: categories; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.categories (id, document_id, name, slug, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	p4pfws1goi0urb5nm7gdembl	news	news	\N	2025-01-05 23:38:43.384	2025-01-05 23:38:43.384	2025-01-05 23:38:43.376	\N	\N	\N
2	zmj67uwkmxvrf9xw62r6ml33	tech	tech	\N	2025-01-05 23:38:43.408	2025-01-05 23:38:43.408	2025-01-05 23:38:43.403	\N	\N	\N
3	n7xc9h5uqrjvdirk53j96qpm	food	food	\N	2025-01-05 23:38:43.43	2025-01-05 23:38:43.43	2025-01-05 23:38:43.427	\N	\N	\N
4	nwl9frxzi35fxz34bt5nbp4a	nature	nature	\N	2025-01-05 23:38:43.45	2025-01-05 23:38:43.45	2025-01-05 23:38:43.447	\N	\N	\N
5	j5aiay202nw4at6gpvu7ecvd	story	story	\N	2025-01-05 23:38:43.469	2025-01-05 23:38:43.469	2025-01-05 23:38:43.466	\N	\N	\N
\.


--
-- TOC entry 3756 (class 0 OID 16821)
-- Dependencies: 267
-- Data for Name: components_shared_media; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.components_shared_media (id) FROM stdin;
1
2
3
4
5
6
7
8
9
\.


--
-- TOC entry 3754 (class 0 OID 16810)
-- Dependencies: 265
-- Data for Name: components_shared_quotes; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.components_shared_quotes (id, title, body) FROM stdin;
1	Thelonius Monk	You've got to dig it to dig it, you dig?
2	Thelonius Monk	You've got to dig it to dig it, you dig?
3	Thelonius Monk	You've got to dig it to dig it, you dig?
4	Thelonius Monk	You've got to dig it to dig it, you dig?
5	Thelonius Monk	You've got to dig it to dig it, you dig?
6	Thelonius Monk	You've got to dig it to dig it, you dig?
7	Thelonius Monk	You've got to dig it to dig it, you dig?
8	Thelonius Monk	You've got to dig it to dig it, you dig?
9	Thelonius Monk	You've got to dig it to dig it, you dig?
\.


--
-- TOC entry 3752 (class 0 OID 16799)
-- Dependencies: 263
-- Data for Name: components_shared_rich_texts; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.components_shared_rich_texts (id, body) FROM stdin;
1	## Probant \n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. \n\n## Abit sua\n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. 
2	## Spatiantia astra \n\nFoeda, medio silva *errandum*: onus formam munere. Mutata bibulis est auxiliare arces etiamnunc verbis virgineo Priamidas illa Thescelus, nam fit locis lucis auras. Exitus hospes gratulor ut pondere [speslimite](http://www.curas.io/figuram); quid habent, Avernales faciente de. Pervenit Ino sonabile supplex cognoscenti vires, Bacchumque errat miserarum venandi dignabere dedisti. Discrimina iuncosaque virgaque tot sine superest [fissus](http://quos.org/sitet.aspx). Non color esset potest non sumit, sed vix arserat. Nisi immo silva tantum pectusque quos pennis quisquam artus!
3	## Probant \n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. \n\n## Abit sua\n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. 
4	## Spatiantia astra \n\nFoeda, medio silva *errandum*: onus formam munere. Mutata bibulis est auxiliare arces etiamnunc verbis virgineo Priamidas illa Thescelus, nam fit locis lucis auras. Exitus hospes gratulor ut pondere [speslimite](http://www.curas.io/figuram); quid habent, Avernales faciente de. Pervenit Ino sonabile supplex cognoscenti vires, Bacchumque errat miserarum venandi dignabere dedisti. Discrimina iuncosaque virgaque tot sine superest [fissus](http://quos.org/sitet.aspx). Non color esset potest non sumit, sed vix arserat. Nisi immo silva tantum pectusque quos pennis quisquam artus!
5	## Probant \n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. \n\n## Abit sua\n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. 
6	## Spatiantia astra \n\nFoeda, medio silva *errandum*: onus formam munere. Mutata bibulis est auxiliare arces etiamnunc verbis virgineo Priamidas illa Thescelus, nam fit locis lucis auras. Exitus hospes gratulor ut pondere [speslimite](http://www.curas.io/figuram); quid habent, Avernales faciente de. Pervenit Ino sonabile supplex cognoscenti vires, Bacchumque errat miserarum venandi dignabere dedisti. Discrimina iuncosaque virgaque tot sine superest [fissus](http://quos.org/sitet.aspx). Non color esset potest non sumit, sed vix arserat. Nisi immo silva tantum pectusque quos pennis quisquam artus!
7	## Probant \n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. \n\n## Abit sua\n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. 
8	## Spatiantia astra \n\nFoeda, medio silva *errandum*: onus formam munere. Mutata bibulis est auxiliare arces etiamnunc verbis virgineo Priamidas illa Thescelus, nam fit locis lucis auras. Exitus hospes gratulor ut pondere [speslimite](http://www.curas.io/figuram); quid habent, Avernales faciente de. Pervenit Ino sonabile supplex cognoscenti vires, Bacchumque errat miserarum venandi dignabere dedisti. Discrimina iuncosaque virgaque tot sine superest [fissus](http://quos.org/sitet.aspx). Non color esset potest non sumit, sed vix arserat. Nisi immo silva tantum pectusque quos pennis quisquam artus!
9	## Probant \n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. \n\n## Abit sua\n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. 
10	## Spatiantia astra \n\nFoeda, medio silva *errandum*: onus formam munere. Mutata bibulis est auxiliare arces etiamnunc verbis virgineo Priamidas illa Thescelus, nam fit locis lucis auras. Exitus hospes gratulor ut pondere [speslimite](http://www.curas.io/figuram); quid habent, Avernales faciente de. Pervenit Ino sonabile supplex cognoscenti vires, Bacchumque errat miserarum venandi dignabere dedisti. Discrimina iuncosaque virgaque tot sine superest [fissus](http://quos.org/sitet.aspx). Non color esset potest non sumit, sed vix arserat. Nisi immo silva tantum pectusque quos pennis quisquam artus!
11	## Dedit imago conspicuus cum capillis totidem inhibere\n\nLorem markdownum **rerum**, est limine: columbas: ab infelix hostem arbore nudis\ncrudelis. Videtur reliquit ambo ferrum dote sub amne fatis **illuc**, in magis,\nnec.
12	## Probant \n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. \n\n## Abit sua\n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. 
13	## Spatiantia astra \n\nFoeda, medio silva *errandum*: onus formam munere. Mutata bibulis est auxiliare arces etiamnunc verbis virgineo Priamidas illa Thescelus, nam fit locis lucis auras. Exitus hospes gratulor ut pondere [speslimite](http://www.curas.io/figuram); quid habent, Avernales faciente de. Pervenit Ino sonabile supplex cognoscenti vires, Bacchumque errat miserarum venandi dignabere dedisti. Discrimina iuncosaque virgaque tot sine superest [fissus](http://quos.org/sitet.aspx). Non color esset potest non sumit, sed vix arserat. Nisi immo silva tantum pectusque quos pennis quisquam artus!
14	## Probant \n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. \n\n## Abit sua\n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. 
15	## Spatiantia astra \n\nFoeda, medio silva *errandum*: onus formam munere. Mutata bibulis est auxiliare arces etiamnunc verbis virgineo Priamidas illa Thescelus, nam fit locis lucis auras. Exitus hospes gratulor ut pondere [speslimite](http://www.curas.io/figuram); quid habent, Avernales faciente de. Pervenit Ino sonabile supplex cognoscenti vires, Bacchumque errat miserarum venandi dignabere dedisti. Discrimina iuncosaque virgaque tot sine superest [fissus](http://quos.org/sitet.aspx). Non color esset potest non sumit, sed vix arserat. Nisi immo silva tantum pectusque quos pennis quisquam artus!
16	## Probant \n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. \n\n## Abit sua\n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. 
17	## Spatiantia astra \n\nFoeda, medio silva *errandum*: onus formam munere. Mutata bibulis est auxiliare arces etiamnunc verbis virgineo Priamidas illa Thescelus, nam fit locis lucis auras. Exitus hospes gratulor ut pondere [speslimite](http://www.curas.io/figuram); quid habent, Avernales faciente de. Pervenit Ino sonabile supplex cognoscenti vires, Bacchumque errat miserarum venandi dignabere dedisti. Discrimina iuncosaque virgaque tot sine superest [fissus](http://quos.org/sitet.aspx). Non color esset potest non sumit, sed vix arserat. Nisi immo silva tantum pectusque quos pennis quisquam artus!
\.


--
-- TOC entry 3750 (class 0 OID 16788)
-- Dependencies: 261
-- Data for Name: components_shared_seos; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.components_shared_seos (id, meta_title, meta_description) FROM stdin;
1	Page	A blog made with Strapi
\.


--
-- TOC entry 3748 (class 0 OID 16780)
-- Dependencies: 259
-- Data for Name: components_shared_sliders; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.components_shared_sliders (id) FROM stdin;
1
2
3
4
5
6
7
8
\.


--
-- TOC entry 3698 (class 0 OID 16414)
-- Dependencies: 209
-- Data for Name: files; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.files (id, document_id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	k92swahvkoq4h8qnni4sukv6	daviddoe@strapi	An image uploaded to Strapi called daviddoe@strapi	daviddoe@strapi	2418	2711	{"large": {"ext": ".jpeg", "url": "/uploads/large_daviddoe_strapi_d3c351d038.jpeg", "hash": "large_daviddoe_strapi_d3c351d038", "mime": "image/jpeg", "name": "large_daviddoe@strapi", "path": null, "size": 74.56, "width": 892, "height": 1000, "sizeInBytes": 74560}, "small": {"ext": ".jpeg", "url": "/uploads/small_daviddoe_strapi_d3c351d038.jpeg", "hash": "small_daviddoe_strapi_d3c351d038", "mime": "image/jpeg", "name": "small_daviddoe@strapi", "path": null, "size": 22.51, "width": 446, "height": 500, "sizeInBytes": 22509}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_daviddoe_strapi_d3c351d038.jpeg", "hash": "medium_daviddoe_strapi_d3c351d038", "mime": "image/jpeg", "name": "medium_daviddoe@strapi", "path": null, "size": 44.37, "width": 669, "height": 750, "sizeInBytes": 44372}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_daviddoe_strapi_d3c351d038.jpeg", "hash": "thumbnail_daviddoe_strapi_d3c351d038", "mime": "image/jpeg", "name": "thumbnail_daviddoe@strapi", "path": null, "size": 4.18, "width": 139, "height": 156, "sizeInBytes": 4175}}	daviddoe_strapi_d3c351d038	.jpeg	image/jpeg	587.69	/uploads/daviddoe_strapi_d3c351d038.jpeg	\N	local	\N	/	2025-01-05 23:38:43.831	2025-01-05 23:38:43.831	2025-01-05 23:38:43.833	\N	\N	\N
2	ov66wyqzdatj2rslyrdf8902	sarahbaker@strapi	An image uploaded to Strapi called sarahbaker@strapi	sarahbaker@strapi	3321	2746	{"large": {"ext": ".jpeg", "url": "/uploads/large_sarahbaker_strapi_9cfda5effb.jpeg", "hash": "large_sarahbaker_strapi_9cfda5effb", "mime": "image/jpeg", "name": "large_sarahbaker@strapi", "path": null, "size": 101.98, "width": 1000, "height": 827, "sizeInBytes": 101978}, "small": {"ext": ".jpeg", "url": "/uploads/small_sarahbaker_strapi_9cfda5effb.jpeg", "hash": "small_sarahbaker_strapi_9cfda5effb", "mime": "image/jpeg", "name": "small_sarahbaker@strapi", "path": null, "size": 30.58, "width": 500, "height": 413, "sizeInBytes": 30578}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_sarahbaker_strapi_9cfda5effb.jpeg", "hash": "medium_sarahbaker_strapi_9cfda5effb", "mime": "image/jpeg", "name": "medium_sarahbaker@strapi", "path": null, "size": 61.37, "width": 750, "height": 620, "sizeInBytes": 61368}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_sarahbaker_strapi_9cfda5effb.jpeg", "hash": "thumbnail_sarahbaker_strapi_9cfda5effb", "mime": "image/jpeg", "name": "thumbnail_sarahbaker@strapi", "path": null, "size": 6.68, "width": 189, "height": 156, "sizeInBytes": 6681}}	sarahbaker_strapi_9cfda5effb	.jpeg	image/jpeg	795.13	/uploads/sarahbaker_strapi_9cfda5effb.jpeg	\N	local	\N	/	2025-01-05 23:38:44.288	2025-01-05 23:38:44.288	2025-01-05 23:38:44.288	\N	\N	\N
3	na2juvyyarrrr4eu6ipyey6g	the-internet-s-own-boy	An image uploaded to Strapi called the-internet-s-own-boy	the-internet-s-own-boy	1200	707	{"large": {"ext": ".jpeg", "url": "/uploads/large_the_internet_s_own_boy_507f69d48e.jpeg", "hash": "large_the_internet_s_own_boy_507f69d48e", "mime": "image/jpeg", "name": "large_the-internet-s-own-boy", "path": null, "size": 70.11, "width": 1000, "height": 589, "sizeInBytes": 70105}, "small": {"ext": ".jpeg", "url": "/uploads/small_the_internet_s_own_boy_507f69d48e.jpeg", "hash": "small_the_internet_s_own_boy_507f69d48e", "mime": "image/jpeg", "name": "small_the-internet-s-own-boy", "path": null, "size": 25.31, "width": 500, "height": 295, "sizeInBytes": 25308}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_the_internet_s_own_boy_507f69d48e.jpeg", "hash": "medium_the_internet_s_own_boy_507f69d48e", "mime": "image/jpeg", "name": "medium_the-internet-s-own-boy", "path": null, "size": 45.93, "width": 750, "height": 442, "sizeInBytes": 45925}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_the_internet_s_own_boy_507f69d48e.jpeg", "hash": "thumbnail_the_internet_s_own_boy_507f69d48e", "mime": "image/jpeg", "name": "thumbnail_the-internet-s-own-boy", "path": null, "size": 8.38, "width": 245, "height": 144, "sizeInBytes": 8380}}	the_internet_s_own_boy_507f69d48e	.jpeg	image/jpeg	91.55	/uploads/the_internet_s_own_boy_507f69d48e.jpeg	\N	local	\N	/	2025-01-05 23:38:44.455	2025-01-05 23:38:44.455	2025-01-05 23:38:44.455	\N	\N	\N
4	xzgxdo2fh03ifnrattqm7icy	coffee-art	An image uploaded to Strapi called coffee-art	coffee-art	5824	3259	{"large": {"ext": ".jpeg", "url": "/uploads/large_coffee_art_7eb1323506.jpeg", "hash": "large_coffee_art_7eb1323506", "mime": "image/jpeg", "name": "large_coffee-art", "path": null, "size": 40.78, "width": 1000, "height": 559, "sizeInBytes": 40778}, "small": {"ext": ".jpeg", "url": "/uploads/small_coffee_art_7eb1323506.jpeg", "hash": "small_coffee_art_7eb1323506", "mime": "image/jpeg", "name": "small_coffee-art", "path": null, "size": 15.27, "width": 500, "height": 280, "sizeInBytes": 15273}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_coffee_art_7eb1323506.jpeg", "hash": "medium_coffee_art_7eb1323506", "mime": "image/jpeg", "name": "medium_coffee-art", "path": null, "size": 27.06, "width": 750, "height": 419, "sizeInBytes": 27063}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_coffee_art_7eb1323506.jpeg", "hash": "thumbnail_coffee_art_7eb1323506", "mime": "image/jpeg", "name": "thumbnail_coffee-art", "path": null, "size": 5.86, "width": 245, "height": 137, "sizeInBytes": 5860}}	coffee_art_7eb1323506	.jpeg	image/jpeg	978.11	/uploads/coffee_art_7eb1323506.jpeg	\N	local	\N	/	2025-01-05 23:38:45.297	2025-01-05 23:38:45.297	2025-01-05 23:38:45.297	\N	\N	\N
5	eevxy1gf5winnjf70pxju9uf	coffee-beans	An image uploaded to Strapi called coffee-beans	coffee-beans	5021	3347	{"large": {"ext": ".jpeg", "url": "/uploads/large_coffee_beans_9bc74cb3fe.jpeg", "hash": "large_coffee_beans_9bc74cb3fe", "mime": "image/jpeg", "name": "large_coffee-beans", "path": null, "size": 115.66, "width": 1000, "height": 666, "sizeInBytes": 115659}, "small": {"ext": ".jpeg", "url": "/uploads/small_coffee_beans_9bc74cb3fe.jpeg", "hash": "small_coffee_beans_9bc74cb3fe", "mime": "image/jpeg", "name": "small_coffee-beans", "path": null, "size": 31.11, "width": 500, "height": 333, "sizeInBytes": 31106}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_coffee_beans_9bc74cb3fe.jpeg", "hash": "medium_coffee_beans_9bc74cb3fe", "mime": "image/jpeg", "name": "medium_coffee-beans", "path": null, "size": 67.95, "width": 750, "height": 500, "sizeInBytes": 67954}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_coffee_beans_9bc74cb3fe.jpeg", "hash": "thumbnail_coffee_beans_9bc74cb3fe", "mime": "image/jpeg", "name": "thumbnail_coffee-beans", "path": null, "size": 7.96, "width": 234, "height": 156, "sizeInBytes": 7962}}	coffee_beans_9bc74cb3fe	.jpeg	image/jpeg	2346.20	/uploads/coffee_beans_9bc74cb3fe.jpeg	\N	local	\N	/	2025-01-05 23:38:46.337	2025-01-05 23:38:46.337	2025-01-05 23:38:46.337	\N	\N	\N
6	esrokv2x0cabtlmixvux32ma	this-shrimp-is-awesome	An image uploaded to Strapi called this-shrimp-is-awesome	this-shrimp-is-awesome	1200	630	{"large": {"ext": ".jpeg", "url": "/uploads/large_this_shrimp_is_awesome_bb49839dc4.jpeg", "hash": "large_this_shrimp_is_awesome_bb49839dc4", "mime": "image/jpeg", "name": "large_this-shrimp-is-awesome", "path": null, "size": 72.87, "width": 1000, "height": 525, "sizeInBytes": 72867}, "small": {"ext": ".jpeg", "url": "/uploads/small_this_shrimp_is_awesome_bb49839dc4.jpeg", "hash": "small_this_shrimp_is_awesome_bb49839dc4", "mime": "image/jpeg", "name": "small_this-shrimp-is-awesome", "path": null, "size": 26.93, "width": 500, "height": 263, "sizeInBytes": 26930}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_this_shrimp_is_awesome_bb49839dc4.jpeg", "hash": "medium_this_shrimp_is_awesome_bb49839dc4", "mime": "image/jpeg", "name": "medium_this-shrimp-is-awesome", "path": null, "size": 48.38, "width": 750, "height": 394, "sizeInBytes": 48380}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_this_shrimp_is_awesome_bb49839dc4.jpeg", "hash": "thumbnail_this_shrimp_is_awesome_bb49839dc4", "mime": "image/jpeg", "name": "thumbnail_this-shrimp-is-awesome", "path": null, "size": 9.63, "width": 245, "height": 129, "sizeInBytes": 9633}}	this_shrimp_is_awesome_bb49839dc4	.jpeg	image/jpeg	95.48	/uploads/this_shrimp_is_awesome_bb49839dc4.jpeg	\N	local	\N	/	2025-01-05 23:38:46.55	2025-01-05 23:38:46.55	2025-01-05 23:38:46.55	\N	\N	\N
7	ek6gjteuoggi9t9m7ube0m72	a-bug-is-becoming-a-meme-on-the-internet	An image uploaded to Strapi called a-bug-is-becoming-a-meme-on-the-internet	a-bug-is-becoming-a-meme-on-the-internet	3628	2419	{"large": {"ext": ".jpeg", "url": "/uploads/large_a_bug_is_becoming_a_meme_on_the_internet_7eaf0eb8ce.jpeg", "hash": "large_a_bug_is_becoming_a_meme_on_the_internet_7eaf0eb8ce", "mime": "image/jpeg", "name": "large_a-bug-is-becoming-a-meme-on-the-internet", "path": null, "size": 51.05, "width": 1000, "height": 666, "sizeInBytes": 51046}, "small": {"ext": ".jpeg", "url": "/uploads/small_a_bug_is_becoming_a_meme_on_the_internet_7eaf0eb8ce.jpeg", "hash": "small_a_bug_is_becoming_a_meme_on_the_internet_7eaf0eb8ce", "mime": "image/jpeg", "name": "small_a-bug-is-becoming-a-meme-on-the-internet", "path": null, "size": 19.27, "width": 500, "height": 333, "sizeInBytes": 19268}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_a_bug_is_becoming_a_meme_on_the_internet_7eaf0eb8ce.jpeg", "hash": "medium_a_bug_is_becoming_a_meme_on_the_internet_7eaf0eb8ce", "mime": "image/jpeg", "name": "medium_a-bug-is-becoming-a-meme-on-the-internet", "path": null, "size": 33.58, "width": 750, "height": 500, "sizeInBytes": 33577}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_a_bug_is_becoming_a_meme_on_the_internet_7eaf0eb8ce.jpeg", "hash": "thumbnail_a_bug_is_becoming_a_meme_on_the_internet_7eaf0eb8ce", "mime": "image/jpeg", "name": "thumbnail_a-bug-is-becoming-a-meme-on-the-internet", "path": null, "size": 6.74, "width": 234, "height": 156, "sizeInBytes": 6743}}	a_bug_is_becoming_a_meme_on_the_internet_7eaf0eb8ce	.jpeg	image/jpeg	234.02	/uploads/a_bug_is_becoming_a_meme_on_the_internet_7eaf0eb8ce.jpeg	\N	local	\N	/	2025-01-05 23:38:46.979	2025-01-05 23:38:46.979	2025-01-05 23:38:46.979	\N	\N	\N
8	bcs9oqaydpieq354vt5mans9	beautiful-picture	An image uploaded to Strapi called beautiful-picture	beautiful-picture	3824	2548	{"large": {"ext": ".jpeg", "url": "/uploads/large_beautiful_picture_c6ea33098b.jpeg", "hash": "large_beautiful_picture_c6ea33098b", "mime": "image/jpeg", "name": "large_beautiful-picture", "path": null, "size": 83.42, "width": 1000, "height": 666, "sizeInBytes": 83416}, "small": {"ext": ".jpeg", "url": "/uploads/small_beautiful_picture_c6ea33098b.jpeg", "hash": "small_beautiful_picture_c6ea33098b", "mime": "image/jpeg", "name": "small_beautiful-picture", "path": null, "size": 23.38, "width": 500, "height": 333, "sizeInBytes": 23380}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_beautiful_picture_c6ea33098b.jpeg", "hash": "medium_beautiful_picture_c6ea33098b", "mime": "image/jpeg", "name": "medium_beautiful-picture", "path": null, "size": 47.89, "width": 750, "height": 500, "sizeInBytes": 47888}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_beautiful_picture_c6ea33098b.jpeg", "hash": "thumbnail_beautiful_picture_c6ea33098b", "mime": "image/jpeg", "name": "thumbnail_beautiful-picture", "path": null, "size": 6.43, "width": 234, "height": 156, "sizeInBytes": 6427}}	beautiful_picture_c6ea33098b	.jpeg	image/jpeg	710.28	/uploads/beautiful_picture_c6ea33098b.jpeg	\N	local	\N	/	2025-01-05 23:38:47.434	2025-01-05 23:38:47.434	2025-01-05 23:38:47.435	\N	\N	\N
9	krwhbvjuqpsae4b8s5eafhkh	what-s-inside-a-black-hole	An image uploaded to Strapi called what-s-inside-a-black-hole	what-s-inside-a-black-hole	800	466	{"small": {"ext": ".jpeg", "url": "/uploads/small_what_s_inside_a_black_hole_c81e1a0b57.jpeg", "hash": "small_what_s_inside_a_black_hole_c81e1a0b57", "mime": "image/jpeg", "name": "small_what-s-inside-a-black-hole", "path": null, "size": 3.89, "width": 500, "height": 291, "sizeInBytes": 3889}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_what_s_inside_a_black_hole_c81e1a0b57.jpeg", "hash": "medium_what_s_inside_a_black_hole_c81e1a0b57", "mime": "image/jpeg", "name": "medium_what-s-inside-a-black-hole", "path": null, "size": 6.94, "width": 750, "height": 437, "sizeInBytes": 6935}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_what_s_inside_a_black_hole_c81e1a0b57.jpeg", "hash": "thumbnail_what_s_inside_a_black_hole_c81e1a0b57", "mime": "image/jpeg", "name": "thumbnail_what-s-inside-a-black-hole", "path": null, "size": 1.55, "width": 245, "height": 143, "sizeInBytes": 1549}}	what_s_inside_a_black_hole_c81e1a0b57	.jpeg	image/jpeg	7.50	/uploads/what_s_inside_a_black_hole_c81e1a0b57.jpeg	\N	local	\N	/	2025-01-05 23:38:47.621	2025-01-05 23:38:47.621	2025-01-05 23:38:47.621	\N	\N	\N
10	ntx95nzegsmbk0tem2apo3cg	favicon	An image uploaded to Strapi called favicon	favicon	512	512	{"small": {"ext": ".png", "url": "/uploads/small_favicon_d59b710b8f.png", "hash": "small_favicon_d59b710b8f", "mime": "image/png", "name": "small_favicon", "path": null, "size": 20.56, "width": 500, "height": 500, "sizeInBytes": 20560}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_favicon_d59b710b8f.png", "hash": "thumbnail_favicon_d59b710b8f", "mime": "image/png", "name": "thumbnail_favicon", "path": null, "size": 4.69, "width": 156, "height": 156, "sizeInBytes": 4690}}	favicon_d59b710b8f	.png	image/png	2.78	/uploads/favicon_d59b710b8f.png	\N	local	\N	/	2025-01-05 23:38:47.802	2025-01-05 23:38:47.802	2025-01-05 23:38:47.802	\N	\N	\N
11	j6rw6efrv69tat9g0t7drxtp	default-image	An image uploaded to Strapi called default-image	default-image	1208	715	{"large": {"ext": ".png", "url": "/uploads/large_default_image_c306f326a9.png", "hash": "large_default_image_c306f326a9", "mime": "image/png", "name": "large_default-image", "path": null, "size": 323.33, "width": 1000, "height": 592, "sizeInBytes": 323332}, "small": {"ext": ".png", "url": "/uploads/small_default_image_c306f326a9.png", "hash": "small_default_image_c306f326a9", "mime": "image/png", "name": "small_default-image", "path": null, "size": 74.09, "width": 500, "height": 296, "sizeInBytes": 74093}, "medium": {"ext": ".png", "url": "/uploads/medium_default_image_c306f326a9.png", "hash": "medium_default_image_c306f326a9", "mime": "image/png", "name": "medium_default-image", "path": null, "size": 170.23, "width": 750, "height": 444, "sizeInBytes": 170226}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_default_image_c306f326a9.png", "hash": "thumbnail_default_image_c306f326a9", "mime": "image/png", "name": "thumbnail_default-image", "path": null, "size": 20.6, "width": 245, "height": 145, "sizeInBytes": 20603}}	default_image_c306f326a9	.png	image/png	81.73	/uploads/default_image_c306f326a9.png	\N	local	\N	/	2025-01-05 23:38:48.154	2025-01-05 23:38:48.154	2025-01-05 23:38:48.155	\N	\N	\N
\.


--
-- TOC entry 3766 (class 0 OID 16877)
-- Dependencies: 277
-- Data for Name: files_folder_lnk; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.files_folder_lnk (id, file_id, folder_id, file_ord) FROM stdin;
\.


--
-- TOC entry 3764 (class 0 OID 16863)
-- Dependencies: 275
-- Data for Name: files_related_mph; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.files_related_mph (id, file_id, related_id, related_type, field, "order") FROM stdin;
1	1	1	api::author.author	avatar	1
2	2	2	api::author.author	avatar	1
3	4	1	shared.media	file	1
4	4	1	shared.slider	files	1
5	5	1	shared.slider	files	2
6	3	1	api::article.article	cover	1
7	4	2	shared.media	file	1
8	4	2	shared.slider	files	1
9	5	2	shared.slider	files	2
10	6	2	api::article.article	cover	1
11	4	3	shared.media	file	1
12	4	3	shared.slider	files	1
13	5	3	shared.slider	files	2
14	7	3	api::article.article	cover	1
15	4	4	shared.media	file	1
16	4	4	shared.slider	files	1
17	5	4	shared.slider	files	2
18	8	4	api::article.article	cover	1
19	4	5	shared.media	file	1
20	4	5	shared.slider	files	1
21	5	5	shared.slider	files	2
22	9	5	api::article.article	cover	1
23	11	1	shared.seo	shareImage	1
24	10	1	api::global.global	favicon	1
25	4	6	shared.media	file	1
26	4	7	shared.media	file	1
27	4	6	shared.slider	files	1
28	5	6	shared.slider	files	2
29	4	8	shared.media	file	1
30	4	7	shared.slider	files	1
31	5	7	shared.slider	files	2
32	4	9	shared.media	file	1
33	4	8	shared.slider	files	1
34	5	8	shared.slider	files	2
35	7	6	api::article.article	cover	1
36	8	7	api::article.article	cover	1
37	3	8	api::article.article	cover	1
\.


--
-- TOC entry 3732 (class 0 OID 16668)
-- Dependencies: 243
-- Data for Name: globals; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.globals (id, document_id, site_name, site_description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	gaebk4nfvdyzg3dyyys68uu0	Strapi Blog	A Blog made with Strapi	2025-01-05 23:38:48.217	2025-01-05 23:38:48.217	2025-01-05 23:38:48.209	\N	\N	\N
\.


--
-- TOC entry 3730 (class 0 OID 16652)
-- Dependencies: 241
-- Data for Name: globals_cmps; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.globals_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
1	1	1	shared.seo	defaultSeo	\N
\.


--
-- TOC entry 3702 (class 0 OID 16452)
-- Dependencies: 213
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.i18n_locale (id, document_id, name, code, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	ee0377hv3k1d4347ntkk36m8	English (en)	en	2025-01-05 23:38:38.158	2025-01-05 23:38:38.158	2025-01-05 23:38:38.159	\N	\N	\N
2	jbg1usq7ks9fi8nvnosxjhcg	中文 Chinese (Simplified, China) (zh-CN)	zh-CN	2025-01-09 01:49:59.94	2025-01-09 01:49:59.94	2025-01-09 01:49:59.94	1	1	\N
\.


--
-- TOC entry 3794 (class 0 OID 24583)
-- Dependencies: 305
-- Data for Name: jobs; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.jobs (id, document_id, type, title, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
137	mpebj793savd8ee9baeb4w4u	shortTermClean	title	2025-01-09 00:26:08.768	2025-01-09 00:26:08.768	\N	\N	\N	en
138	mpebj793savd8ee9baeb4w4u	shortTermClean	title	2025-01-09 00:26:08.768	2025-01-09 00:26:08.768	2025-01-09 00:26:08.78	\N	\N	en
139	ygs091xjwldewp23i48nivw6	shortTermClean	title	2025-01-09 00:26:30.521	2025-01-09 00:26:30.521	\N	\N	\N	en
140	ygs091xjwldewp23i48nivw6	shortTermClean	title	2025-01-09 00:26:30.521	2025-01-09 00:26:30.521	2025-01-09 00:26:30.536	\N	\N	en
141	i9eytoy7hcls3pii4gyhnc7e	shortTermClean	title	2025-01-09 00:34:16.44	2025-01-09 00:34:16.44	\N	\N	\N	en
142	i9eytoy7hcls3pii4gyhnc7e	shortTermClean	title	2025-01-09 00:34:16.44	2025-01-09 00:34:16.44	2025-01-09 00:34:16.453	\N	\N	en
143	y5j4qroimewlimgm0665alsn	shortTermClean	title	2025-01-09 00:34:27.456	2025-01-09 00:34:27.456	\N	\N	\N	en
144	y5j4qroimewlimgm0665alsn	shortTermClean	title	2025-01-09 00:34:27.456	2025-01-09 00:34:27.456	2025-01-09 00:34:27.468	\N	\N	en
145	k3iubhchd3fus3n8vmodwmg6	shortTermClean	title	2025-01-09 00:35:05.402	2025-01-09 00:35:05.402	\N	\N	\N	en
146	k3iubhchd3fus3n8vmodwmg6	shortTermClean	title	2025-01-09 00:35:05.402	2025-01-09 00:35:05.402	2025-01-09 00:35:05.413	\N	\N	en
147	kafcxxx7eehfll4h4gxf1ieu	shortTermClean	title	2025-01-09 00:53:01.687	2025-01-09 00:53:01.687	\N	\N	\N	en
148	kafcxxx7eehfll4h4gxf1ieu	shortTermClean	title	2025-01-09 00:53:01.687	2025-01-09 00:53:01.687	2025-01-09 00:53:01.7	\N	\N	en
149	t3moq3cpa7aeai7olv4jgq89	shortTermClean	title	2025-01-09 00:53:12.784	2025-01-09 00:53:12.784	\N	\N	\N	en
150	t3moq3cpa7aeai7olv4jgq89	shortTermClean	title	2025-01-09 00:53:12.784	2025-01-09 00:53:12.784	2025-01-09 00:53:12.802	\N	\N	en
151	ughlki7b9iazovhxg4n5d4gi	shortTermClean	title	2025-01-09 01:42:05.522	2025-01-09 01:42:05.522	\N	\N	\N	en
152	ughlki7b9iazovhxg4n5d4gi	shortTermClean	title	2025-01-09 01:42:05.522	2025-01-09 01:42:05.522	2025-01-09 01:42:05.538	\N	\N	en
153	yvut20sadxmbnjv881nn4z6e	shortTermClean 2	title 3	2025-01-15 20:33:07.434	2025-01-15 20:33:07.434	\N	\N	\N	en
154	yvut20sadxmbnjv881nn4z6e	shortTermClean 2	title 3	2025-01-15 20:33:07.434	2025-01-15 20:33:07.434	2025-01-15 20:33:07.467	\N	\N	en
155	bs9maw0s2wts68k7vxc97sql	shortTermClean 2	title 3	2025-01-15 20:35:47.288	2025-01-15 20:35:47.288	\N	\N	\N	en
156	bs9maw0s2wts68k7vxc97sql	shortTermClean 2	title 3	2025-01-15 20:35:47.288	2025-01-15 20:35:47.288	2025-01-15 20:35:47.31	\N	\N	en
157	e134sz5icate5y57pk8ykwd0	shortTermClean	title	2025-01-15 20:35:50.95	2025-01-15 20:35:50.95	\N	\N	\N	en
158	e134sz5icate5y57pk8ykwd0	shortTermClean	title	2025-01-15 20:35:50.95	2025-01-15 20:35:50.95	2025-01-15 20:35:50.964	\N	\N	en
159	dy9qne1ru5cuyoe6cdpac1iq	shortTermClean 2	title 3	2025-01-15 20:37:04.685	2025-01-15 20:37:04.685	\N	\N	\N	en
160	dy9qne1ru5cuyoe6cdpac1iq	shortTermClean 2	title 3	2025-01-15 20:37:04.685	2025-01-15 20:37:04.685	2025-01-15 20:37:04.71	\N	\N	en
\.


--
-- TOC entry 3798 (class 0 OID 32786)
-- Dependencies: 309
-- Data for Name: jobs_bidder_lnk; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.jobs_bidder_lnk (id, job_id, user_id) FROM stdin;
9	137	1
10	138	1
11	139	2
12	140	2
13	141	2
14	142	2
15	143	2
16	144	2
17	145	2
18	146	2
19	149	3
20	150	3
21	151	3
22	152	3
23	153	3
24	154	3
25	155	3
26	156	3
27	157	1
28	158	1
29	159	3
30	160	3
\.


--
-- TOC entry 3796 (class 0 OID 25840)
-- Dependencies: 307
-- Data for Name: jobs_postedby_lnk; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.jobs_postedby_lnk (id, job_id, user_id) FROM stdin;
69	147	2
70	148	2
71	149	2
72	150	2
73	151	2
74	152	2
75	153	2
76	154	2
77	155	2
78	156	2
79	159	2
80	160	2
\.


--
-- TOC entry 3742 (class 0 OID 16738)
-- Dependencies: 253
-- Data for Name: strapi_api_token_permissions; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.strapi_api_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
25	bqqh5p77pcgzrgt66mtpxvdu	api::job.job.postjob	2025-01-09 00:33:16.668	2025-01-09 00:33:16.668	2025-01-09 00:33:16.671	\N	\N	\N
27	kehdi0k8t5wtxyv6bqjgj51t	api::job.job.find	2025-01-09 00:33:45.098	2025-01-09 00:33:45.098	2025-01-09 00:33:45.098	\N	\N	\N
28	gg577arrzwvrcm15ebrk8fm2	api::job.job.update	2025-01-09 00:33:45.098	2025-01-09 00:33:45.098	2025-01-09 00:33:45.098	\N	\N	\N
29	j6x83eaaifnbyc19qt640btv	api::job.job.findOne	2025-01-09 00:33:45.098	2025-01-09 00:33:45.098	2025-01-09 00:33:45.099	\N	\N	\N
31	beof40h7hhrxqp0kvihtzcsd	api::job.job.create	2025-01-09 00:33:45.098	2025-01-09 00:33:45.098	2025-01-09 00:33:45.099	\N	\N	\N
39	suhfpgcual3rukvmmoo73696	plugin::users-permissions.user.find	2025-01-09 00:52:18.591	2025-01-09 00:52:18.591	2025-01-09 00:52:18.592	\N	\N	\N
\.


--
-- TOC entry 3790 (class 0 OID 17033)
-- Dependencies: 301
-- Data for Name: strapi_api_token_permissions_token_lnk; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.strapi_api_token_permissions_token_lnk (id, api_token_permission_id, api_token_id, api_token_permission_ord) FROM stdin;
25	25	2	1
27	27	2	2
28	28	2	2
29	29	2	2
31	31	2	2
39	39	2	3
\.


--
-- TOC entry 3740 (class 0 OID 16724)
-- Dependencies: 251
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.strapi_api_tokens (id, document_id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
2	lij606efifk817pa1hk6elkw	Custom Access Token	Custom Access Token	custom	84a2ebf95bb9912ff80381032bd383a6d58aa47172dd58af62bce6e38076f2fcca07c60f795c76668f51eb38642a5436c18fc1b82ac836658d2972170d1dec83	\N	\N	\N	2025-01-07 01:30:21.302	2025-01-09 01:42:00.57	2025-01-07 01:30:21.302	\N	\N	\N
\.


--
-- TOC entry 3758 (class 0 OID 16829)
-- Dependencies: 269
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
38	plugin_content_manager_configuration_content_types::api::job.job	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"type","defaultSortBy":"type","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"postedby":{"edit":{"label":"postedby","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"postedby","searchable":true,"sortable":true}},"bidder":{"edit":{"label":"bidder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"bidder","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","title","createdAt"],"edit":[[{"name":"type","size":6},{"name":"title","size":6}],[{"name":"postedby","size":6},{"name":"bidder","size":6}]]},"uid":"api::job.job"}	object	\N	\N
7	plugin_content_manager_configuration_content_types::plugin::content-releases.release	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"releasedAt":{"edit":{"label":"releasedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"releasedAt","searchable":true,"sortable":true}},"scheduledAt":{"edit":{"label":"scheduledAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"scheduledAt","searchable":true,"sortable":true}},"timezone":{"edit":{"label":"timezone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"timezone","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"actions":{"edit":{"label":"actions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"contentType"},"list":{"label":"actions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","releasedAt","scheduledAt"],"edit":[[{"name":"name","size":6},{"name":"releasedAt","size":6}],[{"name":"scheduledAt","size":6},{"name":"timezone","size":6}],[{"name":"status","size":6},{"name":"actions","size":6}]]},"uid":"plugin::content-releases.release"}	object	\N	\N
9	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]},"uid":"plugin::i18n.locale"}	object	\N	\N
11	plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow-stage	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"color":{"edit":{"label":"color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"color","searchable":true,"sortable":true}},"workflow":{"edit":{"label":"workflow","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"workflow","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","color","workflow"],"edit":[[{"name":"name","size":6},{"name":"color","size":6}],[{"name":"workflow","size":6},{"name":"permissions","size":6}]]},"uid":"plugin::review-workflows.workflow-stage"}	object	\N	\N
12	plugin_content_manager_configuration_content_types::plugin::content-releases.release-action	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"contentType","defaultSortBy":"contentType","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"contentType":{"edit":{"label":"contentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentType","searchable":true,"sortable":true}},"entryDocumentId":{"edit":{"label":"entryDocumentId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"entryDocumentId","searchable":true,"sortable":true}},"release":{"edit":{"label":"release","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"release","searchable":true,"sortable":true}},"isEntryValid":{"edit":{"label":"isEntryValid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isEntryValid","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","contentType","entryDocumentId"],"edit":[[{"name":"type","size":6},{"name":"contentType","size":6}],[{"name":"entryDocumentId","size":6},{"name":"release","size":6}],[{"name":"isEntryValid","size":4}]]},"uid":"plugin::content-releases.release-action"}	object	\N	\N
21	plugin_content_manager_configuration_content_types::admin::role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6},{"name":"users","size":6}],[{"name":"permissions","size":6}]]},"uid":"admin::role"}	object	\N	\N
37	type_setup_initHasRun	true	boolean	development	\N
36	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null,"ssoLockedRoles":null}}	object	\N	\N
13	plugin_content_manager_configuration_content_types::plugin::upload.folder	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]},"uid":"plugin::upload.folder"}	object	\N	\N
8	plugin_content_manager_configuration_content_types::plugin::upload.file	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folder","size":6},{"name":"folderPath","size":6}]]},"uid":"plugin::upload.file"}	object	\N	\N
22	plugin_content_manager_configuration_content_types::api::global.global	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"siteName","defaultSortBy":"siteName","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"siteName":{"edit":{"label":"siteName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"siteName","searchable":true,"sortable":true}},"favicon":{"edit":{"label":"favicon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"favicon","searchable":false,"sortable":false}},"siteDescription":{"edit":{"label":"siteDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"siteDescription","searchable":true,"sortable":true}},"defaultSeo":{"edit":{"label":"defaultSeo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"defaultSeo","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","siteName","favicon","siteDescription"],"edit":[[{"name":"siteName","size":6},{"name":"favicon","size":6}],[{"name":"siteDescription","size":6}],[{"name":"defaultSeo","size":12}]]},"uid":"api::global.global"}	object	\N	\N
24	plugin_content_manager_configuration_content_types::api::category.category	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"articles":{"edit":{"label":"articles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"articles","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","slug","articles"],"edit":[[{"name":"name","size":6},{"name":"slug","size":6}],[{"name":"articles","size":6},{"name":"description","size":6}]]},"uid":"api::category.category"}	object	\N	\N
25	plugin_content_manager_configuration_content_types::admin::transfer-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::transfer-token-permission"}	object	\N	\N
17	plugin_content_manager_configuration_content_types::api::author.author	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"avatar":{"edit":{"label":"avatar","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"avatar","searchable":false,"sortable":false}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"articles":{"edit":{"label":"articles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"articles","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","avatar","email"],"edit":[[{"name":"name","size":6},{"name":"avatar","size":6}],[{"name":"email","size":6},{"name":"articles","size":6}]]},"uid":"api::author.author"}	object	\N	\N
27	plugin_content_manager_configuration_content_types::admin::api-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::api-token-permission"}	object	\N	\N
18	plugin_content_manager_configuration_content_types::api::article.article	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"cover":{"edit":{"label":"cover","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cover","searchable":false,"sortable":false}},"author":{"edit":{"label":"author","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"author","searchable":true,"sortable":true}},"category":{"edit":{"label":"category","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"category","searchable":true,"sortable":true}},"blocks":{"edit":{"label":"blocks","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocks","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","description","slug"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"slug","size":6},{"name":"cover","size":6}],[{"name":"author","size":6},{"name":"category","size":6}],[{"name":"blocks","size":12}]]},"uid":"api::article.article"}	object	\N	\N
32	plugin_i18n_default_locale	"en"	string	\N	\N
33	plugin_users-permissions_grant	{"email":{"icon":"envelope","enabled":true},"discord":{"icon":"discord","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"icon":"facebook-square","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/facebook/callback","scope":["email"]},"google":{"icon":"google","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/google/callback","scope":["email"]},"github":{"icon":"github","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"icon":"windows","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"icon":"twitter","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/twitter/callback"},"instagram":{"icon":"instagram","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"icon":"vk","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/vk/callback","scope":["email"]},"twitch":{"icon":"twitch","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"icon":"linkedin","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"icon":"aws","enabled":false,"key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"icon":"reddit","enabled":false,"key":"","secret":"","callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"icon":"book","enabled":false,"key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"},"patreon":{"icon":"","enabled":false,"key":"","secret":"","callback":"api/auth/patreon/callback","scope":["identity","identity[email]"]},"keycloak":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"myKeycloakProvider.com/realms/myrealm","callback":"api/auth/keycloak/callback","scope":["openid","email","profile"]}}	object	\N	\N
34	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
35	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object	\N	\N
26	plugin_content_manager_configuration_content_types::admin::api-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}],[{"name":"lastUsedAt","size":6},{"name":"permissions","size":6}],[{"name":"expiresAt","size":6},{"name":"lifespan","size":4}]]},"uid":"admin::api-token"}	object	\N	\N
28	plugin_content_manager_configuration_content_types::admin::transfer-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","accessKey"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"accessKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]},"uid":"admin::transfer-token"}	object	\N	\N
29	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false}	object	\N	\N
30	plugin_upload_view_configuration	{"pageSize":10,"sort":"createdAt:DESC"}	object	\N	\N
31	plugin_upload_metrics	{"weeklySchedule":"5 32 0 * * 1","lastWeeklyUpdate":1736690190092}	object	\N	\N
4	plugin_content_manager_configuration_components::shared.quote	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"body":{"edit":{"label":"body","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"body","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","body"],"edit":[[{"name":"title","size":6},{"name":"body","size":6}]]},"uid":"shared.quote","isComponent":true}	object	\N	\N
1	strapi_content_types_schema	{"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"files"}}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"plugin":"upload","globalId":"UploadFile","uid":"plugin::upload.file","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelName":"file"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"upload_folders"}}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"plugin":"upload","globalId":"UploadFolder","uid":"plugin::upload.folder","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true}},"kind":"collectionType"},"modelName":"folder"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::i18n.locale","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"i18n_locale"}}},"plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale","uid":"plugin::i18n.locale","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"i18n_locale","info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelName":"locale"},"plugin::content-releases.release":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_releases"}}},"plugin":"content-releases","globalId":"ContentReleasesRelease","uid":"plugin::content-releases.release","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"}},"kind":"collectionType"},"modelName":"release"},"plugin::content-releases.release-action":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_release_actions"}}},"plugin":"content-releases","globalId":"ContentReleasesReleaseAction","uid":"plugin::content-releases.release-action","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"}},"kind":"collectionType"},"modelName":"release-action"},"plugin::review-workflows.workflow":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflow","uid":"plugin::review-workflows.workflow","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"}},"kind":"collectionType"},"modelName":"workflow"},"plugin::review-workflows.workflow-stage":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0","draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow-stage","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows_stages"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflowStage","uid":"plugin::review-workflows.workflow-stage","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false}},"kind":"collectionType"},"modelName":"workflow-stage"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_permissions"}}},"plugin":"users-permissions","globalId":"UsersPermissionsPermission","uid":"plugin::users-permissions.permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelName":"permission","options":{"draftAndPublish":false}},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_roles"}}},"plugin":"users-permissions","globalId":"UsersPermissionsRole","uid":"plugin::users-permissions.role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelName":"role","options":{"draftAndPublish":false}},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"timestamps":true,"draftAndPublish":false},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"postedjobs":{"type":"relation","relation":"oneToOne","target":"api::job.job","mappedBy":"postedby"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"plugin":"users-permissions","globalId":"UsersPermissionsUser","kind":"collectionType","__filename__":"schema.json","uid":"plugin::users-permissions.user","modelType":"contentType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"postedjobs":{"type":"relation","relation":"oneToOne","target":"api::job.job","mappedBy":"postedby"}},"kind":"collectionType"},"modelName":"user"},"api::about.about":{"kind":"singleType","collectionName":"abouts","info":{"singularName":"about","pluralName":"abouts","displayName":"About","description":"Write about yourself and the content you create"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"title":{"type":"string"},"blocks":{"type":"dynamiczone","components":["shared.media","shared.quote","shared.rich-text","shared.slider"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::about.about","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"abouts"}}},"apiName":"about","globalId":"About","uid":"api::about.about","modelType":"contentType","__schema__":{"collectionName":"abouts","info":{"singularName":"about","pluralName":"abouts","displayName":"About","description":"Write about yourself and the content you create"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"title":{"type":"string"},"blocks":{"type":"dynamiczone","components":["shared.media","shared.quote","shared.rich-text","shared.slider"]}},"kind":"singleType"},"modelName":"about","actions":{},"lifecycles":{}},"api::article.article":{"kind":"collectionType","collectionName":"articles","info":{"singularName":"article","pluralName":"articles","displayName":"Article","description":"Create your blog content"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"description":{"type":"text","maxLength":80},"slug":{"type":"uid","targetField":"title"},"cover":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"author":{"type":"relation","relation":"manyToOne","target":"api::author.author","inversedBy":"articles"},"category":{"type":"relation","relation":"manyToOne","target":"api::category.category","inversedBy":"articles"},"blocks":{"type":"dynamiczone","components":["shared.media","shared.quote","shared.rich-text","shared.slider"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::article.article","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"articles"}}},"apiName":"article","globalId":"Article","uid":"api::article.article","modelType":"contentType","__schema__":{"collectionName":"articles","info":{"singularName":"article","pluralName":"articles","displayName":"Article","description":"Create your blog content"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"description":{"type":"text","maxLength":80},"slug":{"type":"uid","targetField":"title"},"cover":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"author":{"type":"relation","relation":"manyToOne","target":"api::author.author","inversedBy":"articles"},"category":{"type":"relation","relation":"manyToOne","target":"api::category.category","inversedBy":"articles"},"blocks":{"type":"dynamiczone","components":["shared.media","shared.quote","shared.rich-text","shared.slider"]}},"kind":"collectionType"},"modelName":"article","actions":{},"lifecycles":{}},"api::author.author":{"kind":"collectionType","collectionName":"authors","info":{"singularName":"author","pluralName":"authors","displayName":"Author","description":"Create authors for your content"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"},"avatar":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"email":{"type":"string"},"articles":{"type":"relation","relation":"oneToMany","target":"api::article.article","mappedBy":"author"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::author.author","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"authors"}}},"apiName":"author","globalId":"Author","uid":"api::author.author","modelType":"contentType","__schema__":{"collectionName":"authors","info":{"singularName":"author","pluralName":"authors","displayName":"Author","description":"Create authors for your content"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"},"avatar":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"email":{"type":"string"},"articles":{"type":"relation","relation":"oneToMany","target":"api::article.article","mappedBy":"author"}},"kind":"collectionType"},"modelName":"author","actions":{},"lifecycles":{}},"api::category.category":{"kind":"collectionType","collectionName":"categories","info":{"singularName":"category","pluralName":"categories","displayName":"Category","description":"Organize your content into categories"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"},"slug":{"type":"uid"},"articles":{"type":"relation","relation":"oneToMany","target":"api::article.article","mappedBy":"category"},"description":{"type":"text"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::category.category","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"categories"}}},"apiName":"category","globalId":"Category","uid":"api::category.category","modelType":"contentType","__schema__":{"collectionName":"categories","info":{"singularName":"category","pluralName":"categories","displayName":"Category","description":"Organize your content into categories"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"},"slug":{"type":"uid"},"articles":{"type":"relation","relation":"oneToMany","target":"api::article.article","mappedBy":"category"},"description":{"type":"text"}},"kind":"collectionType"},"modelName":"category","actions":{},"lifecycles":{}},"api::global.global":{"kind":"singleType","collectionName":"globals","info":{"singularName":"global","pluralName":"globals","displayName":"Global","description":"Define global settings"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"siteName":{"type":"string","required":true},"favicon":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"siteDescription":{"type":"text","required":true},"defaultSeo":{"type":"component","repeatable":false,"component":"shared.seo"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::global.global","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"globals"}}},"apiName":"global","globalId":"Global","uid":"api::global.global","modelType":"contentType","__schema__":{"collectionName":"globals","info":{"singularName":"global","pluralName":"globals","displayName":"Global","description":"Define global settings"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"siteName":{"type":"string","required":true},"favicon":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"siteDescription":{"type":"text","required":true},"defaultSeo":{"type":"component","repeatable":false,"component":"shared.seo"}},"kind":"singleType"},"modelName":"global","actions":{},"lifecycles":{}},"api::job.job":{"kind":"collectionType","collectionName":"jobs","info":{"singularName":"job","pluralName":"jobs","displayName":"Job","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"type":{"pluginOptions":{"i18n":{"localized":true}},"type":"string","required":true,"maxLength":32},"title":{"pluginOptions":{"i18n":{"localized":true}},"type":"string","required":true,"maxLength":256},"postedby":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.user"},"bidder":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.user"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::job.job","writable":false,"private":false,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"jobs"}}},"apiName":"job","globalId":"Job","uid":"api::job.job","modelType":"contentType","__schema__":{"collectionName":"jobs","info":{"singularName":"job","pluralName":"jobs","displayName":"Job","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"type":{"pluginOptions":{"i18n":{"localized":true}},"type":"string","required":true,"maxLength":32},"title":{"pluginOptions":{"i18n":{"localized":true}},"type":"string","required":true,"maxLength":256},"postedby":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.user"},"bidder":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.user"}},"kind":"collectionType"},"modelName":"job","actions":{},"lifecycles":{}},"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_permissions"}}},"plugin":"admin","globalId":"AdminPermission","uid":"admin::permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelName":"permission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"registrationToken":{"hidden":true}}},"plugin":"admin","globalId":"AdminUser","uid":"admin::user","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelName":"user","options":{"draftAndPublish":false}},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_roles"}}},"plugin":"admin","globalId":"AdminRole","uid":"admin::role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelName":"role"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_tokens"}}},"plugin":"admin","globalId":"AdminApiToken","uid":"admin::api-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"api-token"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_token_permissions"}}},"plugin":"admin","globalId":"AdminApiTokenPermission","uid":"admin::api-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelName":"api-token-permission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_tokens"}}},"plugin":"admin","globalId":"AdminTransferToken","uid":"admin::transfer-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"transfer-token"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_token_permissions"}}},"plugin":"admin","globalId":"AdminTransferTokenPermission","uid":"admin::transfer-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelName":"transfer-token-permission"}}	object	\N	\N
2	plugin_content_manager_configuration_components::shared.slider	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"files","searchable":false,"sortable":false}}},"layouts":{"list":["id","files"],"edit":[[{"name":"files","size":6}]]},"uid":"shared.slider","isComponent":true}	object	\N	\N
5	plugin_content_manager_configuration_components::shared.rich-text	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"body":{"edit":{"label":"body","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"body","searchable":false,"sortable":false}}},"layouts":{"list":["id"],"edit":[[{"name":"body","size":12}]]},"uid":"shared.rich-text","isComponent":true}	object	\N	\N
3	plugin_content_manager_configuration_components::shared.seo	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"metaTitle","defaultSortBy":"metaTitle","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"metaTitle":{"edit":{"label":"metaTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaTitle","searchable":true,"sortable":true}},"metaDescription":{"edit":{"label":"metaDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaDescription","searchable":true,"sortable":true}},"shareImage":{"edit":{"label":"shareImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"shareImage","searchable":false,"sortable":false}}},"layouts":{"list":["id","metaTitle","metaDescription","shareImage"],"edit":[[{"name":"metaTitle","size":6},{"name":"metaDescription","size":6}],[{"name":"shareImage","size":6}]]},"uid":"shared.seo","isComponent":true}	object	\N	\N
6	plugin_content_manager_configuration_components::shared.media	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"file":{"edit":{"label":"file","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"file","searchable":false,"sortable":false}}},"layouts":{"list":["id","file"],"edit":[[{"name":"file","size":6}]]},"uid":"shared.media","isComponent":true}	object	\N	\N
14	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"postedjobs":{"edit":{"label":"postedjobs","description":"","placeholder":"","visible":true,"editable":true,"mainField":"type"},"list":{"label":"postedjobs","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"role","size":6}],[{"name":"postedjobs","size":6}]]},"uid":"plugin::users-permissions.user"}	object	\N	\N
15	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.permission"}	object	\N	\N
23	plugin_content_manager_configuration_content_types::api::about.about	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"blocks":{"edit":{"label":"blocks","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocks","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","createdAt","updatedAt"],"edit":[[{"name":"title","size":6}],[{"name":"blocks","size":12}]]},"uid":"api::about.about"}	object	\N	\N
16	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"permissions","size":6}],[{"name":"users","size":6}]]},"uid":"plugin::users-permissions.role"}	object	\N	\N
19	plugin_content_manager_configuration_content_types::admin::permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"actionParameters":{"edit":{"label":"actionParameters","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"actionParameters","searchable":false,"sortable":false}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"edit":[[{"name":"action","size":6}],[{"name":"actionParameters","size":12}],[{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}],[{"name":"role","size":6}]]},"uid":"admin::permission"}	object	\N	\N
10	plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"stages":{"edit":{"label":"stages","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"stages","searchable":false,"sortable":false}},"stageRequiredToPublish":{"edit":{"label":"stageRequiredToPublish","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"stageRequiredToPublish","searchable":true,"sortable":true}},"contentTypes":{"edit":{"label":"contentTypes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentTypes","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","stages","stageRequiredToPublish"],"edit":[[{"name":"name","size":6},{"name":"stages","size":6}],[{"name":"stageRequiredToPublish","size":6}],[{"name":"contentTypes","size":12}]]},"uid":"plugin::review-workflows.workflow"}	object	\N	\N
20	plugin_content_manager_configuration_content_types::admin::user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"isActive","size":4}],[{"name":"roles","size":6},{"name":"blocked","size":4}],[{"name":"preferedLanguage","size":6}]]},"uid":"admin::user"}	object	\N	\N
\.


--
-- TOC entry 3696 (class 0 OID 16403)
-- Dependencies: 207
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.strapi_database_schema (id, schema, "time", hash) FROM stdin;
12	{"tables":[{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_documents_idx","columns":["document_id","locale","published_at"]},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_documents_idx","columns":["document_id","locale","published_at"]},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_documents_idx","columns":["document_id","locale","published_at"]},{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_releases","indexes":[{"name":"strapi_releases_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"released_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"scheduled_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"timezone","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_release_actions","indexes":[{"name":"strapi_release_actions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"entry_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_entry_valid","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows","indexes":[{"name":"strapi_workflows_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_types","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_workflows_stages","indexes":[{"name":"strapi_workflows_stages_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_roles","indexes":[{"name":"up_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_users","indexes":[{"name":"up_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"abouts_cmps","indexes":[{"name":"abouts_field_idx","columns":["field"]},{"name":"abouts_component_type_idx","columns":["component_type"]},{"name":"abouts_entity_fk","columns":["entity_id"]},{"name":"abouts_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"abouts_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"abouts","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"abouts","indexes":[{"name":"abouts_documents_idx","columns":["document_id","locale","published_at"]},{"name":"abouts_created_by_id_fk","columns":["created_by_id"]},{"name":"abouts_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"abouts_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"abouts_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"articles_cmps","indexes":[{"name":"articles_field_idx","columns":["field"]},{"name":"articles_component_type_idx","columns":["component_type"]},{"name":"articles_entity_fk","columns":["entity_id"]},{"name":"articles_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"articles_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"articles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"articles","indexes":[{"name":"articles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"articles_created_by_id_fk","columns":["created_by_id"]},{"name":"articles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"articles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"articles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"authors","indexes":[{"name":"authors_documents_idx","columns":["document_id","locale","published_at"]},{"name":"authors_created_by_id_fk","columns":["created_by_id"]},{"name":"authors_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"authors_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"authors_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"categories","indexes":[{"name":"categories_documents_idx","columns":["document_id","locale","published_at"]},{"name":"categories_created_by_id_fk","columns":["created_by_id"]},{"name":"categories_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"categories_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"categories_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"globals_cmps","indexes":[{"name":"globals_field_idx","columns":["field"]},{"name":"globals_component_type_idx","columns":["component_type"]},{"name":"globals_entity_fk","columns":["entity_id"]},{"name":"globals_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"globals_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"globals","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"globals","indexes":[{"name":"globals_documents_idx","columns":["document_id","locale","published_at"]},{"name":"globals_created_by_id_fk","columns":["created_by_id"]},{"name":"globals_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"globals_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"globals_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"site_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"site_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"jobs","indexes":[{"name":"jobs_documents_idx","columns":["document_id","locale","published_at"]},{"name":"jobs_created_by_id_fk","columns":["created_by_id"]},{"name":"jobs_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"jobs_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"jobs_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action_parameters","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_users","indexes":[{"name":"admin_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_tokens","indexes":[{"name":"strapi_transfer_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_token_permissions","indexes":[{"name":"strapi_transfer_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_sliders","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_shared_seos","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"meta_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"meta_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_rich_texts","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"body","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_quotes","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"body","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_media","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_history_versions","indexes":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"]}],"foreignKeys":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"related_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"data","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"schema","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_mph","indexes":[{"name":"files_related_mph_fk","columns":["file_id"]},{"name":"files_related_mph_oidx","columns":["order"]},{"name":"files_related_mph_idix","columns":["related_id"]}],"foreignKeys":[{"name":"files_related_mph_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_lnk","indexes":[{"name":"files_folder_lnk_fk","columns":["file_id"]},{"name":"files_folder_lnk_ifk","columns":["folder_id"]},{"name":"files_folder_lnk_uq","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_lnk_oifk","columns":["file_ord"]}],"foreignKeys":[{"name":"files_folder_lnk_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_lnk_ifk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_lnk","indexes":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"]},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_lnk_uq","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_lnk_oifk","columns":["folder_ord"]}],"foreignKeys":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_release_actions_release_lnk","indexes":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"]},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"]},{"name":"strapi_release_actions_release_lnk_uq","columns":["release_action_id","release_id"],"type":"unique"},{"name":"strapi_release_actions_release_lnk_oifk","columns":["release_action_ord"]}],"foreignKeys":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"],"referencedColumns":["id"],"referencedTable":"strapi_release_actions","onDelete":"CASCADE"},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"],"referencedColumns":["id"],"referencedTable":"strapi_releases","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"release_action_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_action_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stage_required_to_publish_lnk","indexes":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_uq","columns":["workflow_id","workflow_stage_id"],"type":"unique"}],"foreignKeys":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_workflow_lnk","indexes":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"]},{"name":"strapi_workflows_stages_workflow_lnk_uq","columns":["workflow_stage_id","workflow_id"],"type":"unique"},{"name":"strapi_workflows_stages_workflow_lnk_oifk","columns":["workflow_stage_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_permissions_lnk","indexes":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"]},{"name":"strapi_workflows_stages_permissions_lnk_uq","columns":["workflow_stage_id","permission_id"],"type":"unique"},{"name":"strapi_workflows_stages_permissions_lnk_ofk","columns":["permission_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_lnk","indexes":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"up_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_lnk","indexes":[{"name":"up_users_role_lnk_fk","columns":["user_id"]},{"name":"up_users_role_lnk_ifk","columns":["role_id"]},{"name":"up_users_role_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"up_users_role_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"articles_author_lnk","indexes":[{"name":"articles_author_lnk_fk","columns":["article_id"]},{"name":"articles_author_lnk_ifk","columns":["author_id"]},{"name":"articles_author_lnk_uq","columns":["article_id","author_id"],"type":"unique"},{"name":"articles_author_lnk_oifk","columns":["article_ord"]}],"foreignKeys":[{"name":"articles_author_lnk_fk","columns":["article_id"],"referencedColumns":["id"],"referencedTable":"articles","onDelete":"CASCADE"},{"name":"articles_author_lnk_ifk","columns":["author_id"],"referencedColumns":["id"],"referencedTable":"authors","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"article_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"author_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"article_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"articles_category_lnk","indexes":[{"name":"articles_category_lnk_fk","columns":["article_id"]},{"name":"articles_category_lnk_ifk","columns":["category_id"]},{"name":"articles_category_lnk_uq","columns":["article_id","category_id"],"type":"unique"},{"name":"articles_category_lnk_oifk","columns":["article_ord"]}],"foreignKeys":[{"name":"articles_category_lnk_fk","columns":["article_id"],"referencedColumns":["id"],"referencedTable":"articles","onDelete":"CASCADE"},{"name":"articles_category_lnk_ifk","columns":["category_id"],"referencedColumns":["id"],"referencedTable":"categories","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"article_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"category_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"article_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"jobs_postedby_lnk","indexes":[{"name":"jobs_postedby_lnk_fk","columns":["job_id"]},{"name":"jobs_postedby_lnk_ifk","columns":["user_id"]},{"name":"jobs_postedby_lnk_uq","columns":["job_id","user_id"],"type":"unique"}],"foreignKeys":[{"name":"jobs_postedby_lnk_fk","columns":["job_id"],"referencedColumns":["id"],"referencedTable":"jobs","onDelete":"CASCADE"},{"name":"jobs_postedby_lnk_ifk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"job_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"jobs_bidder_lnk","indexes":[{"name":"jobs_bidder_lnk_fk","columns":["job_id"]},{"name":"jobs_bidder_lnk_ifk","columns":["user_id"]},{"name":"jobs_bidder_lnk_uq","columns":["job_id","user_id"],"type":"unique"}],"foreignKeys":[{"name":"jobs_bidder_lnk_fk","columns":["job_id"],"referencedColumns":["id"],"referencedTable":"jobs","onDelete":"CASCADE"},{"name":"jobs_bidder_lnk_ifk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"job_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_permissions_role_lnk","indexes":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"admin_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_lnk","indexes":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"]},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"]},{"name":"admin_users_roles_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_lnk_ofk","columns":["role_ord"]},{"name":"admin_users_roles_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_lnk","indexes":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_lnk_uq","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_lnk_oifk","columns":["api_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions_token_lnk","indexes":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_uq","columns":["transfer_token_permission_id","transfer_token_id"],"type":"unique"},{"name":"strapi_transfer_token_permissions_token_lnk_oifk","columns":["transfer_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_token_permissions","onDelete":"CASCADE"},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"transfer_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2025-01-09 00:51:38.457	8fe2fc43661bb017583f065be67deaa1
\.


--
-- TOC entry 3762 (class 0 OID 16851)
-- Dependencies: 273
-- Data for Name: strapi_history_versions; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.strapi_history_versions (id, content_type, related_document_id, locale, status, data, schema, created_at, created_by_id) FROM stdin;
\.


--
-- TOC entry 3694 (class 0 OID 16393)
-- Dependencies: 205
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- TOC entry 3693 (class 0 OID 16389)
-- Dependencies: 204
-- Data for Name: strapi_migrations_internal; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.strapi_migrations_internal (id, name, "time") FROM stdin;
1	5.0.0-rename-identifiers-longer-than-max-length	2025-01-05 23:38:33.592
2	5.0.0-02-created-document-id	2025-01-05 23:38:33.667
3	5.0.0-03-created-locale	2025-01-05 23:38:33.742
4	5.0.0-04-created-published-at	2025-01-05 23:38:33.814
5	5.0.0-05-drop-slug-fields-index	2025-01-05 23:38:33.897
6	core::5.0.0-discard-drafts	2025-01-05 23:38:33.984
\.


--
-- TOC entry 3706 (class 0 OID 16480)
-- Dependencies: 217
-- Data for Name: strapi_release_actions; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.strapi_release_actions (id, document_id, type, content_type, entry_document_id, locale, is_entry_valid, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- TOC entry 3770 (class 0 OID 16903)
-- Dependencies: 281
-- Data for Name: strapi_release_actions_release_lnk; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.strapi_release_actions_release_lnk (id, release_action_id, release_id, release_action_ord) FROM stdin;
\.


--
-- TOC entry 3704 (class 0 OID 16466)
-- Dependencies: 215
-- Data for Name: strapi_releases; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.strapi_releases (id, document_id, name, released_at, scheduled_at, timezone, status, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 3746 (class 0 OID 16766)
-- Dependencies: 257
-- Data for Name: strapi_transfer_token_permissions; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.strapi_transfer_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 3792 (class 0 OID 17046)
-- Dependencies: 303
-- Data for Name: strapi_transfer_token_permissions_token_lnk; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.strapi_transfer_token_permissions_token_lnk (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_ord) FROM stdin;
\.


--
-- TOC entry 3744 (class 0 OID 16752)
-- Dependencies: 255
-- Data for Name: strapi_transfer_tokens; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.strapi_transfer_tokens (id, document_id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 3760 (class 0 OID 16840)
-- Dependencies: 271
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- TOC entry 3708 (class 0 OID 16494)
-- Dependencies: 219
-- Data for Name: strapi_workflows; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.strapi_workflows (id, document_id, name, content_types, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 3772 (class 0 OID 16916)
-- Dependencies: 283
-- Data for Name: strapi_workflows_stage_required_to_publish_lnk; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.strapi_workflows_stage_required_to_publish_lnk (id, workflow_id, workflow_stage_id) FROM stdin;
\.


--
-- TOC entry 3710 (class 0 OID 16508)
-- Dependencies: 221
-- Data for Name: strapi_workflows_stages; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.strapi_workflows_stages (id, document_id, name, color, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 3776 (class 0 OID 16941)
-- Dependencies: 287
-- Data for Name: strapi_workflows_stages_permissions_lnk; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.strapi_workflows_stages_permissions_lnk (id, workflow_stage_id, permission_id, permission_ord) FROM stdin;
\.


--
-- TOC entry 3774 (class 0 OID 16928)
-- Dependencies: 285
-- Data for Name: strapi_workflows_stages_workflow_lnk; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.strapi_workflows_stages_workflow_lnk (id, workflow_stage_id, workflow_id, workflow_stage_ord) FROM stdin;
\.


--
-- TOC entry 3712 (class 0 OID 16522)
-- Dependencies: 223
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.up_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	t73maxd3fdgeny0b7awx0pxm	plugin::users-permissions.user.me	2025-01-05 23:38:38.374	2025-01-05 23:38:38.374	2025-01-05 23:38:38.375	\N	\N	\N
2	lrgoqsfon3ifqrtkzblaqdns	plugin::users-permissions.auth.changePassword	2025-01-05 23:38:38.374	2025-01-05 23:38:38.374	2025-01-05 23:38:38.375	\N	\N	\N
3	ro3nk44a42xmbv5gzbrktq13	plugin::users-permissions.auth.callback	2025-01-05 23:38:38.429	2025-01-05 23:38:38.429	2025-01-05 23:38:38.429	\N	\N	\N
4	ij5ua97qvcrc8l4j60wyfuy1	plugin::users-permissions.auth.connect	2025-01-05 23:38:38.429	2025-01-05 23:38:38.429	2025-01-05 23:38:38.429	\N	\N	\N
5	am737swf4z1xw8hudwx8xx87	plugin::users-permissions.auth.register	2025-01-05 23:38:38.429	2025-01-05 23:38:38.429	2025-01-05 23:38:38.43	\N	\N	\N
6	hckweexfy96jynunfoz9ccm9	plugin::users-permissions.auth.resetPassword	2025-01-05 23:38:38.429	2025-01-05 23:38:38.429	2025-01-05 23:38:38.43	\N	\N	\N
7	kaf4qlaao42hwlfngymlg3b5	plugin::users-permissions.auth.forgotPassword	2025-01-05 23:38:38.429	2025-01-05 23:38:38.429	2025-01-05 23:38:38.43	\N	\N	\N
8	pgyse79x3ddrwawgv1ycszfq	plugin::users-permissions.auth.emailConfirmation	2025-01-05 23:38:38.429	2025-01-05 23:38:38.429	2025-01-05 23:38:38.43	\N	\N	\N
9	peqno408uqw2i2gbtygtuwez	plugin::users-permissions.auth.sendEmailConfirmation	2025-01-05 23:38:38.429	2025-01-05 23:38:38.429	2025-01-05 23:38:38.43	\N	\N	\N
10	rcavop35suueewzuqp38dpf4	api::article.article.findOne	2025-01-05 23:38:43.306	2025-01-05 23:38:43.306	2025-01-05 23:38:43.306	\N	\N	\N
11	witzh2peb5fsnjnwk8fvd9cr	api::article.article.find	2025-01-05 23:38:43.306	2025-01-05 23:38:43.306	2025-01-05 23:38:43.306	\N	\N	\N
12	vvjmajvxdf4s5u09nn2uiivw	api::category.category.find	2025-01-05 23:38:43.306	2025-01-05 23:38:43.306	2025-01-05 23:38:43.306	\N	\N	\N
13	aru8865nrvij2fo0ngxp8snt	api::category.category.findOne	2025-01-05 23:38:43.306	2025-01-05 23:38:43.306	2025-01-05 23:38:43.307	\N	\N	\N
14	gj18mqje7dqk49v1nf04uitz	api::author.author.findOne	2025-01-05 23:38:43.306	2025-01-05 23:38:43.306	2025-01-05 23:38:43.307	\N	\N	\N
15	t2zq1rhcokm4s6p273k8ada7	api::author.author.find	2025-01-05 23:38:43.306	2025-01-05 23:38:43.306	2025-01-05 23:38:43.307	\N	\N	\N
16	y3712lh5i3bujn99zfkm6t25	api::global.global.find	2025-01-05 23:38:43.306	2025-01-05 23:38:43.306	2025-01-05 23:38:43.307	\N	\N	\N
18	j3zxv4muyctaeb8utjrt9yix	api::about.about.find	2025-01-05 23:38:43.306	2025-01-05 23:38:43.306	2025-01-05 23:38:43.308	\N	\N	\N
21	oy7nupcs46k975t02wurfez5	plugin::users-permissions.user.find	2025-01-08 03:03:37.243	2025-01-08 03:03:37.243	2025-01-08 03:03:37.244	\N	\N	\N
22	bksm75dko9sktfkrfi09hww3	plugin::users-permissions.user.findOne	2025-01-08 03:03:37.243	2025-01-08 03:03:37.243	2025-01-08 03:03:37.244	\N	\N	\N
23	jn7g38f9bejfsqv69qvkb2qr	plugin::users-permissions.role.find	2025-01-08 03:03:37.243	2025-01-08 03:03:37.243	2025-01-08 03:03:37.244	\N	\N	\N
24	yzhvgyjil1xkm979hxnac217	plugin::users-permissions.user.me	2025-01-08 03:25:53.246	2025-01-08 03:25:53.246	2025-01-08 03:25:53.246	\N	\N	\N
25	dkpuie39cl5is8azapl87029	api::job.job.find	2025-01-09 00:02:10.836	2025-01-09 00:02:10.836	2025-01-09 00:02:10.837	\N	\N	\N
26	i8uxpes5ecx09tibexuknfs9	api::job.job.create	2025-01-09 00:02:10.836	2025-01-09 00:02:10.836	2025-01-09 00:02:10.837	\N	\N	\N
27	jgst4tsqkr2o2tgij2jtrknw	api::job.job.findOne	2025-01-09 00:02:10.836	2025-01-09 00:02:10.836	2025-01-09 00:02:10.837	\N	\N	\N
28	u3jrwz6ul62y9avtx9avqv7x	api::job.job.update	2025-01-09 00:02:10.836	2025-01-09 00:02:10.836	2025-01-09 00:02:10.837	\N	\N	\N
29	odc1opmlixyyp3vbyja2jrwm	api::job.job.delete	2025-01-09 00:02:10.836	2025-01-09 00:02:10.836	2025-01-09 00:02:10.838	\N	\N	\N
30	eytc8pdlr9zvfo3r7ic8lfuu	plugin::users-permissions.role.findOne	2025-01-09 00:02:10.836	2025-01-09 00:02:10.836	2025-01-09 00:02:10.838	\N	\N	\N
31	tm2r4td2a3s1my5rdy0zkahr	plugin::users-permissions.permissions.getPermissions	2025-01-09 00:02:10.836	2025-01-09 00:02:10.836	2025-01-09 00:02:10.838	\N	\N	\N
\.


--
-- TOC entry 3778 (class 0 OID 16954)
-- Dependencies: 289
-- Data for Name: up_permissions_role_lnk; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.up_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
1	1	1	1
2	2	1	1
3	3	2	1
4	9	2	1
5	7	2	1
6	4	2	1
7	6	2	1
8	8	2	1
9	5	2	1
10	10	2	2
12	11	2	2
13	14	2	2
11	15	2	2
14	12	2	2
17	18	2	2
18	13	2	2
19	16	2	2
21	21	2	4
22	23	2	4
23	22	2	4
24	24	2	5
25	29	2	6
26	25	2	6
27	27	2	6
28	26	2	6
29	28	2	6
30	30	2	6
31	31	2	6
\.


--
-- TOC entry 3714 (class 0 OID 16536)
-- Dependencies: 225
-- Data for Name: up_roles; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.up_roles (id, document_id, name, description, type, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	babge13ozi098dvvzuajramv	Authenticated	Default role given to authenticated user.	authenticated	2025-01-05 23:38:38.337	2025-01-05 23:38:38.337	2025-01-05 23:38:38.337	\N	\N	\N
2	ur9r7vyt2efhyftoyakcv5z9	Public	Default role given to unauthenticated user.	public	2025-01-05 23:38:38.354	2025-01-09 00:09:24.966	2025-01-05 23:38:38.354	\N	\N	\N
\.


--
-- TOC entry 3716 (class 0 OID 16550)
-- Dependencies: 227
-- Data for Name: up_users; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.up_users (id, document_id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
2	fqsyr3pgnth3crw64fva9j47	strapilocal2	jojo5544+strapilocal2@gmail.com	local	$2a$10$78JCBCZ9O2tGM3SKEpEcqezUSb1sIrQvoFbLo7YnK6ZoxBCUmoYv2	\N	\N	t	f	2025-01-08 02:45:03.702	2025-01-08 02:45:03.702	2025-01-08 02:45:03.579	1	1	\N
3	hxyj6beqearc8v16j3zr0ejt	localpublicuser1	jojo5544+localpublicuser1@gmail.com	local	$2a$10$d9YpZLbWeL/2Q9Q9eLyA9uWH22eb7IxwYO7zJ.b4IZjLQcqH1wpbm	\N	\N	t	f	2025-01-08 03:05:37.982	2025-01-08 03:05:37.982	2025-01-08 03:05:37.831	1	1	\N
1	j02v9zmm1d1253yyqdivtdul	strapilocal1	jojo5544+strapilocal1@gmail.com	local	$2a$10$HRMTiLLACC91dzlz/kXn8.ogDhScqTZfG6UsEeiQk7YDFgJadthJ2	\N	\N	t	f	2025-01-08 02:41:50.274	2025-01-08 03:12:40.42	2025-01-08 03:12:40.171	1	1	\N
\.


--
-- TOC entry 3780 (class 0 OID 16967)
-- Dependencies: 291
-- Data for Name: up_users_role_lnk; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.up_users_role_lnk (id, user_id, role_id, user_ord) FROM stdin;
1	1	1	1
2	2	1	2
3	3	2	1
\.


--
-- TOC entry 3700 (class 0 OID 16434)
-- Dependencies: 211
-- Data for Name: upload_folders; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.upload_folders (id, document_id, name, path_id, path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 3768 (class 0 OID 16890)
-- Dependencies: 279
-- Data for Name: upload_folders_parent_lnk; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.upload_folders_parent_lnk (id, folder_id, inv_folder_id, folder_ord) FROM stdin;
\.


--
-- TOC entry 3860 (class 0 OID 0)
-- Dependencies: 228
-- Name: abouts_cmps_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.abouts_cmps_id_seq', 3, true);


--
-- TOC entry 3861 (class 0 OID 0)
-- Dependencies: 230
-- Name: abouts_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.abouts_id_seq', 1, true);


--
-- TOC entry 3862 (class 0 OID 0)
-- Dependencies: 244
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.admin_permissions_id_seq', 182, true);


--
-- TOC entry 3863 (class 0 OID 0)
-- Dependencies: 296
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.admin_permissions_role_lnk_id_seq', 187, true);


--
-- TOC entry 3864 (class 0 OID 0)
-- Dependencies: 248
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.admin_roles_id_seq', 5, true);


--
-- TOC entry 3865 (class 0 OID 0)
-- Dependencies: 246
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.admin_users_id_seq', 1, true);


--
-- TOC entry 3866 (class 0 OID 0)
-- Dependencies: 298
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.admin_users_roles_lnk_id_seq', 1, true);


--
-- TOC entry 3867 (class 0 OID 0)
-- Dependencies: 292
-- Name: articles_author_lnk_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.articles_author_lnk_id_seq', 8, true);


--
-- TOC entry 3868 (class 0 OID 0)
-- Dependencies: 294
-- Name: articles_category_lnk_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.articles_category_lnk_id_seq', 8, true);


--
-- TOC entry 3869 (class 0 OID 0)
-- Dependencies: 232
-- Name: articles_cmps_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.articles_cmps_id_seq', 40, true);


--
-- TOC entry 3870 (class 0 OID 0)
-- Dependencies: 234
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.articles_id_seq', 8, true);


--
-- TOC entry 3871 (class 0 OID 0)
-- Dependencies: 236
-- Name: authors_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.authors_id_seq', 2, true);


--
-- TOC entry 3872 (class 0 OID 0)
-- Dependencies: 238
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.categories_id_seq', 5, true);


--
-- TOC entry 3873 (class 0 OID 0)
-- Dependencies: 266
-- Name: components_shared_media_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.components_shared_media_id_seq', 9, true);


--
-- TOC entry 3874 (class 0 OID 0)
-- Dependencies: 264
-- Name: components_shared_quotes_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.components_shared_quotes_id_seq', 9, true);


--
-- TOC entry 3875 (class 0 OID 0)
-- Dependencies: 262
-- Name: components_shared_rich_texts_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.components_shared_rich_texts_id_seq', 17, true);


--
-- TOC entry 3876 (class 0 OID 0)
-- Dependencies: 260
-- Name: components_shared_seos_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.components_shared_seos_id_seq', 1, true);


--
-- TOC entry 3877 (class 0 OID 0)
-- Dependencies: 258
-- Name: components_shared_sliders_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.components_shared_sliders_id_seq', 8, true);


--
-- TOC entry 3878 (class 0 OID 0)
-- Dependencies: 276
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.files_folder_lnk_id_seq', 1, false);


--
-- TOC entry 3879 (class 0 OID 0)
-- Dependencies: 208
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.files_id_seq', 11, true);


--
-- TOC entry 3880 (class 0 OID 0)
-- Dependencies: 274
-- Name: files_related_mph_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.files_related_mph_id_seq', 37, true);


--
-- TOC entry 3881 (class 0 OID 0)
-- Dependencies: 240
-- Name: globals_cmps_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.globals_cmps_id_seq', 1, true);


--
-- TOC entry 3882 (class 0 OID 0)
-- Dependencies: 242
-- Name: globals_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.globals_id_seq', 1, true);


--
-- TOC entry 3883 (class 0 OID 0)
-- Dependencies: 212
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.i18n_locale_id_seq', 2, true);


--
-- TOC entry 3884 (class 0 OID 0)
-- Dependencies: 308
-- Name: jobs_bidder_lnk_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.jobs_bidder_lnk_id_seq', 30, true);


--
-- TOC entry 3885 (class 0 OID 0)
-- Dependencies: 304
-- Name: jobs_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.jobs_id_seq', 160, true);


--
-- TOC entry 3886 (class 0 OID 0)
-- Dependencies: 306
-- Name: jobs_postedby_lnk_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.jobs_postedby_lnk_id_seq', 80, true);


--
-- TOC entry 3887 (class 0 OID 0)
-- Dependencies: 252
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.strapi_api_token_permissions_id_seq', 39, true);


--
-- TOC entry 3888 (class 0 OID 0)
-- Dependencies: 300
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.strapi_api_token_permissions_token_lnk_id_seq', 39, true);


--
-- TOC entry 3889 (class 0 OID 0)
-- Dependencies: 250
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.strapi_api_tokens_id_seq', 3, true);


--
-- TOC entry 3890 (class 0 OID 0)
-- Dependencies: 268
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.strapi_core_store_settings_id_seq', 38, true);


--
-- TOC entry 3891 (class 0 OID 0)
-- Dependencies: 206
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.strapi_database_schema_id_seq', 12, true);


--
-- TOC entry 3892 (class 0 OID 0)
-- Dependencies: 272
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.strapi_history_versions_id_seq', 1, false);


--
-- TOC entry 3893 (class 0 OID 0)
-- Dependencies: 202
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.strapi_migrations_id_seq', 1, false);


--
-- TOC entry 3894 (class 0 OID 0)
-- Dependencies: 203
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.strapi_migrations_internal_id_seq', 6, true);


--
-- TOC entry 3895 (class 0 OID 0)
-- Dependencies: 216
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.strapi_release_actions_id_seq', 1, false);


--
-- TOC entry 3896 (class 0 OID 0)
-- Dependencies: 280
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.strapi_release_actions_release_lnk_id_seq', 1, false);


--
-- TOC entry 3897 (class 0 OID 0)
-- Dependencies: 214
-- Name: strapi_releases_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.strapi_releases_id_seq', 1, false);


--
-- TOC entry 3898 (class 0 OID 0)
-- Dependencies: 256
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.strapi_transfer_token_permissions_id_seq', 1, false);


--
-- TOC entry 3899 (class 0 OID 0)
-- Dependencies: 302
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.strapi_transfer_token_permissions_token_lnk_id_seq', 1, false);


--
-- TOC entry 3900 (class 0 OID 0)
-- Dependencies: 254
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.strapi_transfer_tokens_id_seq', 1, false);


--
-- TOC entry 3901 (class 0 OID 0)
-- Dependencies: 270
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.strapi_webhooks_id_seq', 1, false);


--
-- TOC entry 3902 (class 0 OID 0)
-- Dependencies: 218
-- Name: strapi_workflows_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.strapi_workflows_id_seq', 1, false);


--
-- TOC entry 3903 (class 0 OID 0)
-- Dependencies: 282
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.strapi_workflows_stage_required_to_publish_lnk_id_seq', 1, false);


--
-- TOC entry 3904 (class 0 OID 0)
-- Dependencies: 220
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.strapi_workflows_stages_id_seq', 1, false);


--
-- TOC entry 3905 (class 0 OID 0)
-- Dependencies: 286
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.strapi_workflows_stages_permissions_lnk_id_seq', 1, false);


--
-- TOC entry 3906 (class 0 OID 0)
-- Dependencies: 284
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.strapi_workflows_stages_workflow_lnk_id_seq', 1, false);


--
-- TOC entry 3907 (class 0 OID 0)
-- Dependencies: 222
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.up_permissions_id_seq', 31, true);


--
-- TOC entry 3908 (class 0 OID 0)
-- Dependencies: 288
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.up_permissions_role_lnk_id_seq', 31, true);


--
-- TOC entry 3909 (class 0 OID 0)
-- Dependencies: 224
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.up_roles_id_seq', 2, true);


--
-- TOC entry 3910 (class 0 OID 0)
-- Dependencies: 226
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.up_users_id_seq', 3, true);


--
-- TOC entry 3911 (class 0 OID 0)
-- Dependencies: 290
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.up_users_role_lnk_id_seq', 3, true);


--
-- TOC entry 3912 (class 0 OID 0)
-- Dependencies: 210
-- Name: upload_folders_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.upload_folders_id_seq', 1, false);


--
-- TOC entry 3913 (class 0 OID 0)
-- Dependencies: 278
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.upload_folders_parent_lnk_id_seq', 1, false);


--
-- TOC entry 3265 (class 2606 OID 16572)
-- Name: abouts_cmps abouts_cmps_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.abouts_cmps
    ADD CONSTRAINT abouts_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 3274 (class 2606 OID 16588)
-- Name: abouts abouts_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.abouts
    ADD CONSTRAINT abouts_pkey PRIMARY KEY (id);


--
-- TOC entry 3270 (class 2606 OID 16577)
-- Name: abouts_cmps abouts_uq; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.abouts_cmps
    ADD CONSTRAINT abouts_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 3313 (class 2606 OID 16690)
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3440 (class 2606 OID 17011)
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3442 (class 2606 OID 17015)
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_uq; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_uq UNIQUE (permission_id, role_id);


--
-- TOC entry 3323 (class 2606 OID 16718)
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- TOC entry 3318 (class 2606 OID 16704)
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- TOC entry 3448 (class 2606 OID 17024)
-- Name: admin_users_roles_lnk admin_users_roles_lnk_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3450 (class 2606 OID 17028)
-- Name: admin_users_roles_lnk admin_users_roles_lnk_uq; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_uq UNIQUE (user_id, role_id);


--
-- TOC entry 3426 (class 2606 OID 16985)
-- Name: articles_author_lnk articles_author_lnk_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.articles_author_lnk
    ADD CONSTRAINT articles_author_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3428 (class 2606 OID 16989)
-- Name: articles_author_lnk articles_author_lnk_uq; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.articles_author_lnk
    ADD CONSTRAINT articles_author_lnk_uq UNIQUE (article_id, author_id);


--
-- TOC entry 3433 (class 2606 OID 16998)
-- Name: articles_category_lnk articles_category_lnk_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.articles_category_lnk
    ADD CONSTRAINT articles_category_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3435 (class 2606 OID 17002)
-- Name: articles_category_lnk articles_category_lnk_uq; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.articles_category_lnk
    ADD CONSTRAINT articles_category_lnk_uq UNIQUE (article_id, category_id);


--
-- TOC entry 3277 (class 2606 OID 16602)
-- Name: articles_cmps articles_cmps_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.articles_cmps
    ADD CONSTRAINT articles_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 3286 (class 2606 OID 16618)
-- Name: articles articles_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- TOC entry 3282 (class 2606 OID 16607)
-- Name: articles_cmps articles_uq; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.articles_cmps
    ADD CONSTRAINT articles_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 3291 (class 2606 OID 16632)
-- Name: authors authors_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (id);


--
-- TOC entry 3296 (class 2606 OID 16646)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- TOC entry 3354 (class 2606 OID 16826)
-- Name: components_shared_media components_shared_media_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.components_shared_media
    ADD CONSTRAINT components_shared_media_pkey PRIMARY KEY (id);


--
-- TOC entry 3352 (class 2606 OID 16818)
-- Name: components_shared_quotes components_shared_quotes_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.components_shared_quotes
    ADD CONSTRAINT components_shared_quotes_pkey PRIMARY KEY (id);


--
-- TOC entry 3350 (class 2606 OID 16807)
-- Name: components_shared_rich_texts components_shared_rich_texts_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.components_shared_rich_texts
    ADD CONSTRAINT components_shared_rich_texts_pkey PRIMARY KEY (id);


--
-- TOC entry 3348 (class 2606 OID 16796)
-- Name: components_shared_seos components_shared_seos_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.components_shared_seos
    ADD CONSTRAINT components_shared_seos_pkey PRIMARY KEY (id);


--
-- TOC entry 3346 (class 2606 OID 16785)
-- Name: components_shared_sliders components_shared_sliders_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.components_shared_sliders
    ADD CONSTRAINT components_shared_sliders_pkey PRIMARY KEY (id);


--
-- TOC entry 3371 (class 2606 OID 16882)
-- Name: files_folder_lnk files_folder_lnk_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3373 (class 2606 OID 16886)
-- Name: files_folder_lnk files_folder_lnk_uq; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_uq UNIQUE (file_id, folder_id);


--
-- TOC entry 3207 (class 2606 OID 16422)
-- Name: files files_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- TOC entry 3366 (class 2606 OID 16871)
-- Name: files_related_mph files_related_mph_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.files_related_mph
    ADD CONSTRAINT files_related_mph_pkey PRIMARY KEY (id);


--
-- TOC entry 3299 (class 2606 OID 16660)
-- Name: globals_cmps globals_cmps_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.globals_cmps
    ADD CONSTRAINT globals_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 3308 (class 2606 OID 16676)
-- Name: globals globals_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.globals
    ADD CONSTRAINT globals_pkey PRIMARY KEY (id);


--
-- TOC entry 3304 (class 2606 OID 16665)
-- Name: globals_cmps globals_uq; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.globals_cmps
    ADD CONSTRAINT globals_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 3227 (class 2606 OID 16460)
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- TOC entry 3479 (class 2606 OID 32791)
-- Name: jobs_bidder_lnk jobs_bidder_lnk_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.jobs_bidder_lnk
    ADD CONSTRAINT jobs_bidder_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3481 (class 2606 OID 32795)
-- Name: jobs_bidder_lnk jobs_bidder_lnk_uq; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.jobs_bidder_lnk
    ADD CONSTRAINT jobs_bidder_lnk_uq UNIQUE (job_id, user_id);


--
-- TOC entry 3468 (class 2606 OID 24591)
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- TOC entry 3473 (class 2606 OID 25845)
-- Name: jobs_postedby_lnk jobs_postedby_lnk_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.jobs_postedby_lnk
    ADD CONSTRAINT jobs_postedby_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3475 (class 2606 OID 25849)
-- Name: jobs_postedby_lnk jobs_postedby_lnk_uq; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.jobs_postedby_lnk
    ADD CONSTRAINT jobs_postedby_lnk_uq UNIQUE (job_id, user_id);


--
-- TOC entry 3333 (class 2606 OID 16746)
-- Name: strapi_api_token_permissions strapi_api_token_permissions_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3455 (class 2606 OID 17038)
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3457 (class 2606 OID 17042)
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_uq; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_uq UNIQUE (api_token_permission_id, api_token_id);


--
-- TOC entry 3328 (class 2606 OID 16732)
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- TOC entry 3356 (class 2606 OID 16837)
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- TOC entry 3203 (class 2606 OID 16411)
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- TOC entry 3361 (class 2606 OID 16859)
-- Name: strapi_history_versions strapi_history_versions_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_pkey PRIMARY KEY (id);


--
-- TOC entry 3199 (class 2606 OID 16400)
-- Name: strapi_migrations_internal strapi_migrations_internal_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_migrations_internal
    ADD CONSTRAINT strapi_migrations_internal_pkey PRIMARY KEY (id);


--
-- TOC entry 3201 (class 2606 OID 16399)
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3237 (class 2606 OID 16488)
-- Name: strapi_release_actions strapi_release_actions_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_pkey PRIMARY KEY (id);


--
-- TOC entry 3385 (class 2606 OID 16908)
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3387 (class 2606 OID 16912)
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_uq; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_uq UNIQUE (release_action_id, release_id);


--
-- TOC entry 3232 (class 2606 OID 16474)
-- Name: strapi_releases strapi_releases_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_releases
    ADD CONSTRAINT strapi_releases_pkey PRIMARY KEY (id);


--
-- TOC entry 3343 (class 2606 OID 16774)
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3462 (class 2606 OID 17051)
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3464 (class 2606 OID 17055)
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_uq; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_uq UNIQUE (transfer_token_permission_id, transfer_token_id);


--
-- TOC entry 3338 (class 2606 OID 16760)
-- Name: strapi_transfer_tokens strapi_transfer_tokens_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);


--
-- TOC entry 3358 (class 2606 OID 16848)
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- TOC entry 3242 (class 2606 OID 16502)
-- Name: strapi_workflows strapi_workflows_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows
    ADD CONSTRAINT strapi_workflows_pkey PRIMARY KEY (id);


--
-- TOC entry 3391 (class 2606 OID 16921)
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3393 (class 2606 OID 16925)
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_uq; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_uq UNIQUE (workflow_id, workflow_stage_id);


--
-- TOC entry 3405 (class 2606 OID 16946)
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3407 (class 2606 OID 16950)
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_uq; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_uq UNIQUE (workflow_stage_id, permission_id);


--
-- TOC entry 3247 (class 2606 OID 16516)
-- Name: strapi_workflows_stages strapi_workflows_stages_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_pkey PRIMARY KEY (id);


--
-- TOC entry 3398 (class 2606 OID 16933)
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3400 (class 2606 OID 16937)
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_uq; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_uq UNIQUE (workflow_stage_id, workflow_id);


--
-- TOC entry 3252 (class 2606 OID 16530)
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3412 (class 2606 OID 16959)
-- Name: up_permissions_role_lnk up_permissions_role_lnk_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3414 (class 2606 OID 16963)
-- Name: up_permissions_role_lnk up_permissions_role_lnk_uq; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_uq UNIQUE (permission_id, role_id);


--
-- TOC entry 3257 (class 2606 OID 16544)
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- TOC entry 3262 (class 2606 OID 16558)
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- TOC entry 3419 (class 2606 OID 16972)
-- Name: up_users_role_lnk up_users_role_lnk_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3421 (class 2606 OID 16976)
-- Name: up_users_role_lnk up_users_role_lnk_uq; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_uq UNIQUE (user_id, role_id);


--
-- TOC entry 3378 (class 2606 OID 16895)
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3380 (class 2606 OID 16899)
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_uq; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_uq UNIQUE (folder_id, inv_folder_id);


--
-- TOC entry 3218 (class 2606 OID 16444)
-- Name: upload_folders upload_folders_path_id_index; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);


--
-- TOC entry 3220 (class 2606 OID 16446)
-- Name: upload_folders upload_folders_path_index; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);


--
-- TOC entry 3222 (class 2606 OID 16442)
-- Name: upload_folders upload_folders_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);


--
-- TOC entry 3266 (class 1259 OID 16574)
-- Name: abouts_component_type_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX abouts_component_type_idx ON acstrapi.abouts_cmps USING btree (component_type);


--
-- TOC entry 3271 (class 1259 OID 16590)
-- Name: abouts_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX abouts_created_by_id_fk ON acstrapi.abouts USING btree (created_by_id);


--
-- TOC entry 3272 (class 1259 OID 16589)
-- Name: abouts_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX abouts_documents_idx ON acstrapi.abouts USING btree (document_id, locale, published_at);


--
-- TOC entry 3267 (class 1259 OID 16575)
-- Name: abouts_entity_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX abouts_entity_fk ON acstrapi.abouts_cmps USING btree (entity_id);


--
-- TOC entry 3268 (class 1259 OID 16573)
-- Name: abouts_field_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX abouts_field_idx ON acstrapi.abouts_cmps USING btree (field);


--
-- TOC entry 3275 (class 1259 OID 16591)
-- Name: abouts_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX abouts_updated_by_id_fk ON acstrapi.abouts USING btree (updated_by_id);


--
-- TOC entry 3310 (class 1259 OID 16692)
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX admin_permissions_created_by_id_fk ON acstrapi.admin_permissions USING btree (created_by_id);


--
-- TOC entry 3311 (class 1259 OID 16691)
-- Name: admin_permissions_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX admin_permissions_documents_idx ON acstrapi.admin_permissions USING btree (document_id, locale, published_at);


--
-- TOC entry 3436 (class 1259 OID 17012)
-- Name: admin_permissions_role_lnk_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX admin_permissions_role_lnk_fk ON acstrapi.admin_permissions_role_lnk USING btree (permission_id);


--
-- TOC entry 3437 (class 1259 OID 17013)
-- Name: admin_permissions_role_lnk_ifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX admin_permissions_role_lnk_ifk ON acstrapi.admin_permissions_role_lnk USING btree (role_id);


--
-- TOC entry 3438 (class 1259 OID 17016)
-- Name: admin_permissions_role_lnk_oifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX admin_permissions_role_lnk_oifk ON acstrapi.admin_permissions_role_lnk USING btree (permission_ord);


--
-- TOC entry 3314 (class 1259 OID 16693)
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX admin_permissions_updated_by_id_fk ON acstrapi.admin_permissions USING btree (updated_by_id);


--
-- TOC entry 3320 (class 1259 OID 16720)
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX admin_roles_created_by_id_fk ON acstrapi.admin_roles USING btree (created_by_id);


--
-- TOC entry 3321 (class 1259 OID 16719)
-- Name: admin_roles_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX admin_roles_documents_idx ON acstrapi.admin_roles USING btree (document_id, locale, published_at);


--
-- TOC entry 3324 (class 1259 OID 16721)
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX admin_roles_updated_by_id_fk ON acstrapi.admin_roles USING btree (updated_by_id);


--
-- TOC entry 3315 (class 1259 OID 16706)
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX admin_users_created_by_id_fk ON acstrapi.admin_users USING btree (created_by_id);


--
-- TOC entry 3316 (class 1259 OID 16705)
-- Name: admin_users_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX admin_users_documents_idx ON acstrapi.admin_users USING btree (document_id, locale, published_at);


--
-- TOC entry 3443 (class 1259 OID 17025)
-- Name: admin_users_roles_lnk_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX admin_users_roles_lnk_fk ON acstrapi.admin_users_roles_lnk USING btree (user_id);


--
-- TOC entry 3444 (class 1259 OID 17026)
-- Name: admin_users_roles_lnk_ifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX admin_users_roles_lnk_ifk ON acstrapi.admin_users_roles_lnk USING btree (role_id);


--
-- TOC entry 3445 (class 1259 OID 17029)
-- Name: admin_users_roles_lnk_ofk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX admin_users_roles_lnk_ofk ON acstrapi.admin_users_roles_lnk USING btree (role_ord);


--
-- TOC entry 3446 (class 1259 OID 17030)
-- Name: admin_users_roles_lnk_oifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX admin_users_roles_lnk_oifk ON acstrapi.admin_users_roles_lnk USING btree (user_ord);


--
-- TOC entry 3319 (class 1259 OID 16707)
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX admin_users_updated_by_id_fk ON acstrapi.admin_users USING btree (updated_by_id);


--
-- TOC entry 3422 (class 1259 OID 16986)
-- Name: articles_author_lnk_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX articles_author_lnk_fk ON acstrapi.articles_author_lnk USING btree (article_id);


--
-- TOC entry 3423 (class 1259 OID 16987)
-- Name: articles_author_lnk_ifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX articles_author_lnk_ifk ON acstrapi.articles_author_lnk USING btree (author_id);


--
-- TOC entry 3424 (class 1259 OID 16990)
-- Name: articles_author_lnk_oifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX articles_author_lnk_oifk ON acstrapi.articles_author_lnk USING btree (article_ord);


--
-- TOC entry 3429 (class 1259 OID 16999)
-- Name: articles_category_lnk_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX articles_category_lnk_fk ON acstrapi.articles_category_lnk USING btree (article_id);


--
-- TOC entry 3430 (class 1259 OID 17000)
-- Name: articles_category_lnk_ifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX articles_category_lnk_ifk ON acstrapi.articles_category_lnk USING btree (category_id);


--
-- TOC entry 3431 (class 1259 OID 17003)
-- Name: articles_category_lnk_oifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX articles_category_lnk_oifk ON acstrapi.articles_category_lnk USING btree (article_ord);


--
-- TOC entry 3278 (class 1259 OID 16604)
-- Name: articles_component_type_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX articles_component_type_idx ON acstrapi.articles_cmps USING btree (component_type);


--
-- TOC entry 3283 (class 1259 OID 16620)
-- Name: articles_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX articles_created_by_id_fk ON acstrapi.articles USING btree (created_by_id);


--
-- TOC entry 3284 (class 1259 OID 16619)
-- Name: articles_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX articles_documents_idx ON acstrapi.articles USING btree (document_id, locale, published_at);


--
-- TOC entry 3279 (class 1259 OID 16605)
-- Name: articles_entity_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX articles_entity_fk ON acstrapi.articles_cmps USING btree (entity_id);


--
-- TOC entry 3280 (class 1259 OID 16603)
-- Name: articles_field_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX articles_field_idx ON acstrapi.articles_cmps USING btree (field);


--
-- TOC entry 3287 (class 1259 OID 16621)
-- Name: articles_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX articles_updated_by_id_fk ON acstrapi.articles USING btree (updated_by_id);


--
-- TOC entry 3288 (class 1259 OID 16634)
-- Name: authors_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX authors_created_by_id_fk ON acstrapi.authors USING btree (created_by_id);


--
-- TOC entry 3289 (class 1259 OID 16633)
-- Name: authors_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX authors_documents_idx ON acstrapi.authors USING btree (document_id, locale, published_at);


--
-- TOC entry 3292 (class 1259 OID 16635)
-- Name: authors_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX authors_updated_by_id_fk ON acstrapi.authors USING btree (updated_by_id);


--
-- TOC entry 3293 (class 1259 OID 16648)
-- Name: categories_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX categories_created_by_id_fk ON acstrapi.categories USING btree (created_by_id);


--
-- TOC entry 3294 (class 1259 OID 16647)
-- Name: categories_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX categories_documents_idx ON acstrapi.categories USING btree (document_id, locale, published_at);


--
-- TOC entry 3297 (class 1259 OID 16649)
-- Name: categories_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX categories_updated_by_id_fk ON acstrapi.categories USING btree (updated_by_id);


--
-- TOC entry 3204 (class 1259 OID 16430)
-- Name: files_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX files_created_by_id_fk ON acstrapi.files USING btree (created_by_id);


--
-- TOC entry 3205 (class 1259 OID 16429)
-- Name: files_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX files_documents_idx ON acstrapi.files USING btree (document_id, locale, published_at);


--
-- TOC entry 3367 (class 1259 OID 16883)
-- Name: files_folder_lnk_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX files_folder_lnk_fk ON acstrapi.files_folder_lnk USING btree (file_id);


--
-- TOC entry 3368 (class 1259 OID 16884)
-- Name: files_folder_lnk_ifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX files_folder_lnk_ifk ON acstrapi.files_folder_lnk USING btree (folder_id);


--
-- TOC entry 3369 (class 1259 OID 16887)
-- Name: files_folder_lnk_oifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX files_folder_lnk_oifk ON acstrapi.files_folder_lnk USING btree (file_ord);


--
-- TOC entry 3362 (class 1259 OID 16872)
-- Name: files_related_mph_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX files_related_mph_fk ON acstrapi.files_related_mph USING btree (file_id);


--
-- TOC entry 3363 (class 1259 OID 16874)
-- Name: files_related_mph_idix; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX files_related_mph_idix ON acstrapi.files_related_mph USING btree (related_id);


--
-- TOC entry 3364 (class 1259 OID 16873)
-- Name: files_related_mph_oidx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX files_related_mph_oidx ON acstrapi.files_related_mph USING btree ("order");


--
-- TOC entry 3208 (class 1259 OID 16431)
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX files_updated_by_id_fk ON acstrapi.files USING btree (updated_by_id);


--
-- TOC entry 3300 (class 1259 OID 16662)
-- Name: globals_component_type_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX globals_component_type_idx ON acstrapi.globals_cmps USING btree (component_type);


--
-- TOC entry 3305 (class 1259 OID 16678)
-- Name: globals_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX globals_created_by_id_fk ON acstrapi.globals USING btree (created_by_id);


--
-- TOC entry 3306 (class 1259 OID 16677)
-- Name: globals_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX globals_documents_idx ON acstrapi.globals USING btree (document_id, locale, published_at);


--
-- TOC entry 3301 (class 1259 OID 16663)
-- Name: globals_entity_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX globals_entity_fk ON acstrapi.globals_cmps USING btree (entity_id);


--
-- TOC entry 3302 (class 1259 OID 16661)
-- Name: globals_field_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX globals_field_idx ON acstrapi.globals_cmps USING btree (field);


--
-- TOC entry 3309 (class 1259 OID 16679)
-- Name: globals_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX globals_updated_by_id_fk ON acstrapi.globals USING btree (updated_by_id);


--
-- TOC entry 3224 (class 1259 OID 16462)
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX i18n_locale_created_by_id_fk ON acstrapi.i18n_locale USING btree (created_by_id);


--
-- TOC entry 3225 (class 1259 OID 16461)
-- Name: i18n_locale_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX i18n_locale_documents_idx ON acstrapi.i18n_locale USING btree (document_id, locale, published_at);


--
-- TOC entry 3228 (class 1259 OID 16463)
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX i18n_locale_updated_by_id_fk ON acstrapi.i18n_locale USING btree (updated_by_id);


--
-- TOC entry 3476 (class 1259 OID 32792)
-- Name: jobs_bidder_lnk_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX jobs_bidder_lnk_fk ON acstrapi.jobs_bidder_lnk USING btree (job_id);


--
-- TOC entry 3477 (class 1259 OID 32793)
-- Name: jobs_bidder_lnk_ifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX jobs_bidder_lnk_ifk ON acstrapi.jobs_bidder_lnk USING btree (user_id);


--
-- TOC entry 3465 (class 1259 OID 24593)
-- Name: jobs_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX jobs_created_by_id_fk ON acstrapi.jobs USING btree (created_by_id);


--
-- TOC entry 3466 (class 1259 OID 24592)
-- Name: jobs_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX jobs_documents_idx ON acstrapi.jobs USING btree (document_id, locale, published_at);


--
-- TOC entry 3470 (class 1259 OID 25846)
-- Name: jobs_postedby_lnk_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX jobs_postedby_lnk_fk ON acstrapi.jobs_postedby_lnk USING btree (job_id);


--
-- TOC entry 3471 (class 1259 OID 25847)
-- Name: jobs_postedby_lnk_ifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX jobs_postedby_lnk_ifk ON acstrapi.jobs_postedby_lnk USING btree (user_id);


--
-- TOC entry 3469 (class 1259 OID 24594)
-- Name: jobs_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX jobs_updated_by_id_fk ON acstrapi.jobs USING btree (updated_by_id);


--
-- TOC entry 3330 (class 1259 OID 16748)
-- Name: strapi_api_token_permissions_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON acstrapi.strapi_api_token_permissions USING btree (created_by_id);


--
-- TOC entry 3331 (class 1259 OID 16747)
-- Name: strapi_api_token_permissions_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_api_token_permissions_documents_idx ON acstrapi.strapi_api_token_permissions USING btree (document_id, locale, published_at);


--
-- TOC entry 3451 (class 1259 OID 17039)
-- Name: strapi_api_token_permissions_token_lnk_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_api_token_permissions_token_lnk_fk ON acstrapi.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_id);


--
-- TOC entry 3452 (class 1259 OID 17040)
-- Name: strapi_api_token_permissions_token_lnk_ifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_api_token_permissions_token_lnk_ifk ON acstrapi.strapi_api_token_permissions_token_lnk USING btree (api_token_id);


--
-- TOC entry 3453 (class 1259 OID 17043)
-- Name: strapi_api_token_permissions_token_lnk_oifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_api_token_permissions_token_lnk_oifk ON acstrapi.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_ord);


--
-- TOC entry 3334 (class 1259 OID 16749)
-- Name: strapi_api_token_permissions_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON acstrapi.strapi_api_token_permissions USING btree (updated_by_id);


--
-- TOC entry 3325 (class 1259 OID 16734)
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON acstrapi.strapi_api_tokens USING btree (created_by_id);


--
-- TOC entry 3326 (class 1259 OID 16733)
-- Name: strapi_api_tokens_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_api_tokens_documents_idx ON acstrapi.strapi_api_tokens USING btree (document_id, locale, published_at);


--
-- TOC entry 3329 (class 1259 OID 16735)
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON acstrapi.strapi_api_tokens USING btree (updated_by_id);


--
-- TOC entry 3359 (class 1259 OID 16860)
-- Name: strapi_history_versions_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_history_versions_created_by_id_fk ON acstrapi.strapi_history_versions USING btree (created_by_id);


--
-- TOC entry 3234 (class 1259 OID 16490)
-- Name: strapi_release_actions_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_release_actions_created_by_id_fk ON acstrapi.strapi_release_actions USING btree (created_by_id);


--
-- TOC entry 3235 (class 1259 OID 16489)
-- Name: strapi_release_actions_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_release_actions_documents_idx ON acstrapi.strapi_release_actions USING btree (document_id, locale, published_at);


--
-- TOC entry 3381 (class 1259 OID 16909)
-- Name: strapi_release_actions_release_lnk_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_release_actions_release_lnk_fk ON acstrapi.strapi_release_actions_release_lnk USING btree (release_action_id);


--
-- TOC entry 3382 (class 1259 OID 16910)
-- Name: strapi_release_actions_release_lnk_ifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_release_actions_release_lnk_ifk ON acstrapi.strapi_release_actions_release_lnk USING btree (release_id);


--
-- TOC entry 3383 (class 1259 OID 16913)
-- Name: strapi_release_actions_release_lnk_oifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_release_actions_release_lnk_oifk ON acstrapi.strapi_release_actions_release_lnk USING btree (release_action_ord);


--
-- TOC entry 3238 (class 1259 OID 16491)
-- Name: strapi_release_actions_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_release_actions_updated_by_id_fk ON acstrapi.strapi_release_actions USING btree (updated_by_id);


--
-- TOC entry 3229 (class 1259 OID 16476)
-- Name: strapi_releases_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_releases_created_by_id_fk ON acstrapi.strapi_releases USING btree (created_by_id);


--
-- TOC entry 3230 (class 1259 OID 16475)
-- Name: strapi_releases_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_releases_documents_idx ON acstrapi.strapi_releases USING btree (document_id, locale, published_at);


--
-- TOC entry 3233 (class 1259 OID 16477)
-- Name: strapi_releases_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_releases_updated_by_id_fk ON acstrapi.strapi_releases USING btree (updated_by_id);


--
-- TOC entry 3340 (class 1259 OID 16776)
-- Name: strapi_transfer_token_permissions_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON acstrapi.strapi_transfer_token_permissions USING btree (created_by_id);


--
-- TOC entry 3341 (class 1259 OID 16775)
-- Name: strapi_transfer_token_permissions_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_transfer_token_permissions_documents_idx ON acstrapi.strapi_transfer_token_permissions USING btree (document_id, locale, published_at);


--
-- TOC entry 3458 (class 1259 OID 17052)
-- Name: strapi_transfer_token_permissions_token_lnk_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_fk ON acstrapi.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_id);


--
-- TOC entry 3459 (class 1259 OID 17053)
-- Name: strapi_transfer_token_permissions_token_lnk_ifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_ifk ON acstrapi.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_id);


--
-- TOC entry 3460 (class 1259 OID 17056)
-- Name: strapi_transfer_token_permissions_token_lnk_oifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_oifk ON acstrapi.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_ord);


--
-- TOC entry 3344 (class 1259 OID 16777)
-- Name: strapi_transfer_token_permissions_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON acstrapi.strapi_transfer_token_permissions USING btree (updated_by_id);


--
-- TOC entry 3335 (class 1259 OID 16762)
-- Name: strapi_transfer_tokens_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON acstrapi.strapi_transfer_tokens USING btree (created_by_id);


--
-- TOC entry 3336 (class 1259 OID 16761)
-- Name: strapi_transfer_tokens_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_transfer_tokens_documents_idx ON acstrapi.strapi_transfer_tokens USING btree (document_id, locale, published_at);


--
-- TOC entry 3339 (class 1259 OID 16763)
-- Name: strapi_transfer_tokens_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON acstrapi.strapi_transfer_tokens USING btree (updated_by_id);


--
-- TOC entry 3239 (class 1259 OID 16504)
-- Name: strapi_workflows_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_workflows_created_by_id_fk ON acstrapi.strapi_workflows USING btree (created_by_id);


--
-- TOC entry 3240 (class 1259 OID 16503)
-- Name: strapi_workflows_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_workflows_documents_idx ON acstrapi.strapi_workflows USING btree (document_id, locale, published_at);


--
-- TOC entry 3388 (class 1259 OID 16922)
-- Name: strapi_workflows_stage_required_to_publish_lnk_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_fk ON acstrapi.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_id);


--
-- TOC entry 3389 (class 1259 OID 16923)
-- Name: strapi_workflows_stage_required_to_publish_lnk_ifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_ifk ON acstrapi.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_stage_id);


--
-- TOC entry 3244 (class 1259 OID 16518)
-- Name: strapi_workflows_stages_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_workflows_stages_created_by_id_fk ON acstrapi.strapi_workflows_stages USING btree (created_by_id);


--
-- TOC entry 3245 (class 1259 OID 16517)
-- Name: strapi_workflows_stages_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_workflows_stages_documents_idx ON acstrapi.strapi_workflows_stages USING btree (document_id, locale, published_at);


--
-- TOC entry 3401 (class 1259 OID 16947)
-- Name: strapi_workflows_stages_permissions_lnk_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_fk ON acstrapi.strapi_workflows_stages_permissions_lnk USING btree (workflow_stage_id);


--
-- TOC entry 3402 (class 1259 OID 16948)
-- Name: strapi_workflows_stages_permissions_lnk_ifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_ifk ON acstrapi.strapi_workflows_stages_permissions_lnk USING btree (permission_id);


--
-- TOC entry 3403 (class 1259 OID 16951)
-- Name: strapi_workflows_stages_permissions_lnk_ofk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_ofk ON acstrapi.strapi_workflows_stages_permissions_lnk USING btree (permission_ord);


--
-- TOC entry 3248 (class 1259 OID 16519)
-- Name: strapi_workflows_stages_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_workflows_stages_updated_by_id_fk ON acstrapi.strapi_workflows_stages USING btree (updated_by_id);


--
-- TOC entry 3394 (class 1259 OID 16934)
-- Name: strapi_workflows_stages_workflow_lnk_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_fk ON acstrapi.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_id);


--
-- TOC entry 3395 (class 1259 OID 16935)
-- Name: strapi_workflows_stages_workflow_lnk_ifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_ifk ON acstrapi.strapi_workflows_stages_workflow_lnk USING btree (workflow_id);


--
-- TOC entry 3396 (class 1259 OID 16938)
-- Name: strapi_workflows_stages_workflow_lnk_oifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_oifk ON acstrapi.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_ord);


--
-- TOC entry 3243 (class 1259 OID 16505)
-- Name: strapi_workflows_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_workflows_updated_by_id_fk ON acstrapi.strapi_workflows USING btree (updated_by_id);


--
-- TOC entry 3249 (class 1259 OID 16532)
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX up_permissions_created_by_id_fk ON acstrapi.up_permissions USING btree (created_by_id);


--
-- TOC entry 3250 (class 1259 OID 16531)
-- Name: up_permissions_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX up_permissions_documents_idx ON acstrapi.up_permissions USING btree (document_id, locale, published_at);


--
-- TOC entry 3408 (class 1259 OID 16960)
-- Name: up_permissions_role_lnk_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX up_permissions_role_lnk_fk ON acstrapi.up_permissions_role_lnk USING btree (permission_id);


--
-- TOC entry 3409 (class 1259 OID 16961)
-- Name: up_permissions_role_lnk_ifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX up_permissions_role_lnk_ifk ON acstrapi.up_permissions_role_lnk USING btree (role_id);


--
-- TOC entry 3410 (class 1259 OID 16964)
-- Name: up_permissions_role_lnk_oifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX up_permissions_role_lnk_oifk ON acstrapi.up_permissions_role_lnk USING btree (permission_ord);


--
-- TOC entry 3253 (class 1259 OID 16533)
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX up_permissions_updated_by_id_fk ON acstrapi.up_permissions USING btree (updated_by_id);


--
-- TOC entry 3254 (class 1259 OID 16546)
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX up_roles_created_by_id_fk ON acstrapi.up_roles USING btree (created_by_id);


--
-- TOC entry 3255 (class 1259 OID 16545)
-- Name: up_roles_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX up_roles_documents_idx ON acstrapi.up_roles USING btree (document_id, locale, published_at);


--
-- TOC entry 3258 (class 1259 OID 16547)
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX up_roles_updated_by_id_fk ON acstrapi.up_roles USING btree (updated_by_id);


--
-- TOC entry 3259 (class 1259 OID 16560)
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX up_users_created_by_id_fk ON acstrapi.up_users USING btree (created_by_id);


--
-- TOC entry 3260 (class 1259 OID 16559)
-- Name: up_users_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX up_users_documents_idx ON acstrapi.up_users USING btree (document_id, locale, published_at);


--
-- TOC entry 3415 (class 1259 OID 16973)
-- Name: up_users_role_lnk_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX up_users_role_lnk_fk ON acstrapi.up_users_role_lnk USING btree (user_id);


--
-- TOC entry 3416 (class 1259 OID 16974)
-- Name: up_users_role_lnk_ifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX up_users_role_lnk_ifk ON acstrapi.up_users_role_lnk USING btree (role_id);


--
-- TOC entry 3417 (class 1259 OID 16977)
-- Name: up_users_role_lnk_oifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX up_users_role_lnk_oifk ON acstrapi.up_users_role_lnk USING btree (user_ord);


--
-- TOC entry 3263 (class 1259 OID 16561)
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX up_users_updated_by_id_fk ON acstrapi.up_users USING btree (updated_by_id);


--
-- TOC entry 3209 (class 1259 OID 16424)
-- Name: upload_files_created_at_index; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX upload_files_created_at_index ON acstrapi.files USING btree (created_at);


--
-- TOC entry 3210 (class 1259 OID 16428)
-- Name: upload_files_ext_index; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX upload_files_ext_index ON acstrapi.files USING btree (ext);


--
-- TOC entry 3211 (class 1259 OID 16423)
-- Name: upload_files_folder_path_index; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX upload_files_folder_path_index ON acstrapi.files USING btree (folder_path);


--
-- TOC entry 3212 (class 1259 OID 16426)
-- Name: upload_files_name_index; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX upload_files_name_index ON acstrapi.files USING btree (name);


--
-- TOC entry 3213 (class 1259 OID 16427)
-- Name: upload_files_size_index; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX upload_files_size_index ON acstrapi.files USING btree (size);


--
-- TOC entry 3214 (class 1259 OID 16425)
-- Name: upload_files_updated_at_index; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX upload_files_updated_at_index ON acstrapi.files USING btree (updated_at);


--
-- TOC entry 3215 (class 1259 OID 16448)
-- Name: upload_folders_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX upload_folders_created_by_id_fk ON acstrapi.upload_folders USING btree (created_by_id);


--
-- TOC entry 3216 (class 1259 OID 16447)
-- Name: upload_folders_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX upload_folders_documents_idx ON acstrapi.upload_folders USING btree (document_id, locale, published_at);


--
-- TOC entry 3374 (class 1259 OID 16896)
-- Name: upload_folders_parent_lnk_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX upload_folders_parent_lnk_fk ON acstrapi.upload_folders_parent_lnk USING btree (folder_id);


--
-- TOC entry 3375 (class 1259 OID 16897)
-- Name: upload_folders_parent_lnk_ifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX upload_folders_parent_lnk_ifk ON acstrapi.upload_folders_parent_lnk USING btree (inv_folder_id);


--
-- TOC entry 3376 (class 1259 OID 16900)
-- Name: upload_folders_parent_lnk_oifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX upload_folders_parent_lnk_oifk ON acstrapi.upload_folders_parent_lnk USING btree (folder_ord);


--
-- TOC entry 3223 (class 1259 OID 16449)
-- Name: upload_folders_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX upload_folders_updated_by_id_fk ON acstrapi.upload_folders USING btree (updated_by_id);


--
-- TOC entry 3503 (class 2606 OID 17162)
-- Name: abouts abouts_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.abouts
    ADD CONSTRAINT abouts_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3502 (class 2606 OID 17157)
-- Name: abouts_cmps abouts_entity_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.abouts_cmps
    ADD CONSTRAINT abouts_entity_fk FOREIGN KEY (entity_id) REFERENCES acstrapi.abouts(id) ON DELETE CASCADE;


--
-- TOC entry 3504 (class 2606 OID 17167)
-- Name: abouts abouts_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.abouts
    ADD CONSTRAINT abouts_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3515 (class 2606 OID 17222)
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3551 (class 2606 OID 17402)
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES acstrapi.admin_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 3552 (class 2606 OID 17407)
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_ifk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES acstrapi.admin_roles(id) ON DELETE CASCADE;


--
-- TOC entry 3516 (class 2606 OID 17227)
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3519 (class 2606 OID 17242)
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3520 (class 2606 OID 17247)
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3517 (class 2606 OID 17232)
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3553 (class 2606 OID 17412)
-- Name: admin_users_roles_lnk admin_users_roles_lnk_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_fk FOREIGN KEY (user_id) REFERENCES acstrapi.admin_users(id) ON DELETE CASCADE;


--
-- TOC entry 3554 (class 2606 OID 17417)
-- Name: admin_users_roles_lnk admin_users_roles_lnk_ifk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_ifk FOREIGN KEY (role_id) REFERENCES acstrapi.admin_roles(id) ON DELETE CASCADE;


--
-- TOC entry 3518 (class 2606 OID 17237)
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3547 (class 2606 OID 17382)
-- Name: articles_author_lnk articles_author_lnk_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.articles_author_lnk
    ADD CONSTRAINT articles_author_lnk_fk FOREIGN KEY (article_id) REFERENCES acstrapi.articles(id) ON DELETE CASCADE;


--
-- TOC entry 3548 (class 2606 OID 17387)
-- Name: articles_author_lnk articles_author_lnk_ifk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.articles_author_lnk
    ADD CONSTRAINT articles_author_lnk_ifk FOREIGN KEY (author_id) REFERENCES acstrapi.authors(id) ON DELETE CASCADE;


--
-- TOC entry 3549 (class 2606 OID 17392)
-- Name: articles_category_lnk articles_category_lnk_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.articles_category_lnk
    ADD CONSTRAINT articles_category_lnk_fk FOREIGN KEY (article_id) REFERENCES acstrapi.articles(id) ON DELETE CASCADE;


--
-- TOC entry 3550 (class 2606 OID 17397)
-- Name: articles_category_lnk articles_category_lnk_ifk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.articles_category_lnk
    ADD CONSTRAINT articles_category_lnk_ifk FOREIGN KEY (category_id) REFERENCES acstrapi.categories(id) ON DELETE CASCADE;


--
-- TOC entry 3506 (class 2606 OID 17177)
-- Name: articles articles_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.articles
    ADD CONSTRAINT articles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3505 (class 2606 OID 17172)
-- Name: articles_cmps articles_entity_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.articles_cmps
    ADD CONSTRAINT articles_entity_fk FOREIGN KEY (entity_id) REFERENCES acstrapi.articles(id) ON DELETE CASCADE;


--
-- TOC entry 3507 (class 2606 OID 17182)
-- Name: articles articles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.articles
    ADD CONSTRAINT articles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3508 (class 2606 OID 17187)
-- Name: authors authors_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.authors
    ADD CONSTRAINT authors_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3509 (class 2606 OID 17192)
-- Name: authors authors_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.authors
    ADD CONSTRAINT authors_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3510 (class 2606 OID 17197)
-- Name: categories categories_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.categories
    ADD CONSTRAINT categories_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3511 (class 2606 OID 17202)
-- Name: categories categories_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.categories
    ADD CONSTRAINT categories_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3482 (class 2606 OID 17057)
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3531 (class 2606 OID 17302)
-- Name: files_folder_lnk files_folder_lnk_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_fk FOREIGN KEY (file_id) REFERENCES acstrapi.files(id) ON DELETE CASCADE;


--
-- TOC entry 3532 (class 2606 OID 17307)
-- Name: files_folder_lnk files_folder_lnk_ifk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_ifk FOREIGN KEY (folder_id) REFERENCES acstrapi.upload_folders(id) ON DELETE CASCADE;


--
-- TOC entry 3530 (class 2606 OID 17297)
-- Name: files_related_mph files_related_mph_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.files_related_mph
    ADD CONSTRAINT files_related_mph_fk FOREIGN KEY (file_id) REFERENCES acstrapi.files(id) ON DELETE CASCADE;


--
-- TOC entry 3483 (class 2606 OID 17062)
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3513 (class 2606 OID 17212)
-- Name: globals globals_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.globals
    ADD CONSTRAINT globals_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3512 (class 2606 OID 17207)
-- Name: globals_cmps globals_entity_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.globals_cmps
    ADD CONSTRAINT globals_entity_fk FOREIGN KEY (entity_id) REFERENCES acstrapi.globals(id) ON DELETE CASCADE;


--
-- TOC entry 3514 (class 2606 OID 17217)
-- Name: globals globals_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.globals
    ADD CONSTRAINT globals_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3486 (class 2606 OID 17077)
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3487 (class 2606 OID 17082)
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3563 (class 2606 OID 32797)
-- Name: jobs_bidder_lnk jobs_bidder_lnk_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.jobs_bidder_lnk
    ADD CONSTRAINT jobs_bidder_lnk_fk FOREIGN KEY (job_id) REFERENCES acstrapi.jobs(id) ON DELETE CASCADE;


--
-- TOC entry 3564 (class 2606 OID 32802)
-- Name: jobs_bidder_lnk jobs_bidder_lnk_ifk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.jobs_bidder_lnk
    ADD CONSTRAINT jobs_bidder_lnk_ifk FOREIGN KEY (user_id) REFERENCES acstrapi.up_users(id) ON DELETE CASCADE;


--
-- TOC entry 3559 (class 2606 OID 24595)
-- Name: jobs jobs_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.jobs
    ADD CONSTRAINT jobs_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3561 (class 2606 OID 25850)
-- Name: jobs_postedby_lnk jobs_postedby_lnk_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.jobs_postedby_lnk
    ADD CONSTRAINT jobs_postedby_lnk_fk FOREIGN KEY (job_id) REFERENCES acstrapi.jobs(id) ON DELETE CASCADE;


--
-- TOC entry 3562 (class 2606 OID 25855)
-- Name: jobs_postedby_lnk jobs_postedby_lnk_ifk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.jobs_postedby_lnk
    ADD CONSTRAINT jobs_postedby_lnk_ifk FOREIGN KEY (user_id) REFERENCES acstrapi.up_users(id) ON DELETE CASCADE;


--
-- TOC entry 3560 (class 2606 OID 24600)
-- Name: jobs jobs_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.jobs
    ADD CONSTRAINT jobs_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3523 (class 2606 OID 17262)
-- Name: strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3555 (class 2606 OID 17422)
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_fk FOREIGN KEY (api_token_permission_id) REFERENCES acstrapi.strapi_api_token_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 3556 (class 2606 OID 17427)
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_ifk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_ifk FOREIGN KEY (api_token_id) REFERENCES acstrapi.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- TOC entry 3524 (class 2606 OID 17267)
-- Name: strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3521 (class 2606 OID 17252)
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3522 (class 2606 OID 17257)
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3529 (class 2606 OID 17292)
-- Name: strapi_history_versions strapi_history_versions_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3490 (class 2606 OID 17097)
-- Name: strapi_release_actions strapi_release_actions_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3535 (class 2606 OID 17322)
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_fk FOREIGN KEY (release_action_id) REFERENCES acstrapi.strapi_release_actions(id) ON DELETE CASCADE;


--
-- TOC entry 3536 (class 2606 OID 17327)
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_ifk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_ifk FOREIGN KEY (release_id) REFERENCES acstrapi.strapi_releases(id) ON DELETE CASCADE;


--
-- TOC entry 3491 (class 2606 OID 17102)
-- Name: strapi_release_actions strapi_release_actions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3488 (class 2606 OID 17087)
-- Name: strapi_releases strapi_releases_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3489 (class 2606 OID 17092)
-- Name: strapi_releases strapi_releases_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3527 (class 2606 OID 17282)
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3557 (class 2606 OID 17432)
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES acstrapi.strapi_transfer_token_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 3558 (class 2606 OID 17437)
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_ifk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_ifk FOREIGN KEY (transfer_token_id) REFERENCES acstrapi.strapi_transfer_tokens(id) ON DELETE CASCADE;


--
-- TOC entry 3528 (class 2606 OID 17287)
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3525 (class 2606 OID 17272)
-- Name: strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3526 (class 2606 OID 17277)
-- Name: strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3492 (class 2606 OID 17107)
-- Name: strapi_workflows strapi_workflows_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows
    ADD CONSTRAINT strapi_workflows_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3537 (class 2606 OID 17332)
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_fk FOREIGN KEY (workflow_id) REFERENCES acstrapi.strapi_workflows(id) ON DELETE CASCADE;


--
-- TOC entry 3538 (class 2606 OID 17337)
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_ifk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_ifk FOREIGN KEY (workflow_stage_id) REFERENCES acstrapi.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- TOC entry 3494 (class 2606 OID 17117)
-- Name: strapi_workflows_stages strapi_workflows_stages_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3541 (class 2606 OID 17352)
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES acstrapi.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- TOC entry 3542 (class 2606 OID 17357)
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_ifk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_ifk FOREIGN KEY (permission_id) REFERENCES acstrapi.admin_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 3495 (class 2606 OID 17122)
-- Name: strapi_workflows_stages strapi_workflows_stages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3539 (class 2606 OID 17342)
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES acstrapi.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- TOC entry 3540 (class 2606 OID 17347)
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_ifk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_ifk FOREIGN KEY (workflow_id) REFERENCES acstrapi.strapi_workflows(id) ON DELETE CASCADE;


--
-- TOC entry 3493 (class 2606 OID 17112)
-- Name: strapi_workflows strapi_workflows_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows
    ADD CONSTRAINT strapi_workflows_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3496 (class 2606 OID 17127)
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3543 (class 2606 OID 17362)
-- Name: up_permissions_role_lnk up_permissions_role_lnk_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES acstrapi.up_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 3544 (class 2606 OID 17367)
-- Name: up_permissions_role_lnk up_permissions_role_lnk_ifk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES acstrapi.up_roles(id) ON DELETE CASCADE;


--
-- TOC entry 3497 (class 2606 OID 17132)
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3498 (class 2606 OID 17137)
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3499 (class 2606 OID 17142)
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3500 (class 2606 OID 17147)
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3545 (class 2606 OID 17372)
-- Name: up_users_role_lnk up_users_role_lnk_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_fk FOREIGN KEY (user_id) REFERENCES acstrapi.up_users(id) ON DELETE CASCADE;


--
-- TOC entry 3546 (class 2606 OID 17377)
-- Name: up_users_role_lnk up_users_role_lnk_ifk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES acstrapi.up_roles(id) ON DELETE CASCADE;


--
-- TOC entry 3501 (class 2606 OID 17152)
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3484 (class 2606 OID 17067)
-- Name: upload_folders upload_folders_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3533 (class 2606 OID 17312)
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_fk FOREIGN KEY (folder_id) REFERENCES acstrapi.upload_folders(id) ON DELETE CASCADE;


--
-- TOC entry 3534 (class 2606 OID 17317)
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_ifk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_ifk FOREIGN KEY (inv_folder_id) REFERENCES acstrapi.upload_folders(id) ON DELETE CASCADE;


--
-- TOC entry 3485 (class 2606 OID 17072)
-- Name: upload_folders upload_folders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


-- Completed on 2025-01-15 20:55:23 AEDT

--
-- PostgreSQL database dump complete
--

--
-- Database "acstrapi2" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.0
-- Dumped by pg_dump version 17.2

-- Started on 2025-01-15 20:55:23 AEDT

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

--
-- TOC entry 3788 (class 1262 OID 24639)
-- Name: acstrapi2; Type: DATABASE; Schema: -; Owner: acstrapi
--

CREATE DATABASE acstrapi2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE acstrapi2 OWNER TO acstrapi;

\connect acstrapi2

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

--
-- TOC entry 8 (class 2615 OID 24640)
-- Name: acstrapi; Type: SCHEMA; Schema: -; Owner: acstrapi
--

CREATE SCHEMA acstrapi;


ALTER SCHEMA acstrapi OWNER TO acstrapi;

--
-- TOC entry 3789 (class 0 OID 0)
-- Dependencies: 8
-- Name: SCHEMA acstrapi; Type: COMMENT; Schema: -; Owner: acstrapi
--

COMMENT ON SCHEMA acstrapi IS 'standard public schema';


--
-- TOC entry 6 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: acstrapi
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO acstrapi;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 203 (class 1259 OID 24641)
-- Name: abouts; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.abouts (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.abouts OWNER TO acstrapi;

--
-- TOC entry 204 (class 1259 OID 24647)
-- Name: abouts_cmps; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.abouts_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE acstrapi.abouts_cmps OWNER TO acstrapi;

--
-- TOC entry 205 (class 1259 OID 24653)
-- Name: abouts_cmps_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.abouts_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.abouts_cmps_id_seq OWNER TO acstrapi;

--
-- TOC entry 3791 (class 0 OID 0)
-- Dependencies: 205
-- Name: abouts_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.abouts_cmps_id_seq OWNED BY acstrapi.abouts_cmps.id;


--
-- TOC entry 206 (class 1259 OID 24655)
-- Name: abouts_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.abouts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.abouts_id_seq OWNER TO acstrapi;

--
-- TOC entry 3792 (class 0 OID 0)
-- Dependencies: 206
-- Name: abouts_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.abouts_id_seq OWNED BY acstrapi.abouts.id;


--
-- TOC entry 207 (class 1259 OID 24657)
-- Name: admin_permissions; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.admin_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    action_parameters jsonb,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.admin_permissions OWNER TO acstrapi;

--
-- TOC entry 208 (class 1259 OID 24663)
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.admin_permissions_id_seq OWNER TO acstrapi;

--
-- TOC entry 3793 (class 0 OID 0)
-- Dependencies: 208
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.admin_permissions_id_seq OWNED BY acstrapi.admin_permissions.id;


--
-- TOC entry 209 (class 1259 OID 24665)
-- Name: admin_permissions_role_lnk; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.admin_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);


ALTER TABLE acstrapi.admin_permissions_role_lnk OWNER TO acstrapi;

--
-- TOC entry 210 (class 1259 OID 24668)
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.admin_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.admin_permissions_role_lnk_id_seq OWNER TO acstrapi;

--
-- TOC entry 3794 (class 0 OID 0)
-- Dependencies: 210
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.admin_permissions_role_lnk_id_seq OWNED BY acstrapi.admin_permissions_role_lnk.id;


--
-- TOC entry 211 (class 1259 OID 24670)
-- Name: admin_roles; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.admin_roles (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.admin_roles OWNER TO acstrapi;

--
-- TOC entry 212 (class 1259 OID 24676)
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.admin_roles_id_seq OWNER TO acstrapi;

--
-- TOC entry 3795 (class 0 OID 0)
-- Dependencies: 212
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.admin_roles_id_seq OWNED BY acstrapi.admin_roles.id;


--
-- TOC entry 213 (class 1259 OID 24678)
-- Name: admin_users; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.admin_users (
    id integer NOT NULL,
    document_id character varying(255),
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.admin_users OWNER TO acstrapi;

--
-- TOC entry 214 (class 1259 OID 24684)
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.admin_users_id_seq OWNER TO acstrapi;

--
-- TOC entry 3796 (class 0 OID 0)
-- Dependencies: 214
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.admin_users_id_seq OWNED BY acstrapi.admin_users.id;


--
-- TOC entry 215 (class 1259 OID 24686)
-- Name: admin_users_roles_lnk; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.admin_users_roles_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_ord double precision,
    user_ord double precision
);


ALTER TABLE acstrapi.admin_users_roles_lnk OWNER TO acstrapi;

--
-- TOC entry 216 (class 1259 OID 24689)
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.admin_users_roles_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.admin_users_roles_lnk_id_seq OWNER TO acstrapi;

--
-- TOC entry 3797 (class 0 OID 0)
-- Dependencies: 216
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.admin_users_roles_lnk_id_seq OWNED BY acstrapi.admin_users_roles_lnk.id;


--
-- TOC entry 217 (class 1259 OID 24691)
-- Name: articles; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.articles (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    description text,
    slug character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.articles OWNER TO acstrapi;

--
-- TOC entry 218 (class 1259 OID 24697)
-- Name: articles_author_lnk; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.articles_author_lnk (
    id integer NOT NULL,
    article_id integer,
    author_id integer,
    article_ord double precision
);


ALTER TABLE acstrapi.articles_author_lnk OWNER TO acstrapi;

--
-- TOC entry 219 (class 1259 OID 24700)
-- Name: articles_author_lnk_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.articles_author_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.articles_author_lnk_id_seq OWNER TO acstrapi;

--
-- TOC entry 3798 (class 0 OID 0)
-- Dependencies: 219
-- Name: articles_author_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.articles_author_lnk_id_seq OWNED BY acstrapi.articles_author_lnk.id;


--
-- TOC entry 220 (class 1259 OID 24702)
-- Name: articles_category_lnk; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.articles_category_lnk (
    id integer NOT NULL,
    article_id integer,
    category_id integer,
    article_ord double precision
);


ALTER TABLE acstrapi.articles_category_lnk OWNER TO acstrapi;

--
-- TOC entry 221 (class 1259 OID 24705)
-- Name: articles_category_lnk_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.articles_category_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.articles_category_lnk_id_seq OWNER TO acstrapi;

--
-- TOC entry 3799 (class 0 OID 0)
-- Dependencies: 221
-- Name: articles_category_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.articles_category_lnk_id_seq OWNED BY acstrapi.articles_category_lnk.id;


--
-- TOC entry 222 (class 1259 OID 24707)
-- Name: articles_cmps; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.articles_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE acstrapi.articles_cmps OWNER TO acstrapi;

--
-- TOC entry 223 (class 1259 OID 24713)
-- Name: articles_cmps_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.articles_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.articles_cmps_id_seq OWNER TO acstrapi;

--
-- TOC entry 3800 (class 0 OID 0)
-- Dependencies: 223
-- Name: articles_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.articles_cmps_id_seq OWNED BY acstrapi.articles_cmps.id;


--
-- TOC entry 224 (class 1259 OID 24715)
-- Name: articles_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.articles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.articles_id_seq OWNER TO acstrapi;

--
-- TOC entry 3801 (class 0 OID 0)
-- Dependencies: 224
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.articles_id_seq OWNED BY acstrapi.articles.id;


--
-- TOC entry 225 (class 1259 OID 24717)
-- Name: authors; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.authors (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    email character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.authors OWNER TO acstrapi;

--
-- TOC entry 226 (class 1259 OID 24723)
-- Name: authors_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.authors_id_seq OWNER TO acstrapi;

--
-- TOC entry 3802 (class 0 OID 0)
-- Dependencies: 226
-- Name: authors_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.authors_id_seq OWNED BY acstrapi.authors.id;


--
-- TOC entry 227 (class 1259 OID 24725)
-- Name: categories; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.categories (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    slug character varying(255),
    description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.categories OWNER TO acstrapi;

--
-- TOC entry 228 (class 1259 OID 24731)
-- Name: categories_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.categories_id_seq OWNER TO acstrapi;

--
-- TOC entry 3803 (class 0 OID 0)
-- Dependencies: 228
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.categories_id_seq OWNED BY acstrapi.categories.id;


--
-- TOC entry 229 (class 1259 OID 24733)
-- Name: components_shared_media; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.components_shared_media (
    id integer NOT NULL
);


ALTER TABLE acstrapi.components_shared_media OWNER TO acstrapi;

--
-- TOC entry 230 (class 1259 OID 24736)
-- Name: components_shared_media_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.components_shared_media_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.components_shared_media_id_seq OWNER TO acstrapi;

--
-- TOC entry 3804 (class 0 OID 0)
-- Dependencies: 230
-- Name: components_shared_media_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.components_shared_media_id_seq OWNED BY acstrapi.components_shared_media.id;


--
-- TOC entry 231 (class 1259 OID 24738)
-- Name: components_shared_quotes; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.components_shared_quotes (
    id integer NOT NULL,
    title character varying(255),
    body text
);


ALTER TABLE acstrapi.components_shared_quotes OWNER TO acstrapi;

--
-- TOC entry 232 (class 1259 OID 24744)
-- Name: components_shared_quotes_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.components_shared_quotes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.components_shared_quotes_id_seq OWNER TO acstrapi;

--
-- TOC entry 3805 (class 0 OID 0)
-- Dependencies: 232
-- Name: components_shared_quotes_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.components_shared_quotes_id_seq OWNED BY acstrapi.components_shared_quotes.id;


--
-- TOC entry 233 (class 1259 OID 24746)
-- Name: components_shared_rich_texts; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.components_shared_rich_texts (
    id integer NOT NULL,
    body text
);


ALTER TABLE acstrapi.components_shared_rich_texts OWNER TO acstrapi;

--
-- TOC entry 234 (class 1259 OID 24752)
-- Name: components_shared_rich_texts_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.components_shared_rich_texts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.components_shared_rich_texts_id_seq OWNER TO acstrapi;

--
-- TOC entry 3806 (class 0 OID 0)
-- Dependencies: 234
-- Name: components_shared_rich_texts_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.components_shared_rich_texts_id_seq OWNED BY acstrapi.components_shared_rich_texts.id;


--
-- TOC entry 235 (class 1259 OID 24754)
-- Name: components_shared_seos; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.components_shared_seos (
    id integer NOT NULL,
    meta_title character varying(255),
    meta_description text
);


ALTER TABLE acstrapi.components_shared_seos OWNER TO acstrapi;

--
-- TOC entry 236 (class 1259 OID 24760)
-- Name: components_shared_seos_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.components_shared_seos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.components_shared_seos_id_seq OWNER TO acstrapi;

--
-- TOC entry 3807 (class 0 OID 0)
-- Dependencies: 236
-- Name: components_shared_seos_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.components_shared_seos_id_seq OWNED BY acstrapi.components_shared_seos.id;


--
-- TOC entry 237 (class 1259 OID 24762)
-- Name: components_shared_sliders; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.components_shared_sliders (
    id integer NOT NULL
);


ALTER TABLE acstrapi.components_shared_sliders OWNER TO acstrapi;

--
-- TOC entry 238 (class 1259 OID 24765)
-- Name: components_shared_sliders_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.components_shared_sliders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.components_shared_sliders_id_seq OWNER TO acstrapi;

--
-- TOC entry 3808 (class 0 OID 0)
-- Dependencies: 238
-- Name: components_shared_sliders_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.components_shared_sliders_id_seq OWNED BY acstrapi.components_shared_sliders.id;


--
-- TOC entry 239 (class 1259 OID 24767)
-- Name: files; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.files (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.files OWNER TO acstrapi;

--
-- TOC entry 240 (class 1259 OID 24773)
-- Name: files_folder_lnk; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.files_folder_lnk (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_ord double precision
);


ALTER TABLE acstrapi.files_folder_lnk OWNER TO acstrapi;

--
-- TOC entry 241 (class 1259 OID 24776)
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.files_folder_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.files_folder_lnk_id_seq OWNER TO acstrapi;

--
-- TOC entry 3809 (class 0 OID 0)
-- Dependencies: 241
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.files_folder_lnk_id_seq OWNED BY acstrapi.files_folder_lnk.id;


--
-- TOC entry 242 (class 1259 OID 24778)
-- Name: files_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.files_id_seq OWNER TO acstrapi;

--
-- TOC entry 3810 (class 0 OID 0)
-- Dependencies: 242
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.files_id_seq OWNED BY acstrapi.files.id;


--
-- TOC entry 243 (class 1259 OID 24780)
-- Name: files_related_mph; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.files_related_mph (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE acstrapi.files_related_mph OWNER TO acstrapi;

--
-- TOC entry 244 (class 1259 OID 24786)
-- Name: files_related_mph_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.files_related_mph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.files_related_mph_id_seq OWNER TO acstrapi;

--
-- TOC entry 3811 (class 0 OID 0)
-- Dependencies: 244
-- Name: files_related_mph_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.files_related_mph_id_seq OWNED BY acstrapi.files_related_mph.id;


--
-- TOC entry 245 (class 1259 OID 24788)
-- Name: globals; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.globals (
    id integer NOT NULL,
    document_id character varying(255),
    site_name character varying(255),
    site_description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.globals OWNER TO acstrapi;

--
-- TOC entry 246 (class 1259 OID 24794)
-- Name: globals_cmps; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.globals_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE acstrapi.globals_cmps OWNER TO acstrapi;

--
-- TOC entry 247 (class 1259 OID 24800)
-- Name: globals_cmps_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.globals_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.globals_cmps_id_seq OWNER TO acstrapi;

--
-- TOC entry 3812 (class 0 OID 0)
-- Dependencies: 247
-- Name: globals_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.globals_cmps_id_seq OWNED BY acstrapi.globals_cmps.id;


--
-- TOC entry 248 (class 1259 OID 24802)
-- Name: globals_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.globals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.globals_id_seq OWNER TO acstrapi;

--
-- TOC entry 3813 (class 0 OID 0)
-- Dependencies: 248
-- Name: globals_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.globals_id_seq OWNED BY acstrapi.globals.id;


--
-- TOC entry 249 (class 1259 OID 24804)
-- Name: i18n_locale; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.i18n_locale (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.i18n_locale OWNER TO acstrapi;

--
-- TOC entry 250 (class 1259 OID 24810)
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.i18n_locale_id_seq OWNER TO acstrapi;

--
-- TOC entry 3814 (class 0 OID 0)
-- Dependencies: 250
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.i18n_locale_id_seq OWNED BY acstrapi.i18n_locale.id;


--
-- TOC entry 251 (class 1259 OID 24812)
-- Name: jobs; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.jobs (
    id integer NOT NULL,
    document_id character varying(255),
    type character varying(255),
    title character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.jobs OWNER TO acstrapi;

--
-- TOC entry 308 (class 1259 OID 25733)
-- Name: jobs_createdby_lnk; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.jobs_createdby_lnk (
    id integer NOT NULL,
    job_id integer,
    user_id integer
);


ALTER TABLE acstrapi.jobs_createdby_lnk OWNER TO acstrapi;

--
-- TOC entry 307 (class 1259 OID 25731)
-- Name: jobs_createdby_lnk_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.jobs_createdby_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.jobs_createdby_lnk_id_seq OWNER TO acstrapi;

--
-- TOC entry 3815 (class 0 OID 0)
-- Dependencies: 307
-- Name: jobs_createdby_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.jobs_createdby_lnk_id_seq OWNED BY acstrapi.jobs_createdby_lnk.id;


--
-- TOC entry 252 (class 1259 OID 24818)
-- Name: jobs_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.jobs_id_seq OWNER TO acstrapi;

--
-- TOC entry 3816 (class 0 OID 0)
-- Dependencies: 252
-- Name: jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.jobs_id_seq OWNED BY acstrapi.jobs.id;


--
-- TOC entry 253 (class 1259 OID 24820)
-- Name: strapi_api_token_permissions; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.strapi_api_token_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.strapi_api_token_permissions OWNER TO acstrapi;

--
-- TOC entry 254 (class 1259 OID 24826)
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.strapi_api_token_permissions_id_seq OWNER TO acstrapi;

--
-- TOC entry 3817 (class 0 OID 0)
-- Dependencies: 254
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.strapi_api_token_permissions_id_seq OWNED BY acstrapi.strapi_api_token_permissions.id;


--
-- TOC entry 255 (class 1259 OID 24828)
-- Name: strapi_api_token_permissions_token_lnk; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.strapi_api_token_permissions_token_lnk (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_ord double precision
);


ALTER TABLE acstrapi.strapi_api_token_permissions_token_lnk OWNER TO acstrapi;

--
-- TOC entry 256 (class 1259 OID 24831)
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.strapi_api_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.strapi_api_token_permissions_token_lnk_id_seq OWNER TO acstrapi;

--
-- TOC entry 3818 (class 0 OID 0)
-- Dependencies: 256
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.strapi_api_token_permissions_token_lnk_id_seq OWNED BY acstrapi.strapi_api_token_permissions_token_lnk.id;


--
-- TOC entry 257 (class 1259 OID 24833)
-- Name: strapi_api_tokens; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.strapi_api_tokens (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.strapi_api_tokens OWNER TO acstrapi;

--
-- TOC entry 258 (class 1259 OID 24839)
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.strapi_api_tokens_id_seq OWNER TO acstrapi;

--
-- TOC entry 3819 (class 0 OID 0)
-- Dependencies: 258
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.strapi_api_tokens_id_seq OWNED BY acstrapi.strapi_api_tokens.id;


--
-- TOC entry 259 (class 1259 OID 24841)
-- Name: strapi_core_store_settings; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE acstrapi.strapi_core_store_settings OWNER TO acstrapi;

--
-- TOC entry 260 (class 1259 OID 24847)
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.strapi_core_store_settings_id_seq OWNER TO acstrapi;

--
-- TOC entry 3820 (class 0 OID 0)
-- Dependencies: 260
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.strapi_core_store_settings_id_seq OWNED BY acstrapi.strapi_core_store_settings.id;


--
-- TOC entry 261 (class 1259 OID 24849)
-- Name: strapi_database_schema; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE acstrapi.strapi_database_schema OWNER TO acstrapi;

--
-- TOC entry 262 (class 1259 OID 24855)
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.strapi_database_schema_id_seq OWNER TO acstrapi;

--
-- TOC entry 3821 (class 0 OID 0)
-- Dependencies: 262
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.strapi_database_schema_id_seq OWNED BY acstrapi.strapi_database_schema.id;


--
-- TOC entry 263 (class 1259 OID 24857)
-- Name: strapi_history_versions; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.strapi_history_versions (
    id integer NOT NULL,
    content_type character varying(255) NOT NULL,
    related_document_id character varying(255),
    locale character varying(255),
    status character varying(255),
    data jsonb,
    schema jsonb,
    created_at timestamp(6) without time zone,
    created_by_id integer
);


ALTER TABLE acstrapi.strapi_history_versions OWNER TO acstrapi;

--
-- TOC entry 264 (class 1259 OID 24863)
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.strapi_history_versions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.strapi_history_versions_id_seq OWNER TO acstrapi;

--
-- TOC entry 3822 (class 0 OID 0)
-- Dependencies: 264
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.strapi_history_versions_id_seq OWNED BY acstrapi.strapi_history_versions.id;


--
-- TOC entry 265 (class 1259 OID 24865)
-- Name: strapi_migrations; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE acstrapi.strapi_migrations OWNER TO acstrapi;

--
-- TOC entry 266 (class 1259 OID 24868)
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.strapi_migrations_id_seq OWNER TO acstrapi;

--
-- TOC entry 3823 (class 0 OID 0)
-- Dependencies: 266
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.strapi_migrations_id_seq OWNED BY acstrapi.strapi_migrations.id;


--
-- TOC entry 267 (class 1259 OID 24870)
-- Name: strapi_migrations_internal; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.strapi_migrations_internal (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE acstrapi.strapi_migrations_internal OWNER TO acstrapi;

--
-- TOC entry 268 (class 1259 OID 24873)
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.strapi_migrations_internal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.strapi_migrations_internal_id_seq OWNER TO acstrapi;

--
-- TOC entry 3824 (class 0 OID 0)
-- Dependencies: 268
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.strapi_migrations_internal_id_seq OWNED BY acstrapi.strapi_migrations_internal.id;


--
-- TOC entry 269 (class 1259 OID 24875)
-- Name: strapi_release_actions; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.strapi_release_actions (
    id integer NOT NULL,
    document_id character varying(255),
    type character varying(255),
    content_type character varying(255),
    entry_document_id character varying(255),
    locale character varying(255),
    is_entry_valid boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE acstrapi.strapi_release_actions OWNER TO acstrapi;

--
-- TOC entry 270 (class 1259 OID 24881)
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.strapi_release_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.strapi_release_actions_id_seq OWNER TO acstrapi;

--
-- TOC entry 3825 (class 0 OID 0)
-- Dependencies: 270
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.strapi_release_actions_id_seq OWNED BY acstrapi.strapi_release_actions.id;


--
-- TOC entry 271 (class 1259 OID 24883)
-- Name: strapi_release_actions_release_lnk; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.strapi_release_actions_release_lnk (
    id integer NOT NULL,
    release_action_id integer,
    release_id integer,
    release_action_ord double precision
);


ALTER TABLE acstrapi.strapi_release_actions_release_lnk OWNER TO acstrapi;

--
-- TOC entry 272 (class 1259 OID 24886)
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.strapi_release_actions_release_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.strapi_release_actions_release_lnk_id_seq OWNER TO acstrapi;

--
-- TOC entry 3826 (class 0 OID 0)
-- Dependencies: 272
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.strapi_release_actions_release_lnk_id_seq OWNED BY acstrapi.strapi_release_actions_release_lnk.id;


--
-- TOC entry 273 (class 1259 OID 24888)
-- Name: strapi_releases; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.strapi_releases (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    released_at timestamp(6) without time zone,
    scheduled_at timestamp(6) without time zone,
    timezone character varying(255),
    status character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.strapi_releases OWNER TO acstrapi;

--
-- TOC entry 274 (class 1259 OID 24894)
-- Name: strapi_releases_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.strapi_releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.strapi_releases_id_seq OWNER TO acstrapi;

--
-- TOC entry 3827 (class 0 OID 0)
-- Dependencies: 274
-- Name: strapi_releases_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.strapi_releases_id_seq OWNED BY acstrapi.strapi_releases.id;


--
-- TOC entry 275 (class 1259 OID 24896)
-- Name: strapi_transfer_token_permissions; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.strapi_transfer_token_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.strapi_transfer_token_permissions OWNER TO acstrapi;

--
-- TOC entry 276 (class 1259 OID 24902)
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.strapi_transfer_token_permissions_id_seq OWNER TO acstrapi;

--
-- TOC entry 3828 (class 0 OID 0)
-- Dependencies: 276
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.strapi_transfer_token_permissions_id_seq OWNED BY acstrapi.strapi_transfer_token_permissions.id;


--
-- TOC entry 277 (class 1259 OID 24904)
-- Name: strapi_transfer_token_permissions_token_lnk; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.strapi_transfer_token_permissions_token_lnk (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_ord double precision
);


ALTER TABLE acstrapi.strapi_transfer_token_permissions_token_lnk OWNER TO acstrapi;

--
-- TOC entry 278 (class 1259 OID 24907)
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.strapi_transfer_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.strapi_transfer_token_permissions_token_lnk_id_seq OWNER TO acstrapi;

--
-- TOC entry 3829 (class 0 OID 0)
-- Dependencies: 278
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.strapi_transfer_token_permissions_token_lnk_id_seq OWNED BY acstrapi.strapi_transfer_token_permissions_token_lnk.id;


--
-- TOC entry 279 (class 1259 OID 24909)
-- Name: strapi_transfer_tokens; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.strapi_transfer_tokens (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.strapi_transfer_tokens OWNER TO acstrapi;

--
-- TOC entry 280 (class 1259 OID 24915)
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.strapi_transfer_tokens_id_seq OWNER TO acstrapi;

--
-- TOC entry 3830 (class 0 OID 0)
-- Dependencies: 280
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.strapi_transfer_tokens_id_seq OWNED BY acstrapi.strapi_transfer_tokens.id;


--
-- TOC entry 281 (class 1259 OID 24917)
-- Name: strapi_webhooks; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE acstrapi.strapi_webhooks OWNER TO acstrapi;

--
-- TOC entry 282 (class 1259 OID 24923)
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.strapi_webhooks_id_seq OWNER TO acstrapi;

--
-- TOC entry 3831 (class 0 OID 0)
-- Dependencies: 282
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.strapi_webhooks_id_seq OWNED BY acstrapi.strapi_webhooks.id;


--
-- TOC entry 283 (class 1259 OID 24925)
-- Name: strapi_workflows; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.strapi_workflows (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    content_types jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.strapi_workflows OWNER TO acstrapi;

--
-- TOC entry 284 (class 1259 OID 24931)
-- Name: strapi_workflows_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.strapi_workflows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.strapi_workflows_id_seq OWNER TO acstrapi;

--
-- TOC entry 3832 (class 0 OID 0)
-- Dependencies: 284
-- Name: strapi_workflows_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.strapi_workflows_id_seq OWNED BY acstrapi.strapi_workflows.id;


--
-- TOC entry 285 (class 1259 OID 24933)
-- Name: strapi_workflows_stage_required_to_publish_lnk; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.strapi_workflows_stage_required_to_publish_lnk (
    id integer NOT NULL,
    workflow_id integer,
    workflow_stage_id integer
);


ALTER TABLE acstrapi.strapi_workflows_stage_required_to_publish_lnk OWNER TO acstrapi;

--
-- TOC entry 286 (class 1259 OID 24936)
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.strapi_workflows_stage_required_to_publish_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.strapi_workflows_stage_required_to_publish_lnk_id_seq OWNER TO acstrapi;

--
-- TOC entry 3833 (class 0 OID 0)
-- Dependencies: 286
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.strapi_workflows_stage_required_to_publish_lnk_id_seq OWNED BY acstrapi.strapi_workflows_stage_required_to_publish_lnk.id;


--
-- TOC entry 287 (class 1259 OID 24938)
-- Name: strapi_workflows_stages; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.strapi_workflows_stages (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    color character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.strapi_workflows_stages OWNER TO acstrapi;

--
-- TOC entry 288 (class 1259 OID 24944)
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.strapi_workflows_stages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.strapi_workflows_stages_id_seq OWNER TO acstrapi;

--
-- TOC entry 3834 (class 0 OID 0)
-- Dependencies: 288
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.strapi_workflows_stages_id_seq OWNED BY acstrapi.strapi_workflows_stages.id;


--
-- TOC entry 289 (class 1259 OID 24946)
-- Name: strapi_workflows_stages_permissions_lnk; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.strapi_workflows_stages_permissions_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    permission_id integer,
    permission_ord double precision
);


ALTER TABLE acstrapi.strapi_workflows_stages_permissions_lnk OWNER TO acstrapi;

--
-- TOC entry 290 (class 1259 OID 24949)
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.strapi_workflows_stages_permissions_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.strapi_workflows_stages_permissions_lnk_id_seq OWNER TO acstrapi;

--
-- TOC entry 3835 (class 0 OID 0)
-- Dependencies: 290
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.strapi_workflows_stages_permissions_lnk_id_seq OWNED BY acstrapi.strapi_workflows_stages_permissions_lnk.id;


--
-- TOC entry 291 (class 1259 OID 24951)
-- Name: strapi_workflows_stages_workflow_lnk; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.strapi_workflows_stages_workflow_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    workflow_id integer,
    workflow_stage_ord double precision
);


ALTER TABLE acstrapi.strapi_workflows_stages_workflow_lnk OWNER TO acstrapi;

--
-- TOC entry 292 (class 1259 OID 24954)
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.strapi_workflows_stages_workflow_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.strapi_workflows_stages_workflow_lnk_id_seq OWNER TO acstrapi;

--
-- TOC entry 3836 (class 0 OID 0)
-- Dependencies: 292
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.strapi_workflows_stages_workflow_lnk_id_seq OWNED BY acstrapi.strapi_workflows_stages_workflow_lnk.id;


--
-- TOC entry 293 (class 1259 OID 24956)
-- Name: up_permissions; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.up_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.up_permissions OWNER TO acstrapi;

--
-- TOC entry 294 (class 1259 OID 24962)
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.up_permissions_id_seq OWNER TO acstrapi;

--
-- TOC entry 3837 (class 0 OID 0)
-- Dependencies: 294
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.up_permissions_id_seq OWNED BY acstrapi.up_permissions.id;


--
-- TOC entry 295 (class 1259 OID 24964)
-- Name: up_permissions_role_lnk; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.up_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);


ALTER TABLE acstrapi.up_permissions_role_lnk OWNER TO acstrapi;

--
-- TOC entry 296 (class 1259 OID 24967)
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.up_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.up_permissions_role_lnk_id_seq OWNER TO acstrapi;

--
-- TOC entry 3838 (class 0 OID 0)
-- Dependencies: 296
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.up_permissions_role_lnk_id_seq OWNED BY acstrapi.up_permissions_role_lnk.id;


--
-- TOC entry 297 (class 1259 OID 24969)
-- Name: up_roles; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.up_roles (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.up_roles OWNER TO acstrapi;

--
-- TOC entry 298 (class 1259 OID 24975)
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.up_roles_id_seq OWNER TO acstrapi;

--
-- TOC entry 3839 (class 0 OID 0)
-- Dependencies: 298
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.up_roles_id_seq OWNED BY acstrapi.up_roles.id;


--
-- TOC entry 299 (class 1259 OID 24977)
-- Name: up_users; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.up_users (
    id integer NOT NULL,
    document_id character varying(255),
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.up_users OWNER TO acstrapi;

--
-- TOC entry 300 (class 1259 OID 24983)
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.up_users_id_seq OWNER TO acstrapi;

--
-- TOC entry 3840 (class 0 OID 0)
-- Dependencies: 300
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.up_users_id_seq OWNED BY acstrapi.up_users.id;


--
-- TOC entry 301 (class 1259 OID 24985)
-- Name: up_users_role_lnk; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.up_users_role_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_ord double precision
);


ALTER TABLE acstrapi.up_users_role_lnk OWNER TO acstrapi;

--
-- TOC entry 302 (class 1259 OID 24988)
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.up_users_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.up_users_role_lnk_id_seq OWNER TO acstrapi;

--
-- TOC entry 3841 (class 0 OID 0)
-- Dependencies: 302
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.up_users_role_lnk_id_seq OWNED BY acstrapi.up_users_role_lnk.id;


--
-- TOC entry 303 (class 1259 OID 24990)
-- Name: upload_folders; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.upload_folders (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE acstrapi.upload_folders OWNER TO acstrapi;

--
-- TOC entry 304 (class 1259 OID 24996)
-- Name: upload_folders_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.upload_folders_id_seq OWNER TO acstrapi;

--
-- TOC entry 3842 (class 0 OID 0)
-- Dependencies: 304
-- Name: upload_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.upload_folders_id_seq OWNED BY acstrapi.upload_folders.id;


--
-- TOC entry 305 (class 1259 OID 24998)
-- Name: upload_folders_parent_lnk; Type: TABLE; Schema: acstrapi; Owner: acstrapi
--

CREATE TABLE acstrapi.upload_folders_parent_lnk (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_ord double precision
);


ALTER TABLE acstrapi.upload_folders_parent_lnk OWNER TO acstrapi;

--
-- TOC entry 306 (class 1259 OID 25001)
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE; Schema: acstrapi; Owner: acstrapi
--

CREATE SEQUENCE acstrapi.upload_folders_parent_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE acstrapi.upload_folders_parent_lnk_id_seq OWNER TO acstrapi;

--
-- TOC entry 3843 (class 0 OID 0)
-- Dependencies: 306
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: acstrapi; Owner: acstrapi
--

ALTER SEQUENCE acstrapi.upload_folders_parent_lnk_id_seq OWNED BY acstrapi.upload_folders_parent_lnk.id;


--
-- TOC entry 3139 (class 2604 OID 25003)
-- Name: abouts id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.abouts ALTER COLUMN id SET DEFAULT nextval('acstrapi.abouts_id_seq'::regclass);


--
-- TOC entry 3140 (class 2604 OID 25004)
-- Name: abouts_cmps id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.abouts_cmps ALTER COLUMN id SET DEFAULT nextval('acstrapi.abouts_cmps_id_seq'::regclass);


--
-- TOC entry 3141 (class 2604 OID 25005)
-- Name: admin_permissions id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_permissions ALTER COLUMN id SET DEFAULT nextval('acstrapi.admin_permissions_id_seq'::regclass);


--
-- TOC entry 3142 (class 2604 OID 25006)
-- Name: admin_permissions_role_lnk id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.admin_permissions_role_lnk_id_seq'::regclass);


--
-- TOC entry 3143 (class 2604 OID 25007)
-- Name: admin_roles id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_roles ALTER COLUMN id SET DEFAULT nextval('acstrapi.admin_roles_id_seq'::regclass);


--
-- TOC entry 3144 (class 2604 OID 25008)
-- Name: admin_users id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_users ALTER COLUMN id SET DEFAULT nextval('acstrapi.admin_users_id_seq'::regclass);


--
-- TOC entry 3145 (class 2604 OID 25009)
-- Name: admin_users_roles_lnk id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_users_roles_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.admin_users_roles_lnk_id_seq'::regclass);


--
-- TOC entry 3146 (class 2604 OID 25010)
-- Name: articles id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.articles ALTER COLUMN id SET DEFAULT nextval('acstrapi.articles_id_seq'::regclass);


--
-- TOC entry 3147 (class 2604 OID 25011)
-- Name: articles_author_lnk id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.articles_author_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.articles_author_lnk_id_seq'::regclass);


--
-- TOC entry 3148 (class 2604 OID 25012)
-- Name: articles_category_lnk id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.articles_category_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.articles_category_lnk_id_seq'::regclass);


--
-- TOC entry 3149 (class 2604 OID 25013)
-- Name: articles_cmps id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.articles_cmps ALTER COLUMN id SET DEFAULT nextval('acstrapi.articles_cmps_id_seq'::regclass);


--
-- TOC entry 3150 (class 2604 OID 25014)
-- Name: authors id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.authors ALTER COLUMN id SET DEFAULT nextval('acstrapi.authors_id_seq'::regclass);


--
-- TOC entry 3151 (class 2604 OID 25015)
-- Name: categories id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.categories ALTER COLUMN id SET DEFAULT nextval('acstrapi.categories_id_seq'::regclass);


--
-- TOC entry 3152 (class 2604 OID 25016)
-- Name: components_shared_media id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.components_shared_media ALTER COLUMN id SET DEFAULT nextval('acstrapi.components_shared_media_id_seq'::regclass);


--
-- TOC entry 3153 (class 2604 OID 25017)
-- Name: components_shared_quotes id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.components_shared_quotes ALTER COLUMN id SET DEFAULT nextval('acstrapi.components_shared_quotes_id_seq'::regclass);


--
-- TOC entry 3154 (class 2604 OID 25018)
-- Name: components_shared_rich_texts id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.components_shared_rich_texts ALTER COLUMN id SET DEFAULT nextval('acstrapi.components_shared_rich_texts_id_seq'::regclass);


--
-- TOC entry 3155 (class 2604 OID 25019)
-- Name: components_shared_seos id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.components_shared_seos ALTER COLUMN id SET DEFAULT nextval('acstrapi.components_shared_seos_id_seq'::regclass);


--
-- TOC entry 3156 (class 2604 OID 25020)
-- Name: components_shared_sliders id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.components_shared_sliders ALTER COLUMN id SET DEFAULT nextval('acstrapi.components_shared_sliders_id_seq'::regclass);


--
-- TOC entry 3157 (class 2604 OID 25021)
-- Name: files id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.files ALTER COLUMN id SET DEFAULT nextval('acstrapi.files_id_seq'::regclass);


--
-- TOC entry 3158 (class 2604 OID 25022)
-- Name: files_folder_lnk id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.files_folder_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.files_folder_lnk_id_seq'::regclass);


--
-- TOC entry 3159 (class 2604 OID 25023)
-- Name: files_related_mph id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.files_related_mph ALTER COLUMN id SET DEFAULT nextval('acstrapi.files_related_mph_id_seq'::regclass);


--
-- TOC entry 3160 (class 2604 OID 25024)
-- Name: globals id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.globals ALTER COLUMN id SET DEFAULT nextval('acstrapi.globals_id_seq'::regclass);


--
-- TOC entry 3161 (class 2604 OID 25025)
-- Name: globals_cmps id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.globals_cmps ALTER COLUMN id SET DEFAULT nextval('acstrapi.globals_cmps_id_seq'::regclass);


--
-- TOC entry 3162 (class 2604 OID 25026)
-- Name: i18n_locale id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.i18n_locale ALTER COLUMN id SET DEFAULT nextval('acstrapi.i18n_locale_id_seq'::regclass);


--
-- TOC entry 3163 (class 2604 OID 25027)
-- Name: jobs id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.jobs ALTER COLUMN id SET DEFAULT nextval('acstrapi.jobs_id_seq'::regclass);


--
-- TOC entry 3191 (class 2604 OID 25736)
-- Name: jobs_createdby_lnk id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.jobs_createdby_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.jobs_createdby_lnk_id_seq'::regclass);


--
-- TOC entry 3164 (class 2604 OID 25028)
-- Name: strapi_api_token_permissions id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_api_token_permissions_id_seq'::regclass);


--
-- TOC entry 3165 (class 2604 OID 25029)
-- Name: strapi_api_token_permissions_token_lnk id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_api_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_api_token_permissions_token_lnk_id_seq'::regclass);


--
-- TOC entry 3166 (class 2604 OID 25030)
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_api_tokens_id_seq'::regclass);


--
-- TOC entry 3167 (class 2604 OID 25031)
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_core_store_settings_id_seq'::regclass);


--
-- TOC entry 3168 (class 2604 OID 25032)
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_database_schema_id_seq'::regclass);


--
-- TOC entry 3169 (class 2604 OID 25033)
-- Name: strapi_history_versions id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_history_versions ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_history_versions_id_seq'::regclass);


--
-- TOC entry 3170 (class 2604 OID 25034)
-- Name: strapi_migrations id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_migrations_id_seq'::regclass);


--
-- TOC entry 3171 (class 2604 OID 25035)
-- Name: strapi_migrations_internal id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_migrations_internal ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_migrations_internal_id_seq'::regclass);


--
-- TOC entry 3172 (class 2604 OID 25036)
-- Name: strapi_release_actions id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_release_actions_id_seq'::regclass);


--
-- TOC entry 3173 (class 2604 OID 25037)
-- Name: strapi_release_actions_release_lnk id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_release_actions_release_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_release_actions_release_lnk_id_seq'::regclass);


--
-- TOC entry 3174 (class 2604 OID 25038)
-- Name: strapi_releases id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_releases ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_releases_id_seq'::regclass);


--
-- TOC entry 3175 (class 2604 OID 25039)
-- Name: strapi_transfer_token_permissions id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_transfer_token_permissions_id_seq'::regclass);


--
-- TOC entry 3176 (class 2604 OID 25040)
-- Name: strapi_transfer_token_permissions_token_lnk id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_transfer_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_transfer_token_permissions_token_lnk_id_seq'::regclass);


--
-- TOC entry 3177 (class 2604 OID 25041)
-- Name: strapi_transfer_tokens id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_transfer_tokens_id_seq'::regclass);


--
-- TOC entry 3178 (class 2604 OID 25042)
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_webhooks_id_seq'::regclass);


--
-- TOC entry 3179 (class 2604 OID 25043)
-- Name: strapi_workflows id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_workflows_id_seq'::regclass);


--
-- TOC entry 3180 (class 2604 OID 25044)
-- Name: strapi_workflows_stage_required_to_publish_lnk id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows_stage_required_to_publish_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_workflows_stage_required_to_publish_lnk_id_seq'::regclass);


--
-- TOC entry 3181 (class 2604 OID 25045)
-- Name: strapi_workflows_stages id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows_stages ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_workflows_stages_id_seq'::regclass);


--
-- TOC entry 3182 (class 2604 OID 25046)
-- Name: strapi_workflows_stages_permissions_lnk id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows_stages_permissions_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_workflows_stages_permissions_lnk_id_seq'::regclass);


--
-- TOC entry 3183 (class 2604 OID 25047)
-- Name: strapi_workflows_stages_workflow_lnk id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows_stages_workflow_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_workflows_stages_workflow_lnk_id_seq'::regclass);


--
-- TOC entry 3184 (class 2604 OID 25048)
-- Name: up_permissions id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_permissions ALTER COLUMN id SET DEFAULT nextval('acstrapi.up_permissions_id_seq'::regclass);


--
-- TOC entry 3185 (class 2604 OID 25049)
-- Name: up_permissions_role_lnk id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.up_permissions_role_lnk_id_seq'::regclass);


--
-- TOC entry 3186 (class 2604 OID 25050)
-- Name: up_roles id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_roles ALTER COLUMN id SET DEFAULT nextval('acstrapi.up_roles_id_seq'::regclass);


--
-- TOC entry 3187 (class 2604 OID 25051)
-- Name: up_users id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_users ALTER COLUMN id SET DEFAULT nextval('acstrapi.up_users_id_seq'::regclass);


--
-- TOC entry 3188 (class 2604 OID 25052)
-- Name: up_users_role_lnk id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_users_role_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.up_users_role_lnk_id_seq'::regclass);


--
-- TOC entry 3189 (class 2604 OID 25053)
-- Name: upload_folders id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.upload_folders ALTER COLUMN id SET DEFAULT nextval('acstrapi.upload_folders_id_seq'::regclass);


--
-- TOC entry 3190 (class 2604 OID 25054)
-- Name: upload_folders_parent_lnk id; Type: DEFAULT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.upload_folders_parent_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.upload_folders_parent_lnk_id_seq'::regclass);


--
-- TOC entry 3677 (class 0 OID 24641)
-- Dependencies: 203
-- Data for Name: abouts; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.abouts (id, document_id, title, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	c030n2onrh88qoal6p25ghdq	About the strapi blog	2025-01-05 23:38:48.256	2025-01-05 23:38:48.256	2025-01-05 23:38:48.239	\N	\N	\N
\.


--
-- TOC entry 3678 (class 0 OID 24647)
-- Dependencies: 204
-- Data for Name: abouts_cmps; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.abouts_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
1	1	6	shared.quote	blocks	1
2	1	11	shared.rich-text	blocks	2
3	1	6	shared.media	blocks	3
\.


--
-- TOC entry 3681 (class 0 OID 24657)
-- Dependencies: 207
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.admin_permissions (id, document_id, action, action_parameters, subject, properties, conditions, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	xvka4few5jk26jv24ayy4uer	plugin::content-manager.explorer.create	{}	api::about.about	{"fields": ["title", "blocks"]}	[]	2025-01-05 23:38:38.622	2025-01-05 23:38:38.622	2025-01-05 23:38:38.622	\N	\N	\N
2	e1jmkcsg2zowd602chztc0dh	plugin::content-manager.explorer.create	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "author", "category", "blocks"]}	[]	2025-01-05 23:38:38.654	2025-01-05 23:38:38.654	2025-01-05 23:38:38.655	\N	\N	\N
3	srj4lobmn9myd803897c084j	plugin::content-manager.explorer.create	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	[]	2025-01-05 23:38:38.686	2025-01-05 23:38:38.686	2025-01-05 23:38:38.687	\N	\N	\N
4	imqzwy084jgvkuo9zviwqexh	plugin::content-manager.explorer.create	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	[]	2025-01-05 23:38:38.717	2025-01-05 23:38:38.717	2025-01-05 23:38:38.717	\N	\N	\N
5	qecram63g4h5dbn6mtsyua75	plugin::content-manager.explorer.create	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	[]	2025-01-05 23:38:38.748	2025-01-05 23:38:38.748	2025-01-05 23:38:38.748	\N	\N	\N
6	s14usganq30tnzwb9svspc3g	plugin::content-manager.explorer.read	{}	api::about.about	{"fields": ["title", "blocks"]}	[]	2025-01-05 23:38:38.779	2025-01-05 23:38:38.779	2025-01-05 23:38:38.779	\N	\N	\N
7	zyn9lwypjkra0v21mktvxl2e	plugin::content-manager.explorer.read	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "author", "category", "blocks"]}	[]	2025-01-05 23:38:38.81	2025-01-05 23:38:38.81	2025-01-05 23:38:38.81	\N	\N	\N
8	pgwt7s0h157yn4mfm1whoh96	plugin::content-manager.explorer.read	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	[]	2025-01-05 23:38:38.841	2025-01-05 23:38:38.841	2025-01-05 23:38:38.841	\N	\N	\N
9	gnce5uktryfw12kdaobzd5te	plugin::content-manager.explorer.read	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	[]	2025-01-05 23:38:38.87	2025-01-05 23:38:38.87	2025-01-05 23:38:38.871	\N	\N	\N
10	rugwijlb2tey4lasdeuyk58z	plugin::content-manager.explorer.read	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	[]	2025-01-05 23:38:38.917	2025-01-05 23:38:38.917	2025-01-05 23:38:38.917	\N	\N	\N
11	sup7lzpvu23jspi9ecnqbr4q	plugin::content-manager.explorer.update	{}	api::about.about	{"fields": ["title", "blocks"]}	[]	2025-01-05 23:38:38.952	2025-01-05 23:38:38.952	2025-01-05 23:38:38.953	\N	\N	\N
12	bshy4ojc14asxuxaf9kyiz9w	plugin::content-manager.explorer.update	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "author", "category", "blocks"]}	[]	2025-01-05 23:38:38.984	2025-01-05 23:38:38.984	2025-01-05 23:38:38.985	\N	\N	\N
13	y9o5iufxjy4szl1ifpughidz	plugin::content-manager.explorer.update	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	[]	2025-01-05 23:38:39.016	2025-01-05 23:38:39.016	2025-01-05 23:38:39.016	\N	\N	\N
14	y7z71uwjh8li274hxwvlj63v	plugin::content-manager.explorer.update	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	[]	2025-01-05 23:38:39.046	2025-01-05 23:38:39.046	2025-01-05 23:38:39.047	\N	\N	\N
15	w3q3hljik2t9rbd3td3a9gsd	plugin::content-manager.explorer.update	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	[]	2025-01-05 23:38:39.081	2025-01-05 23:38:39.081	2025-01-05 23:38:39.081	\N	\N	\N
16	ftmej5j7jz3oo2krwly06lrn	plugin::content-manager.explorer.delete	{}	api::about.about	{}	[]	2025-01-05 23:38:39.116	2025-01-05 23:38:39.116	2025-01-05 23:38:39.116	\N	\N	\N
17	fsfvbavkgzlo42xh6s3i4rwn	plugin::content-manager.explorer.delete	{}	api::article.article	{}	[]	2025-01-05 23:38:39.147	2025-01-05 23:38:39.147	2025-01-05 23:38:39.147	\N	\N	\N
18	c240cfvqdjtrpfl7lm4wvauj	plugin::content-manager.explorer.delete	{}	api::author.author	{}	[]	2025-01-05 23:38:39.182	2025-01-05 23:38:39.182	2025-01-05 23:38:39.182	\N	\N	\N
19	zqdqqx704azwvsjxbmrgiix6	plugin::content-manager.explorer.delete	{}	api::category.category	{}	[]	2025-01-05 23:38:39.212	2025-01-05 23:38:39.212	2025-01-05 23:38:39.212	\N	\N	\N
20	mcblesqexeup091rr5fuxq42	plugin::content-manager.explorer.delete	{}	api::global.global	{}	[]	2025-01-05 23:38:39.241	2025-01-05 23:38:39.241	2025-01-05 23:38:39.241	\N	\N	\N
21	hp9sox42u6r9ra60t97juzdr	plugin::content-manager.explorer.publish	{}	api::about.about	{}	[]	2025-01-05 23:38:39.271	2025-01-05 23:38:39.271	2025-01-05 23:38:39.272	\N	\N	\N
22	n23zrt77vr8h3a8ni5dr5u86	plugin::content-manager.explorer.publish	{}	api::article.article	{}	[]	2025-01-05 23:38:39.301	2025-01-05 23:38:39.301	2025-01-05 23:38:39.301	\N	\N	\N
23	hjh3tbg3c5ws9s35k8y6drlx	plugin::content-manager.explorer.publish	{}	api::author.author	{}	[]	2025-01-05 23:38:39.332	2025-01-05 23:38:39.332	2025-01-05 23:38:39.332	\N	\N	\N
24	gor6e5truhuzhx0qy43mykp1	plugin::content-manager.explorer.publish	{}	api::category.category	{}	[]	2025-01-05 23:38:39.367	2025-01-05 23:38:39.367	2025-01-05 23:38:39.367	\N	\N	\N
25	gl9fdi7571lhv169fxcywrdq	plugin::content-manager.explorer.publish	{}	api::global.global	{}	[]	2025-01-05 23:38:39.398	2025-01-05 23:38:39.398	2025-01-05 23:38:39.398	\N	\N	\N
26	mmq6u52wn1n0ewixx19kr4a0	plugin::upload.read	{}	\N	{}	[]	2025-01-05 23:38:39.427	2025-01-05 23:38:39.427	2025-01-05 23:38:39.427	\N	\N	\N
27	sugo7c0jr3xooluwpro4vr60	plugin::upload.configure-view	{}	\N	{}	[]	2025-01-05 23:38:39.457	2025-01-05 23:38:39.457	2025-01-05 23:38:39.457	\N	\N	\N
28	ts7okfigyp2y9pe2onawzph2	plugin::upload.assets.create	{}	\N	{}	[]	2025-01-05 23:38:39.486	2025-01-05 23:38:39.486	2025-01-05 23:38:39.486	\N	\N	\N
29	mwpj3yaqhfcd063hyem27a1k	plugin::upload.assets.update	{}	\N	{}	[]	2025-01-05 23:38:39.517	2025-01-05 23:38:39.517	2025-01-05 23:38:39.517	\N	\N	\N
30	et1qmk30dpdrl86z9l6w8z8k	plugin::upload.assets.download	{}	\N	{}	[]	2025-01-05 23:38:39.549	2025-01-05 23:38:39.549	2025-01-05 23:38:39.549	\N	\N	\N
31	bhnjsxwqls9435vjpaftsddb	plugin::upload.assets.copy-link	{}	\N	{}	[]	2025-01-05 23:38:39.579	2025-01-05 23:38:39.579	2025-01-05 23:38:39.579	\N	\N	\N
32	q8x3w69xrn43cy7izleke08m	plugin::content-manager.explorer.create	{}	api::about.about	{"fields": ["title", "blocks"]}	["admin::is-creator"]	2025-01-05 23:38:39.613	2025-01-05 23:38:39.613	2025-01-05 23:38:39.614	\N	\N	\N
33	ds3jkne4r4w6t1630i2qrmlm	plugin::content-manager.explorer.create	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "author", "category", "blocks"]}	["admin::is-creator"]	2025-01-05 23:38:39.645	2025-01-05 23:38:39.645	2025-01-05 23:38:39.645	\N	\N	\N
34	vkaj0zz4zif26w4oyp106jdn	plugin::content-manager.explorer.create	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	["admin::is-creator"]	2025-01-05 23:38:39.675	2025-01-05 23:38:39.675	2025-01-05 23:38:39.675	\N	\N	\N
35	pukghe6rniw4hg0f1dt85rlv	plugin::content-manager.explorer.create	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	["admin::is-creator"]	2025-01-05 23:38:39.705	2025-01-05 23:38:39.705	2025-01-05 23:38:39.705	\N	\N	\N
36	j34cn50vzrm5dzpcazapxo6s	plugin::content-manager.explorer.create	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	["admin::is-creator"]	2025-01-05 23:38:39.735	2025-01-05 23:38:39.735	2025-01-05 23:38:39.736	\N	\N	\N
37	qezt3di5xbv8fl8sek5bet08	plugin::content-manager.explorer.read	{}	api::about.about	{"fields": ["title", "blocks"]}	["admin::is-creator"]	2025-01-05 23:38:39.766	2025-01-05 23:38:39.766	2025-01-05 23:38:39.767	\N	\N	\N
38	pkq594k05rlsqulkco0x1a4m	plugin::content-manager.explorer.read	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "author", "category", "blocks"]}	["admin::is-creator"]	2025-01-05 23:38:39.811	2025-01-05 23:38:39.811	2025-01-05 23:38:39.811	\N	\N	\N
39	hfhx10mucu4jg38rm5d1eoy7	plugin::content-manager.explorer.read	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	["admin::is-creator"]	2025-01-05 23:38:39.849	2025-01-05 23:38:39.849	2025-01-05 23:38:39.849	\N	\N	\N
40	nv5e82mrxgu50ymyzqqnpl86	plugin::content-manager.explorer.read	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	["admin::is-creator"]	2025-01-05 23:38:39.883	2025-01-05 23:38:39.883	2025-01-05 23:38:39.884	\N	\N	\N
41	j4iozi6zg9atmewnhipr5m0s	plugin::content-manager.explorer.read	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	["admin::is-creator"]	2025-01-05 23:38:39.913	2025-01-05 23:38:39.913	2025-01-05 23:38:39.913	\N	\N	\N
42	b8k8zqa80xzylht690rqw5il	plugin::content-manager.explorer.update	{}	api::about.about	{"fields": ["title", "blocks"]}	["admin::is-creator"]	2025-01-05 23:38:39.942	2025-01-05 23:38:39.942	2025-01-05 23:38:39.942	\N	\N	\N
43	w51wyw1tf6cwi5b9nq9x55ef	plugin::content-manager.explorer.update	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "author", "category", "blocks"]}	["admin::is-creator"]	2025-01-05 23:38:39.972	2025-01-05 23:38:39.972	2025-01-05 23:38:39.972	\N	\N	\N
44	pyd7hjjq8hd0lt5lkpybaitn	plugin::content-manager.explorer.update	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	["admin::is-creator"]	2025-01-05 23:38:40.01	2025-01-05 23:38:40.01	2025-01-05 23:38:40.01	\N	\N	\N
45	gtu4384j7qt6v60fe5yjz3f7	plugin::content-manager.explorer.update	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	["admin::is-creator"]	2025-01-05 23:38:40.042	2025-01-05 23:38:40.042	2025-01-05 23:38:40.042	\N	\N	\N
46	mdup66fcx59mqto140t38uhz	plugin::content-manager.explorer.update	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	["admin::is-creator"]	2025-01-05 23:38:40.071	2025-01-05 23:38:40.071	2025-01-05 23:38:40.071	\N	\N	\N
47	s7gym39ufyzdzxdh9xsdtg4j	plugin::content-manager.explorer.delete	{}	api::about.about	{}	["admin::is-creator"]	2025-01-05 23:38:40.097	2025-01-05 23:38:40.097	2025-01-05 23:38:40.098	\N	\N	\N
48	dhx5tos71gzc2fmjj3l5lelj	plugin::content-manager.explorer.delete	{}	api::article.article	{}	["admin::is-creator"]	2025-01-05 23:38:40.132	2025-01-05 23:38:40.132	2025-01-05 23:38:40.132	\N	\N	\N
49	dh6w45iccc1gcb695o4dnee6	plugin::content-manager.explorer.delete	{}	api::author.author	{}	["admin::is-creator"]	2025-01-05 23:38:40.165	2025-01-05 23:38:40.165	2025-01-05 23:38:40.165	\N	\N	\N
50	jmsfl9d5l2oh1eu1oxxg5zub	plugin::content-manager.explorer.delete	{}	api::category.category	{}	["admin::is-creator"]	2025-01-05 23:38:40.198	2025-01-05 23:38:40.198	2025-01-05 23:38:40.199	\N	\N	\N
51	kww4cv8q0l7d2ysqcmkl8xs6	plugin::content-manager.explorer.delete	{}	api::global.global	{}	["admin::is-creator"]	2025-01-05 23:38:40.229	2025-01-05 23:38:40.229	2025-01-05 23:38:40.229	\N	\N	\N
52	z1qyywfh78zl3jy2eiihuu3i	plugin::upload.read	{}	\N	{}	["admin::is-creator"]	2025-01-05 23:38:40.26	2025-01-05 23:38:40.26	2025-01-05 23:38:40.26	\N	\N	\N
53	qe5ofia88cryszv97mip97k1	plugin::upload.configure-view	{}	\N	{}	[]	2025-01-05 23:38:40.303	2025-01-05 23:38:40.303	2025-01-05 23:38:40.304	\N	\N	\N
54	t6fy49mrf4vprukgjipgev5w	plugin::upload.assets.create	{}	\N	{}	[]	2025-01-05 23:38:40.381	2025-01-05 23:38:40.381	2025-01-05 23:38:40.381	\N	\N	\N
55	lm7a1bkldt6tvo37bqmvcot4	plugin::upload.assets.update	{}	\N	{}	["admin::is-creator"]	2025-01-05 23:38:40.413	2025-01-05 23:38:40.413	2025-01-05 23:38:40.413	\N	\N	\N
56	r4ntpbfwwhjz6r201bxyp2v4	plugin::upload.assets.download	{}	\N	{}	[]	2025-01-05 23:38:40.45	2025-01-05 23:38:40.45	2025-01-05 23:38:40.45	\N	\N	\N
57	zfrfqi7dlekww1pgbaoxodig	plugin::upload.assets.copy-link	{}	\N	{}	[]	2025-01-05 23:38:40.481	2025-01-05 23:38:40.481	2025-01-05 23:38:40.482	\N	\N	\N
59	alutrqg7rms9b6bgukk1d3t9	plugin::content-manager.explorer.create	{}	api::about.about	{"fields": ["title", "blocks"]}	[]	2025-01-05 23:38:40.613	2025-01-05 23:38:40.613	2025-01-05 23:38:40.613	\N	\N	\N
60	xdawey3letsicjs4ji0bjk4p	plugin::content-manager.explorer.create	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "author", "category", "blocks"]}	[]	2025-01-05 23:38:40.647	2025-01-05 23:38:40.647	2025-01-05 23:38:40.647	\N	\N	\N
61	jlhnh5ud038hdsjtgpsdo2pa	plugin::content-manager.explorer.create	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	[]	2025-01-05 23:38:40.678	2025-01-05 23:38:40.678	2025-01-05 23:38:40.678	\N	\N	\N
62	omtr2l2r3t1gdtftbj46g9cs	plugin::content-manager.explorer.create	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	[]	2025-01-05 23:38:40.713	2025-01-05 23:38:40.713	2025-01-05 23:38:40.713	\N	\N	\N
63	l8xmlxjw2armdcxbffe8q8z2	plugin::content-manager.explorer.create	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	[]	2025-01-05 23:38:40.742	2025-01-05 23:38:40.742	2025-01-05 23:38:40.742	\N	\N	\N
65	fx32e304j9qls1e7zp65570h	plugin::content-manager.explorer.read	{}	api::about.about	{"fields": ["title", "blocks"]}	[]	2025-01-05 23:38:40.803	2025-01-05 23:38:40.803	2025-01-05 23:38:40.803	\N	\N	\N
66	cdy7rs10ua4wa2rflw4vk7g8	plugin::content-manager.explorer.read	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "author", "category", "blocks"]}	[]	2025-01-05 23:38:40.833	2025-01-05 23:38:40.833	2025-01-05 23:38:40.833	\N	\N	\N
67	jwtbs46wyk8qw6ykd6xsli25	plugin::content-manager.explorer.read	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	[]	2025-01-05 23:38:40.865	2025-01-05 23:38:40.865	2025-01-05 23:38:40.865	\N	\N	\N
68	h8gavaea73sm074sz8cjk4wx	plugin::content-manager.explorer.read	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	[]	2025-01-05 23:38:40.895	2025-01-05 23:38:40.895	2025-01-05 23:38:40.895	\N	\N	\N
69	b3hji2fqr1fh9zghhlijw6al	plugin::content-manager.explorer.read	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	[]	2025-01-05 23:38:40.928	2025-01-05 23:38:40.928	2025-01-05 23:38:40.928	\N	\N	\N
71	aa6ys2ughtyzxijbp3bvp8hi	plugin::content-manager.explorer.update	{}	api::about.about	{"fields": ["title", "blocks"]}	[]	2025-01-05 23:38:41.014	2025-01-05 23:38:41.014	2025-01-05 23:38:41.015	\N	\N	\N
72	a7qy7rllpmbznoy0ead1p5il	plugin::content-manager.explorer.update	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "author", "category", "blocks"]}	[]	2025-01-05 23:38:41.045	2025-01-05 23:38:41.045	2025-01-05 23:38:41.046	\N	\N	\N
73	azhe5wtdsjc9pw0a7o7n5buv	plugin::content-manager.explorer.update	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	[]	2025-01-05 23:38:41.075	2025-01-05 23:38:41.075	2025-01-05 23:38:41.076	\N	\N	\N
74	pv2dyhlhm4c8ra5yvm1bkyos	plugin::content-manager.explorer.update	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	[]	2025-01-05 23:38:41.106	2025-01-05 23:38:41.106	2025-01-05 23:38:41.106	\N	\N	\N
75	gbj1tz9zlhtj1fuq25l9xk3q	plugin::content-manager.explorer.update	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	[]	2025-01-05 23:38:41.136	2025-01-05 23:38:41.136	2025-01-05 23:38:41.137	\N	\N	\N
76	a9oxxfec4ok6bjkj4290h1s9	plugin::content-manager.explorer.delete	{}	plugin::users-permissions.user	{}	[]	2025-01-05 23:38:41.168	2025-01-05 23:38:41.168	2025-01-05 23:38:41.168	\N	\N	\N
77	umn9iwjn71xky6i6khfip0zx	plugin::content-manager.explorer.delete	{}	api::about.about	{}	[]	2025-01-05 23:38:41.199	2025-01-05 23:38:41.199	2025-01-05 23:38:41.199	\N	\N	\N
78	blfad39l61fhxubei4p2ok7n	plugin::content-manager.explorer.delete	{}	api::article.article	{}	[]	2025-01-05 23:38:41.228	2025-01-05 23:38:41.228	2025-01-05 23:38:41.228	\N	\N	\N
79	zvi7yz5h1fh9b8o3axchd7lz	plugin::content-manager.explorer.delete	{}	api::author.author	{}	[]	2025-01-05 23:38:41.258	2025-01-05 23:38:41.258	2025-01-05 23:38:41.258	\N	\N	\N
80	dddmgh7fac82tsbqh162r8qu	plugin::content-manager.explorer.delete	{}	api::category.category	{}	[]	2025-01-05 23:38:41.286	2025-01-05 23:38:41.286	2025-01-05 23:38:41.286	\N	\N	\N
81	uz8h1nqukocf42tub8sqy14q	plugin::content-manager.explorer.delete	{}	api::global.global	{}	[]	2025-01-05 23:38:41.317	2025-01-05 23:38:41.317	2025-01-05 23:38:41.317	\N	\N	\N
82	we0bddhybs3cnplygicg12w4	plugin::content-manager.explorer.publish	{}	plugin::users-permissions.user	{}	[]	2025-01-05 23:38:41.349	2025-01-05 23:38:41.349	2025-01-05 23:38:41.349	\N	\N	\N
83	eybml90qk4k1p7tpq9xyxif3	plugin::content-manager.explorer.publish	{}	api::about.about	{}	[]	2025-01-05 23:38:41.38	2025-01-05 23:38:41.38	2025-01-05 23:38:41.38	\N	\N	\N
84	whcms5km81hgueehhapsf5pn	plugin::content-manager.explorer.publish	{}	api::article.article	{}	[]	2025-01-05 23:38:41.42	2025-01-05 23:38:41.42	2025-01-05 23:38:41.42	\N	\N	\N
85	apg8kc2gx7vbiqh2pm9igxal	plugin::content-manager.explorer.publish	{}	api::author.author	{}	[]	2025-01-05 23:38:41.447	2025-01-05 23:38:41.447	2025-01-05 23:38:41.448	\N	\N	\N
86	hrod8xbgzsmntmbq8fe6hmw4	plugin::content-manager.explorer.publish	{}	api::category.category	{}	[]	2025-01-05 23:38:41.477	2025-01-05 23:38:41.477	2025-01-05 23:38:41.477	\N	\N	\N
87	g9bhpyfffwnlpffzj2f2oqkp	plugin::content-manager.explorer.publish	{}	api::global.global	{}	[]	2025-01-05 23:38:41.508	2025-01-05 23:38:41.508	2025-01-05 23:38:41.508	\N	\N	\N
88	o7sdgqfn8t7hp8al744glgen	plugin::content-manager.single-types.configure-view	{}	\N	{}	[]	2025-01-05 23:38:41.542	2025-01-05 23:38:41.542	2025-01-05 23:38:41.542	\N	\N	\N
89	ciwuyw4zt8wxmw4i9289tn97	plugin::content-manager.collection-types.configure-view	{}	\N	{}	[]	2025-01-05 23:38:41.579	2025-01-05 23:38:41.579	2025-01-05 23:38:41.579	\N	\N	\N
90	h3mmnek1bri9v0qprvwmpa8m	plugin::content-manager.components.configure-layout	{}	\N	{}	[]	2025-01-05 23:38:41.609	2025-01-05 23:38:41.609	2025-01-05 23:38:41.609	\N	\N	\N
91	hlojdtljzmstm5hgfpmpf9pg	plugin::content-type-builder.read	{}	\N	{}	[]	2025-01-05 23:38:41.643	2025-01-05 23:38:41.643	2025-01-05 23:38:41.643	\N	\N	\N
92	lvbn72ug7sk0s7v3o4vqfmdk	plugin::email.settings.read	{}	\N	{}	[]	2025-01-05 23:38:41.672	2025-01-05 23:38:41.672	2025-01-05 23:38:41.672	\N	\N	\N
93	okn0gt2966xteukcsu06wftv	plugin::upload.read	{}	\N	{}	[]	2025-01-05 23:38:41.705	2025-01-05 23:38:41.705	2025-01-05 23:38:41.706	\N	\N	\N
94	ald8dro19vz3fnq83vblvkck	plugin::upload.assets.create	{}	\N	{}	[]	2025-01-05 23:38:41.735	2025-01-05 23:38:41.735	2025-01-05 23:38:41.735	\N	\N	\N
95	gtghlmtk7lxjcb6mgwggmhtc	plugin::upload.assets.update	{}	\N	{}	[]	2025-01-05 23:38:41.766	2025-01-05 23:38:41.766	2025-01-05 23:38:41.766	\N	\N	\N
96	gx75bn1dhah3va5dndv7701a	plugin::upload.assets.download	{}	\N	{}	[]	2025-01-05 23:38:41.802	2025-01-05 23:38:41.802	2025-01-05 23:38:41.803	\N	\N	\N
97	qyryxow1y1y9euilsd79jyj3	plugin::upload.assets.copy-link	{}	\N	{}	[]	2025-01-05 23:38:41.831	2025-01-05 23:38:41.831	2025-01-05 23:38:41.832	\N	\N	\N
98	eo4boo9as5yvkc3m2jjx5ivi	plugin::upload.configure-view	{}	\N	{}	[]	2025-01-05 23:38:41.868	2025-01-05 23:38:41.868	2025-01-05 23:38:41.868	\N	\N	\N
99	xj9i22i94anap7n8n0ilmtd9	plugin::upload.settings.read	{}	\N	{}	[]	2025-01-05 23:38:41.902	2025-01-05 23:38:41.902	2025-01-05 23:38:41.902	\N	\N	\N
100	eufp9m000s5j5t7asf26qvxo	plugin::i18n.locale.create	{}	\N	{}	[]	2025-01-05 23:38:41.933	2025-01-05 23:38:41.933	2025-01-05 23:38:41.933	\N	\N	\N
101	eb9wtn3pzf2js4pf0leteucu	plugin::i18n.locale.read	{}	\N	{}	[]	2025-01-05 23:38:41.965	2025-01-05 23:38:41.965	2025-01-05 23:38:41.965	\N	\N	\N
102	wdrjck8q1ve5r6eoji88ya88	plugin::i18n.locale.update	{}	\N	{}	[]	2025-01-05 23:38:41.995	2025-01-05 23:38:41.995	2025-01-05 23:38:41.995	\N	\N	\N
103	tu4yea7bbb8i0n6a3qlqtclb	plugin::i18n.locale.delete	{}	\N	{}	[]	2025-01-05 23:38:42.025	2025-01-05 23:38:42.025	2025-01-05 23:38:42.025	\N	\N	\N
104	i0rk9fbjfa98y6zzjlmcql05	plugin::users-permissions.roles.create	{}	\N	{}	[]	2025-01-05 23:38:42.054	2025-01-05 23:38:42.054	2025-01-05 23:38:42.054	\N	\N	\N
105	jhgfenqom24sam74gykl0gdj	plugin::users-permissions.roles.read	{}	\N	{}	[]	2025-01-05 23:38:42.084	2025-01-05 23:38:42.084	2025-01-05 23:38:42.084	\N	\N	\N
106	dkbxkm994ntptcqbzbbqo1nv	plugin::users-permissions.roles.update	{}	\N	{}	[]	2025-01-05 23:38:42.113	2025-01-05 23:38:42.113	2025-01-05 23:38:42.113	\N	\N	\N
107	hbfslz9md25m321ai313bygw	plugin::users-permissions.roles.delete	{}	\N	{}	[]	2025-01-05 23:38:42.14	2025-01-05 23:38:42.14	2025-01-05 23:38:42.14	\N	\N	\N
108	h31329quw7q7jwrj0fdggnqx	plugin::users-permissions.providers.read	{}	\N	{}	[]	2025-01-05 23:38:42.172	2025-01-05 23:38:42.172	2025-01-05 23:38:42.172	\N	\N	\N
109	ddqu4pg2j60b7k83d0rv8gaw	plugin::users-permissions.providers.update	{}	\N	{}	[]	2025-01-05 23:38:42.204	2025-01-05 23:38:42.204	2025-01-05 23:38:42.204	\N	\N	\N
110	ur9gx5gpi8ngemjsq2u8f63h	plugin::users-permissions.email-templates.read	{}	\N	{}	[]	2025-01-05 23:38:42.235	2025-01-05 23:38:42.235	2025-01-05 23:38:42.235	\N	\N	\N
111	gbe0grrfkcefjm5yu2xsvklt	plugin::users-permissions.email-templates.update	{}	\N	{}	[]	2025-01-05 23:38:42.266	2025-01-05 23:38:42.266	2025-01-05 23:38:42.266	\N	\N	\N
112	ab99ob64hhch1wmkqgbyypr3	plugin::users-permissions.advanced-settings.read	{}	\N	{}	[]	2025-01-05 23:38:42.296	2025-01-05 23:38:42.296	2025-01-05 23:38:42.296	\N	\N	\N
113	h3iif2qvsyv3nkcok53687ev	plugin::users-permissions.advanced-settings.update	{}	\N	{}	[]	2025-01-05 23:38:42.325	2025-01-05 23:38:42.325	2025-01-05 23:38:42.325	\N	\N	\N
114	p3ki6etez457pzr67ajq008l	admin::marketplace.read	{}	\N	{}	[]	2025-01-05 23:38:42.354	2025-01-05 23:38:42.354	2025-01-05 23:38:42.354	\N	\N	\N
115	hex4y8h250r7prne8oea5t23	admin::webhooks.create	{}	\N	{}	[]	2025-01-05 23:38:42.385	2025-01-05 23:38:42.385	2025-01-05 23:38:42.385	\N	\N	\N
116	lcig6r6zzxi11w183pqwsqv9	admin::webhooks.read	{}	\N	{}	[]	2025-01-05 23:38:42.414	2025-01-05 23:38:42.414	2025-01-05 23:38:42.414	\N	\N	\N
117	jlpwro9m6z3d0blfc52xj4x7	admin::webhooks.update	{}	\N	{}	[]	2025-01-05 23:38:42.443	2025-01-05 23:38:42.443	2025-01-05 23:38:42.443	\N	\N	\N
118	ogvigs8yd6led4hole51ffq4	admin::webhooks.delete	{}	\N	{}	[]	2025-01-05 23:38:42.474	2025-01-05 23:38:42.474	2025-01-05 23:38:42.474	\N	\N	\N
119	cayo9adi7ndn4fkw8ogy3ga1	admin::users.create	{}	\N	{}	[]	2025-01-05 23:38:42.508	2025-01-05 23:38:42.508	2025-01-05 23:38:42.508	\N	\N	\N
120	t0tfanjma25ql7hbizkurzyo	admin::users.read	{}	\N	{}	[]	2025-01-05 23:38:42.536	2025-01-05 23:38:42.536	2025-01-05 23:38:42.536	\N	\N	\N
121	mcy5kuhn1ivukl0yvgujj5ol	admin::users.update	{}	\N	{}	[]	2025-01-05 23:38:42.57	2025-01-05 23:38:42.57	2025-01-05 23:38:42.57	\N	\N	\N
122	s8pkqud9etpia1d61qqo1d3m	admin::users.delete	{}	\N	{}	[]	2025-01-05 23:38:42.601	2025-01-05 23:38:42.601	2025-01-05 23:38:42.601	\N	\N	\N
123	ru0kivkek92wspg1487g27hd	admin::roles.create	{}	\N	{}	[]	2025-01-05 23:38:42.634	2025-01-05 23:38:42.634	2025-01-05 23:38:42.635	\N	\N	\N
124	ajnvvw11m8tzmtg1zoy8ni0l	admin::roles.read	{}	\N	{}	[]	2025-01-05 23:38:42.665	2025-01-05 23:38:42.665	2025-01-05 23:38:42.666	\N	\N	\N
125	ntqzpp6xro5r66c262a9zifh	admin::roles.update	{}	\N	{}	[]	2025-01-05 23:38:42.695	2025-01-05 23:38:42.695	2025-01-05 23:38:42.695	\N	\N	\N
126	sbgd5j2irkd6vx9jkztgb5oq	admin::roles.delete	{}	\N	{}	[]	2025-01-05 23:38:42.725	2025-01-05 23:38:42.725	2025-01-05 23:38:42.725	\N	\N	\N
127	k0zvmnbd3kq7l3km4qauz06u	admin::api-tokens.access	{}	\N	{}	[]	2025-01-05 23:38:42.755	2025-01-05 23:38:42.755	2025-01-05 23:38:42.755	\N	\N	\N
128	edqllthfc4ju5n69lk1vrq33	admin::api-tokens.create	{}	\N	{}	[]	2025-01-05 23:38:42.784	2025-01-05 23:38:42.784	2025-01-05 23:38:42.784	\N	\N	\N
129	thjayqzxq9kvno4si9lfxjxe	admin::api-tokens.read	{}	\N	{}	[]	2025-01-05 23:38:42.814	2025-01-05 23:38:42.814	2025-01-05 23:38:42.814	\N	\N	\N
130	jlxqza4vv0kuceh69bh7js6q	admin::api-tokens.update	{}	\N	{}	[]	2025-01-05 23:38:42.843	2025-01-05 23:38:42.843	2025-01-05 23:38:42.843	\N	\N	\N
131	faas7v6o3b6m8tqs01uedlno	admin::api-tokens.regenerate	{}	\N	{}	[]	2025-01-05 23:38:42.873	2025-01-05 23:38:42.873	2025-01-05 23:38:42.873	\N	\N	\N
132	ko4zw94m9yzvhcnb9h3u9pkn	admin::api-tokens.delete	{}	\N	{}	[]	2025-01-05 23:38:42.907	2025-01-05 23:38:42.907	2025-01-05 23:38:42.907	\N	\N	\N
133	ffkpqcf4ugh3tno6a5fzrr4f	admin::project-settings.update	{}	\N	{}	[]	2025-01-05 23:38:42.945	2025-01-05 23:38:42.945	2025-01-05 23:38:42.945	\N	\N	\N
134	wnip5orkk2d8u36gijn851z2	admin::project-settings.read	{}	\N	{}	[]	2025-01-05 23:38:42.988	2025-01-05 23:38:42.988	2025-01-05 23:38:42.988	\N	\N	\N
135	twxkbaqajlgbnmagbvmr65pi	admin::transfer.tokens.access	{}	\N	{}	[]	2025-01-05 23:38:43.017	2025-01-05 23:38:43.017	2025-01-05 23:38:43.018	\N	\N	\N
136	yeyhkppiymwylaatxg6pyyug	admin::transfer.tokens.create	{}	\N	{}	[]	2025-01-05 23:38:43.045	2025-01-05 23:38:43.045	2025-01-05 23:38:43.046	\N	\N	\N
137	ds6qx07ehw2lk6w9uv4961io	admin::transfer.tokens.read	{}	\N	{}	[]	2025-01-05 23:38:43.073	2025-01-05 23:38:43.073	2025-01-05 23:38:43.073	\N	\N	\N
138	wubgj9jdlqqibekkpbjx3olx	admin::transfer.tokens.update	{}	\N	{}	[]	2025-01-05 23:38:43.107	2025-01-05 23:38:43.107	2025-01-05 23:38:43.107	\N	\N	\N
139	qg2i2qumtimoxibm4v3u5gop	admin::transfer.tokens.regenerate	{}	\N	{}	[]	2025-01-05 23:38:43.141	2025-01-05 23:38:43.141	2025-01-05 23:38:43.141	\N	\N	\N
140	cs8xjlsjk9d2rgu6b76dqx9y	admin::transfer.tokens.delete	{}	\N	{}	[]	2025-01-05 23:38:43.173	2025-01-05 23:38:43.173	2025-01-05 23:38:43.173	\N	\N	\N
141	tssqhbvvdp8z6zcika2ce5yb	plugin::upload.assets.create	{}	\N	{}	[]	2025-01-06 22:59:51.655	2025-01-06 22:59:51.655	2025-01-06 22:59:51.656	\N	\N	\N
142	ueolenf4ljupejmu9w4hrfql	plugin::upload.assets.update	{}	\N	{}	[]	2025-01-06 22:59:51.851	2025-01-06 22:59:51.851	2025-01-06 22:59:51.851	\N	\N	\N
146	ik5mxynwl10nqrhnfcgh8pra	plugin::content-manager.explorer.delete	{}	api::job.job	{"locales": ["en"]}	[]	2025-01-06 23:43:02.96	2025-01-06 23:43:02.96	2025-01-06 23:43:02.96	\N	\N	\N
147	q2jyg8pfevidfzqdb526mthd	plugin::content-manager.explorer.publish	{}	api::job.job	{"locales": ["en"]}	[]	2025-01-06 23:43:02.988	2025-01-06 23:43:02.988	2025-01-06 23:43:02.988	\N	\N	\N
154	uyi038a8lca16dqy69qkfvnc	plugin::content-manager.explorer.create	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2025-01-07 01:07:17.275	2025-01-07 01:07:17.275	2025-01-07 01:07:17.276	\N	\N	\N
156	cnv31yfqdizca1qxcepnj6z6	plugin::content-manager.explorer.read	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2025-01-07 01:07:17.355	2025-01-07 01:07:17.355	2025-01-07 01:07:17.355	\N	\N	\N
158	bzasaiqwlt92hkd3a28pgknl	plugin::content-manager.explorer.update	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2025-01-07 01:07:17.423	2025-01-07 01:07:17.423	2025-01-07 01:07:17.423	\N	\N	\N
163	sfhyc2yhmff54t63d3l34rgn	plugin::content-manager.explorer.delete	{}	api::job.job	{"locales": ["en"]}	["admin::is-creator"]	2025-01-07 01:08:17.172	2025-01-07 01:08:17.172	2025-01-07 01:08:17.173	\N	\N	\N
164	k5mkfwo4sm910hf1alnphqnq	plugin::content-manager.explorer.publish	{}	api::job.job	{"locales": ["en"]}	["admin::is-creator"]	2025-01-07 01:08:17.201	2025-01-07 01:08:17.201	2025-01-07 01:08:17.201	\N	\N	\N
165	bd3es13vo29xe9ev83q6f7f4	plugin::content-manager.explorer.create	{}	api::job.job	{"fields": ["type", "title", "createdby"], "locales": ["en"]}	[]	2025-01-07 22:03:33.079	2025-01-07 22:03:33.079	2025-01-07 22:03:33.079	\N	\N	\N
166	lb353x7jcqnyhx5tmsfopxk7	plugin::content-manager.explorer.read	{}	api::job.job	{"fields": ["type", "title", "createdby"], "locales": ["en"]}	[]	2025-01-07 22:03:33.114	2025-01-07 22:03:33.114	2025-01-07 22:03:33.114	\N	\N	\N
167	b7fplsnytc0bt5h68iijkj7y	plugin::content-manager.explorer.update	{}	api::job.job	{"fields": ["type", "title", "createdby"], "locales": ["en"]}	[]	2025-01-07 22:03:33.147	2025-01-07 22:03:33.147	2025-01-07 22:03:33.147	\N	\N	\N
160	vtjowm7gcmpg6w0u9s2ymfdb	plugin::content-manager.explorer.create	{}	api::job.job	{"fields": ["type", "title", "createdby"], "locales": ["en"]}	["admin::is-creator"]	2025-01-07 01:08:17.006	2025-01-07 23:59:19.522	2025-01-07 01:08:17.006	\N	\N	\N
162	vczaihi3ak5nlt170egngief	plugin::content-manager.explorer.update	{}	api::job.job	{"fields": ["type", "title", "createdby"], "locales": ["en"]}	["admin::is-creator"]	2025-01-07 01:08:17.136	2025-01-07 23:59:19.522	2025-01-07 01:08:17.137	\N	\N	\N
161	axqfhydzd6k10efkjowww10n	plugin::content-manager.explorer.read	{}	api::job.job	{"fields": ["type", "title", "createdby"], "locales": ["en"]}	["admin::is-creator"]	2025-01-07 01:08:17.075	2025-01-07 23:59:19.522	2025-01-07 01:08:17.076	\N	\N	\N
\.


--
-- TOC entry 3683 (class 0 OID 24665)
-- Dependencies: 209
-- Data for Name: admin_permissions_role_lnk; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.admin_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
1	1	2	1
2	2	2	2
3	3	2	3
4	4	2	4
5	5	2	5
6	6	2	6
7	7	2	7
8	8	2	8
9	9	2	9
10	10	2	10
11	11	2	11
12	12	2	12
13	13	2	13
14	14	2	14
15	15	2	15
16	16	2	16
17	17	2	17
18	18	2	18
19	19	2	19
20	20	2	20
21	21	2	21
22	22	2	22
23	23	2	23
24	24	2	24
25	25	2	25
26	26	2	26
27	27	2	27
28	28	2	28
29	29	2	29
30	30	2	30
31	31	2	31
32	32	3	1
33	33	3	2
34	34	3	3
35	35	3	4
36	36	3	5
37	37	3	6
38	38	3	7
39	39	3	8
40	40	3	9
41	41	3	10
42	42	3	11
43	43	3	12
44	44	3	13
45	45	3	14
46	46	3	15
47	47	3	16
48	48	3	17
49	49	3	18
50	50	3	19
51	51	3	20
52	52	3	21
53	53	3	22
54	54	3	23
55	55	3	24
56	56	3	25
57	57	3	26
59	59	1	2
60	60	1	3
61	61	1	4
62	62	1	5
63	63	1	6
65	65	1	8
66	66	1	9
67	67	1	10
68	68	1	11
69	69	1	12
71	71	1	14
72	72	1	15
73	73	1	16
74	74	1	17
75	75	1	18
76	76	1	19
77	77	1	20
78	78	1	21
79	79	1	22
80	80	1	23
81	81	1	24
82	82	1	25
83	83	1	26
84	84	1	27
85	85	1	28
86	86	1	29
87	87	1	30
88	88	1	31
89	89	1	32
90	90	1	33
91	91	1	34
92	92	1	35
93	93	1	36
94	94	1	37
95	95	1	38
96	96	1	39
97	97	1	40
98	98	1	41
99	99	1	42
100	100	1	43
101	101	1	44
102	102	1	45
103	103	1	46
104	104	1	47
105	105	1	48
106	106	1	49
107	107	1	50
108	108	1	51
109	109	1	52
110	110	1	53
111	111	1	54
112	112	1	55
113	113	1	56
114	114	1	57
115	115	1	58
116	116	1	59
117	117	1	60
118	118	1	61
119	119	1	62
120	120	1	63
121	121	1	64
122	122	1	65
123	123	1	66
124	124	1	67
125	125	1	68
126	126	1	69
127	127	1	70
128	128	1	71
129	129	1	72
130	130	1	73
131	131	1	74
132	132	1	75
133	133	1	76
134	134	1	77
135	135	1	78
136	136	1	79
137	137	1	80
138	138	1	81
139	139	1	82
140	140	1	83
141	141	4	1
142	142	4	2
146	146	1	87
147	147	1	88
154	154	1	89
156	156	1	91
158	158	1	93
160	160	4	3
161	161	4	4
162	162	4	5
163	163	4	6
164	164	4	7
165	165	1	94
166	166	1	95
167	167	1	96
\.


--
-- TOC entry 3685 (class 0 OID 24670)
-- Dependencies: 211
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.admin_roles (id, document_id, name, code, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	mz1r05hlycbbl7s9n2d0w6va	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2025-01-05 23:38:38.517	2025-01-05 23:38:38.517	2025-01-05 23:38:38.517	\N	\N	\N
2	o3z8ut4zithpnf3l0g8za9r9	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2025-01-05 23:38:38.573	2025-01-05 23:38:38.573	2025-01-05 23:38:38.573	\N	\N	\N
3	gpoucm0ar7j3ud1lheo2i3x4	Author	strapi-author	Authors can manage the content they have created.	2025-01-05 23:38:38.594	2025-01-05 23:38:38.594	2025-01-05 23:38:38.594	\N	\N	\N
4	smhhq4rdrpk3835e7lvqn83u	Customer	customer-m5kzoupu	Customer that need to hire Service Provider to do a job\nCreated January 6th, 2025	2025-01-06 22:59:51.426	2025-01-07 01:08:16.844	2025-01-06 22:59:51.432	\N	\N	\N
5	cifoyqz63rl2v0qsi4rfr5iv	Service Provider	service-provider-m5kzq06w	Service Provider that completes task for money\nCreated January 6th, 2025	2025-01-06 23:00:45.176	2025-01-07 01:09:16.104	2025-01-06 23:00:45.177	\N	\N	\N
\.


--
-- TOC entry 3687 (class 0 OID 24678)
-- Dependencies: 213
-- Data for Name: admin_users; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.admin_users (id, document_id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	ktfrg4d4t92x98zwv4r5fxv0	JoJo	G	\N	jojo5544+strapilocal@gmail.com	$2a$10$0kHzses3l9pgsWIT4DI0NO99YroaqysKprre/iZ1ndt301MUiadJC	\N	\N	t	f	\N	2025-01-06 00:29:52.593	2025-01-06 00:29:52.593	2025-01-06 00:29:52.594	\N	\N	\N
\.


--
-- TOC entry 3689 (class 0 OID 24686)
-- Dependencies: 215
-- Data for Name: admin_users_roles_lnk; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.admin_users_roles_lnk (id, user_id, role_id, role_ord, user_ord) FROM stdin;
1	1	1	1	1
\.


--
-- TOC entry 3691 (class 0 OID 24691)
-- Dependencies: 217
-- Data for Name: articles; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.articles (id, document_id, title, description, slug, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	chzb2v5ddf2os38qheatqtyr	The internet's Own boy	Follow the story of Aaron Swartz, the boy who could change the world	the-internet-s-own-boy	2025-01-05 23:38:46.41	2025-01-05 23:38:46.41	\N	\N	\N	\N
2	g9fjrt3ql8xm3qa0mbfi71z5	This shrimp is awesome	Mantis shrimps, or stomatopods, are marine crustaceans of the order Stomatopoda.	this-shrimp-is-awesome	2025-01-05 23:38:46.627	2025-01-05 23:38:46.627	\N	\N	\N	\N
3	qwmoofurnv0vmanwp1uy1mrm	A bug is becoming a meme on the internet	How a bug on MySQL is becoming a meme on the internet	a-bug-is-becoming-a-meme-on-the-internet	2025-01-05 23:38:47.04	2025-01-05 23:38:47.04	\N	\N	\N	\N
4	u52jte9tphlleohi1pkfo8l1	Beautiful picture	Description of a beautiful picture	beautiful-picture	2025-01-05 23:38:47.51	2025-01-05 23:38:47.51	\N	\N	\N	\N
5	bqwlvidqenvlqydpjl3shqul	What's inside a Black Hole	Maybe the answer is in this article, or not...	what-s-inside-a-black-hole	2025-01-05 23:38:47.68	2025-01-05 23:38:47.68	\N	\N	\N	\N
6	qwmoofurnv0vmanwp1uy1mrm	A bug is becoming a meme on the internet	How a bug on MySQL is becoming a meme on the internet	a-bug-is-becoming-a-meme-on-the-internet	2025-01-05 23:38:47.04	2025-01-05 23:38:47.04	2025-01-06 01:39:28.258	\N	\N	\N
7	u52jte9tphlleohi1pkfo8l1	Beautiful picture	Description of a beautiful picture	beautiful-picture	2025-01-05 23:38:47.51	2025-01-05 23:38:47.51	2025-01-06 01:39:28.261	\N	\N	\N
8	chzb2v5ddf2os38qheatqtyr	The internet's Own boy	Follow the story of Aaron Swartz, the boy who could change the world	the-internet-s-own-boy	2025-01-05 23:38:46.41	2025-01-05 23:38:46.41	2025-01-06 01:39:28.262	\N	\N	\N
\.


--
-- TOC entry 3692 (class 0 OID 24697)
-- Dependencies: 218
-- Data for Name: articles_author_lnk; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.articles_author_lnk (id, article_id, author_id, article_ord) FROM stdin;
1	1	1	1
2	2	1	2
3	3	2	1
4	4	2	2
5	5	2	3
6	6	2	4
7	7	2	4
8	8	1	3
\.


--
-- TOC entry 3694 (class 0 OID 24702)
-- Dependencies: 220
-- Data for Name: articles_category_lnk; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.articles_category_lnk (id, article_id, category_id, article_ord) FROM stdin;
1	1	5	1
2	2	4	1
3	3	2	1
4	4	4	2
5	5	1	1
6	6	2	2
7	7	4	3
8	8	5	2
\.


--
-- TOC entry 3696 (class 0 OID 24707)
-- Dependencies: 222
-- Data for Name: articles_cmps; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.articles_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
1	1	1	shared.rich-text	blocks	1
2	1	1	shared.quote	blocks	2
3	1	1	shared.media	blocks	3
4	1	2	shared.rich-text	blocks	4
5	1	1	shared.slider	blocks	5
6	2	3	shared.rich-text	blocks	1
7	2	2	shared.quote	blocks	2
8	2	2	shared.media	blocks	3
9	2	4	shared.rich-text	blocks	4
10	2	2	shared.slider	blocks	5
11	3	5	shared.rich-text	blocks	1
12	3	3	shared.quote	blocks	2
13	3	3	shared.media	blocks	3
14	3	6	shared.rich-text	blocks	4
15	3	3	shared.slider	blocks	5
16	4	7	shared.rich-text	blocks	1
17	4	4	shared.quote	blocks	2
18	4	4	shared.media	blocks	3
19	4	8	shared.rich-text	blocks	4
20	4	4	shared.slider	blocks	5
21	5	9	shared.rich-text	blocks	1
22	5	5	shared.quote	blocks	2
23	5	5	shared.media	blocks	3
24	5	10	shared.rich-text	blocks	4
25	5	5	shared.slider	blocks	5
26	6	12	shared.rich-text	blocks	1
27	6	7	shared.quote	blocks	2
28	6	7	shared.media	blocks	3
29	6	13	shared.rich-text	blocks	4
30	6	6	shared.slider	blocks	5
31	7	14	shared.rich-text	blocks	1
32	7	8	shared.quote	blocks	2
33	7	8	shared.media	blocks	3
34	7	15	shared.rich-text	blocks	4
35	7	7	shared.slider	blocks	5
36	8	16	shared.rich-text	blocks	1
37	8	9	shared.quote	blocks	2
38	8	9	shared.media	blocks	3
39	8	17	shared.rich-text	blocks	4
40	8	8	shared.slider	blocks	5
\.


--
-- TOC entry 3699 (class 0 OID 24717)
-- Dependencies: 225
-- Data for Name: authors; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.authors (id, document_id, name, email, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	j6de7czzmscj6f011ue3btqz	David Doe	daviddoe@strapi.io	2025-01-05 23:38:43.895	2025-01-05 23:38:43.895	2025-01-05 23:38:43.891	\N	\N	\N
2	ikol124ihciu2sr9h7ho5i7i	Sarah Baker	sarahbaker@strapi.io	2025-01-05 23:38:44.332	2025-01-05 23:38:44.332	2025-01-05 23:38:44.329	\N	\N	\N
\.


--
-- TOC entry 3701 (class 0 OID 24725)
-- Dependencies: 227
-- Data for Name: categories; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.categories (id, document_id, name, slug, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	p4pfws1goi0urb5nm7gdembl	news	news	\N	2025-01-05 23:38:43.384	2025-01-05 23:38:43.384	2025-01-05 23:38:43.376	\N	\N	\N
2	zmj67uwkmxvrf9xw62r6ml33	tech	tech	\N	2025-01-05 23:38:43.408	2025-01-05 23:38:43.408	2025-01-05 23:38:43.403	\N	\N	\N
3	n7xc9h5uqrjvdirk53j96qpm	food	food	\N	2025-01-05 23:38:43.43	2025-01-05 23:38:43.43	2025-01-05 23:38:43.427	\N	\N	\N
4	nwl9frxzi35fxz34bt5nbp4a	nature	nature	\N	2025-01-05 23:38:43.45	2025-01-05 23:38:43.45	2025-01-05 23:38:43.447	\N	\N	\N
5	j5aiay202nw4at6gpvu7ecvd	story	story	\N	2025-01-05 23:38:43.469	2025-01-05 23:38:43.469	2025-01-05 23:38:43.466	\N	\N	\N
\.


--
-- TOC entry 3703 (class 0 OID 24733)
-- Dependencies: 229
-- Data for Name: components_shared_media; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.components_shared_media (id) FROM stdin;
1
2
3
4
5
6
7
8
9
\.


--
-- TOC entry 3705 (class 0 OID 24738)
-- Dependencies: 231
-- Data for Name: components_shared_quotes; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.components_shared_quotes (id, title, body) FROM stdin;
1	Thelonius Monk	You've got to dig it to dig it, you dig?
2	Thelonius Monk	You've got to dig it to dig it, you dig?
3	Thelonius Monk	You've got to dig it to dig it, you dig?
4	Thelonius Monk	You've got to dig it to dig it, you dig?
5	Thelonius Monk	You've got to dig it to dig it, you dig?
6	Thelonius Monk	You've got to dig it to dig it, you dig?
7	Thelonius Monk	You've got to dig it to dig it, you dig?
8	Thelonius Monk	You've got to dig it to dig it, you dig?
9	Thelonius Monk	You've got to dig it to dig it, you dig?
\.


--
-- TOC entry 3707 (class 0 OID 24746)
-- Dependencies: 233
-- Data for Name: components_shared_rich_texts; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.components_shared_rich_texts (id, body) FROM stdin;
1	## Probant \n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. \n\n## Abit sua\n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. 
2	## Spatiantia astra \n\nFoeda, medio silva *errandum*: onus formam munere. Mutata bibulis est auxiliare arces etiamnunc verbis virgineo Priamidas illa Thescelus, nam fit locis lucis auras. Exitus hospes gratulor ut pondere [speslimite](http://www.curas.io/figuram); quid habent, Avernales faciente de. Pervenit Ino sonabile supplex cognoscenti vires, Bacchumque errat miserarum venandi dignabere dedisti. Discrimina iuncosaque virgaque tot sine superest [fissus](http://quos.org/sitet.aspx). Non color esset potest non sumit, sed vix arserat. Nisi immo silva tantum pectusque quos pennis quisquam artus!
3	## Probant \n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. \n\n## Abit sua\n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. 
4	## Spatiantia astra \n\nFoeda, medio silva *errandum*: onus formam munere. Mutata bibulis est auxiliare arces etiamnunc verbis virgineo Priamidas illa Thescelus, nam fit locis lucis auras. Exitus hospes gratulor ut pondere [speslimite](http://www.curas.io/figuram); quid habent, Avernales faciente de. Pervenit Ino sonabile supplex cognoscenti vires, Bacchumque errat miserarum venandi dignabere dedisti. Discrimina iuncosaque virgaque tot sine superest [fissus](http://quos.org/sitet.aspx). Non color esset potest non sumit, sed vix arserat. Nisi immo silva tantum pectusque quos pennis quisquam artus!
5	## Probant \n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. \n\n## Abit sua\n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. 
6	## Spatiantia astra \n\nFoeda, medio silva *errandum*: onus formam munere. Mutata bibulis est auxiliare arces etiamnunc verbis virgineo Priamidas illa Thescelus, nam fit locis lucis auras. Exitus hospes gratulor ut pondere [speslimite](http://www.curas.io/figuram); quid habent, Avernales faciente de. Pervenit Ino sonabile supplex cognoscenti vires, Bacchumque errat miserarum venandi dignabere dedisti. Discrimina iuncosaque virgaque tot sine superest [fissus](http://quos.org/sitet.aspx). Non color esset potest non sumit, sed vix arserat. Nisi immo silva tantum pectusque quos pennis quisquam artus!
7	## Probant \n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. \n\n## Abit sua\n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. 
8	## Spatiantia astra \n\nFoeda, medio silva *errandum*: onus formam munere. Mutata bibulis est auxiliare arces etiamnunc verbis virgineo Priamidas illa Thescelus, nam fit locis lucis auras. Exitus hospes gratulor ut pondere [speslimite](http://www.curas.io/figuram); quid habent, Avernales faciente de. Pervenit Ino sonabile supplex cognoscenti vires, Bacchumque errat miserarum venandi dignabere dedisti. Discrimina iuncosaque virgaque tot sine superest [fissus](http://quos.org/sitet.aspx). Non color esset potest non sumit, sed vix arserat. Nisi immo silva tantum pectusque quos pennis quisquam artus!
9	## Probant \n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. \n\n## Abit sua\n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. 
10	## Spatiantia astra \n\nFoeda, medio silva *errandum*: onus formam munere. Mutata bibulis est auxiliare arces etiamnunc verbis virgineo Priamidas illa Thescelus, nam fit locis lucis auras. Exitus hospes gratulor ut pondere [speslimite](http://www.curas.io/figuram); quid habent, Avernales faciente de. Pervenit Ino sonabile supplex cognoscenti vires, Bacchumque errat miserarum venandi dignabere dedisti. Discrimina iuncosaque virgaque tot sine superest [fissus](http://quos.org/sitet.aspx). Non color esset potest non sumit, sed vix arserat. Nisi immo silva tantum pectusque quos pennis quisquam artus!
11	## Dedit imago conspicuus cum capillis totidem inhibere\n\nLorem markdownum **rerum**, est limine: columbas: ab infelix hostem arbore nudis\ncrudelis. Videtur reliquit ambo ferrum dote sub amne fatis **illuc**, in magis,\nnec.
12	## Probant \n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. \n\n## Abit sua\n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. 
13	## Spatiantia astra \n\nFoeda, medio silva *errandum*: onus formam munere. Mutata bibulis est auxiliare arces etiamnunc verbis virgineo Priamidas illa Thescelus, nam fit locis lucis auras. Exitus hospes gratulor ut pondere [speslimite](http://www.curas.io/figuram); quid habent, Avernales faciente de. Pervenit Ino sonabile supplex cognoscenti vires, Bacchumque errat miserarum venandi dignabere dedisti. Discrimina iuncosaque virgaque tot sine superest [fissus](http://quos.org/sitet.aspx). Non color esset potest non sumit, sed vix arserat. Nisi immo silva tantum pectusque quos pennis quisquam artus!
14	## Probant \n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. \n\n## Abit sua\n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. 
15	## Spatiantia astra \n\nFoeda, medio silva *errandum*: onus formam munere. Mutata bibulis est auxiliare arces etiamnunc verbis virgineo Priamidas illa Thescelus, nam fit locis lucis auras. Exitus hospes gratulor ut pondere [speslimite](http://www.curas.io/figuram); quid habent, Avernales faciente de. Pervenit Ino sonabile supplex cognoscenti vires, Bacchumque errat miserarum venandi dignabere dedisti. Discrimina iuncosaque virgaque tot sine superest [fissus](http://quos.org/sitet.aspx). Non color esset potest non sumit, sed vix arserat. Nisi immo silva tantum pectusque quos pennis quisquam artus!
16	## Probant \n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. \n\n## Abit sua\n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. 
17	## Spatiantia astra \n\nFoeda, medio silva *errandum*: onus formam munere. Mutata bibulis est auxiliare arces etiamnunc verbis virgineo Priamidas illa Thescelus, nam fit locis lucis auras. Exitus hospes gratulor ut pondere [speslimite](http://www.curas.io/figuram); quid habent, Avernales faciente de. Pervenit Ino sonabile supplex cognoscenti vires, Bacchumque errat miserarum venandi dignabere dedisti. Discrimina iuncosaque virgaque tot sine superest [fissus](http://quos.org/sitet.aspx). Non color esset potest non sumit, sed vix arserat. Nisi immo silva tantum pectusque quos pennis quisquam artus!
\.


--
-- TOC entry 3709 (class 0 OID 24754)
-- Dependencies: 235
-- Data for Name: components_shared_seos; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.components_shared_seos (id, meta_title, meta_description) FROM stdin;
1	Page	A blog made with Strapi
\.


--
-- TOC entry 3711 (class 0 OID 24762)
-- Dependencies: 237
-- Data for Name: components_shared_sliders; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.components_shared_sliders (id) FROM stdin;
1
2
3
4
5
6
7
8
\.


--
-- TOC entry 3713 (class 0 OID 24767)
-- Dependencies: 239
-- Data for Name: files; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.files (id, document_id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	k92swahvkoq4h8qnni4sukv6	daviddoe@strapi	An image uploaded to Strapi called daviddoe@strapi	daviddoe@strapi	2418	2711	{"large": {"ext": ".jpeg", "url": "/uploads/large_daviddoe_strapi_d3c351d038.jpeg", "hash": "large_daviddoe_strapi_d3c351d038", "mime": "image/jpeg", "name": "large_daviddoe@strapi", "path": null, "size": 74.56, "width": 892, "height": 1000, "sizeInBytes": 74560}, "small": {"ext": ".jpeg", "url": "/uploads/small_daviddoe_strapi_d3c351d038.jpeg", "hash": "small_daviddoe_strapi_d3c351d038", "mime": "image/jpeg", "name": "small_daviddoe@strapi", "path": null, "size": 22.51, "width": 446, "height": 500, "sizeInBytes": 22509}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_daviddoe_strapi_d3c351d038.jpeg", "hash": "medium_daviddoe_strapi_d3c351d038", "mime": "image/jpeg", "name": "medium_daviddoe@strapi", "path": null, "size": 44.37, "width": 669, "height": 750, "sizeInBytes": 44372}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_daviddoe_strapi_d3c351d038.jpeg", "hash": "thumbnail_daviddoe_strapi_d3c351d038", "mime": "image/jpeg", "name": "thumbnail_daviddoe@strapi", "path": null, "size": 4.18, "width": 139, "height": 156, "sizeInBytes": 4175}}	daviddoe_strapi_d3c351d038	.jpeg	image/jpeg	587.69	/uploads/daviddoe_strapi_d3c351d038.jpeg	\N	local	\N	/	2025-01-05 23:38:43.831	2025-01-05 23:38:43.831	2025-01-05 23:38:43.833	\N	\N	\N
2	ov66wyqzdatj2rslyrdf8902	sarahbaker@strapi	An image uploaded to Strapi called sarahbaker@strapi	sarahbaker@strapi	3321	2746	{"large": {"ext": ".jpeg", "url": "/uploads/large_sarahbaker_strapi_9cfda5effb.jpeg", "hash": "large_sarahbaker_strapi_9cfda5effb", "mime": "image/jpeg", "name": "large_sarahbaker@strapi", "path": null, "size": 101.98, "width": 1000, "height": 827, "sizeInBytes": 101978}, "small": {"ext": ".jpeg", "url": "/uploads/small_sarahbaker_strapi_9cfda5effb.jpeg", "hash": "small_sarahbaker_strapi_9cfda5effb", "mime": "image/jpeg", "name": "small_sarahbaker@strapi", "path": null, "size": 30.58, "width": 500, "height": 413, "sizeInBytes": 30578}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_sarahbaker_strapi_9cfda5effb.jpeg", "hash": "medium_sarahbaker_strapi_9cfda5effb", "mime": "image/jpeg", "name": "medium_sarahbaker@strapi", "path": null, "size": 61.37, "width": 750, "height": 620, "sizeInBytes": 61368}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_sarahbaker_strapi_9cfda5effb.jpeg", "hash": "thumbnail_sarahbaker_strapi_9cfda5effb", "mime": "image/jpeg", "name": "thumbnail_sarahbaker@strapi", "path": null, "size": 6.68, "width": 189, "height": 156, "sizeInBytes": 6681}}	sarahbaker_strapi_9cfda5effb	.jpeg	image/jpeg	795.13	/uploads/sarahbaker_strapi_9cfda5effb.jpeg	\N	local	\N	/	2025-01-05 23:38:44.288	2025-01-05 23:38:44.288	2025-01-05 23:38:44.288	\N	\N	\N
3	na2juvyyarrrr4eu6ipyey6g	the-internet-s-own-boy	An image uploaded to Strapi called the-internet-s-own-boy	the-internet-s-own-boy	1200	707	{"large": {"ext": ".jpeg", "url": "/uploads/large_the_internet_s_own_boy_507f69d48e.jpeg", "hash": "large_the_internet_s_own_boy_507f69d48e", "mime": "image/jpeg", "name": "large_the-internet-s-own-boy", "path": null, "size": 70.11, "width": 1000, "height": 589, "sizeInBytes": 70105}, "small": {"ext": ".jpeg", "url": "/uploads/small_the_internet_s_own_boy_507f69d48e.jpeg", "hash": "small_the_internet_s_own_boy_507f69d48e", "mime": "image/jpeg", "name": "small_the-internet-s-own-boy", "path": null, "size": 25.31, "width": 500, "height": 295, "sizeInBytes": 25308}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_the_internet_s_own_boy_507f69d48e.jpeg", "hash": "medium_the_internet_s_own_boy_507f69d48e", "mime": "image/jpeg", "name": "medium_the-internet-s-own-boy", "path": null, "size": 45.93, "width": 750, "height": 442, "sizeInBytes": 45925}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_the_internet_s_own_boy_507f69d48e.jpeg", "hash": "thumbnail_the_internet_s_own_boy_507f69d48e", "mime": "image/jpeg", "name": "thumbnail_the-internet-s-own-boy", "path": null, "size": 8.38, "width": 245, "height": 144, "sizeInBytes": 8380}}	the_internet_s_own_boy_507f69d48e	.jpeg	image/jpeg	91.55	/uploads/the_internet_s_own_boy_507f69d48e.jpeg	\N	local	\N	/	2025-01-05 23:38:44.455	2025-01-05 23:38:44.455	2025-01-05 23:38:44.455	\N	\N	\N
4	xzgxdo2fh03ifnrattqm7icy	coffee-art	An image uploaded to Strapi called coffee-art	coffee-art	5824	3259	{"large": {"ext": ".jpeg", "url": "/uploads/large_coffee_art_7eb1323506.jpeg", "hash": "large_coffee_art_7eb1323506", "mime": "image/jpeg", "name": "large_coffee-art", "path": null, "size": 40.78, "width": 1000, "height": 559, "sizeInBytes": 40778}, "small": {"ext": ".jpeg", "url": "/uploads/small_coffee_art_7eb1323506.jpeg", "hash": "small_coffee_art_7eb1323506", "mime": "image/jpeg", "name": "small_coffee-art", "path": null, "size": 15.27, "width": 500, "height": 280, "sizeInBytes": 15273}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_coffee_art_7eb1323506.jpeg", "hash": "medium_coffee_art_7eb1323506", "mime": "image/jpeg", "name": "medium_coffee-art", "path": null, "size": 27.06, "width": 750, "height": 419, "sizeInBytes": 27063}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_coffee_art_7eb1323506.jpeg", "hash": "thumbnail_coffee_art_7eb1323506", "mime": "image/jpeg", "name": "thumbnail_coffee-art", "path": null, "size": 5.86, "width": 245, "height": 137, "sizeInBytes": 5860}}	coffee_art_7eb1323506	.jpeg	image/jpeg	978.11	/uploads/coffee_art_7eb1323506.jpeg	\N	local	\N	/	2025-01-05 23:38:45.297	2025-01-05 23:38:45.297	2025-01-05 23:38:45.297	\N	\N	\N
5	eevxy1gf5winnjf70pxju9uf	coffee-beans	An image uploaded to Strapi called coffee-beans	coffee-beans	5021	3347	{"large": {"ext": ".jpeg", "url": "/uploads/large_coffee_beans_9bc74cb3fe.jpeg", "hash": "large_coffee_beans_9bc74cb3fe", "mime": "image/jpeg", "name": "large_coffee-beans", "path": null, "size": 115.66, "width": 1000, "height": 666, "sizeInBytes": 115659}, "small": {"ext": ".jpeg", "url": "/uploads/small_coffee_beans_9bc74cb3fe.jpeg", "hash": "small_coffee_beans_9bc74cb3fe", "mime": "image/jpeg", "name": "small_coffee-beans", "path": null, "size": 31.11, "width": 500, "height": 333, "sizeInBytes": 31106}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_coffee_beans_9bc74cb3fe.jpeg", "hash": "medium_coffee_beans_9bc74cb3fe", "mime": "image/jpeg", "name": "medium_coffee-beans", "path": null, "size": 67.95, "width": 750, "height": 500, "sizeInBytes": 67954}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_coffee_beans_9bc74cb3fe.jpeg", "hash": "thumbnail_coffee_beans_9bc74cb3fe", "mime": "image/jpeg", "name": "thumbnail_coffee-beans", "path": null, "size": 7.96, "width": 234, "height": 156, "sizeInBytes": 7962}}	coffee_beans_9bc74cb3fe	.jpeg	image/jpeg	2346.20	/uploads/coffee_beans_9bc74cb3fe.jpeg	\N	local	\N	/	2025-01-05 23:38:46.337	2025-01-05 23:38:46.337	2025-01-05 23:38:46.337	\N	\N	\N
6	esrokv2x0cabtlmixvux32ma	this-shrimp-is-awesome	An image uploaded to Strapi called this-shrimp-is-awesome	this-shrimp-is-awesome	1200	630	{"large": {"ext": ".jpeg", "url": "/uploads/large_this_shrimp_is_awesome_bb49839dc4.jpeg", "hash": "large_this_shrimp_is_awesome_bb49839dc4", "mime": "image/jpeg", "name": "large_this-shrimp-is-awesome", "path": null, "size": 72.87, "width": 1000, "height": 525, "sizeInBytes": 72867}, "small": {"ext": ".jpeg", "url": "/uploads/small_this_shrimp_is_awesome_bb49839dc4.jpeg", "hash": "small_this_shrimp_is_awesome_bb49839dc4", "mime": "image/jpeg", "name": "small_this-shrimp-is-awesome", "path": null, "size": 26.93, "width": 500, "height": 263, "sizeInBytes": 26930}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_this_shrimp_is_awesome_bb49839dc4.jpeg", "hash": "medium_this_shrimp_is_awesome_bb49839dc4", "mime": "image/jpeg", "name": "medium_this-shrimp-is-awesome", "path": null, "size": 48.38, "width": 750, "height": 394, "sizeInBytes": 48380}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_this_shrimp_is_awesome_bb49839dc4.jpeg", "hash": "thumbnail_this_shrimp_is_awesome_bb49839dc4", "mime": "image/jpeg", "name": "thumbnail_this-shrimp-is-awesome", "path": null, "size": 9.63, "width": 245, "height": 129, "sizeInBytes": 9633}}	this_shrimp_is_awesome_bb49839dc4	.jpeg	image/jpeg	95.48	/uploads/this_shrimp_is_awesome_bb49839dc4.jpeg	\N	local	\N	/	2025-01-05 23:38:46.55	2025-01-05 23:38:46.55	2025-01-05 23:38:46.55	\N	\N	\N
7	ek6gjteuoggi9t9m7ube0m72	a-bug-is-becoming-a-meme-on-the-internet	An image uploaded to Strapi called a-bug-is-becoming-a-meme-on-the-internet	a-bug-is-becoming-a-meme-on-the-internet	3628	2419	{"large": {"ext": ".jpeg", "url": "/uploads/large_a_bug_is_becoming_a_meme_on_the_internet_7eaf0eb8ce.jpeg", "hash": "large_a_bug_is_becoming_a_meme_on_the_internet_7eaf0eb8ce", "mime": "image/jpeg", "name": "large_a-bug-is-becoming-a-meme-on-the-internet", "path": null, "size": 51.05, "width": 1000, "height": 666, "sizeInBytes": 51046}, "small": {"ext": ".jpeg", "url": "/uploads/small_a_bug_is_becoming_a_meme_on_the_internet_7eaf0eb8ce.jpeg", "hash": "small_a_bug_is_becoming_a_meme_on_the_internet_7eaf0eb8ce", "mime": "image/jpeg", "name": "small_a-bug-is-becoming-a-meme-on-the-internet", "path": null, "size": 19.27, "width": 500, "height": 333, "sizeInBytes": 19268}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_a_bug_is_becoming_a_meme_on_the_internet_7eaf0eb8ce.jpeg", "hash": "medium_a_bug_is_becoming_a_meme_on_the_internet_7eaf0eb8ce", "mime": "image/jpeg", "name": "medium_a-bug-is-becoming-a-meme-on-the-internet", "path": null, "size": 33.58, "width": 750, "height": 500, "sizeInBytes": 33577}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_a_bug_is_becoming_a_meme_on_the_internet_7eaf0eb8ce.jpeg", "hash": "thumbnail_a_bug_is_becoming_a_meme_on_the_internet_7eaf0eb8ce", "mime": "image/jpeg", "name": "thumbnail_a-bug-is-becoming-a-meme-on-the-internet", "path": null, "size": 6.74, "width": 234, "height": 156, "sizeInBytes": 6743}}	a_bug_is_becoming_a_meme_on_the_internet_7eaf0eb8ce	.jpeg	image/jpeg	234.02	/uploads/a_bug_is_becoming_a_meme_on_the_internet_7eaf0eb8ce.jpeg	\N	local	\N	/	2025-01-05 23:38:46.979	2025-01-05 23:38:46.979	2025-01-05 23:38:46.979	\N	\N	\N
8	bcs9oqaydpieq354vt5mans9	beautiful-picture	An image uploaded to Strapi called beautiful-picture	beautiful-picture	3824	2548	{"large": {"ext": ".jpeg", "url": "/uploads/large_beautiful_picture_c6ea33098b.jpeg", "hash": "large_beautiful_picture_c6ea33098b", "mime": "image/jpeg", "name": "large_beautiful-picture", "path": null, "size": 83.42, "width": 1000, "height": 666, "sizeInBytes": 83416}, "small": {"ext": ".jpeg", "url": "/uploads/small_beautiful_picture_c6ea33098b.jpeg", "hash": "small_beautiful_picture_c6ea33098b", "mime": "image/jpeg", "name": "small_beautiful-picture", "path": null, "size": 23.38, "width": 500, "height": 333, "sizeInBytes": 23380}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_beautiful_picture_c6ea33098b.jpeg", "hash": "medium_beautiful_picture_c6ea33098b", "mime": "image/jpeg", "name": "medium_beautiful-picture", "path": null, "size": 47.89, "width": 750, "height": 500, "sizeInBytes": 47888}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_beautiful_picture_c6ea33098b.jpeg", "hash": "thumbnail_beautiful_picture_c6ea33098b", "mime": "image/jpeg", "name": "thumbnail_beautiful-picture", "path": null, "size": 6.43, "width": 234, "height": 156, "sizeInBytes": 6427}}	beautiful_picture_c6ea33098b	.jpeg	image/jpeg	710.28	/uploads/beautiful_picture_c6ea33098b.jpeg	\N	local	\N	/	2025-01-05 23:38:47.434	2025-01-05 23:38:47.434	2025-01-05 23:38:47.435	\N	\N	\N
9	krwhbvjuqpsae4b8s5eafhkh	what-s-inside-a-black-hole	An image uploaded to Strapi called what-s-inside-a-black-hole	what-s-inside-a-black-hole	800	466	{"small": {"ext": ".jpeg", "url": "/uploads/small_what_s_inside_a_black_hole_c81e1a0b57.jpeg", "hash": "small_what_s_inside_a_black_hole_c81e1a0b57", "mime": "image/jpeg", "name": "small_what-s-inside-a-black-hole", "path": null, "size": 3.89, "width": 500, "height": 291, "sizeInBytes": 3889}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_what_s_inside_a_black_hole_c81e1a0b57.jpeg", "hash": "medium_what_s_inside_a_black_hole_c81e1a0b57", "mime": "image/jpeg", "name": "medium_what-s-inside-a-black-hole", "path": null, "size": 6.94, "width": 750, "height": 437, "sizeInBytes": 6935}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_what_s_inside_a_black_hole_c81e1a0b57.jpeg", "hash": "thumbnail_what_s_inside_a_black_hole_c81e1a0b57", "mime": "image/jpeg", "name": "thumbnail_what-s-inside-a-black-hole", "path": null, "size": 1.55, "width": 245, "height": 143, "sizeInBytes": 1549}}	what_s_inside_a_black_hole_c81e1a0b57	.jpeg	image/jpeg	7.50	/uploads/what_s_inside_a_black_hole_c81e1a0b57.jpeg	\N	local	\N	/	2025-01-05 23:38:47.621	2025-01-05 23:38:47.621	2025-01-05 23:38:47.621	\N	\N	\N
10	ntx95nzegsmbk0tem2apo3cg	favicon	An image uploaded to Strapi called favicon	favicon	512	512	{"small": {"ext": ".png", "url": "/uploads/small_favicon_d59b710b8f.png", "hash": "small_favicon_d59b710b8f", "mime": "image/png", "name": "small_favicon", "path": null, "size": 20.56, "width": 500, "height": 500, "sizeInBytes": 20560}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_favicon_d59b710b8f.png", "hash": "thumbnail_favicon_d59b710b8f", "mime": "image/png", "name": "thumbnail_favicon", "path": null, "size": 4.69, "width": 156, "height": 156, "sizeInBytes": 4690}}	favicon_d59b710b8f	.png	image/png	2.78	/uploads/favicon_d59b710b8f.png	\N	local	\N	/	2025-01-05 23:38:47.802	2025-01-05 23:38:47.802	2025-01-05 23:38:47.802	\N	\N	\N
11	j6rw6efrv69tat9g0t7drxtp	default-image	An image uploaded to Strapi called default-image	default-image	1208	715	{"large": {"ext": ".png", "url": "/uploads/large_default_image_c306f326a9.png", "hash": "large_default_image_c306f326a9", "mime": "image/png", "name": "large_default-image", "path": null, "size": 323.33, "width": 1000, "height": 592, "sizeInBytes": 323332}, "small": {"ext": ".png", "url": "/uploads/small_default_image_c306f326a9.png", "hash": "small_default_image_c306f326a9", "mime": "image/png", "name": "small_default-image", "path": null, "size": 74.09, "width": 500, "height": 296, "sizeInBytes": 74093}, "medium": {"ext": ".png", "url": "/uploads/medium_default_image_c306f326a9.png", "hash": "medium_default_image_c306f326a9", "mime": "image/png", "name": "medium_default-image", "path": null, "size": 170.23, "width": 750, "height": 444, "sizeInBytes": 170226}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_default_image_c306f326a9.png", "hash": "thumbnail_default_image_c306f326a9", "mime": "image/png", "name": "thumbnail_default-image", "path": null, "size": 20.6, "width": 245, "height": 145, "sizeInBytes": 20603}}	default_image_c306f326a9	.png	image/png	81.73	/uploads/default_image_c306f326a9.png	\N	local	\N	/	2025-01-05 23:38:48.154	2025-01-05 23:38:48.154	2025-01-05 23:38:48.155	\N	\N	\N
\.


--
-- TOC entry 3714 (class 0 OID 24773)
-- Dependencies: 240
-- Data for Name: files_folder_lnk; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.files_folder_lnk (id, file_id, folder_id, file_ord) FROM stdin;
\.


--
-- TOC entry 3717 (class 0 OID 24780)
-- Dependencies: 243
-- Data for Name: files_related_mph; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.files_related_mph (id, file_id, related_id, related_type, field, "order") FROM stdin;
1	1	1	api::author.author	avatar	1
2	2	2	api::author.author	avatar	1
3	4	1	shared.media	file	1
4	4	1	shared.slider	files	1
5	5	1	shared.slider	files	2
6	3	1	api::article.article	cover	1
7	4	2	shared.media	file	1
8	4	2	shared.slider	files	1
9	5	2	shared.slider	files	2
10	6	2	api::article.article	cover	1
11	4	3	shared.media	file	1
12	4	3	shared.slider	files	1
13	5	3	shared.slider	files	2
14	7	3	api::article.article	cover	1
15	4	4	shared.media	file	1
16	4	4	shared.slider	files	1
17	5	4	shared.slider	files	2
18	8	4	api::article.article	cover	1
19	4	5	shared.media	file	1
20	4	5	shared.slider	files	1
21	5	5	shared.slider	files	2
22	9	5	api::article.article	cover	1
23	11	1	shared.seo	shareImage	1
24	10	1	api::global.global	favicon	1
25	4	6	shared.media	file	1
26	4	7	shared.media	file	1
27	4	6	shared.slider	files	1
28	5	6	shared.slider	files	2
29	4	8	shared.media	file	1
30	4	7	shared.slider	files	1
31	5	7	shared.slider	files	2
32	4	9	shared.media	file	1
33	4	8	shared.slider	files	1
34	5	8	shared.slider	files	2
35	7	6	api::article.article	cover	1
36	8	7	api::article.article	cover	1
37	3	8	api::article.article	cover	1
\.


--
-- TOC entry 3719 (class 0 OID 24788)
-- Dependencies: 245
-- Data for Name: globals; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.globals (id, document_id, site_name, site_description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	gaebk4nfvdyzg3dyyys68uu0	Strapi Blog	A Blog made with Strapi	2025-01-05 23:38:48.217	2025-01-05 23:38:48.217	2025-01-05 23:38:48.209	\N	\N	\N
\.


--
-- TOC entry 3720 (class 0 OID 24794)
-- Dependencies: 246
-- Data for Name: globals_cmps; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.globals_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
1	1	1	shared.seo	defaultSeo	\N
\.


--
-- TOC entry 3723 (class 0 OID 24804)
-- Dependencies: 249
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.i18n_locale (id, document_id, name, code, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	ee0377hv3k1d4347ntkk36m8	English (en)	en	2025-01-05 23:38:38.158	2025-01-05 23:38:38.158	2025-01-05 23:38:38.159	\N	\N	\N
\.


--
-- TOC entry 3725 (class 0 OID 24812)
-- Dependencies: 251
-- Data for Name: jobs; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.jobs (id, document_id, type, title, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
5	bz53opqxou3qo1fyxdj26pvr	shortTermClean	City Apt Clean 2	2025-01-07 01:30:40.588	2025-01-07 01:30:40.588	\N	\N	\N	en
6	bz53opqxou3qo1fyxdj26pvr	shortTermClean	City Apt Clean 2	2025-01-07 01:30:40.588	2025-01-07 01:30:40.588	2025-01-07 01:30:40.595	\N	\N	en
7	puv2ropxbk9woq7p24qxr8cp	shortTermClean	City Apt Clean 2	2025-01-07 18:27:32.677	2025-01-07 18:27:32.677	\N	\N	\N	en
8	puv2ropxbk9woq7p24qxr8cp	shortTermClean	City Apt Clean 2	2025-01-07 18:27:32.677	2025-01-07 18:27:32.677	2025-01-07 18:27:32.688	\N	\N	en
9	xee59uqs2max8xvy9no3gf4z	shortTermClean	City Apt Clean 3	2025-01-07 18:27:41.042	2025-01-07 18:27:41.042	\N	\N	\N	en
10	xee59uqs2max8xvy9no3gf4z	shortTermClean	City Apt Clean 3	2025-01-07 18:27:41.042	2025-01-07 18:27:41.042	2025-01-07 18:27:41.052	\N	\N	en
11	pkmirliznekjm0851zvcsgqy	shortTermClean	City Apt Clean 3	2025-01-07 22:03:17.088	2025-01-07 22:03:17.088	\N	\N	\N	en
12	pkmirliznekjm0851zvcsgqy	shortTermClean	City Apt Clean 3	2025-01-07 22:03:17.088	2025-01-07 22:03:17.088	2025-01-07 22:03:17.102	\N	\N	en
13	z8wxmird8ptdtbrbodq9pynp	shortTermClean	City Apt Clean 3	2025-01-07 22:03:48.866	2025-01-07 22:03:48.866	\N	\N	\N	en
14	z8wxmird8ptdtbrbodq9pynp	shortTermClean	City Apt Clean 3	2025-01-07 22:03:48.866	2025-01-07 22:03:48.866	2025-01-07 22:03:48.877	\N	\N	en
1	g6hijufhqqs3c7wnuenjvfsz	shortTermClean	City Apt Clean	2025-01-07 01:12:38.364	2025-01-07 22:05:40.137	\N	1	1	en
15	g6hijufhqqs3c7wnuenjvfsz	shortTermClean	City Apt Clean	2025-01-07 01:12:38.364	2025-01-07 22:05:40.137	2025-01-07 22:05:40.162	1	1	en
17	ebrxkuninw7604itvoaeev3y	shortTermClean	City Apt Clean 3	2025-01-07 23:59:03.942	2025-01-07 23:59:03.942	\N	\N	\N	en
18	ebrxkuninw7604itvoaeev3y	shortTermClean	City Apt Clean 3	2025-01-07 23:59:03.942	2025-01-07 23:59:03.942	2025-01-07 23:59:03.952	\N	\N	en
19	jhqhi8exp9nx375ogf465mpn	shortTermClean	City Apt Clean 3	2025-01-07 23:59:25.628	2025-01-07 23:59:25.628	\N	\N	\N	en
20	jhqhi8exp9nx375ogf465mpn	shortTermClean	City Apt Clean 3	2025-01-07 23:59:25.628	2025-01-07 23:59:25.628	2025-01-07 23:59:25.647	\N	\N	en
21	ybve05xcawiag6yk9zfgwpq1	shortTermClean	City Apt Clean 3	2025-01-07 23:59:27.874	2025-01-07 23:59:27.874	\N	\N	\N	en
22	ybve05xcawiag6yk9zfgwpq1	shortTermClean	City Apt Clean 3	2025-01-07 23:59:27.874	2025-01-07 23:59:27.874	2025-01-07 23:59:27.882	\N	\N	en
3	pwxn9yavgr7khcw2rbyc1alm	shortTermClean	City Apt Clean 222	2025-01-07 01:30:36.132	2025-01-08 00:46:18.927	\N	\N	1	en
23	pwxn9yavgr7khcw2rbyc1alm	shortTermClean	City Apt Clean 222	2025-01-07 01:30:36.132	2025-01-08 00:46:18.927	2025-01-08 00:46:18.95	\N	1	en
\.


--
-- TOC entry 3782 (class 0 OID 25733)
-- Dependencies: 308
-- Data for Name: jobs_createdby_lnk; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.jobs_createdby_lnk (id, job_id, user_id) FROM stdin;
1	1	1
2	15	1
\.


--
-- TOC entry 3727 (class 0 OID 24820)
-- Dependencies: 253
-- Data for Name: strapi_api_token_permissions; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.strapi_api_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	lfckzetil8zevw3u3vcg9yl0	api::job.job.find	2025-01-07 01:30:21.325	2025-01-07 01:30:21.325	2025-01-07 01:30:21.325	\N	\N	\N
2	nkf2f7m8n9kml3hvh5jm2lcb	api::job.job.findOne	2025-01-07 01:30:21.325	2025-01-07 01:30:21.325	2025-01-07 01:30:21.326	\N	\N	\N
3	cgypj57zccb1vh0erl44fmt0	api::job.job.create	2025-01-07 01:30:21.325	2025-01-07 01:30:21.325	2025-01-07 01:30:21.326	\N	\N	\N
4	li8fp7m1l3g18nkdhdnbveyf	api::job.job.update	2025-01-07 01:30:21.325	2025-01-07 01:30:21.325	2025-01-07 01:30:21.326	\N	\N	\N
5	vods0j9udlmterxowtxy1e64	api::job.job.delete	2025-01-07 01:30:21.325	2025-01-07 01:30:21.325	2025-01-07 01:30:21.326	\N	\N	\N
\.


--
-- TOC entry 3729 (class 0 OID 24828)
-- Dependencies: 255
-- Data for Name: strapi_api_token_permissions_token_lnk; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.strapi_api_token_permissions_token_lnk (id, api_token_permission_id, api_token_id, api_token_permission_ord) FROM stdin;
1	5	2	1
2	1	2	1
3	2	2	1
4	3	2	1
5	4	2	1
\.


--
-- TOC entry 3731 (class 0 OID 24833)
-- Dependencies: 257
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.strapi_api_tokens (id, document_id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	dpretyncatoeky6pudg10yde	ReadOnlyToken	ReadOnlyToken	read-only	0ffd8e54b3605a9d47fef0ab84cc5ca306f928a7792bb84249ea96a3a074fa0a3854fd9551125ae8f1c108357d67bc31891a9c13772ffa9f42e85d4d60431752	\N	\N	\N	2025-01-07 01:14:03.356	2025-01-07 01:15:17.06	2025-01-07 01:14:03.357	\N	\N	\N
2	lij606efifk817pa1hk6elkw	FullJOBAPIToken	FullJOBAPIToken	custom	84a2ebf95bb9912ff80381032bd383a6d58aa47172dd58af62bce6e38076f2fcca07c60f795c76668f51eb38642a5436c18fc1b82ac836658d2972170d1dec83	\N	\N	\N	2025-01-07 01:30:21.302	2025-01-07 01:30:21.302	2025-01-07 01:30:21.302	\N	\N	\N
\.


--
-- TOC entry 3733 (class 0 OID 24841)
-- Dependencies: 259
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
7	plugin_content_manager_configuration_content_types::plugin::content-releases.release	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"releasedAt":{"edit":{"label":"releasedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"releasedAt","searchable":true,"sortable":true}},"scheduledAt":{"edit":{"label":"scheduledAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"scheduledAt","searchable":true,"sortable":true}},"timezone":{"edit":{"label":"timezone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"timezone","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"actions":{"edit":{"label":"actions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"contentType"},"list":{"label":"actions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","releasedAt","scheduledAt"],"edit":[[{"name":"name","size":6},{"name":"releasedAt","size":6}],[{"name":"scheduledAt","size":6},{"name":"timezone","size":6}],[{"name":"status","size":6},{"name":"actions","size":6}]]},"uid":"plugin::content-releases.release"}	object	\N	\N
9	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]},"uid":"plugin::i18n.locale"}	object	\N	\N
11	plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow-stage	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"color":{"edit":{"label":"color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"color","searchable":true,"sortable":true}},"workflow":{"edit":{"label":"workflow","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"workflow","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","color","workflow"],"edit":[[{"name":"name","size":6},{"name":"color","size":6}],[{"name":"workflow","size":6},{"name":"permissions","size":6}]]},"uid":"plugin::review-workflows.workflow-stage"}	object	\N	\N
12	plugin_content_manager_configuration_content_types::plugin::content-releases.release-action	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"contentType","defaultSortBy":"contentType","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"contentType":{"edit":{"label":"contentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentType","searchable":true,"sortable":true}},"entryDocumentId":{"edit":{"label":"entryDocumentId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"entryDocumentId","searchable":true,"sortable":true}},"release":{"edit":{"label":"release","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"release","searchable":true,"sortable":true}},"isEntryValid":{"edit":{"label":"isEntryValid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isEntryValid","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","contentType","entryDocumentId"],"edit":[[{"name":"type","size":6},{"name":"contentType","size":6}],[{"name":"entryDocumentId","size":6},{"name":"release","size":6}],[{"name":"isEntryValid","size":4}]]},"uid":"plugin::content-releases.release-action"}	object	\N	\N
21	plugin_content_manager_configuration_content_types::admin::role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6},{"name":"users","size":6}],[{"name":"permissions","size":6}]]},"uid":"admin::role"}	object	\N	\N
37	type_setup_initHasRun	true	boolean	development	\N
13	plugin_content_manager_configuration_content_types::plugin::upload.folder	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]},"uid":"plugin::upload.folder"}	object	\N	\N
8	plugin_content_manager_configuration_content_types::plugin::upload.file	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folder","size":6},{"name":"folderPath","size":6}]]},"uid":"plugin::upload.file"}	object	\N	\N
5	plugin_content_manager_configuration_components::shared.rich-text	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"body":{"edit":{"label":"body","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"body","searchable":false,"sortable":false}}},"layouts":{"list":["id"],"edit":[[{"name":"body","size":12}]]},"uid":"shared.rich-text","isComponent":true}	object	\N	\N
36	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null,"ssoLockedRoles":null}}	object	\N	\N
22	plugin_content_manager_configuration_content_types::api::global.global	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"siteName","defaultSortBy":"siteName","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"siteName":{"edit":{"label":"siteName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"siteName","searchable":true,"sortable":true}},"favicon":{"edit":{"label":"favicon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"favicon","searchable":false,"sortable":false}},"siteDescription":{"edit":{"label":"siteDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"siteDescription","searchable":true,"sortable":true}},"defaultSeo":{"edit":{"label":"defaultSeo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"defaultSeo","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","siteName","favicon","siteDescription"],"edit":[[{"name":"siteName","size":6},{"name":"favicon","size":6}],[{"name":"siteDescription","size":6}],[{"name":"defaultSeo","size":12}]]},"uid":"api::global.global"}	object	\N	\N
24	plugin_content_manager_configuration_content_types::api::category.category	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"articles":{"edit":{"label":"articles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"articles","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","slug","articles"],"edit":[[{"name":"name","size":6},{"name":"slug","size":6}],[{"name":"articles","size":6},{"name":"description","size":6}]]},"uid":"api::category.category"}	object	\N	\N
25	plugin_content_manager_configuration_content_types::admin::transfer-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::transfer-token-permission"}	object	\N	\N
17	plugin_content_manager_configuration_content_types::api::author.author	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"avatar":{"edit":{"label":"avatar","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"avatar","searchable":false,"sortable":false}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"articles":{"edit":{"label":"articles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"articles","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","avatar","email"],"edit":[[{"name":"name","size":6},{"name":"avatar","size":6}],[{"name":"email","size":6},{"name":"articles","size":6}]]},"uid":"api::author.author"}	object	\N	\N
27	plugin_content_manager_configuration_content_types::admin::api-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::api-token-permission"}	object	\N	\N
18	plugin_content_manager_configuration_content_types::api::article.article	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"cover":{"edit":{"label":"cover","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cover","searchable":false,"sortable":false}},"author":{"edit":{"label":"author","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"author","searchable":true,"sortable":true}},"category":{"edit":{"label":"category","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"category","searchable":true,"sortable":true}},"blocks":{"edit":{"label":"blocks","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocks","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","description","slug"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"slug","size":6},{"name":"cover","size":6}],[{"name":"author","size":6},{"name":"category","size":6}],[{"name":"blocks","size":12}]]},"uid":"api::article.article"}	object	\N	\N
32	plugin_i18n_default_locale	"en"	string	\N	\N
33	plugin_users-permissions_grant	{"email":{"icon":"envelope","enabled":true},"discord":{"icon":"discord","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"icon":"facebook-square","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/facebook/callback","scope":["email"]},"google":{"icon":"google","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/google/callback","scope":["email"]},"github":{"icon":"github","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"icon":"windows","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"icon":"twitter","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/twitter/callback"},"instagram":{"icon":"instagram","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"icon":"vk","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/vk/callback","scope":["email"]},"twitch":{"icon":"twitch","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"icon":"linkedin","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"icon":"aws","enabled":false,"key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"icon":"reddit","enabled":false,"key":"","secret":"","callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"icon":"book","enabled":false,"key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"},"patreon":{"icon":"","enabled":false,"key":"","secret":"","callback":"api/auth/patreon/callback","scope":["identity","identity[email]"]},"keycloak":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"myKeycloakProvider.com/realms/myrealm","callback":"api/auth/keycloak/callback","scope":["openid","email","profile"]}}	object	\N	\N
34	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
35	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object	\N	\N
26	plugin_content_manager_configuration_content_types::admin::api-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}],[{"name":"lastUsedAt","size":6},{"name":"permissions","size":6}],[{"name":"expiresAt","size":6},{"name":"lifespan","size":4}]]},"uid":"admin::api-token"}	object	\N	\N
28	plugin_content_manager_configuration_content_types::admin::transfer-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","accessKey"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"accessKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]},"uid":"admin::transfer-token"}	object	\N	\N
29	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false}	object	\N	\N
30	plugin_upload_view_configuration	{"pageSize":10,"sort":"createdAt:DESC"}	object	\N	\N
31	plugin_upload_metrics	{"weeklySchedule":"5 32 0 * * 1","lastWeeklyUpdate":1736083925048}	object	\N	\N
4	plugin_content_manager_configuration_components::shared.quote	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"body":{"edit":{"label":"body","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"body","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","body"],"edit":[[{"name":"title","size":6},{"name":"body","size":6}]]},"uid":"shared.quote","isComponent":true}	object	\N	\N
2	plugin_content_manager_configuration_components::shared.slider	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"files","searchable":false,"sortable":false}}},"layouts":{"list":["id","files"],"edit":[[{"name":"files","size":6}]]},"uid":"shared.slider","isComponent":true}	object	\N	\N
1	strapi_content_types_schema	{"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"files"}}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"plugin":"upload","globalId":"UploadFile","uid":"plugin::upload.file","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelName":"file"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"upload_folders"}}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"plugin":"upload","globalId":"UploadFolder","uid":"plugin::upload.folder","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true}},"kind":"collectionType"},"modelName":"folder"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::i18n.locale","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"i18n_locale"}}},"plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale","uid":"plugin::i18n.locale","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"i18n_locale","info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelName":"locale"},"plugin::content-releases.release":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_releases"}}},"plugin":"content-releases","globalId":"ContentReleasesRelease","uid":"plugin::content-releases.release","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"}},"kind":"collectionType"},"modelName":"release"},"plugin::content-releases.release-action":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_release_actions"}}},"plugin":"content-releases","globalId":"ContentReleasesReleaseAction","uid":"plugin::content-releases.release-action","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"}},"kind":"collectionType"},"modelName":"release-action"},"plugin::review-workflows.workflow":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflow","uid":"plugin::review-workflows.workflow","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"}},"kind":"collectionType"},"modelName":"workflow"},"plugin::review-workflows.workflow-stage":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0","draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow-stage","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows_stages"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflowStage","uid":"plugin::review-workflows.workflow-stage","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false}},"kind":"collectionType"},"modelName":"workflow-stage"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_permissions"}}},"plugin":"users-permissions","globalId":"UsersPermissionsPermission","uid":"plugin::users-permissions.permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelName":"permission","options":{"draftAndPublish":false}},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_roles"}}},"plugin":"users-permissions","globalId":"UsersPermissionsRole","uid":"plugin::users-permissions.role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelName":"role","options":{"draftAndPublish":false}},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"timestamps":true,"draftAndPublish":false},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"plugin":"users-permissions","globalId":"UsersPermissionsUser","kind":"collectionType","__filename__":"schema.json","uid":"plugin::users-permissions.user","modelType":"contentType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelName":"user"},"api::about.about":{"kind":"singleType","collectionName":"abouts","info":{"singularName":"about","pluralName":"abouts","displayName":"About","description":"Write about yourself and the content you create"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"title":{"type":"string"},"blocks":{"type":"dynamiczone","components":["shared.media","shared.quote","shared.rich-text","shared.slider"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::about.about","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"abouts"}}},"apiName":"about","globalId":"About","uid":"api::about.about","modelType":"contentType","__schema__":{"collectionName":"abouts","info":{"singularName":"about","pluralName":"abouts","displayName":"About","description":"Write about yourself and the content you create"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"title":{"type":"string"},"blocks":{"type":"dynamiczone","components":["shared.media","shared.quote","shared.rich-text","shared.slider"]}},"kind":"singleType"},"modelName":"about","actions":{},"lifecycles":{}},"api::article.article":{"kind":"collectionType","collectionName":"articles","info":{"singularName":"article","pluralName":"articles","displayName":"Article","description":"Create your blog content"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"description":{"type":"text","maxLength":80},"slug":{"type":"uid","targetField":"title"},"cover":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"author":{"type":"relation","relation":"manyToOne","target":"api::author.author","inversedBy":"articles"},"category":{"type":"relation","relation":"manyToOne","target":"api::category.category","inversedBy":"articles"},"blocks":{"type":"dynamiczone","components":["shared.media","shared.quote","shared.rich-text","shared.slider"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::article.article","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"articles"}}},"apiName":"article","globalId":"Article","uid":"api::article.article","modelType":"contentType","__schema__":{"collectionName":"articles","info":{"singularName":"article","pluralName":"articles","displayName":"Article","description":"Create your blog content"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"description":{"type":"text","maxLength":80},"slug":{"type":"uid","targetField":"title"},"cover":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"author":{"type":"relation","relation":"manyToOne","target":"api::author.author","inversedBy":"articles"},"category":{"type":"relation","relation":"manyToOne","target":"api::category.category","inversedBy":"articles"},"blocks":{"type":"dynamiczone","components":["shared.media","shared.quote","shared.rich-text","shared.slider"]}},"kind":"collectionType"},"modelName":"article","actions":{},"lifecycles":{}},"api::author.author":{"kind":"collectionType","collectionName":"authors","info":{"singularName":"author","pluralName":"authors","displayName":"Author","description":"Create authors for your content"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"},"avatar":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"email":{"type":"string"},"articles":{"type":"relation","relation":"oneToMany","target":"api::article.article","mappedBy":"author"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::author.author","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"authors"}}},"apiName":"author","globalId":"Author","uid":"api::author.author","modelType":"contentType","__schema__":{"collectionName":"authors","info":{"singularName":"author","pluralName":"authors","displayName":"Author","description":"Create authors for your content"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"},"avatar":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"email":{"type":"string"},"articles":{"type":"relation","relation":"oneToMany","target":"api::article.article","mappedBy":"author"}},"kind":"collectionType"},"modelName":"author","actions":{},"lifecycles":{}},"api::category.category":{"kind":"collectionType","collectionName":"categories","info":{"singularName":"category","pluralName":"categories","displayName":"Category","description":"Organize your content into categories"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"},"slug":{"type":"uid"},"articles":{"type":"relation","relation":"oneToMany","target":"api::article.article","mappedBy":"category"},"description":{"type":"text"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::category.category","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"categories"}}},"apiName":"category","globalId":"Category","uid":"api::category.category","modelType":"contentType","__schema__":{"collectionName":"categories","info":{"singularName":"category","pluralName":"categories","displayName":"Category","description":"Organize your content into categories"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"},"slug":{"type":"uid"},"articles":{"type":"relation","relation":"oneToMany","target":"api::article.article","mappedBy":"category"},"description":{"type":"text"}},"kind":"collectionType"},"modelName":"category","actions":{},"lifecycles":{}},"api::global.global":{"kind":"singleType","collectionName":"globals","info":{"singularName":"global","pluralName":"globals","displayName":"Global","description":"Define global settings"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"siteName":{"type":"string","required":true},"favicon":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"siteDescription":{"type":"text","required":true},"defaultSeo":{"type":"component","repeatable":false,"component":"shared.seo"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::global.global","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"globals"}}},"apiName":"global","globalId":"Global","uid":"api::global.global","modelType":"contentType","__schema__":{"collectionName":"globals","info":{"singularName":"global","pluralName":"globals","displayName":"Global","description":"Define global settings"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"siteName":{"type":"string","required":true},"favicon":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"siteDescription":{"type":"text","required":true},"defaultSeo":{"type":"component","repeatable":false,"component":"shared.seo"}},"kind":"singleType"},"modelName":"global","actions":{},"lifecycles":{}},"api::job.job":{"kind":"collectionType","collectionName":"jobs","info":{"singularName":"job","pluralName":"jobs","displayName":"job","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"type":{"pluginOptions":{"i18n":{"localized":true}},"type":"string","required":true,"maxLength":32},"title":{"pluginOptions":{"i18n":{"localized":true}},"type":"string","required":true,"maxLength":256},"createdby":{"type":"relation","relation":"oneToOne","target":"plugin::users-permissions.user"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::job.job","writable":false,"private":false,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"jobs"}}},"apiName":"job","globalId":"Job","uid":"api::job.job","modelType":"contentType","__schema__":{"collectionName":"jobs","info":{"singularName":"job","pluralName":"jobs","displayName":"job","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"type":{"pluginOptions":{"i18n":{"localized":true}},"type":"string","required":true,"maxLength":32},"title":{"pluginOptions":{"i18n":{"localized":true}},"type":"string","required":true,"maxLength":256},"createdby":{"type":"relation","relation":"oneToOne","target":"plugin::users-permissions.user"}},"kind":"collectionType"},"modelName":"job","actions":{},"lifecycles":{}},"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_permissions"}}},"plugin":"admin","globalId":"AdminPermission","uid":"admin::permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelName":"permission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"registrationToken":{"hidden":true}}},"plugin":"admin","globalId":"AdminUser","uid":"admin::user","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelName":"user","options":{"draftAndPublish":false}},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_roles"}}},"plugin":"admin","globalId":"AdminRole","uid":"admin::role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelName":"role"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_tokens"}}},"plugin":"admin","globalId":"AdminApiToken","uid":"admin::api-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"api-token"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_token_permissions"}}},"plugin":"admin","globalId":"AdminApiTokenPermission","uid":"admin::api-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelName":"api-token-permission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_tokens"}}},"plugin":"admin","globalId":"AdminTransferToken","uid":"admin::transfer-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"transfer-token"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_token_permissions"}}},"plugin":"admin","globalId":"AdminTransferTokenPermission","uid":"admin::transfer-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelName":"transfer-token-permission"}}	object	\N	\N
3	plugin_content_manager_configuration_components::shared.seo	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"metaTitle","defaultSortBy":"metaTitle","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"metaTitle":{"edit":{"label":"metaTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaTitle","searchable":true,"sortable":true}},"metaDescription":{"edit":{"label":"metaDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaDescription","searchable":true,"sortable":true}},"shareImage":{"edit":{"label":"shareImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"shareImage","searchable":false,"sortable":false}}},"layouts":{"list":["id","metaTitle","metaDescription","shareImage"],"edit":[[{"name":"metaTitle","size":6},{"name":"metaDescription","size":6}],[{"name":"shareImage","size":6}]]},"uid":"shared.seo","isComponent":true}	object	\N	\N
6	plugin_content_manager_configuration_components::shared.media	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"file":{"edit":{"label":"file","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"file","searchable":false,"sortable":false}}},"layouts":{"list":["id","file"],"edit":[[{"name":"file","size":6}]]},"uid":"shared.media","isComponent":true}	object	\N	\N
14	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.user"}	object	\N	\N
15	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.permission"}	object	\N	\N
23	plugin_content_manager_configuration_content_types::api::about.about	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"blocks":{"edit":{"label":"blocks","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocks","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","createdAt","updatedAt"],"edit":[[{"name":"title","size":6}],[{"name":"blocks","size":12}]]},"uid":"api::about.about"}	object	\N	\N
16	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"permissions","size":6}],[{"name":"users","size":6}]]},"uid":"plugin::users-permissions.role"}	object	\N	\N
19	plugin_content_manager_configuration_content_types::admin::permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"actionParameters":{"edit":{"label":"actionParameters","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"actionParameters","searchable":false,"sortable":false}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"edit":[[{"name":"action","size":6}],[{"name":"actionParameters","size":12}],[{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}],[{"name":"role","size":6}]]},"uid":"admin::permission"}	object	\N	\N
10	plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"stages":{"edit":{"label":"stages","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"stages","searchable":false,"sortable":false}},"stageRequiredToPublish":{"edit":{"label":"stageRequiredToPublish","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"stageRequiredToPublish","searchable":true,"sortable":true}},"contentTypes":{"edit":{"label":"contentTypes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentTypes","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","stages","stageRequiredToPublish"],"edit":[[{"name":"name","size":6},{"name":"stages","size":6}],[{"name":"stageRequiredToPublish","size":6}],[{"name":"contentTypes","size":12}]]},"uid":"plugin::review-workflows.workflow"}	object	\N	\N
20	plugin_content_manager_configuration_content_types::admin::user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"isActive","size":4}],[{"name":"roles","size":6},{"name":"blocked","size":4}],[{"name":"preferedLanguage","size":6}]]},"uid":"admin::user"}	object	\N	\N
38	plugin_content_manager_configuration_content_types::api::job.job	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"type","defaultSortBy":"type","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"createdby":{"edit":{"label":"createdby","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"createdby","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","title","createdAt"],"edit":[[{"name":"type","size":6},{"name":"title","size":6}],[{"name":"createdby","size":6}]]},"uid":"api::job.job"}	object	\N	\N
\.


--
-- TOC entry 3735 (class 0 OID 24849)
-- Dependencies: 261
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.strapi_database_schema (id, schema, "time", hash) FROM stdin;
5	{"tables":[{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_documents_idx","columns":["document_id","locale","published_at"]},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_documents_idx","columns":["document_id","locale","published_at"]},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_documents_idx","columns":["document_id","locale","published_at"]},{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_releases","indexes":[{"name":"strapi_releases_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"released_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"scheduled_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"timezone","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_release_actions","indexes":[{"name":"strapi_release_actions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"entry_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_entry_valid","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows","indexes":[{"name":"strapi_workflows_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_types","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_workflows_stages","indexes":[{"name":"strapi_workflows_stages_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_roles","indexes":[{"name":"up_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_users","indexes":[{"name":"up_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"abouts_cmps","indexes":[{"name":"abouts_field_idx","columns":["field"]},{"name":"abouts_component_type_idx","columns":["component_type"]},{"name":"abouts_entity_fk","columns":["entity_id"]},{"name":"abouts_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"abouts_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"abouts","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"abouts","indexes":[{"name":"abouts_documents_idx","columns":["document_id","locale","published_at"]},{"name":"abouts_created_by_id_fk","columns":["created_by_id"]},{"name":"abouts_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"abouts_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"abouts_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"articles_cmps","indexes":[{"name":"articles_field_idx","columns":["field"]},{"name":"articles_component_type_idx","columns":["component_type"]},{"name":"articles_entity_fk","columns":["entity_id"]},{"name":"articles_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"articles_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"articles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"articles","indexes":[{"name":"articles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"articles_created_by_id_fk","columns":["created_by_id"]},{"name":"articles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"articles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"articles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"authors","indexes":[{"name":"authors_documents_idx","columns":["document_id","locale","published_at"]},{"name":"authors_created_by_id_fk","columns":["created_by_id"]},{"name":"authors_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"authors_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"authors_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"categories","indexes":[{"name":"categories_documents_idx","columns":["document_id","locale","published_at"]},{"name":"categories_created_by_id_fk","columns":["created_by_id"]},{"name":"categories_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"categories_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"categories_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"globals_cmps","indexes":[{"name":"globals_field_idx","columns":["field"]},{"name":"globals_component_type_idx","columns":["component_type"]},{"name":"globals_entity_fk","columns":["entity_id"]},{"name":"globals_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"globals_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"globals","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"globals","indexes":[{"name":"globals_documents_idx","columns":["document_id","locale","published_at"]},{"name":"globals_created_by_id_fk","columns":["created_by_id"]},{"name":"globals_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"globals_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"globals_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"site_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"site_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"jobs","indexes":[{"name":"jobs_documents_idx","columns":["document_id","locale","published_at"]},{"name":"jobs_created_by_id_fk","columns":["created_by_id"]},{"name":"jobs_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"jobs_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"jobs_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action_parameters","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_users","indexes":[{"name":"admin_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_tokens","indexes":[{"name":"strapi_transfer_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_token_permissions","indexes":[{"name":"strapi_transfer_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_sliders","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_shared_seos","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"meta_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"meta_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_rich_texts","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"body","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_quotes","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"body","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_media","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_history_versions","indexes":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"]}],"foreignKeys":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"related_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"data","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"schema","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_mph","indexes":[{"name":"files_related_mph_fk","columns":["file_id"]},{"name":"files_related_mph_oidx","columns":["order"]},{"name":"files_related_mph_idix","columns":["related_id"]}],"foreignKeys":[{"name":"files_related_mph_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_lnk","indexes":[{"name":"files_folder_lnk_fk","columns":["file_id"]},{"name":"files_folder_lnk_ifk","columns":["folder_id"]},{"name":"files_folder_lnk_uq","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_lnk_oifk","columns":["file_ord"]}],"foreignKeys":[{"name":"files_folder_lnk_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_lnk_ifk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_lnk","indexes":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"]},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_lnk_uq","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_lnk_oifk","columns":["folder_ord"]}],"foreignKeys":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_release_actions_release_lnk","indexes":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"]},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"]},{"name":"strapi_release_actions_release_lnk_uq","columns":["release_action_id","release_id"],"type":"unique"},{"name":"strapi_release_actions_release_lnk_oifk","columns":["release_action_ord"]}],"foreignKeys":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"],"referencedColumns":["id"],"referencedTable":"strapi_release_actions","onDelete":"CASCADE"},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"],"referencedColumns":["id"],"referencedTable":"strapi_releases","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"release_action_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_action_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stage_required_to_publish_lnk","indexes":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_uq","columns":["workflow_id","workflow_stage_id"],"type":"unique"}],"foreignKeys":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_workflow_lnk","indexes":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"]},{"name":"strapi_workflows_stages_workflow_lnk_uq","columns":["workflow_stage_id","workflow_id"],"type":"unique"},{"name":"strapi_workflows_stages_workflow_lnk_oifk","columns":["workflow_stage_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_permissions_lnk","indexes":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"]},{"name":"strapi_workflows_stages_permissions_lnk_uq","columns":["workflow_stage_id","permission_id"],"type":"unique"},{"name":"strapi_workflows_stages_permissions_lnk_ofk","columns":["permission_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_lnk","indexes":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"up_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_lnk","indexes":[{"name":"up_users_role_lnk_fk","columns":["user_id"]},{"name":"up_users_role_lnk_ifk","columns":["role_id"]},{"name":"up_users_role_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"up_users_role_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"articles_author_lnk","indexes":[{"name":"articles_author_lnk_fk","columns":["article_id"]},{"name":"articles_author_lnk_ifk","columns":["author_id"]},{"name":"articles_author_lnk_uq","columns":["article_id","author_id"],"type":"unique"},{"name":"articles_author_lnk_oifk","columns":["article_ord"]}],"foreignKeys":[{"name":"articles_author_lnk_fk","columns":["article_id"],"referencedColumns":["id"],"referencedTable":"articles","onDelete":"CASCADE"},{"name":"articles_author_lnk_ifk","columns":["author_id"],"referencedColumns":["id"],"referencedTable":"authors","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"article_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"author_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"article_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"articles_category_lnk","indexes":[{"name":"articles_category_lnk_fk","columns":["article_id"]},{"name":"articles_category_lnk_ifk","columns":["category_id"]},{"name":"articles_category_lnk_uq","columns":["article_id","category_id"],"type":"unique"},{"name":"articles_category_lnk_oifk","columns":["article_ord"]}],"foreignKeys":[{"name":"articles_category_lnk_fk","columns":["article_id"],"referencedColumns":["id"],"referencedTable":"articles","onDelete":"CASCADE"},{"name":"articles_category_lnk_ifk","columns":["category_id"],"referencedColumns":["id"],"referencedTable":"categories","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"article_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"category_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"article_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"jobs_createdby_lnk","indexes":[{"name":"jobs_createdby_lnk_fk","columns":["job_id"]},{"name":"jobs_createdby_lnk_ifk","columns":["user_id"]},{"name":"jobs_createdby_lnk_uq","columns":["job_id","user_id"],"type":"unique"}],"foreignKeys":[{"name":"jobs_createdby_lnk_fk","columns":["job_id"],"referencedColumns":["id"],"referencedTable":"jobs","onDelete":"CASCADE"},{"name":"jobs_createdby_lnk_ifk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"job_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_permissions_role_lnk","indexes":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"admin_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_lnk","indexes":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"]},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"]},{"name":"admin_users_roles_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_lnk_ofk","columns":["role_ord"]},{"name":"admin_users_roles_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_lnk","indexes":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_lnk_uq","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_lnk_oifk","columns":["api_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions_token_lnk","indexes":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_uq","columns":["transfer_token_permission_id","transfer_token_id"],"type":"unique"},{"name":"strapi_transfer_token_permissions_token_lnk_oifk","columns":["transfer_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_token_permissions","onDelete":"CASCADE"},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"transfer_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2025-01-07 22:03:32.544	fee8fb3ff77cf54d03e18f7eea5084dd
\.


--
-- TOC entry 3737 (class 0 OID 24857)
-- Dependencies: 263
-- Data for Name: strapi_history_versions; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.strapi_history_versions (id, content_type, related_document_id, locale, status, data, schema, created_at, created_by_id) FROM stdin;
\.


--
-- TOC entry 3739 (class 0 OID 24865)
-- Dependencies: 265
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- TOC entry 3741 (class 0 OID 24870)
-- Dependencies: 267
-- Data for Name: strapi_migrations_internal; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.strapi_migrations_internal (id, name, "time") FROM stdin;
1	5.0.0-rename-identifiers-longer-than-max-length	2025-01-05 23:38:33.592
2	5.0.0-02-created-document-id	2025-01-05 23:38:33.667
3	5.0.0-03-created-locale	2025-01-05 23:38:33.742
4	5.0.0-04-created-published-at	2025-01-05 23:38:33.814
5	5.0.0-05-drop-slug-fields-index	2025-01-05 23:38:33.897
6	core::5.0.0-discard-drafts	2025-01-05 23:38:33.984
\.


--
-- TOC entry 3743 (class 0 OID 24875)
-- Dependencies: 269
-- Data for Name: strapi_release_actions; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.strapi_release_actions (id, document_id, type, content_type, entry_document_id, locale, is_entry_valid, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- TOC entry 3745 (class 0 OID 24883)
-- Dependencies: 271
-- Data for Name: strapi_release_actions_release_lnk; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.strapi_release_actions_release_lnk (id, release_action_id, release_id, release_action_ord) FROM stdin;
\.


--
-- TOC entry 3747 (class 0 OID 24888)
-- Dependencies: 273
-- Data for Name: strapi_releases; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.strapi_releases (id, document_id, name, released_at, scheduled_at, timezone, status, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 3749 (class 0 OID 24896)
-- Dependencies: 275
-- Data for Name: strapi_transfer_token_permissions; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.strapi_transfer_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 3751 (class 0 OID 24904)
-- Dependencies: 277
-- Data for Name: strapi_transfer_token_permissions_token_lnk; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.strapi_transfer_token_permissions_token_lnk (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_ord) FROM stdin;
\.


--
-- TOC entry 3753 (class 0 OID 24909)
-- Dependencies: 279
-- Data for Name: strapi_transfer_tokens; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.strapi_transfer_tokens (id, document_id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 3755 (class 0 OID 24917)
-- Dependencies: 281
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- TOC entry 3757 (class 0 OID 24925)
-- Dependencies: 283
-- Data for Name: strapi_workflows; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.strapi_workflows (id, document_id, name, content_types, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 3759 (class 0 OID 24933)
-- Dependencies: 285
-- Data for Name: strapi_workflows_stage_required_to_publish_lnk; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.strapi_workflows_stage_required_to_publish_lnk (id, workflow_id, workflow_stage_id) FROM stdin;
\.


--
-- TOC entry 3761 (class 0 OID 24938)
-- Dependencies: 287
-- Data for Name: strapi_workflows_stages; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.strapi_workflows_stages (id, document_id, name, color, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 3763 (class 0 OID 24946)
-- Dependencies: 289
-- Data for Name: strapi_workflows_stages_permissions_lnk; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.strapi_workflows_stages_permissions_lnk (id, workflow_stage_id, permission_id, permission_ord) FROM stdin;
\.


--
-- TOC entry 3765 (class 0 OID 24951)
-- Dependencies: 291
-- Data for Name: strapi_workflows_stages_workflow_lnk; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.strapi_workflows_stages_workflow_lnk (id, workflow_stage_id, workflow_id, workflow_stage_ord) FROM stdin;
\.


--
-- TOC entry 3767 (class 0 OID 24956)
-- Dependencies: 293
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.up_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	t73maxd3fdgeny0b7awx0pxm	plugin::users-permissions.user.me	2025-01-05 23:38:38.374	2025-01-05 23:38:38.374	2025-01-05 23:38:38.375	\N	\N	\N
2	lrgoqsfon3ifqrtkzblaqdns	plugin::users-permissions.auth.changePassword	2025-01-05 23:38:38.374	2025-01-05 23:38:38.374	2025-01-05 23:38:38.375	\N	\N	\N
3	ro3nk44a42xmbv5gzbrktq13	plugin::users-permissions.auth.callback	2025-01-05 23:38:38.429	2025-01-05 23:38:38.429	2025-01-05 23:38:38.429	\N	\N	\N
4	ij5ua97qvcrc8l4j60wyfuy1	plugin::users-permissions.auth.connect	2025-01-05 23:38:38.429	2025-01-05 23:38:38.429	2025-01-05 23:38:38.429	\N	\N	\N
5	am737swf4z1xw8hudwx8xx87	plugin::users-permissions.auth.register	2025-01-05 23:38:38.429	2025-01-05 23:38:38.429	2025-01-05 23:38:38.43	\N	\N	\N
6	hckweexfy96jynunfoz9ccm9	plugin::users-permissions.auth.resetPassword	2025-01-05 23:38:38.429	2025-01-05 23:38:38.429	2025-01-05 23:38:38.43	\N	\N	\N
7	kaf4qlaao42hwlfngymlg3b5	plugin::users-permissions.auth.forgotPassword	2025-01-05 23:38:38.429	2025-01-05 23:38:38.429	2025-01-05 23:38:38.43	\N	\N	\N
8	pgyse79x3ddrwawgv1ycszfq	plugin::users-permissions.auth.emailConfirmation	2025-01-05 23:38:38.429	2025-01-05 23:38:38.429	2025-01-05 23:38:38.43	\N	\N	\N
9	peqno408uqw2i2gbtygtuwez	plugin::users-permissions.auth.sendEmailConfirmation	2025-01-05 23:38:38.429	2025-01-05 23:38:38.429	2025-01-05 23:38:38.43	\N	\N	\N
10	rcavop35suueewzuqp38dpf4	api::article.article.findOne	2025-01-05 23:38:43.306	2025-01-05 23:38:43.306	2025-01-05 23:38:43.306	\N	\N	\N
11	witzh2peb5fsnjnwk8fvd9cr	api::article.article.find	2025-01-05 23:38:43.306	2025-01-05 23:38:43.306	2025-01-05 23:38:43.306	\N	\N	\N
12	vvjmajvxdf4s5u09nn2uiivw	api::category.category.find	2025-01-05 23:38:43.306	2025-01-05 23:38:43.306	2025-01-05 23:38:43.306	\N	\N	\N
13	aru8865nrvij2fo0ngxp8snt	api::category.category.findOne	2025-01-05 23:38:43.306	2025-01-05 23:38:43.306	2025-01-05 23:38:43.307	\N	\N	\N
14	gj18mqje7dqk49v1nf04uitz	api::author.author.findOne	2025-01-05 23:38:43.306	2025-01-05 23:38:43.306	2025-01-05 23:38:43.307	\N	\N	\N
15	t2zq1rhcokm4s6p273k8ada7	api::author.author.find	2025-01-05 23:38:43.306	2025-01-05 23:38:43.306	2025-01-05 23:38:43.307	\N	\N	\N
16	y3712lh5i3bujn99zfkm6t25	api::global.global.find	2025-01-05 23:38:43.306	2025-01-05 23:38:43.306	2025-01-05 23:38:43.307	\N	\N	\N
18	j3zxv4muyctaeb8utjrt9yix	api::about.about.find	2025-01-05 23:38:43.306	2025-01-05 23:38:43.306	2025-01-05 23:38:43.308	\N	\N	\N
\.


--
-- TOC entry 3769 (class 0 OID 24964)
-- Dependencies: 295
-- Data for Name: up_permissions_role_lnk; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.up_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
1	1	1	1
2	2	1	1
3	3	2	1
4	9	2	1
5	7	2	1
6	4	2	1
7	6	2	1
8	8	2	1
9	5	2	1
10	10	2	2
12	11	2	2
13	14	2	2
11	15	2	2
14	12	2	2
17	18	2	2
18	13	2	2
19	16	2	2
\.


--
-- TOC entry 3771 (class 0 OID 24969)
-- Dependencies: 297
-- Data for Name: up_roles; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.up_roles (id, document_id, name, description, type, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	babge13ozi098dvvzuajramv	Authenticated	Default role given to authenticated user.	authenticated	2025-01-05 23:38:38.337	2025-01-05 23:38:38.337	2025-01-05 23:38:38.337	\N	\N	\N
2	ur9r7vyt2efhyftoyakcv5z9	Public	Default role given to unauthenticated user.	public	2025-01-05 23:38:38.354	2025-01-05 23:38:38.354	2025-01-05 23:38:38.354	\N	\N	\N
\.


--
-- TOC entry 3773 (class 0 OID 24977)
-- Dependencies: 299
-- Data for Name: up_users; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.up_users (id, document_id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	xql0frxuvxrcm0rrbwpplg6e	username_a1	jojo5544+username_a1@gmail.com	local	$2a$10$bpNWqAuSzFnhQzV72e7Ry.x.w2Qbdznx1EihZdm9CVK9bSm/XBdZy	\N	\N	t	f	2025-01-07 22:05:10.67	2025-01-07 22:05:10.67	2025-01-07 22:05:10.539	1	1	\N
\.


--
-- TOC entry 3775 (class 0 OID 24985)
-- Dependencies: 301
-- Data for Name: up_users_role_lnk; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.up_users_role_lnk (id, user_id, role_id, user_ord) FROM stdin;
1	1	1	1
\.


--
-- TOC entry 3777 (class 0 OID 24990)
-- Dependencies: 303
-- Data for Name: upload_folders; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.upload_folders (id, document_id, name, path_id, path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 3779 (class 0 OID 24998)
-- Dependencies: 305
-- Data for Name: upload_folders_parent_lnk; Type: TABLE DATA; Schema: acstrapi; Owner: acstrapi
--

COPY acstrapi.upload_folders_parent_lnk (id, folder_id, inv_folder_id, folder_ord) FROM stdin;
\.


--
-- TOC entry 3844 (class 0 OID 0)
-- Dependencies: 205
-- Name: abouts_cmps_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.abouts_cmps_id_seq', 3, true);


--
-- TOC entry 3845 (class 0 OID 0)
-- Dependencies: 206
-- Name: abouts_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.abouts_id_seq', 1, true);


--
-- TOC entry 3846 (class 0 OID 0)
-- Dependencies: 208
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.admin_permissions_id_seq', 167, true);


--
-- TOC entry 3847 (class 0 OID 0)
-- Dependencies: 210
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.admin_permissions_role_lnk_id_seq', 167, true);


--
-- TOC entry 3848 (class 0 OID 0)
-- Dependencies: 212
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.admin_roles_id_seq', 5, true);


--
-- TOC entry 3849 (class 0 OID 0)
-- Dependencies: 214
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.admin_users_id_seq', 1, true);


--
-- TOC entry 3850 (class 0 OID 0)
-- Dependencies: 216
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.admin_users_roles_lnk_id_seq', 1, true);


--
-- TOC entry 3851 (class 0 OID 0)
-- Dependencies: 219
-- Name: articles_author_lnk_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.articles_author_lnk_id_seq', 8, true);


--
-- TOC entry 3852 (class 0 OID 0)
-- Dependencies: 221
-- Name: articles_category_lnk_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.articles_category_lnk_id_seq', 8, true);


--
-- TOC entry 3853 (class 0 OID 0)
-- Dependencies: 223
-- Name: articles_cmps_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.articles_cmps_id_seq', 40, true);


--
-- TOC entry 3854 (class 0 OID 0)
-- Dependencies: 224
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.articles_id_seq', 8, true);


--
-- TOC entry 3855 (class 0 OID 0)
-- Dependencies: 226
-- Name: authors_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.authors_id_seq', 2, true);


--
-- TOC entry 3856 (class 0 OID 0)
-- Dependencies: 228
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.categories_id_seq', 5, true);


--
-- TOC entry 3857 (class 0 OID 0)
-- Dependencies: 230
-- Name: components_shared_media_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.components_shared_media_id_seq', 9, true);


--
-- TOC entry 3858 (class 0 OID 0)
-- Dependencies: 232
-- Name: components_shared_quotes_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.components_shared_quotes_id_seq', 9, true);


--
-- TOC entry 3859 (class 0 OID 0)
-- Dependencies: 234
-- Name: components_shared_rich_texts_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.components_shared_rich_texts_id_seq', 17, true);


--
-- TOC entry 3860 (class 0 OID 0)
-- Dependencies: 236
-- Name: components_shared_seos_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.components_shared_seos_id_seq', 1, true);


--
-- TOC entry 3861 (class 0 OID 0)
-- Dependencies: 238
-- Name: components_shared_sliders_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.components_shared_sliders_id_seq', 8, true);


--
-- TOC entry 3862 (class 0 OID 0)
-- Dependencies: 241
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.files_folder_lnk_id_seq', 1, false);


--
-- TOC entry 3863 (class 0 OID 0)
-- Dependencies: 242
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.files_id_seq', 11, true);


--
-- TOC entry 3864 (class 0 OID 0)
-- Dependencies: 244
-- Name: files_related_mph_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.files_related_mph_id_seq', 37, true);


--
-- TOC entry 3865 (class 0 OID 0)
-- Dependencies: 247
-- Name: globals_cmps_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.globals_cmps_id_seq', 1, true);


--
-- TOC entry 3866 (class 0 OID 0)
-- Dependencies: 248
-- Name: globals_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.globals_id_seq', 1, true);


--
-- TOC entry 3867 (class 0 OID 0)
-- Dependencies: 250
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.i18n_locale_id_seq', 1, true);


--
-- TOC entry 3868 (class 0 OID 0)
-- Dependencies: 307
-- Name: jobs_createdby_lnk_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.jobs_createdby_lnk_id_seq', 2, true);


--
-- TOC entry 3869 (class 0 OID 0)
-- Dependencies: 252
-- Name: jobs_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.jobs_id_seq', 23, true);


--
-- TOC entry 3870 (class 0 OID 0)
-- Dependencies: 254
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.strapi_api_token_permissions_id_seq', 5, true);


--
-- TOC entry 3871 (class 0 OID 0)
-- Dependencies: 256
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.strapi_api_token_permissions_token_lnk_id_seq', 5, true);


--
-- TOC entry 3872 (class 0 OID 0)
-- Dependencies: 258
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.strapi_api_tokens_id_seq', 2, true);


--
-- TOC entry 3873 (class 0 OID 0)
-- Dependencies: 260
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.strapi_core_store_settings_id_seq', 38, true);


--
-- TOC entry 3874 (class 0 OID 0)
-- Dependencies: 262
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.strapi_database_schema_id_seq', 5, true);


--
-- TOC entry 3875 (class 0 OID 0)
-- Dependencies: 264
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.strapi_history_versions_id_seq', 1, false);


--
-- TOC entry 3876 (class 0 OID 0)
-- Dependencies: 266
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.strapi_migrations_id_seq', 1, false);


--
-- TOC entry 3877 (class 0 OID 0)
-- Dependencies: 268
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.strapi_migrations_internal_id_seq', 6, true);


--
-- TOC entry 3878 (class 0 OID 0)
-- Dependencies: 270
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.strapi_release_actions_id_seq', 1, false);


--
-- TOC entry 3879 (class 0 OID 0)
-- Dependencies: 272
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.strapi_release_actions_release_lnk_id_seq', 1, false);


--
-- TOC entry 3880 (class 0 OID 0)
-- Dependencies: 274
-- Name: strapi_releases_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.strapi_releases_id_seq', 1, false);


--
-- TOC entry 3881 (class 0 OID 0)
-- Dependencies: 276
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.strapi_transfer_token_permissions_id_seq', 1, false);


--
-- TOC entry 3882 (class 0 OID 0)
-- Dependencies: 278
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.strapi_transfer_token_permissions_token_lnk_id_seq', 1, false);


--
-- TOC entry 3883 (class 0 OID 0)
-- Dependencies: 280
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.strapi_transfer_tokens_id_seq', 1, false);


--
-- TOC entry 3884 (class 0 OID 0)
-- Dependencies: 282
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.strapi_webhooks_id_seq', 1, false);


--
-- TOC entry 3885 (class 0 OID 0)
-- Dependencies: 284
-- Name: strapi_workflows_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.strapi_workflows_id_seq', 1, false);


--
-- TOC entry 3886 (class 0 OID 0)
-- Dependencies: 286
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.strapi_workflows_stage_required_to_publish_lnk_id_seq', 1, false);


--
-- TOC entry 3887 (class 0 OID 0)
-- Dependencies: 288
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.strapi_workflows_stages_id_seq', 1, false);


--
-- TOC entry 3888 (class 0 OID 0)
-- Dependencies: 290
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.strapi_workflows_stages_permissions_lnk_id_seq', 1, false);


--
-- TOC entry 3889 (class 0 OID 0)
-- Dependencies: 292
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.strapi_workflows_stages_workflow_lnk_id_seq', 1, false);


--
-- TOC entry 3890 (class 0 OID 0)
-- Dependencies: 294
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.up_permissions_id_seq', 19, true);


--
-- TOC entry 3891 (class 0 OID 0)
-- Dependencies: 296
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.up_permissions_role_lnk_id_seq', 19, true);


--
-- TOC entry 3892 (class 0 OID 0)
-- Dependencies: 298
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.up_roles_id_seq', 2, true);


--
-- TOC entry 3893 (class 0 OID 0)
-- Dependencies: 300
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.up_users_id_seq', 1, true);


--
-- TOC entry 3894 (class 0 OID 0)
-- Dependencies: 302
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.up_users_role_lnk_id_seq', 1, true);


--
-- TOC entry 3895 (class 0 OID 0)
-- Dependencies: 304
-- Name: upload_folders_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.upload_folders_id_seq', 1, false);


--
-- TOC entry 3896 (class 0 OID 0)
-- Dependencies: 306
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE SET; Schema: acstrapi; Owner: acstrapi
--

SELECT pg_catalog.setval('acstrapi.upload_folders_parent_lnk_id_seq', 1, false);


--
-- TOC entry 3198 (class 2606 OID 25058)
-- Name: abouts_cmps abouts_cmps_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.abouts_cmps
    ADD CONSTRAINT abouts_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 3195 (class 2606 OID 25060)
-- Name: abouts abouts_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.abouts
    ADD CONSTRAINT abouts_pkey PRIMARY KEY (id);


--
-- TOC entry 3203 (class 2606 OID 25062)
-- Name: abouts_cmps abouts_uq; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.abouts_cmps
    ADD CONSTRAINT abouts_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 3207 (class 2606 OID 25064)
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3213 (class 2606 OID 25066)
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3215 (class 2606 OID 25068)
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_uq; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_uq UNIQUE (permission_id, role_id);


--
-- TOC entry 3219 (class 2606 OID 25070)
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- TOC entry 3224 (class 2606 OID 25072)
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- TOC entry 3231 (class 2606 OID 25074)
-- Name: admin_users_roles_lnk admin_users_roles_lnk_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3233 (class 2606 OID 25076)
-- Name: admin_users_roles_lnk admin_users_roles_lnk_uq; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_uq UNIQUE (user_id, role_id);


--
-- TOC entry 3243 (class 2606 OID 25078)
-- Name: articles_author_lnk articles_author_lnk_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.articles_author_lnk
    ADD CONSTRAINT articles_author_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3245 (class 2606 OID 25080)
-- Name: articles_author_lnk articles_author_lnk_uq; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.articles_author_lnk
    ADD CONSTRAINT articles_author_lnk_uq UNIQUE (article_id, author_id);


--
-- TOC entry 3250 (class 2606 OID 25082)
-- Name: articles_category_lnk articles_category_lnk_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.articles_category_lnk
    ADD CONSTRAINT articles_category_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3252 (class 2606 OID 25084)
-- Name: articles_category_lnk articles_category_lnk_uq; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.articles_category_lnk
    ADD CONSTRAINT articles_category_lnk_uq UNIQUE (article_id, category_id);


--
-- TOC entry 3254 (class 2606 OID 25086)
-- Name: articles_cmps articles_cmps_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.articles_cmps
    ADD CONSTRAINT articles_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 3237 (class 2606 OID 25088)
-- Name: articles articles_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- TOC entry 3259 (class 2606 OID 25090)
-- Name: articles_cmps articles_uq; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.articles_cmps
    ADD CONSTRAINT articles_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 3263 (class 2606 OID 25092)
-- Name: authors authors_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (id);


--
-- TOC entry 3268 (class 2606 OID 25094)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- TOC entry 3271 (class 2606 OID 25096)
-- Name: components_shared_media components_shared_media_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.components_shared_media
    ADD CONSTRAINT components_shared_media_pkey PRIMARY KEY (id);


--
-- TOC entry 3273 (class 2606 OID 25098)
-- Name: components_shared_quotes components_shared_quotes_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.components_shared_quotes
    ADD CONSTRAINT components_shared_quotes_pkey PRIMARY KEY (id);


--
-- TOC entry 3275 (class 2606 OID 25100)
-- Name: components_shared_rich_texts components_shared_rich_texts_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.components_shared_rich_texts
    ADD CONSTRAINT components_shared_rich_texts_pkey PRIMARY KEY (id);


--
-- TOC entry 3277 (class 2606 OID 25102)
-- Name: components_shared_seos components_shared_seos_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.components_shared_seos
    ADD CONSTRAINT components_shared_seos_pkey PRIMARY KEY (id);


--
-- TOC entry 3279 (class 2606 OID 25104)
-- Name: components_shared_sliders components_shared_sliders_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.components_shared_sliders
    ADD CONSTRAINT components_shared_sliders_pkey PRIMARY KEY (id);


--
-- TOC entry 3295 (class 2606 OID 25106)
-- Name: files_folder_lnk files_folder_lnk_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3297 (class 2606 OID 25108)
-- Name: files_folder_lnk files_folder_lnk_uq; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_uq UNIQUE (file_id, folder_id);


--
-- TOC entry 3283 (class 2606 OID 25110)
-- Name: files files_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- TOC entry 3302 (class 2606 OID 25112)
-- Name: files_related_mph files_related_mph_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.files_related_mph
    ADD CONSTRAINT files_related_mph_pkey PRIMARY KEY (id);


--
-- TOC entry 3309 (class 2606 OID 25114)
-- Name: globals_cmps globals_cmps_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.globals_cmps
    ADD CONSTRAINT globals_cmps_pkey PRIMARY KEY (id);


--
-- TOC entry 3306 (class 2606 OID 25116)
-- Name: globals globals_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.globals
    ADD CONSTRAINT globals_pkey PRIMARY KEY (id);


--
-- TOC entry 3314 (class 2606 OID 25118)
-- Name: globals_cmps globals_uq; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.globals_cmps
    ADD CONSTRAINT globals_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- TOC entry 3318 (class 2606 OID 25120)
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- TOC entry 3467 (class 2606 OID 25738)
-- Name: jobs_createdby_lnk jobs_createdby_lnk_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.jobs_createdby_lnk
    ADD CONSTRAINT jobs_createdby_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3469 (class 2606 OID 25742)
-- Name: jobs_createdby_lnk jobs_createdby_lnk_uq; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.jobs_createdby_lnk
    ADD CONSTRAINT jobs_createdby_lnk_uq UNIQUE (job_id, user_id);


--
-- TOC entry 3323 (class 2606 OID 25122)
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- TOC entry 3328 (class 2606 OID 25124)
-- Name: strapi_api_token_permissions strapi_api_token_permissions_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3334 (class 2606 OID 25126)
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3336 (class 2606 OID 25128)
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_uq; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_uq UNIQUE (api_token_permission_id, api_token_id);


--
-- TOC entry 3340 (class 2606 OID 25130)
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- TOC entry 3343 (class 2606 OID 25132)
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- TOC entry 3345 (class 2606 OID 25134)
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- TOC entry 3348 (class 2606 OID 25136)
-- Name: strapi_history_versions strapi_history_versions_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_pkey PRIMARY KEY (id);


--
-- TOC entry 3352 (class 2606 OID 25138)
-- Name: strapi_migrations_internal strapi_migrations_internal_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_migrations_internal
    ADD CONSTRAINT strapi_migrations_internal_pkey PRIMARY KEY (id);


--
-- TOC entry 3350 (class 2606 OID 25140)
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3356 (class 2606 OID 25142)
-- Name: strapi_release_actions strapi_release_actions_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_pkey PRIMARY KEY (id);


--
-- TOC entry 3362 (class 2606 OID 25144)
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3364 (class 2606 OID 25146)
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_uq; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_uq UNIQUE (release_action_id, release_id);


--
-- TOC entry 3368 (class 2606 OID 25148)
-- Name: strapi_releases strapi_releases_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_releases
    ADD CONSTRAINT strapi_releases_pkey PRIMARY KEY (id);


--
-- TOC entry 3373 (class 2606 OID 25150)
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3379 (class 2606 OID 25152)
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3381 (class 2606 OID 25154)
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_uq; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_uq UNIQUE (transfer_token_permission_id, transfer_token_id);


--
-- TOC entry 3385 (class 2606 OID 25156)
-- Name: strapi_transfer_tokens strapi_transfer_tokens_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);


--
-- TOC entry 3388 (class 2606 OID 25158)
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- TOC entry 3392 (class 2606 OID 25160)
-- Name: strapi_workflows strapi_workflows_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows
    ADD CONSTRAINT strapi_workflows_pkey PRIMARY KEY (id);


--
-- TOC entry 3397 (class 2606 OID 25162)
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3399 (class 2606 OID 25164)
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_uq; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_uq UNIQUE (workflow_id, workflow_stage_id);


--
-- TOC entry 3409 (class 2606 OID 25166)
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3411 (class 2606 OID 25168)
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_uq; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_uq UNIQUE (workflow_stage_id, permission_id);


--
-- TOC entry 3403 (class 2606 OID 25170)
-- Name: strapi_workflows_stages strapi_workflows_stages_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_pkey PRIMARY KEY (id);


--
-- TOC entry 3416 (class 2606 OID 25172)
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3418 (class 2606 OID 25174)
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_uq; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_uq UNIQUE (workflow_stage_id, workflow_id);


--
-- TOC entry 3422 (class 2606 OID 25176)
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3428 (class 2606 OID 25178)
-- Name: up_permissions_role_lnk up_permissions_role_lnk_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3430 (class 2606 OID 25180)
-- Name: up_permissions_role_lnk up_permissions_role_lnk_uq; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_uq UNIQUE (permission_id, role_id);


--
-- TOC entry 3434 (class 2606 OID 25182)
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- TOC entry 3439 (class 2606 OID 25184)
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- TOC entry 3445 (class 2606 OID 25186)
-- Name: up_users_role_lnk up_users_role_lnk_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3447 (class 2606 OID 25188)
-- Name: up_users_role_lnk up_users_role_lnk_uq; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_uq UNIQUE (user_id, role_id);


--
-- TOC entry 3461 (class 2606 OID 25190)
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3463 (class 2606 OID 25192)
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_uq; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_uq UNIQUE (folder_id, inv_folder_id);


--
-- TOC entry 3451 (class 2606 OID 25194)
-- Name: upload_folders upload_folders_path_id_index; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);


--
-- TOC entry 3453 (class 2606 OID 25196)
-- Name: upload_folders upload_folders_path_index; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);


--
-- TOC entry 3455 (class 2606 OID 25198)
-- Name: upload_folders upload_folders_pkey; Type: CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);


--
-- TOC entry 3199 (class 1259 OID 25199)
-- Name: abouts_component_type_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX abouts_component_type_idx ON acstrapi.abouts_cmps USING btree (component_type);


--
-- TOC entry 3192 (class 1259 OID 25200)
-- Name: abouts_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX abouts_created_by_id_fk ON acstrapi.abouts USING btree (created_by_id);


--
-- TOC entry 3193 (class 1259 OID 25201)
-- Name: abouts_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX abouts_documents_idx ON acstrapi.abouts USING btree (document_id, locale, published_at);


--
-- TOC entry 3200 (class 1259 OID 25202)
-- Name: abouts_entity_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX abouts_entity_fk ON acstrapi.abouts_cmps USING btree (entity_id);


--
-- TOC entry 3201 (class 1259 OID 25203)
-- Name: abouts_field_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX abouts_field_idx ON acstrapi.abouts_cmps USING btree (field);


--
-- TOC entry 3196 (class 1259 OID 25204)
-- Name: abouts_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX abouts_updated_by_id_fk ON acstrapi.abouts USING btree (updated_by_id);


--
-- TOC entry 3204 (class 1259 OID 25205)
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX admin_permissions_created_by_id_fk ON acstrapi.admin_permissions USING btree (created_by_id);


--
-- TOC entry 3205 (class 1259 OID 25206)
-- Name: admin_permissions_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX admin_permissions_documents_idx ON acstrapi.admin_permissions USING btree (document_id, locale, published_at);


--
-- TOC entry 3209 (class 1259 OID 25207)
-- Name: admin_permissions_role_lnk_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX admin_permissions_role_lnk_fk ON acstrapi.admin_permissions_role_lnk USING btree (permission_id);


--
-- TOC entry 3210 (class 1259 OID 25208)
-- Name: admin_permissions_role_lnk_ifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX admin_permissions_role_lnk_ifk ON acstrapi.admin_permissions_role_lnk USING btree (role_id);


--
-- TOC entry 3211 (class 1259 OID 25209)
-- Name: admin_permissions_role_lnk_oifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX admin_permissions_role_lnk_oifk ON acstrapi.admin_permissions_role_lnk USING btree (permission_ord);


--
-- TOC entry 3208 (class 1259 OID 25210)
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX admin_permissions_updated_by_id_fk ON acstrapi.admin_permissions USING btree (updated_by_id);


--
-- TOC entry 3216 (class 1259 OID 25211)
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX admin_roles_created_by_id_fk ON acstrapi.admin_roles USING btree (created_by_id);


--
-- TOC entry 3217 (class 1259 OID 25212)
-- Name: admin_roles_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX admin_roles_documents_idx ON acstrapi.admin_roles USING btree (document_id, locale, published_at);


--
-- TOC entry 3220 (class 1259 OID 25213)
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX admin_roles_updated_by_id_fk ON acstrapi.admin_roles USING btree (updated_by_id);


--
-- TOC entry 3221 (class 1259 OID 25214)
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX admin_users_created_by_id_fk ON acstrapi.admin_users USING btree (created_by_id);


--
-- TOC entry 3222 (class 1259 OID 25215)
-- Name: admin_users_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX admin_users_documents_idx ON acstrapi.admin_users USING btree (document_id, locale, published_at);


--
-- TOC entry 3226 (class 1259 OID 25216)
-- Name: admin_users_roles_lnk_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX admin_users_roles_lnk_fk ON acstrapi.admin_users_roles_lnk USING btree (user_id);


--
-- TOC entry 3227 (class 1259 OID 25217)
-- Name: admin_users_roles_lnk_ifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX admin_users_roles_lnk_ifk ON acstrapi.admin_users_roles_lnk USING btree (role_id);


--
-- TOC entry 3228 (class 1259 OID 25218)
-- Name: admin_users_roles_lnk_ofk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX admin_users_roles_lnk_ofk ON acstrapi.admin_users_roles_lnk USING btree (role_ord);


--
-- TOC entry 3229 (class 1259 OID 25219)
-- Name: admin_users_roles_lnk_oifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX admin_users_roles_lnk_oifk ON acstrapi.admin_users_roles_lnk USING btree (user_ord);


--
-- TOC entry 3225 (class 1259 OID 25220)
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX admin_users_updated_by_id_fk ON acstrapi.admin_users USING btree (updated_by_id);


--
-- TOC entry 3239 (class 1259 OID 25221)
-- Name: articles_author_lnk_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX articles_author_lnk_fk ON acstrapi.articles_author_lnk USING btree (article_id);


--
-- TOC entry 3240 (class 1259 OID 25222)
-- Name: articles_author_lnk_ifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX articles_author_lnk_ifk ON acstrapi.articles_author_lnk USING btree (author_id);


--
-- TOC entry 3241 (class 1259 OID 25223)
-- Name: articles_author_lnk_oifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX articles_author_lnk_oifk ON acstrapi.articles_author_lnk USING btree (article_ord);


--
-- TOC entry 3246 (class 1259 OID 25224)
-- Name: articles_category_lnk_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX articles_category_lnk_fk ON acstrapi.articles_category_lnk USING btree (article_id);


--
-- TOC entry 3247 (class 1259 OID 25225)
-- Name: articles_category_lnk_ifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX articles_category_lnk_ifk ON acstrapi.articles_category_lnk USING btree (category_id);


--
-- TOC entry 3248 (class 1259 OID 25226)
-- Name: articles_category_lnk_oifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX articles_category_lnk_oifk ON acstrapi.articles_category_lnk USING btree (article_ord);


--
-- TOC entry 3255 (class 1259 OID 25227)
-- Name: articles_component_type_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX articles_component_type_idx ON acstrapi.articles_cmps USING btree (component_type);


--
-- TOC entry 3234 (class 1259 OID 25228)
-- Name: articles_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX articles_created_by_id_fk ON acstrapi.articles USING btree (created_by_id);


--
-- TOC entry 3235 (class 1259 OID 25229)
-- Name: articles_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX articles_documents_idx ON acstrapi.articles USING btree (document_id, locale, published_at);


--
-- TOC entry 3256 (class 1259 OID 25230)
-- Name: articles_entity_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX articles_entity_fk ON acstrapi.articles_cmps USING btree (entity_id);


--
-- TOC entry 3257 (class 1259 OID 25231)
-- Name: articles_field_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX articles_field_idx ON acstrapi.articles_cmps USING btree (field);


--
-- TOC entry 3238 (class 1259 OID 25232)
-- Name: articles_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX articles_updated_by_id_fk ON acstrapi.articles USING btree (updated_by_id);


--
-- TOC entry 3260 (class 1259 OID 25233)
-- Name: authors_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX authors_created_by_id_fk ON acstrapi.authors USING btree (created_by_id);


--
-- TOC entry 3261 (class 1259 OID 25234)
-- Name: authors_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX authors_documents_idx ON acstrapi.authors USING btree (document_id, locale, published_at);


--
-- TOC entry 3264 (class 1259 OID 25235)
-- Name: authors_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX authors_updated_by_id_fk ON acstrapi.authors USING btree (updated_by_id);


--
-- TOC entry 3265 (class 1259 OID 25236)
-- Name: categories_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX categories_created_by_id_fk ON acstrapi.categories USING btree (created_by_id);


--
-- TOC entry 3266 (class 1259 OID 25237)
-- Name: categories_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX categories_documents_idx ON acstrapi.categories USING btree (document_id, locale, published_at);


--
-- TOC entry 3269 (class 1259 OID 25238)
-- Name: categories_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX categories_updated_by_id_fk ON acstrapi.categories USING btree (updated_by_id);


--
-- TOC entry 3280 (class 1259 OID 25239)
-- Name: files_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX files_created_by_id_fk ON acstrapi.files USING btree (created_by_id);


--
-- TOC entry 3281 (class 1259 OID 25240)
-- Name: files_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX files_documents_idx ON acstrapi.files USING btree (document_id, locale, published_at);


--
-- TOC entry 3291 (class 1259 OID 25241)
-- Name: files_folder_lnk_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX files_folder_lnk_fk ON acstrapi.files_folder_lnk USING btree (file_id);


--
-- TOC entry 3292 (class 1259 OID 25242)
-- Name: files_folder_lnk_ifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX files_folder_lnk_ifk ON acstrapi.files_folder_lnk USING btree (folder_id);


--
-- TOC entry 3293 (class 1259 OID 25243)
-- Name: files_folder_lnk_oifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX files_folder_lnk_oifk ON acstrapi.files_folder_lnk USING btree (file_ord);


--
-- TOC entry 3298 (class 1259 OID 25244)
-- Name: files_related_mph_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX files_related_mph_fk ON acstrapi.files_related_mph USING btree (file_id);


--
-- TOC entry 3299 (class 1259 OID 25245)
-- Name: files_related_mph_idix; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX files_related_mph_idix ON acstrapi.files_related_mph USING btree (related_id);


--
-- TOC entry 3300 (class 1259 OID 25246)
-- Name: files_related_mph_oidx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX files_related_mph_oidx ON acstrapi.files_related_mph USING btree ("order");


--
-- TOC entry 3284 (class 1259 OID 25247)
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX files_updated_by_id_fk ON acstrapi.files USING btree (updated_by_id);


--
-- TOC entry 3310 (class 1259 OID 25248)
-- Name: globals_component_type_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX globals_component_type_idx ON acstrapi.globals_cmps USING btree (component_type);


--
-- TOC entry 3303 (class 1259 OID 25249)
-- Name: globals_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX globals_created_by_id_fk ON acstrapi.globals USING btree (created_by_id);


--
-- TOC entry 3304 (class 1259 OID 25250)
-- Name: globals_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX globals_documents_idx ON acstrapi.globals USING btree (document_id, locale, published_at);


--
-- TOC entry 3311 (class 1259 OID 25251)
-- Name: globals_entity_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX globals_entity_fk ON acstrapi.globals_cmps USING btree (entity_id);


--
-- TOC entry 3312 (class 1259 OID 25252)
-- Name: globals_field_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX globals_field_idx ON acstrapi.globals_cmps USING btree (field);


--
-- TOC entry 3307 (class 1259 OID 25253)
-- Name: globals_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX globals_updated_by_id_fk ON acstrapi.globals USING btree (updated_by_id);


--
-- TOC entry 3315 (class 1259 OID 25254)
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX i18n_locale_created_by_id_fk ON acstrapi.i18n_locale USING btree (created_by_id);


--
-- TOC entry 3316 (class 1259 OID 25255)
-- Name: i18n_locale_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX i18n_locale_documents_idx ON acstrapi.i18n_locale USING btree (document_id, locale, published_at);


--
-- TOC entry 3319 (class 1259 OID 25256)
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX i18n_locale_updated_by_id_fk ON acstrapi.i18n_locale USING btree (updated_by_id);


--
-- TOC entry 3320 (class 1259 OID 25257)
-- Name: jobs_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX jobs_created_by_id_fk ON acstrapi.jobs USING btree (created_by_id);


--
-- TOC entry 3464 (class 1259 OID 25739)
-- Name: jobs_createdby_lnk_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX jobs_createdby_lnk_fk ON acstrapi.jobs_createdby_lnk USING btree (job_id);


--
-- TOC entry 3465 (class 1259 OID 25740)
-- Name: jobs_createdby_lnk_ifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX jobs_createdby_lnk_ifk ON acstrapi.jobs_createdby_lnk USING btree (user_id);


--
-- TOC entry 3321 (class 1259 OID 25258)
-- Name: jobs_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX jobs_documents_idx ON acstrapi.jobs USING btree (document_id, locale, published_at);


--
-- TOC entry 3324 (class 1259 OID 25259)
-- Name: jobs_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX jobs_updated_by_id_fk ON acstrapi.jobs USING btree (updated_by_id);


--
-- TOC entry 3325 (class 1259 OID 25260)
-- Name: strapi_api_token_permissions_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON acstrapi.strapi_api_token_permissions USING btree (created_by_id);


--
-- TOC entry 3326 (class 1259 OID 25261)
-- Name: strapi_api_token_permissions_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_api_token_permissions_documents_idx ON acstrapi.strapi_api_token_permissions USING btree (document_id, locale, published_at);


--
-- TOC entry 3330 (class 1259 OID 25262)
-- Name: strapi_api_token_permissions_token_lnk_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_api_token_permissions_token_lnk_fk ON acstrapi.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_id);


--
-- TOC entry 3331 (class 1259 OID 25263)
-- Name: strapi_api_token_permissions_token_lnk_ifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_api_token_permissions_token_lnk_ifk ON acstrapi.strapi_api_token_permissions_token_lnk USING btree (api_token_id);


--
-- TOC entry 3332 (class 1259 OID 25264)
-- Name: strapi_api_token_permissions_token_lnk_oifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_api_token_permissions_token_lnk_oifk ON acstrapi.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_ord);


--
-- TOC entry 3329 (class 1259 OID 25265)
-- Name: strapi_api_token_permissions_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON acstrapi.strapi_api_token_permissions USING btree (updated_by_id);


--
-- TOC entry 3337 (class 1259 OID 25266)
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON acstrapi.strapi_api_tokens USING btree (created_by_id);


--
-- TOC entry 3338 (class 1259 OID 25267)
-- Name: strapi_api_tokens_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_api_tokens_documents_idx ON acstrapi.strapi_api_tokens USING btree (document_id, locale, published_at);


--
-- TOC entry 3341 (class 1259 OID 25268)
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON acstrapi.strapi_api_tokens USING btree (updated_by_id);


--
-- TOC entry 3346 (class 1259 OID 25269)
-- Name: strapi_history_versions_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_history_versions_created_by_id_fk ON acstrapi.strapi_history_versions USING btree (created_by_id);


--
-- TOC entry 3353 (class 1259 OID 25270)
-- Name: strapi_release_actions_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_release_actions_created_by_id_fk ON acstrapi.strapi_release_actions USING btree (created_by_id);


--
-- TOC entry 3354 (class 1259 OID 25271)
-- Name: strapi_release_actions_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_release_actions_documents_idx ON acstrapi.strapi_release_actions USING btree (document_id, locale, published_at);


--
-- TOC entry 3358 (class 1259 OID 25272)
-- Name: strapi_release_actions_release_lnk_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_release_actions_release_lnk_fk ON acstrapi.strapi_release_actions_release_lnk USING btree (release_action_id);


--
-- TOC entry 3359 (class 1259 OID 25273)
-- Name: strapi_release_actions_release_lnk_ifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_release_actions_release_lnk_ifk ON acstrapi.strapi_release_actions_release_lnk USING btree (release_id);


--
-- TOC entry 3360 (class 1259 OID 25274)
-- Name: strapi_release_actions_release_lnk_oifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_release_actions_release_lnk_oifk ON acstrapi.strapi_release_actions_release_lnk USING btree (release_action_ord);


--
-- TOC entry 3357 (class 1259 OID 25275)
-- Name: strapi_release_actions_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_release_actions_updated_by_id_fk ON acstrapi.strapi_release_actions USING btree (updated_by_id);


--
-- TOC entry 3365 (class 1259 OID 25276)
-- Name: strapi_releases_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_releases_created_by_id_fk ON acstrapi.strapi_releases USING btree (created_by_id);


--
-- TOC entry 3366 (class 1259 OID 25277)
-- Name: strapi_releases_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_releases_documents_idx ON acstrapi.strapi_releases USING btree (document_id, locale, published_at);


--
-- TOC entry 3369 (class 1259 OID 25278)
-- Name: strapi_releases_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_releases_updated_by_id_fk ON acstrapi.strapi_releases USING btree (updated_by_id);


--
-- TOC entry 3370 (class 1259 OID 25279)
-- Name: strapi_transfer_token_permissions_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON acstrapi.strapi_transfer_token_permissions USING btree (created_by_id);


--
-- TOC entry 3371 (class 1259 OID 25280)
-- Name: strapi_transfer_token_permissions_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_transfer_token_permissions_documents_idx ON acstrapi.strapi_transfer_token_permissions USING btree (document_id, locale, published_at);


--
-- TOC entry 3375 (class 1259 OID 25281)
-- Name: strapi_transfer_token_permissions_token_lnk_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_fk ON acstrapi.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_id);


--
-- TOC entry 3376 (class 1259 OID 25282)
-- Name: strapi_transfer_token_permissions_token_lnk_ifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_ifk ON acstrapi.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_id);


--
-- TOC entry 3377 (class 1259 OID 25283)
-- Name: strapi_transfer_token_permissions_token_lnk_oifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_oifk ON acstrapi.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_ord);


--
-- TOC entry 3374 (class 1259 OID 25284)
-- Name: strapi_transfer_token_permissions_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON acstrapi.strapi_transfer_token_permissions USING btree (updated_by_id);


--
-- TOC entry 3382 (class 1259 OID 25285)
-- Name: strapi_transfer_tokens_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON acstrapi.strapi_transfer_tokens USING btree (created_by_id);


--
-- TOC entry 3383 (class 1259 OID 25286)
-- Name: strapi_transfer_tokens_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_transfer_tokens_documents_idx ON acstrapi.strapi_transfer_tokens USING btree (document_id, locale, published_at);


--
-- TOC entry 3386 (class 1259 OID 25287)
-- Name: strapi_transfer_tokens_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON acstrapi.strapi_transfer_tokens USING btree (updated_by_id);


--
-- TOC entry 3389 (class 1259 OID 25288)
-- Name: strapi_workflows_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_workflows_created_by_id_fk ON acstrapi.strapi_workflows USING btree (created_by_id);


--
-- TOC entry 3390 (class 1259 OID 25289)
-- Name: strapi_workflows_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_workflows_documents_idx ON acstrapi.strapi_workflows USING btree (document_id, locale, published_at);


--
-- TOC entry 3394 (class 1259 OID 25290)
-- Name: strapi_workflows_stage_required_to_publish_lnk_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_fk ON acstrapi.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_id);


--
-- TOC entry 3395 (class 1259 OID 25291)
-- Name: strapi_workflows_stage_required_to_publish_lnk_ifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_ifk ON acstrapi.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_stage_id);


--
-- TOC entry 3400 (class 1259 OID 25292)
-- Name: strapi_workflows_stages_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_workflows_stages_created_by_id_fk ON acstrapi.strapi_workflows_stages USING btree (created_by_id);


--
-- TOC entry 3401 (class 1259 OID 25293)
-- Name: strapi_workflows_stages_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_workflows_stages_documents_idx ON acstrapi.strapi_workflows_stages USING btree (document_id, locale, published_at);


--
-- TOC entry 3405 (class 1259 OID 25294)
-- Name: strapi_workflows_stages_permissions_lnk_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_fk ON acstrapi.strapi_workflows_stages_permissions_lnk USING btree (workflow_stage_id);


--
-- TOC entry 3406 (class 1259 OID 25295)
-- Name: strapi_workflows_stages_permissions_lnk_ifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_ifk ON acstrapi.strapi_workflows_stages_permissions_lnk USING btree (permission_id);


--
-- TOC entry 3407 (class 1259 OID 25296)
-- Name: strapi_workflows_stages_permissions_lnk_ofk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_ofk ON acstrapi.strapi_workflows_stages_permissions_lnk USING btree (permission_ord);


--
-- TOC entry 3404 (class 1259 OID 25297)
-- Name: strapi_workflows_stages_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_workflows_stages_updated_by_id_fk ON acstrapi.strapi_workflows_stages USING btree (updated_by_id);


--
-- TOC entry 3412 (class 1259 OID 25298)
-- Name: strapi_workflows_stages_workflow_lnk_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_fk ON acstrapi.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_id);


--
-- TOC entry 3413 (class 1259 OID 25299)
-- Name: strapi_workflows_stages_workflow_lnk_ifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_ifk ON acstrapi.strapi_workflows_stages_workflow_lnk USING btree (workflow_id);


--
-- TOC entry 3414 (class 1259 OID 25300)
-- Name: strapi_workflows_stages_workflow_lnk_oifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_oifk ON acstrapi.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_ord);


--
-- TOC entry 3393 (class 1259 OID 25301)
-- Name: strapi_workflows_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX strapi_workflows_updated_by_id_fk ON acstrapi.strapi_workflows USING btree (updated_by_id);


--
-- TOC entry 3419 (class 1259 OID 25302)
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX up_permissions_created_by_id_fk ON acstrapi.up_permissions USING btree (created_by_id);


--
-- TOC entry 3420 (class 1259 OID 25303)
-- Name: up_permissions_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX up_permissions_documents_idx ON acstrapi.up_permissions USING btree (document_id, locale, published_at);


--
-- TOC entry 3424 (class 1259 OID 25304)
-- Name: up_permissions_role_lnk_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX up_permissions_role_lnk_fk ON acstrapi.up_permissions_role_lnk USING btree (permission_id);


--
-- TOC entry 3425 (class 1259 OID 25305)
-- Name: up_permissions_role_lnk_ifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX up_permissions_role_lnk_ifk ON acstrapi.up_permissions_role_lnk USING btree (role_id);


--
-- TOC entry 3426 (class 1259 OID 25306)
-- Name: up_permissions_role_lnk_oifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX up_permissions_role_lnk_oifk ON acstrapi.up_permissions_role_lnk USING btree (permission_ord);


--
-- TOC entry 3423 (class 1259 OID 25307)
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX up_permissions_updated_by_id_fk ON acstrapi.up_permissions USING btree (updated_by_id);


--
-- TOC entry 3431 (class 1259 OID 25308)
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX up_roles_created_by_id_fk ON acstrapi.up_roles USING btree (created_by_id);


--
-- TOC entry 3432 (class 1259 OID 25309)
-- Name: up_roles_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX up_roles_documents_idx ON acstrapi.up_roles USING btree (document_id, locale, published_at);


--
-- TOC entry 3435 (class 1259 OID 25310)
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX up_roles_updated_by_id_fk ON acstrapi.up_roles USING btree (updated_by_id);


--
-- TOC entry 3436 (class 1259 OID 25311)
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX up_users_created_by_id_fk ON acstrapi.up_users USING btree (created_by_id);


--
-- TOC entry 3437 (class 1259 OID 25312)
-- Name: up_users_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX up_users_documents_idx ON acstrapi.up_users USING btree (document_id, locale, published_at);


--
-- TOC entry 3441 (class 1259 OID 25313)
-- Name: up_users_role_lnk_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX up_users_role_lnk_fk ON acstrapi.up_users_role_lnk USING btree (user_id);


--
-- TOC entry 3442 (class 1259 OID 25314)
-- Name: up_users_role_lnk_ifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX up_users_role_lnk_ifk ON acstrapi.up_users_role_lnk USING btree (role_id);


--
-- TOC entry 3443 (class 1259 OID 25315)
-- Name: up_users_role_lnk_oifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX up_users_role_lnk_oifk ON acstrapi.up_users_role_lnk USING btree (user_ord);


--
-- TOC entry 3440 (class 1259 OID 25316)
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX up_users_updated_by_id_fk ON acstrapi.up_users USING btree (updated_by_id);


--
-- TOC entry 3285 (class 1259 OID 25317)
-- Name: upload_files_created_at_index; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX upload_files_created_at_index ON acstrapi.files USING btree (created_at);


--
-- TOC entry 3286 (class 1259 OID 25318)
-- Name: upload_files_ext_index; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX upload_files_ext_index ON acstrapi.files USING btree (ext);


--
-- TOC entry 3287 (class 1259 OID 25319)
-- Name: upload_files_folder_path_index; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX upload_files_folder_path_index ON acstrapi.files USING btree (folder_path);


--
-- TOC entry 3288 (class 1259 OID 25320)
-- Name: upload_files_name_index; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX upload_files_name_index ON acstrapi.files USING btree (name);


--
-- TOC entry 3289 (class 1259 OID 25321)
-- Name: upload_files_size_index; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX upload_files_size_index ON acstrapi.files USING btree (size);


--
-- TOC entry 3290 (class 1259 OID 25322)
-- Name: upload_files_updated_at_index; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX upload_files_updated_at_index ON acstrapi.files USING btree (updated_at);


--
-- TOC entry 3448 (class 1259 OID 25323)
-- Name: upload_folders_created_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX upload_folders_created_by_id_fk ON acstrapi.upload_folders USING btree (created_by_id);


--
-- TOC entry 3449 (class 1259 OID 25324)
-- Name: upload_folders_documents_idx; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX upload_folders_documents_idx ON acstrapi.upload_folders USING btree (document_id, locale, published_at);


--
-- TOC entry 3457 (class 1259 OID 25325)
-- Name: upload_folders_parent_lnk_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX upload_folders_parent_lnk_fk ON acstrapi.upload_folders_parent_lnk USING btree (folder_id);


--
-- TOC entry 3458 (class 1259 OID 25326)
-- Name: upload_folders_parent_lnk_ifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX upload_folders_parent_lnk_ifk ON acstrapi.upload_folders_parent_lnk USING btree (inv_folder_id);


--
-- TOC entry 3459 (class 1259 OID 25327)
-- Name: upload_folders_parent_lnk_oifk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX upload_folders_parent_lnk_oifk ON acstrapi.upload_folders_parent_lnk USING btree (folder_ord);


--
-- TOC entry 3456 (class 1259 OID 25328)
-- Name: upload_folders_updated_by_id_fk; Type: INDEX; Schema: acstrapi; Owner: acstrapi
--

CREATE INDEX upload_folders_updated_by_id_fk ON acstrapi.upload_folders USING btree (updated_by_id);


--
-- TOC entry 3470 (class 2606 OID 25329)
-- Name: abouts abouts_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.abouts
    ADD CONSTRAINT abouts_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3472 (class 2606 OID 25334)
-- Name: abouts_cmps abouts_entity_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.abouts_cmps
    ADD CONSTRAINT abouts_entity_fk FOREIGN KEY (entity_id) REFERENCES acstrapi.abouts(id) ON DELETE CASCADE;


--
-- TOC entry 3471 (class 2606 OID 25339)
-- Name: abouts abouts_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.abouts
    ADD CONSTRAINT abouts_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3473 (class 2606 OID 25344)
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3475 (class 2606 OID 25349)
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES acstrapi.admin_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 3476 (class 2606 OID 25354)
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_ifk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES acstrapi.admin_roles(id) ON DELETE CASCADE;


--
-- TOC entry 3474 (class 2606 OID 25359)
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3477 (class 2606 OID 25364)
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3478 (class 2606 OID 25369)
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3479 (class 2606 OID 25374)
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3481 (class 2606 OID 25379)
-- Name: admin_users_roles_lnk admin_users_roles_lnk_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_fk FOREIGN KEY (user_id) REFERENCES acstrapi.admin_users(id) ON DELETE CASCADE;


--
-- TOC entry 3482 (class 2606 OID 25384)
-- Name: admin_users_roles_lnk admin_users_roles_lnk_ifk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_ifk FOREIGN KEY (role_id) REFERENCES acstrapi.admin_roles(id) ON DELETE CASCADE;


--
-- TOC entry 3480 (class 2606 OID 25389)
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3485 (class 2606 OID 25394)
-- Name: articles_author_lnk articles_author_lnk_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.articles_author_lnk
    ADD CONSTRAINT articles_author_lnk_fk FOREIGN KEY (article_id) REFERENCES acstrapi.articles(id) ON DELETE CASCADE;


--
-- TOC entry 3486 (class 2606 OID 25399)
-- Name: articles_author_lnk articles_author_lnk_ifk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.articles_author_lnk
    ADD CONSTRAINT articles_author_lnk_ifk FOREIGN KEY (author_id) REFERENCES acstrapi.authors(id) ON DELETE CASCADE;


--
-- TOC entry 3487 (class 2606 OID 25404)
-- Name: articles_category_lnk articles_category_lnk_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.articles_category_lnk
    ADD CONSTRAINT articles_category_lnk_fk FOREIGN KEY (article_id) REFERENCES acstrapi.articles(id) ON DELETE CASCADE;


--
-- TOC entry 3488 (class 2606 OID 25409)
-- Name: articles_category_lnk articles_category_lnk_ifk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.articles_category_lnk
    ADD CONSTRAINT articles_category_lnk_ifk FOREIGN KEY (category_id) REFERENCES acstrapi.categories(id) ON DELETE CASCADE;


--
-- TOC entry 3483 (class 2606 OID 25414)
-- Name: articles articles_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.articles
    ADD CONSTRAINT articles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3489 (class 2606 OID 25419)
-- Name: articles_cmps articles_entity_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.articles_cmps
    ADD CONSTRAINT articles_entity_fk FOREIGN KEY (entity_id) REFERENCES acstrapi.articles(id) ON DELETE CASCADE;


--
-- TOC entry 3484 (class 2606 OID 25424)
-- Name: articles articles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.articles
    ADD CONSTRAINT articles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3490 (class 2606 OID 25429)
-- Name: authors authors_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.authors
    ADD CONSTRAINT authors_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3491 (class 2606 OID 25434)
-- Name: authors authors_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.authors
    ADD CONSTRAINT authors_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3492 (class 2606 OID 25439)
-- Name: categories categories_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.categories
    ADD CONSTRAINT categories_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3493 (class 2606 OID 25444)
-- Name: categories categories_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.categories
    ADD CONSTRAINT categories_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3494 (class 2606 OID 25449)
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3496 (class 2606 OID 25454)
-- Name: files_folder_lnk files_folder_lnk_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_fk FOREIGN KEY (file_id) REFERENCES acstrapi.files(id) ON DELETE CASCADE;


--
-- TOC entry 3497 (class 2606 OID 25459)
-- Name: files_folder_lnk files_folder_lnk_ifk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_ifk FOREIGN KEY (folder_id) REFERENCES acstrapi.upload_folders(id) ON DELETE CASCADE;


--
-- TOC entry 3498 (class 2606 OID 25464)
-- Name: files_related_mph files_related_mph_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.files_related_mph
    ADD CONSTRAINT files_related_mph_fk FOREIGN KEY (file_id) REFERENCES acstrapi.files(id) ON DELETE CASCADE;


--
-- TOC entry 3495 (class 2606 OID 25469)
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3499 (class 2606 OID 25474)
-- Name: globals globals_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.globals
    ADD CONSTRAINT globals_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3501 (class 2606 OID 25479)
-- Name: globals_cmps globals_entity_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.globals_cmps
    ADD CONSTRAINT globals_entity_fk FOREIGN KEY (entity_id) REFERENCES acstrapi.globals(id) ON DELETE CASCADE;


--
-- TOC entry 3500 (class 2606 OID 25484)
-- Name: globals globals_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.globals
    ADD CONSTRAINT globals_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3502 (class 2606 OID 25489)
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3503 (class 2606 OID 25494)
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3504 (class 2606 OID 25499)
-- Name: jobs jobs_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.jobs
    ADD CONSTRAINT jobs_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3549 (class 2606 OID 25743)
-- Name: jobs_createdby_lnk jobs_createdby_lnk_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.jobs_createdby_lnk
    ADD CONSTRAINT jobs_createdby_lnk_fk FOREIGN KEY (job_id) REFERENCES acstrapi.jobs(id) ON DELETE CASCADE;


--
-- TOC entry 3550 (class 2606 OID 25748)
-- Name: jobs_createdby_lnk jobs_createdby_lnk_ifk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.jobs_createdby_lnk
    ADD CONSTRAINT jobs_createdby_lnk_ifk FOREIGN KEY (user_id) REFERENCES acstrapi.up_users(id) ON DELETE CASCADE;


--
-- TOC entry 3505 (class 2606 OID 25504)
-- Name: jobs jobs_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.jobs
    ADD CONSTRAINT jobs_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3506 (class 2606 OID 25509)
-- Name: strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3508 (class 2606 OID 25514)
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_fk FOREIGN KEY (api_token_permission_id) REFERENCES acstrapi.strapi_api_token_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 3509 (class 2606 OID 25519)
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_ifk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_ifk FOREIGN KEY (api_token_id) REFERENCES acstrapi.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- TOC entry 3507 (class 2606 OID 25524)
-- Name: strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3510 (class 2606 OID 25529)
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3511 (class 2606 OID 25534)
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3512 (class 2606 OID 25539)
-- Name: strapi_history_versions strapi_history_versions_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3513 (class 2606 OID 25544)
-- Name: strapi_release_actions strapi_release_actions_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3515 (class 2606 OID 25549)
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_fk FOREIGN KEY (release_action_id) REFERENCES acstrapi.strapi_release_actions(id) ON DELETE CASCADE;


--
-- TOC entry 3516 (class 2606 OID 25554)
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_ifk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_ifk FOREIGN KEY (release_id) REFERENCES acstrapi.strapi_releases(id) ON DELETE CASCADE;


--
-- TOC entry 3514 (class 2606 OID 25559)
-- Name: strapi_release_actions strapi_release_actions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3517 (class 2606 OID 25564)
-- Name: strapi_releases strapi_releases_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3518 (class 2606 OID 25569)
-- Name: strapi_releases strapi_releases_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3519 (class 2606 OID 25574)
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3521 (class 2606 OID 25579)
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES acstrapi.strapi_transfer_token_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 3522 (class 2606 OID 25584)
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_ifk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_ifk FOREIGN KEY (transfer_token_id) REFERENCES acstrapi.strapi_transfer_tokens(id) ON DELETE CASCADE;


--
-- TOC entry 3520 (class 2606 OID 25589)
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3523 (class 2606 OID 25594)
-- Name: strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3524 (class 2606 OID 25599)
-- Name: strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3525 (class 2606 OID 25604)
-- Name: strapi_workflows strapi_workflows_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows
    ADD CONSTRAINT strapi_workflows_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3527 (class 2606 OID 25609)
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_fk FOREIGN KEY (workflow_id) REFERENCES acstrapi.strapi_workflows(id) ON DELETE CASCADE;


--
-- TOC entry 3528 (class 2606 OID 25614)
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_ifk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_ifk FOREIGN KEY (workflow_stage_id) REFERENCES acstrapi.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- TOC entry 3529 (class 2606 OID 25619)
-- Name: strapi_workflows_stages strapi_workflows_stages_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3531 (class 2606 OID 25624)
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES acstrapi.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- TOC entry 3532 (class 2606 OID 25629)
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_ifk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_ifk FOREIGN KEY (permission_id) REFERENCES acstrapi.admin_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 3530 (class 2606 OID 25634)
-- Name: strapi_workflows_stages strapi_workflows_stages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3533 (class 2606 OID 25639)
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES acstrapi.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- TOC entry 3534 (class 2606 OID 25644)
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_ifk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_ifk FOREIGN KEY (workflow_id) REFERENCES acstrapi.strapi_workflows(id) ON DELETE CASCADE;


--
-- TOC entry 3526 (class 2606 OID 25649)
-- Name: strapi_workflows strapi_workflows_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.strapi_workflows
    ADD CONSTRAINT strapi_workflows_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3535 (class 2606 OID 25654)
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3537 (class 2606 OID 25659)
-- Name: up_permissions_role_lnk up_permissions_role_lnk_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES acstrapi.up_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 3538 (class 2606 OID 25664)
-- Name: up_permissions_role_lnk up_permissions_role_lnk_ifk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES acstrapi.up_roles(id) ON DELETE CASCADE;


--
-- TOC entry 3536 (class 2606 OID 25669)
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3539 (class 2606 OID 25674)
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3540 (class 2606 OID 25679)
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3541 (class 2606 OID 25684)
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3543 (class 2606 OID 25689)
-- Name: up_users_role_lnk up_users_role_lnk_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_fk FOREIGN KEY (user_id) REFERENCES acstrapi.up_users(id) ON DELETE CASCADE;


--
-- TOC entry 3544 (class 2606 OID 25694)
-- Name: up_users_role_lnk up_users_role_lnk_ifk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES acstrapi.up_roles(id) ON DELETE CASCADE;


--
-- TOC entry 3542 (class 2606 OID 25699)
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3545 (class 2606 OID 25704)
-- Name: upload_folders upload_folders_created_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3547 (class 2606 OID 25709)
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_fk FOREIGN KEY (folder_id) REFERENCES acstrapi.upload_folders(id) ON DELETE CASCADE;


--
-- TOC entry 3548 (class 2606 OID 25714)
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_ifk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_ifk FOREIGN KEY (inv_folder_id) REFERENCES acstrapi.upload_folders(id) ON DELETE CASCADE;


--
-- TOC entry 3546 (class 2606 OID 25719)
-- Name: upload_folders upload_folders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: acstrapi; Owner: acstrapi
--

ALTER TABLE ONLY acstrapi.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3790 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: acstrapi
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2025-01-15 20:55:23 AEDT

--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.0
-- Dumped by pg_dump version 17.2

-- Started on 2025-01-15 20:55:23 AEDT

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

--
-- TOC entry 6 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: acstrapi
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO acstrapi;

--
-- TOC entry 2917 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: acstrapi
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2025-01-15 20:55:24 AEDT

--
-- PostgreSQL database dump complete
--

-- Completed on 2025-01-15 20:55:24 AEDT

--
-- PostgreSQL database cluster dump complete
--

