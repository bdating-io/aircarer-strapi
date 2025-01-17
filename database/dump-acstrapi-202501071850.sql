PGDMP   8    2                 }           acstrapi    12.0    17.2 V   ·           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            ¸           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            ¹           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            º           1262    16384    acstrapi    DATABASE     s   CREATE DATABASE acstrapi WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE acstrapi;
                     acstrapi    false                        2615    2200    acstrapi    SCHEMA        CREATE SCHEMA acstrapi;
    DROP SCHEMA acstrapi;
                     acstrapi    false            »           0    0    SCHEMA acstrapi    COMMENT     8   COMMENT ON SCHEMA acstrapi IS 'standard public schema';
                        acstrapi    false    7            ç            1259    16580    abouts    TABLE     l  CREATE TABLE acstrapi.abouts (
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
    DROP TABLE acstrapi.abouts;
       acstrapi         heap r       acstrapi    false    7            å            1259    16564    abouts_cmps    TABLE     Õ   CREATE TABLE acstrapi.abouts_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 !   DROP TABLE acstrapi.abouts_cmps;
       acstrapi         heap r       acstrapi    false    7            ä            1259    16562    abouts_cmps_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.abouts_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE acstrapi.abouts_cmps_id_seq;
       acstrapi               acstrapi    false    229    7            ¼           0    0    abouts_cmps_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE acstrapi.abouts_cmps_id_seq OWNED BY acstrapi.abouts_cmps.id;
          acstrapi               acstrapi    false    228            æ            1259    16578    abouts_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.abouts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE acstrapi.abouts_id_seq;
       acstrapi               acstrapi    false    231    7            ½           0    0    abouts_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE acstrapi.abouts_id_seq OWNED BY acstrapi.abouts.id;
          acstrapi               acstrapi    false    230            õ            1259    16682    admin_permissions    TABLE     å  CREATE TABLE acstrapi.admin_permissions (
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
 '   DROP TABLE acstrapi.admin_permissions;
       acstrapi         heap r       acstrapi    false    7            ô            1259    16680    admin_permissions_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE acstrapi.admin_permissions_id_seq;
       acstrapi               acstrapi    false    245    7            ¾           0    0    admin_permissions_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE acstrapi.admin_permissions_id_seq OWNED BY acstrapi.admin_permissions.id;
          acstrapi               acstrapi    false    244            )           1259    17006    admin_permissions_role_lnk    TABLE     £   CREATE TABLE acstrapi.admin_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);
 0   DROP TABLE acstrapi.admin_permissions_role_lnk;
       acstrapi         heap r       acstrapi    false    7            (           1259    17004 !   admin_permissions_role_lnk_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.admin_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE acstrapi.admin_permissions_role_lnk_id_seq;
       acstrapi               acstrapi    false    7    297            ¿           0    0 !   admin_permissions_role_lnk_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE acstrapi.admin_permissions_role_lnk_id_seq OWNED BY acstrapi.admin_permissions_role_lnk.id;
          acstrapi               acstrapi    false    296            ù            1259    16710    admin_roles    TABLE     ¹  CREATE TABLE acstrapi.admin_roles (
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
 !   DROP TABLE acstrapi.admin_roles;
       acstrapi         heap r       acstrapi    false    7            ø            1259    16708    admin_roles_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE acstrapi.admin_roles_id_seq;
       acstrapi               acstrapi    false    7    249            À           0    0    admin_roles_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE acstrapi.admin_roles_id_seq OWNED BY acstrapi.admin_roles.id;
          acstrapi               acstrapi    false    248            ÷            1259    16696    admin_users    TABLE     À  CREATE TABLE acstrapi.admin_users (
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
 !   DROP TABLE acstrapi.admin_users;
       acstrapi         heap r       acstrapi    false    7            ö            1259    16694    admin_users_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE acstrapi.admin_users_id_seq;
       acstrapi               acstrapi    false    247    7            Á           0    0    admin_users_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE acstrapi.admin_users_id_seq OWNED BY acstrapi.admin_users.id;
          acstrapi               acstrapi    false    246            +           1259    17019    admin_users_roles_lnk    TABLE     ±   CREATE TABLE acstrapi.admin_users_roles_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_ord double precision,
    user_ord double precision
);
 +   DROP TABLE acstrapi.admin_users_roles_lnk;
       acstrapi         heap r       acstrapi    false    7            *           1259    17017    admin_users_roles_lnk_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.admin_users_roles_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE acstrapi.admin_users_roles_lnk_id_seq;
       acstrapi               acstrapi    false    299    7            Â           0    0    admin_users_roles_lnk_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE acstrapi.admin_users_roles_lnk_id_seq OWNED BY acstrapi.admin_users_roles_lnk.id;
          acstrapi               acstrapi    false    298            ë            1259    16610    articles    TABLE     ¥  CREATE TABLE acstrapi.articles (
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
    DROP TABLE acstrapi.articles;
       acstrapi         heap r       acstrapi    false    7            %           1259    16980    articles_author_lnk    TABLE        CREATE TABLE acstrapi.articles_author_lnk (
    id integer NOT NULL,
    article_id integer,
    author_id integer,
    article_ord double precision
);
 )   DROP TABLE acstrapi.articles_author_lnk;
       acstrapi         heap r       acstrapi    false    7            $           1259    16978    articles_author_lnk_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.articles_author_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE acstrapi.articles_author_lnk_id_seq;
       acstrapi               acstrapi    false    293    7            Ã           0    0    articles_author_lnk_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE acstrapi.articles_author_lnk_id_seq OWNED BY acstrapi.articles_author_lnk.id;
          acstrapi               acstrapi    false    292            '           1259    16993    articles_category_lnk    TABLE        CREATE TABLE acstrapi.articles_category_lnk (
    id integer NOT NULL,
    article_id integer,
    category_id integer,
    article_ord double precision
);
 +   DROP TABLE acstrapi.articles_category_lnk;
       acstrapi         heap r       acstrapi    false    7            &           1259    16991    articles_category_lnk_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.articles_category_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE acstrapi.articles_category_lnk_id_seq;
       acstrapi               acstrapi    false    295    7            Ä           0    0    articles_category_lnk_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE acstrapi.articles_category_lnk_id_seq OWNED BY acstrapi.articles_category_lnk.id;
          acstrapi               acstrapi    false    294            é            1259    16594    articles_cmps    TABLE     ×   CREATE TABLE acstrapi.articles_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 #   DROP TABLE acstrapi.articles_cmps;
       acstrapi         heap r       acstrapi    false    7            è            1259    16592    articles_cmps_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.articles_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE acstrapi.articles_cmps_id_seq;
       acstrapi               acstrapi    false    7    233            Å           0    0    articles_cmps_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE acstrapi.articles_cmps_id_seq OWNED BY acstrapi.articles_cmps.id;
          acstrapi               acstrapi    false    232            ê            1259    16608    articles_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.articles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE acstrapi.articles_id_seq;
       acstrapi               acstrapi    false    7    235            Æ           0    0    articles_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE acstrapi.articles_id_seq OWNED BY acstrapi.articles.id;
          acstrapi               acstrapi    false    234            í            1259    16624    authors    TABLE       CREATE TABLE acstrapi.authors (
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
    DROP TABLE acstrapi.authors;
       acstrapi         heap r       acstrapi    false    7            ì            1259    16622    authors_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE acstrapi.authors_id_seq;
       acstrapi               acstrapi    false    7    237            Ç           0    0    authors_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE acstrapi.authors_id_seq OWNED BY acstrapi.authors.id;
          acstrapi               acstrapi    false    236            ï            1259    16638 
   categories    TABLE     ¦  CREATE TABLE acstrapi.categories (
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
     DROP TABLE acstrapi.categories;
       acstrapi         heap r       acstrapi    false    7            î            1259    16636    categories_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE acstrapi.categories_id_seq;
       acstrapi               acstrapi    false    7    239            È           0    0    categories_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE acstrapi.categories_id_seq OWNED BY acstrapi.categories.id;
          acstrapi               acstrapi    false    238                       1259    16821    components_shared_media    TABLE     K   CREATE TABLE acstrapi.components_shared_media (
    id integer NOT NULL
);
 -   DROP TABLE acstrapi.components_shared_media;
       acstrapi         heap r       acstrapi    false    7            
           1259    16819    components_shared_media_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.components_shared_media_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE acstrapi.components_shared_media_id_seq;
       acstrapi               acstrapi    false    267    7            É           0    0    components_shared_media_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE acstrapi.components_shared_media_id_seq OWNED BY acstrapi.components_shared_media.id;
          acstrapi               acstrapi    false    266            	           1259    16810    components_shared_quotes    TABLE     }   CREATE TABLE acstrapi.components_shared_quotes (
    id integer NOT NULL,
    title character varying(255),
    body text
);
 .   DROP TABLE acstrapi.components_shared_quotes;
       acstrapi         heap r       acstrapi    false    7                       1259    16808    components_shared_quotes_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.components_shared_quotes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE acstrapi.components_shared_quotes_id_seq;
       acstrapi               acstrapi    false    7    265            Ê           0    0    components_shared_quotes_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE acstrapi.components_shared_quotes_id_seq OWNED BY acstrapi.components_shared_quotes.id;
          acstrapi               acstrapi    false    264                       1259    16799    components_shared_rich_texts    TABLE     _   CREATE TABLE acstrapi.components_shared_rich_texts (
    id integer NOT NULL,
    body text
);
 2   DROP TABLE acstrapi.components_shared_rich_texts;
       acstrapi         heap r       acstrapi    false    7                       1259    16797 #   components_shared_rich_texts_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.components_shared_rich_texts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE acstrapi.components_shared_rich_texts_id_seq;
       acstrapi               acstrapi    false    263    7            Ë           0    0 #   components_shared_rich_texts_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE acstrapi.components_shared_rich_texts_id_seq OWNED BY acstrapi.components_shared_rich_texts.id;
          acstrapi               acstrapi    false    262                       1259    16788    components_shared_seos    TABLE        CREATE TABLE acstrapi.components_shared_seos (
    id integer NOT NULL,
    meta_title character varying(255),
    meta_description text
);
 ,   DROP TABLE acstrapi.components_shared_seos;
       acstrapi         heap r       acstrapi    false    7                       1259    16786    components_shared_seos_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.components_shared_seos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE acstrapi.components_shared_seos_id_seq;
       acstrapi               acstrapi    false    261    7            Ì           0    0    components_shared_seos_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE acstrapi.components_shared_seos_id_seq OWNED BY acstrapi.components_shared_seos.id;
          acstrapi               acstrapi    false    260                       1259    16780    components_shared_sliders    TABLE     M   CREATE TABLE acstrapi.components_shared_sliders (
    id integer NOT NULL
);
 /   DROP TABLE acstrapi.components_shared_sliders;
       acstrapi         heap r       acstrapi    false    7                       1259    16778     components_shared_sliders_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.components_shared_sliders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE acstrapi.components_shared_sliders_id_seq;
       acstrapi               acstrapi    false    7    259            Í           0    0     components_shared_sliders_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE acstrapi.components_shared_sliders_id_seq OWNED BY acstrapi.components_shared_sliders.id;
          acstrapi               acstrapi    false    258            Ñ            1259    16414    files    TABLE     !  CREATE TABLE acstrapi.files (
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
    DROP TABLE acstrapi.files;
       acstrapi         heap r       acstrapi    false    7                       1259    16877    files_folder_lnk    TABLE        CREATE TABLE acstrapi.files_folder_lnk (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_ord double precision
);
 &   DROP TABLE acstrapi.files_folder_lnk;
       acstrapi         heap r       acstrapi    false    7                       1259    16875    files_folder_lnk_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.files_folder_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE acstrapi.files_folder_lnk_id_seq;
       acstrapi               acstrapi    false    277    7            Î           0    0    files_folder_lnk_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE acstrapi.files_folder_lnk_id_seq OWNED BY acstrapi.files_folder_lnk.id;
          acstrapi               acstrapi    false    276            Ð            1259    16412    files_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE acstrapi.files_id_seq;
       acstrapi               acstrapi    false    209    7            Ï           0    0    files_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE acstrapi.files_id_seq OWNED BY acstrapi.files.id;
          acstrapi               acstrapi    false    208                       1259    16863    files_related_mph    TABLE     Û   CREATE TABLE acstrapi.files_related_mph (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);
 '   DROP TABLE acstrapi.files_related_mph;
       acstrapi         heap r       acstrapi    false    7                       1259    16861    files_related_mph_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.files_related_mph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE acstrapi.files_related_mph_id_seq;
       acstrapi               acstrapi    false    7    275            Ð           0    0    files_related_mph_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE acstrapi.files_related_mph_id_seq OWNED BY acstrapi.files_related_mph.id;
          acstrapi               acstrapi    false    274            ó            1259    16668    globals    TABLE       CREATE TABLE acstrapi.globals (
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
    DROP TABLE acstrapi.globals;
       acstrapi         heap r       acstrapi    false    7            ñ            1259    16652    globals_cmps    TABLE     Ö   CREATE TABLE acstrapi.globals_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 "   DROP TABLE acstrapi.globals_cmps;
       acstrapi         heap r       acstrapi    false    7            ð            1259    16650    globals_cmps_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.globals_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE acstrapi.globals_cmps_id_seq;
       acstrapi               acstrapi    false    7    241            Ñ           0    0    globals_cmps_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE acstrapi.globals_cmps_id_seq OWNED BY acstrapi.globals_cmps.id;
          acstrapi               acstrapi    false    240            ò            1259    16666    globals_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.globals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE acstrapi.globals_id_seq;
       acstrapi               acstrapi    false    243    7            Ò           0    0    globals_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE acstrapi.globals_id_seq OWNED BY acstrapi.globals.id;
          acstrapi               acstrapi    false    242            Õ            1259    16452    i18n_locale    TABLE       CREATE TABLE acstrapi.i18n_locale (
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
 !   DROP TABLE acstrapi.i18n_locale;
       acstrapi         heap r       acstrapi    false    7            Ô            1259    16450    i18n_locale_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE acstrapi.i18n_locale_id_seq;
       acstrapi               acstrapi    false    7    213            Ó           0    0    i18n_locale_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE acstrapi.i18n_locale_id_seq OWNED BY acstrapi.i18n_locale.id;
          acstrapi               acstrapi    false    212            1           1259    24583    jobs    TABLE       CREATE TABLE acstrapi.jobs (
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
    DROP TABLE acstrapi.jobs;
       acstrapi         heap r       acstrapi    false    7            0           1259    24581    jobs_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE acstrapi.jobs_id_seq;
       acstrapi               acstrapi    false    7    305            Ô           0    0    jobs_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE acstrapi.jobs_id_seq OWNED BY acstrapi.jobs.id;
          acstrapi               acstrapi    false    304            ý            1259    16738    strapi_api_token_permissions    TABLE       CREATE TABLE acstrapi.strapi_api_token_permissions (
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
 2   DROP TABLE acstrapi.strapi_api_token_permissions;
       acstrapi         heap r       acstrapi    false    7            ü            1259    16736 #   strapi_api_token_permissions_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE acstrapi.strapi_api_token_permissions_id_seq;
       acstrapi               acstrapi    false    253    7            Õ           0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE acstrapi.strapi_api_token_permissions_id_seq OWNED BY acstrapi.strapi_api_token_permissions.id;
          acstrapi               acstrapi    false    252            -           1259    17033 &   strapi_api_token_permissions_token_lnk    TABLE     È   CREATE TABLE acstrapi.strapi_api_token_permissions_token_lnk (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_ord double precision
);
 <   DROP TABLE acstrapi.strapi_api_token_permissions_token_lnk;
       acstrapi         heap r       acstrapi    false    7            ,           1259    17031 -   strapi_api_token_permissions_token_lnk_id_seq    SEQUENCE     §   CREATE SEQUENCE acstrapi.strapi_api_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE acstrapi.strapi_api_token_permissions_token_lnk_id_seq;
       acstrapi               acstrapi    false    7    301            Ö           0    0 -   strapi_api_token_permissions_token_lnk_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE acstrapi.strapi_api_token_permissions_token_lnk_id_seq OWNED BY acstrapi.strapi_api_token_permissions_token_lnk.id;
          acstrapi               acstrapi    false    300            û            1259    16724    strapi_api_tokens    TABLE     [  CREATE TABLE acstrapi.strapi_api_tokens (
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
 '   DROP TABLE acstrapi.strapi_api_tokens;
       acstrapi         heap r       acstrapi    false    7            ú            1259    16722    strapi_api_tokens_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE acstrapi.strapi_api_tokens_id_seq;
       acstrapi               acstrapi    false    7    251            ×           0    0    strapi_api_tokens_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE acstrapi.strapi_api_tokens_id_seq OWNED BY acstrapi.strapi_api_tokens.id;
          acstrapi               acstrapi    false    250                       1259    16829    strapi_core_store_settings    TABLE     ç   CREATE TABLE acstrapi.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);
 0   DROP TABLE acstrapi.strapi_core_store_settings;
       acstrapi         heap r       acstrapi    false    7                       1259    16827 !   strapi_core_store_settings_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE acstrapi.strapi_core_store_settings_id_seq;
       acstrapi               acstrapi    false    7    269            Ø           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE acstrapi.strapi_core_store_settings_id_seq OWNED BY acstrapi.strapi_core_store_settings.id;
          acstrapi               acstrapi    false    268            Ï            1259    16403    strapi_database_schema    TABLE     ¤   CREATE TABLE acstrapi.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);
 ,   DROP TABLE acstrapi.strapi_database_schema;
       acstrapi         heap r       acstrapi    false    7            Î            1259    16401    strapi_database_schema_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE acstrapi.strapi_database_schema_id_seq;
       acstrapi               acstrapi    false    207    7            Ù           0    0    strapi_database_schema_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE acstrapi.strapi_database_schema_id_seq OWNED BY acstrapi.strapi_database_schema.id;
          acstrapi               acstrapi    false    206                       1259    16851    strapi_history_versions    TABLE     _  CREATE TABLE acstrapi.strapi_history_versions (
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
 -   DROP TABLE acstrapi.strapi_history_versions;
       acstrapi         heap r       acstrapi    false    7                       1259    16849    strapi_history_versions_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.strapi_history_versions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE acstrapi.strapi_history_versions_id_seq;
       acstrapi               acstrapi    false    273    7            Ú           0    0    strapi_history_versions_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE acstrapi.strapi_history_versions_id_seq OWNED BY acstrapi.strapi_history_versions.id;
          acstrapi               acstrapi    false    272            Í            1259    16393    strapi_migrations    TABLE        CREATE TABLE acstrapi.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);
 '   DROP TABLE acstrapi.strapi_migrations;
       acstrapi         heap r       acstrapi    false    7            Ê            1259    16385    strapi_migrations_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE acstrapi.strapi_migrations_id_seq;
       acstrapi               acstrapi    false    7    205            Û           0    0    strapi_migrations_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE acstrapi.strapi_migrations_id_seq OWNED BY acstrapi.strapi_migrations.id;
          acstrapi               acstrapi    false    202            Ì            1259    16389    strapi_migrations_internal    TABLE        CREATE TABLE acstrapi.strapi_migrations_internal (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);
 0   DROP TABLE acstrapi.strapi_migrations_internal;
       acstrapi         heap r       acstrapi    false    7            Ë            1259    16387 !   strapi_migrations_internal_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.strapi_migrations_internal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE acstrapi.strapi_migrations_internal_id_seq;
       acstrapi               acstrapi    false    204    7            Ü           0    0 !   strapi_migrations_internal_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE acstrapi.strapi_migrations_internal_id_seq OWNED BY acstrapi.strapi_migrations_internal.id;
          acstrapi               acstrapi    false    203            Ù            1259    16480    strapi_release_actions    TABLE     î  CREATE TABLE acstrapi.strapi_release_actions (
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
 ,   DROP TABLE acstrapi.strapi_release_actions;
       acstrapi         heap r       acstrapi    false    7            Ø            1259    16478    strapi_release_actions_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.strapi_release_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE acstrapi.strapi_release_actions_id_seq;
       acstrapi               acstrapi    false    7    217            Ý           0    0    strapi_release_actions_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE acstrapi.strapi_release_actions_id_seq OWNED BY acstrapi.strapi_release_actions.id;
          acstrapi               acstrapi    false    216                       1259    16903 "   strapi_release_actions_release_lnk    TABLE     ¶   CREATE TABLE acstrapi.strapi_release_actions_release_lnk (
    id integer NOT NULL,
    release_action_id integer,
    release_id integer,
    release_action_ord double precision
);
 8   DROP TABLE acstrapi.strapi_release_actions_release_lnk;
       acstrapi         heap r       acstrapi    false    7                       1259    16901 )   strapi_release_actions_release_lnk_id_seq    SEQUENCE     £   CREATE SEQUENCE acstrapi.strapi_release_actions_release_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE acstrapi.strapi_release_actions_release_lnk_id_seq;
       acstrapi               acstrapi    false    7    281            Þ           0    0 )   strapi_release_actions_release_lnk_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE acstrapi.strapi_release_actions_release_lnk_id_seq OWNED BY acstrapi.strapi_release_actions_release_lnk.id;
          acstrapi               acstrapi    false    280            ×            1259    16466    strapi_releases    TABLE       CREATE TABLE acstrapi.strapi_releases (
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
 %   DROP TABLE acstrapi.strapi_releases;
       acstrapi         heap r       acstrapi    false    7            Ö            1259    16464    strapi_releases_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.strapi_releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE acstrapi.strapi_releases_id_seq;
       acstrapi               acstrapi    false    215    7            ß           0    0    strapi_releases_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE acstrapi.strapi_releases_id_seq OWNED BY acstrapi.strapi_releases.id;
          acstrapi               acstrapi    false    214                       1259    16766 !   strapi_transfer_token_permissions    TABLE       CREATE TABLE acstrapi.strapi_transfer_token_permissions (
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
 7   DROP TABLE acstrapi.strapi_transfer_token_permissions;
       acstrapi         heap r       acstrapi    false    7                        1259    16764 (   strapi_transfer_token_permissions_id_seq    SEQUENCE     ¢   CREATE SEQUENCE acstrapi.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE acstrapi.strapi_transfer_token_permissions_id_seq;
       acstrapi               acstrapi    false    7    257            à           0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE acstrapi.strapi_transfer_token_permissions_id_seq OWNED BY acstrapi.strapi_transfer_token_permissions.id;
          acstrapi               acstrapi    false    256            /           1259    17046 +   strapi_transfer_token_permissions_token_lnk    TABLE     Ü   CREATE TABLE acstrapi.strapi_transfer_token_permissions_token_lnk (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_ord double precision
);
 A   DROP TABLE acstrapi.strapi_transfer_token_permissions_token_lnk;
       acstrapi         heap r       acstrapi    false    7            .           1259    17044 2   strapi_transfer_token_permissions_token_lnk_id_seq    SEQUENCE     ¬   CREATE SEQUENCE acstrapi.strapi_transfer_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 K   DROP SEQUENCE acstrapi.strapi_transfer_token_permissions_token_lnk_id_seq;
       acstrapi               acstrapi    false    303    7            á           0    0 2   strapi_transfer_token_permissions_token_lnk_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE acstrapi.strapi_transfer_token_permissions_token_lnk_id_seq OWNED BY acstrapi.strapi_transfer_token_permissions_token_lnk.id;
          acstrapi               acstrapi    false    302            ÿ            1259    16752    strapi_transfer_tokens    TABLE     ?  CREATE TABLE acstrapi.strapi_transfer_tokens (
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
 ,   DROP TABLE acstrapi.strapi_transfer_tokens;
       acstrapi         heap r       acstrapi    false    7            þ            1259    16750    strapi_transfer_tokens_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE acstrapi.strapi_transfer_tokens_id_seq;
       acstrapi               acstrapi    false    255    7            â           0    0    strapi_transfer_tokens_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE acstrapi.strapi_transfer_tokens_id_seq OWNED BY acstrapi.strapi_transfer_tokens.id;
          acstrapi               acstrapi    false    254                       1259    16840    strapi_webhooks    TABLE     ¬   CREATE TABLE acstrapi.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);
 %   DROP TABLE acstrapi.strapi_webhooks;
       acstrapi         heap r       acstrapi    false    7                       1259    16838    strapi_webhooks_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE acstrapi.strapi_webhooks_id_seq;
       acstrapi               acstrapi    false    271    7            ã           0    0    strapi_webhooks_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE acstrapi.strapi_webhooks_id_seq OWNED BY acstrapi.strapi_webhooks.id;
          acstrapi               acstrapi    false    270            Û            1259    16494    strapi_workflows    TABLE       CREATE TABLE acstrapi.strapi_workflows (
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
 &   DROP TABLE acstrapi.strapi_workflows;
       acstrapi         heap r       acstrapi    false    7            Ú            1259    16492    strapi_workflows_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.strapi_workflows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE acstrapi.strapi_workflows_id_seq;
       acstrapi               acstrapi    false    7    219            ä           0    0    strapi_workflows_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE acstrapi.strapi_workflows_id_seq OWNED BY acstrapi.strapi_workflows.id;
          acstrapi               acstrapi    false    218                       1259    16916 .   strapi_workflows_stage_required_to_publish_lnk    TABLE        CREATE TABLE acstrapi.strapi_workflows_stage_required_to_publish_lnk (
    id integer NOT NULL,
    workflow_id integer,
    workflow_stage_id integer
);
 D   DROP TABLE acstrapi.strapi_workflows_stage_required_to_publish_lnk;
       acstrapi         heap r       acstrapi    false    7                       1259    16914 5   strapi_workflows_stage_required_to_publish_lnk_id_seq    SEQUENCE     ¯   CREATE SEQUENCE acstrapi.strapi_workflows_stage_required_to_publish_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 N   DROP SEQUENCE acstrapi.strapi_workflows_stage_required_to_publish_lnk_id_seq;
       acstrapi               acstrapi    false    7    283            å           0    0 5   strapi_workflows_stage_required_to_publish_lnk_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE acstrapi.strapi_workflows_stage_required_to_publish_lnk_id_seq OWNED BY acstrapi.strapi_workflows_stage_required_to_publish_lnk.id;
          acstrapi               acstrapi    false    282            Ý            1259    16508    strapi_workflows_stages    TABLE       CREATE TABLE acstrapi.strapi_workflows_stages (
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
 -   DROP TABLE acstrapi.strapi_workflows_stages;
       acstrapi         heap r       acstrapi    false    7            Ü            1259    16506    strapi_workflows_stages_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.strapi_workflows_stages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE acstrapi.strapi_workflows_stages_id_seq;
       acstrapi               acstrapi    false    221    7            æ           0    0    strapi_workflows_stages_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE acstrapi.strapi_workflows_stages_id_seq OWNED BY acstrapi.strapi_workflows_stages.id;
          acstrapi               acstrapi    false    220                       1259    16941 '   strapi_workflows_stages_permissions_lnk    TABLE     º   CREATE TABLE acstrapi.strapi_workflows_stages_permissions_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    permission_id integer,
    permission_ord double precision
);
 =   DROP TABLE acstrapi.strapi_workflows_stages_permissions_lnk;
       acstrapi         heap r       acstrapi    false    7                       1259    16939 .   strapi_workflows_stages_permissions_lnk_id_seq    SEQUENCE     ¨   CREATE SEQUENCE acstrapi.strapi_workflows_stages_permissions_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE acstrapi.strapi_workflows_stages_permissions_lnk_id_seq;
       acstrapi               acstrapi    false    7    287            ç           0    0 .   strapi_workflows_stages_permissions_lnk_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE acstrapi.strapi_workflows_stages_permissions_lnk_id_seq OWNED BY acstrapi.strapi_workflows_stages_permissions_lnk.id;
          acstrapi               acstrapi    false    286                       1259    16928 $   strapi_workflows_stages_workflow_lnk    TABLE     ¹   CREATE TABLE acstrapi.strapi_workflows_stages_workflow_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    workflow_id integer,
    workflow_stage_ord double precision
);
 :   DROP TABLE acstrapi.strapi_workflows_stages_workflow_lnk;
       acstrapi         heap r       acstrapi    false    7                       1259    16926 +   strapi_workflows_stages_workflow_lnk_id_seq    SEQUENCE     ¥   CREATE SEQUENCE acstrapi.strapi_workflows_stages_workflow_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE acstrapi.strapi_workflows_stages_workflow_lnk_id_seq;
       acstrapi               acstrapi    false    285    7            è           0    0 +   strapi_workflows_stages_workflow_lnk_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE acstrapi.strapi_workflows_stages_workflow_lnk_id_seq OWNED BY acstrapi.strapi_workflows_stages_workflow_lnk.id;
          acstrapi               acstrapi    false    284            ß            1259    16522    up_permissions    TABLE     u  CREATE TABLE acstrapi.up_permissions (
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
 $   DROP TABLE acstrapi.up_permissions;
       acstrapi         heap r       acstrapi    false    7            Þ            1259    16520    up_permissions_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE acstrapi.up_permissions_id_seq;
       acstrapi               acstrapi    false    223    7            é           0    0    up_permissions_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE acstrapi.up_permissions_id_seq OWNED BY acstrapi.up_permissions.id;
          acstrapi               acstrapi    false    222            !           1259    16954    up_permissions_role_lnk    TABLE         CREATE TABLE acstrapi.up_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);
 -   DROP TABLE acstrapi.up_permissions_role_lnk;
       acstrapi         heap r       acstrapi    false    7                        1259    16952    up_permissions_role_lnk_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.up_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE acstrapi.up_permissions_role_lnk_id_seq;
       acstrapi               acstrapi    false    289    7            ê           0    0    up_permissions_role_lnk_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE acstrapi.up_permissions_role_lnk_id_seq OWNED BY acstrapi.up_permissions_role_lnk.id;
          acstrapi               acstrapi    false    288            á            1259    16536    up_roles    TABLE     ¶  CREATE TABLE acstrapi.up_roles (
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
    DROP TABLE acstrapi.up_roles;
       acstrapi         heap r       acstrapi    false    7            à            1259    16534    up_roles_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE acstrapi.up_roles_id_seq;
       acstrapi               acstrapi    false    7    225            ë           0    0    up_roles_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE acstrapi.up_roles_id_seq OWNED BY acstrapi.up_roles.id;
          acstrapi               acstrapi    false    224            ã            1259    16550    up_users    TABLE     i  CREATE TABLE acstrapi.up_users (
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
    DROP TABLE acstrapi.up_users;
       acstrapi         heap r       acstrapi    false    7            â            1259    16548    up_users_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE acstrapi.up_users_id_seq;
       acstrapi               acstrapi    false    7    227            ì           0    0    up_users_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE acstrapi.up_users_id_seq OWNED BY acstrapi.up_users.id;
          acstrapi               acstrapi    false    226            #           1259    16967    up_users_role_lnk    TABLE        CREATE TABLE acstrapi.up_users_role_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_ord double precision
);
 '   DROP TABLE acstrapi.up_users_role_lnk;
       acstrapi         heap r       acstrapi    false    7            "           1259    16965    up_users_role_lnk_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.up_users_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE acstrapi.up_users_role_lnk_id_seq;
       acstrapi               acstrapi    false    7    291            í           0    0    up_users_role_lnk_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE acstrapi.up_users_role_lnk_id_seq OWNED BY acstrapi.up_users_role_lnk.id;
          acstrapi               acstrapi    false    290            Ó            1259    16434    upload_folders    TABLE     ©  CREATE TABLE acstrapi.upload_folders (
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
 $   DROP TABLE acstrapi.upload_folders;
       acstrapi         heap r       acstrapi    false    7            Ò            1259    16432    upload_folders_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE acstrapi.upload_folders_id_seq;
       acstrapi               acstrapi    false    7    211            î           0    0    upload_folders_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE acstrapi.upload_folders_id_seq OWNED BY acstrapi.upload_folders.id;
          acstrapi               acstrapi    false    210                       1259    16890    upload_folders_parent_lnk    TABLE         CREATE TABLE acstrapi.upload_folders_parent_lnk (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_ord double precision
);
 /   DROP TABLE acstrapi.upload_folders_parent_lnk;
       acstrapi         heap r       acstrapi    false    7                       1259    16888     upload_folders_parent_lnk_id_seq    SEQUENCE        CREATE SEQUENCE acstrapi.upload_folders_parent_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE acstrapi.upload_folders_parent_lnk_id_seq;
       acstrapi               acstrapi    false    279    7            ï           0    0     upload_folders_parent_lnk_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE acstrapi.upload_folders_parent_lnk_id_seq OWNED BY acstrapi.upload_folders_parent_lnk.id;
          acstrapi               acstrapi    false    278            J           2604    16583 	   abouts id    DEFAULT     j   ALTER TABLE ONLY acstrapi.abouts ALTER COLUMN id SET DEFAULT nextval('acstrapi.abouts_id_seq'::regclass);
 :   ALTER TABLE acstrapi.abouts ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    230    231    231            I           2604    16567    abouts_cmps id    DEFAULT     t   ALTER TABLE ONLY acstrapi.abouts_cmps ALTER COLUMN id SET DEFAULT nextval('acstrapi.abouts_cmps_id_seq'::regclass);
 ?   ALTER TABLE acstrapi.abouts_cmps ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    228    229    229            Q           2604    16685    admin_permissions id    DEFAULT        ALTER TABLE ONLY acstrapi.admin_permissions ALTER COLUMN id SET DEFAULT nextval('acstrapi.admin_permissions_id_seq'::regclass);
 E   ALTER TABLE acstrapi.admin_permissions ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    245    244    245            k           2604    17009    admin_permissions_role_lnk id    DEFAULT        ALTER TABLE ONLY acstrapi.admin_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.admin_permissions_role_lnk_id_seq'::regclass);
 N   ALTER TABLE acstrapi.admin_permissions_role_lnk ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    297    296    297            S           2604    16713    admin_roles id    DEFAULT     t   ALTER TABLE ONLY acstrapi.admin_roles ALTER COLUMN id SET DEFAULT nextval('acstrapi.admin_roles_id_seq'::regclass);
 ?   ALTER TABLE acstrapi.admin_roles ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    248    249    249            R           2604    16699    admin_users id    DEFAULT     t   ALTER TABLE ONLY acstrapi.admin_users ALTER COLUMN id SET DEFAULT nextval('acstrapi.admin_users_id_seq'::regclass);
 ?   ALTER TABLE acstrapi.admin_users ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    247    246    247            l           2604    17022    admin_users_roles_lnk id    DEFAULT        ALTER TABLE ONLY acstrapi.admin_users_roles_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.admin_users_roles_lnk_id_seq'::regclass);
 I   ALTER TABLE acstrapi.admin_users_roles_lnk ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    298    299    299            L           2604    16613    articles id    DEFAULT     n   ALTER TABLE ONLY acstrapi.articles ALTER COLUMN id SET DEFAULT nextval('acstrapi.articles_id_seq'::regclass);
 <   ALTER TABLE acstrapi.articles ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    234    235    235            i           2604    16983    articles_author_lnk id    DEFAULT        ALTER TABLE ONLY acstrapi.articles_author_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.articles_author_lnk_id_seq'::regclass);
 G   ALTER TABLE acstrapi.articles_author_lnk ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    292    293    293            j           2604    16996    articles_category_lnk id    DEFAULT        ALTER TABLE ONLY acstrapi.articles_category_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.articles_category_lnk_id_seq'::regclass);
 I   ALTER TABLE acstrapi.articles_category_lnk ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    295    294    295            K           2604    16597    articles_cmps id    DEFAULT     x   ALTER TABLE ONLY acstrapi.articles_cmps ALTER COLUMN id SET DEFAULT nextval('acstrapi.articles_cmps_id_seq'::regclass);
 A   ALTER TABLE acstrapi.articles_cmps ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    232    233    233            M           2604    16627 
   authors id    DEFAULT     l   ALTER TABLE ONLY acstrapi.authors ALTER COLUMN id SET DEFAULT nextval('acstrapi.authors_id_seq'::regclass);
 ;   ALTER TABLE acstrapi.authors ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    236    237    237            N           2604    16641    categories id    DEFAULT     r   ALTER TABLE ONLY acstrapi.categories ALTER COLUMN id SET DEFAULT nextval('acstrapi.categories_id_seq'::regclass);
 >   ALTER TABLE acstrapi.categories ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    238    239    239            \           2604    16824    components_shared_media id    DEFAULT        ALTER TABLE ONLY acstrapi.components_shared_media ALTER COLUMN id SET DEFAULT nextval('acstrapi.components_shared_media_id_seq'::regclass);
 K   ALTER TABLE acstrapi.components_shared_media ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    267    266    267            [           2604    16813    components_shared_quotes id    DEFAULT        ALTER TABLE ONLY acstrapi.components_shared_quotes ALTER COLUMN id SET DEFAULT nextval('acstrapi.components_shared_quotes_id_seq'::regclass);
 L   ALTER TABLE acstrapi.components_shared_quotes ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    265    264    265            Z           2604    16802    components_shared_rich_texts id    DEFAULT        ALTER TABLE ONLY acstrapi.components_shared_rich_texts ALTER COLUMN id SET DEFAULT nextval('acstrapi.components_shared_rich_texts_id_seq'::regclass);
 P   ALTER TABLE acstrapi.components_shared_rich_texts ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    263    262    263            Y           2604    16791    components_shared_seos id    DEFAULT        ALTER TABLE ONLY acstrapi.components_shared_seos ALTER COLUMN id SET DEFAULT nextval('acstrapi.components_shared_seos_id_seq'::regclass);
 J   ALTER TABLE acstrapi.components_shared_seos ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    261    260    261            X           2604    16783    components_shared_sliders id    DEFAULT        ALTER TABLE ONLY acstrapi.components_shared_sliders ALTER COLUMN id SET DEFAULT nextval('acstrapi.components_shared_sliders_id_seq'::regclass);
 M   ALTER TABLE acstrapi.components_shared_sliders ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    258    259    259            ?           2604    16417    files id    DEFAULT     h   ALTER TABLE ONLY acstrapi.files ALTER COLUMN id SET DEFAULT nextval('acstrapi.files_id_seq'::regclass);
 9   ALTER TABLE acstrapi.files ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    209    208    209            a           2604    16880    files_folder_lnk id    DEFAULT     ~   ALTER TABLE ONLY acstrapi.files_folder_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.files_folder_lnk_id_seq'::regclass);
 D   ALTER TABLE acstrapi.files_folder_lnk ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    276    277    277            `           2604    16866    files_related_mph id    DEFAULT        ALTER TABLE ONLY acstrapi.files_related_mph ALTER COLUMN id SET DEFAULT nextval('acstrapi.files_related_mph_id_seq'::regclass);
 E   ALTER TABLE acstrapi.files_related_mph ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    274    275    275            P           2604    16671 
   globals id    DEFAULT     l   ALTER TABLE ONLY acstrapi.globals ALTER COLUMN id SET DEFAULT nextval('acstrapi.globals_id_seq'::regclass);
 ;   ALTER TABLE acstrapi.globals ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    242    243    243            O           2604    16655    globals_cmps id    DEFAULT     v   ALTER TABLE ONLY acstrapi.globals_cmps ALTER COLUMN id SET DEFAULT nextval('acstrapi.globals_cmps_id_seq'::regclass);
 @   ALTER TABLE acstrapi.globals_cmps ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    241    240    241            A           2604    16455    i18n_locale id    DEFAULT     t   ALTER TABLE ONLY acstrapi.i18n_locale ALTER COLUMN id SET DEFAULT nextval('acstrapi.i18n_locale_id_seq'::regclass);
 ?   ALTER TABLE acstrapi.i18n_locale ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    212    213    213            o           2604    24586    jobs id    DEFAULT     f   ALTER TABLE ONLY acstrapi.jobs ALTER COLUMN id SET DEFAULT nextval('acstrapi.jobs_id_seq'::regclass);
 8   ALTER TABLE acstrapi.jobs ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    305    304    305            U           2604    16741    strapi_api_token_permissions id    DEFAULT        ALTER TABLE ONLY acstrapi.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_api_token_permissions_id_seq'::regclass);
 P   ALTER TABLE acstrapi.strapi_api_token_permissions ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    253    252    253            m           2604    17036 )   strapi_api_token_permissions_token_lnk id    DEFAULT     ª   ALTER TABLE ONLY acstrapi.strapi_api_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_api_token_permissions_token_lnk_id_seq'::regclass);
 Z   ALTER TABLE acstrapi.strapi_api_token_permissions_token_lnk ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    300    301    301            T           2604    16727    strapi_api_tokens id    DEFAULT        ALTER TABLE ONLY acstrapi.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_api_tokens_id_seq'::regclass);
 E   ALTER TABLE acstrapi.strapi_api_tokens ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    250    251    251            ]           2604    16832    strapi_core_store_settings id    DEFAULT        ALTER TABLE ONLY acstrapi.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_core_store_settings_id_seq'::regclass);
 N   ALTER TABLE acstrapi.strapi_core_store_settings ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    269    268    269            >           2604    16406    strapi_database_schema id    DEFAULT        ALTER TABLE ONLY acstrapi.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_database_schema_id_seq'::regclass);
 J   ALTER TABLE acstrapi.strapi_database_schema ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    207    206    207            _           2604    16854    strapi_history_versions id    DEFAULT        ALTER TABLE ONLY acstrapi.strapi_history_versions ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_history_versions_id_seq'::regclass);
 K   ALTER TABLE acstrapi.strapi_history_versions ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    272    273    273            =           2604    16396    strapi_migrations id    DEFAULT        ALTER TABLE ONLY acstrapi.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_migrations_id_seq'::regclass);
 E   ALTER TABLE acstrapi.strapi_migrations ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    202    205    205            <           2604    16392    strapi_migrations_internal id    DEFAULT        ALTER TABLE ONLY acstrapi.strapi_migrations_internal ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_migrations_internal_id_seq'::regclass);
 N   ALTER TABLE acstrapi.strapi_migrations_internal ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    204    203    204            C           2604    16483    strapi_release_actions id    DEFAULT        ALTER TABLE ONLY acstrapi.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_release_actions_id_seq'::regclass);
 J   ALTER TABLE acstrapi.strapi_release_actions ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    216    217    217            c           2604    16906 %   strapi_release_actions_release_lnk id    DEFAULT     ¢   ALTER TABLE ONLY acstrapi.strapi_release_actions_release_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_release_actions_release_lnk_id_seq'::regclass);
 V   ALTER TABLE acstrapi.strapi_release_actions_release_lnk ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    280    281    281            B           2604    16469    strapi_releases id    DEFAULT     |   ALTER TABLE ONLY acstrapi.strapi_releases ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_releases_id_seq'::regclass);
 C   ALTER TABLE acstrapi.strapi_releases ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    215    214    215            W           2604    16769 $   strapi_transfer_token_permissions id    DEFAULT         ALTER TABLE ONLY acstrapi.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_transfer_token_permissions_id_seq'::regclass);
 U   ALTER TABLE acstrapi.strapi_transfer_token_permissions ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    257    256    257            n           2604    17049 .   strapi_transfer_token_permissions_token_lnk id    DEFAULT     ´   ALTER TABLE ONLY acstrapi.strapi_transfer_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_transfer_token_permissions_token_lnk_id_seq'::regclass);
 _   ALTER TABLE acstrapi.strapi_transfer_token_permissions_token_lnk ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    302    303    303            V           2604    16755    strapi_transfer_tokens id    DEFAULT        ALTER TABLE ONLY acstrapi.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_transfer_tokens_id_seq'::regclass);
 J   ALTER TABLE acstrapi.strapi_transfer_tokens ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    255    254    255            ^           2604    16843    strapi_webhooks id    DEFAULT     |   ALTER TABLE ONLY acstrapi.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_webhooks_id_seq'::regclass);
 C   ALTER TABLE acstrapi.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    270    271    271            D           2604    16497    strapi_workflows id    DEFAULT     ~   ALTER TABLE ONLY acstrapi.strapi_workflows ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_workflows_id_seq'::regclass);
 D   ALTER TABLE acstrapi.strapi_workflows ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    219    218    219            d           2604    16919 1   strapi_workflows_stage_required_to_publish_lnk id    DEFAULT     º   ALTER TABLE ONLY acstrapi.strapi_workflows_stage_required_to_publish_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_workflows_stage_required_to_publish_lnk_id_seq'::regclass);
 b   ALTER TABLE acstrapi.strapi_workflows_stage_required_to_publish_lnk ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    283    282    283            E           2604    16511    strapi_workflows_stages id    DEFAULT        ALTER TABLE ONLY acstrapi.strapi_workflows_stages ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_workflows_stages_id_seq'::regclass);
 K   ALTER TABLE acstrapi.strapi_workflows_stages ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    220    221    221            f           2604    16944 *   strapi_workflows_stages_permissions_lnk id    DEFAULT     ¬   ALTER TABLE ONLY acstrapi.strapi_workflows_stages_permissions_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_workflows_stages_permissions_lnk_id_seq'::regclass);
 [   ALTER TABLE acstrapi.strapi_workflows_stages_permissions_lnk ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    286    287    287            e           2604    16931 '   strapi_workflows_stages_workflow_lnk id    DEFAULT     ¦   ALTER TABLE ONLY acstrapi.strapi_workflows_stages_workflow_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.strapi_workflows_stages_workflow_lnk_id_seq'::regclass);
 X   ALTER TABLE acstrapi.strapi_workflows_stages_workflow_lnk ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    284    285    285            F           2604    16525    up_permissions id    DEFAULT     z   ALTER TABLE ONLY acstrapi.up_permissions ALTER COLUMN id SET DEFAULT nextval('acstrapi.up_permissions_id_seq'::regclass);
 B   ALTER TABLE acstrapi.up_permissions ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    222    223    223            g           2604    16957    up_permissions_role_lnk id    DEFAULT        ALTER TABLE ONLY acstrapi.up_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.up_permissions_role_lnk_id_seq'::regclass);
 K   ALTER TABLE acstrapi.up_permissions_role_lnk ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    289    288    289            G           2604    16539    up_roles id    DEFAULT     n   ALTER TABLE ONLY acstrapi.up_roles ALTER COLUMN id SET DEFAULT nextval('acstrapi.up_roles_id_seq'::regclass);
 <   ALTER TABLE acstrapi.up_roles ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    224    225    225            H           2604    16553    up_users id    DEFAULT     n   ALTER TABLE ONLY acstrapi.up_users ALTER COLUMN id SET DEFAULT nextval('acstrapi.up_users_id_seq'::regclass);
 <   ALTER TABLE acstrapi.up_users ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    226    227    227            h           2604    16970    up_users_role_lnk id    DEFAULT        ALTER TABLE ONLY acstrapi.up_users_role_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.up_users_role_lnk_id_seq'::regclass);
 E   ALTER TABLE acstrapi.up_users_role_lnk ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    290    291    291            @           2604    16437    upload_folders id    DEFAULT     z   ALTER TABLE ONLY acstrapi.upload_folders ALTER COLUMN id SET DEFAULT nextval('acstrapi.upload_folders_id_seq'::regclass);
 B   ALTER TABLE acstrapi.upload_folders ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    210    211    211            b           2604    16893    upload_folders_parent_lnk id    DEFAULT        ALTER TABLE ONLY acstrapi.upload_folders_parent_lnk ALTER COLUMN id SET DEFAULT nextval('acstrapi.upload_folders_parent_lnk_id_seq'::regclass);
 M   ALTER TABLE acstrapi.upload_folders_parent_lnk ALTER COLUMN id DROP DEFAULT;
       acstrapi               acstrapi    false    279    278    279            j          0    16580    abouts 
   TABLE DATA              COPY acstrapi.abouts (id, document_id, title, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    acstrapi               acstrapi    false    231   áQ      h          0    16564    abouts_cmps 
   TABLE DATA           ^   COPY acstrapi.abouts_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
    acstrapi               acstrapi    false    229   }R      x          0    16682    admin_permissions 
   TABLE DATA           Æ   COPY acstrapi.admin_permissions (id, document_id, action, action_parameters, subject, properties, conditions, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    acstrapi               acstrapi    false    245   úR      ¬          0    17006    admin_permissions_role_lnk 
   TABLE DATA           b   COPY acstrapi.admin_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
    acstrapi               acstrapi    false    297   É      |          0    16710    admin_roles 
   TABLE DATA              COPY acstrapi.admin_roles (id, document_id, name, code, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    acstrapi               acstrapi    false    249   gÓ      z          0    16696    admin_users 
   TABLE DATA             COPY acstrapi.admin_users (id, document_id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    acstrapi               acstrapi    false    247   ×      ®          0    17019    admin_users_roles_lnk 
   TABLE DATA           [   COPY acstrapi.admin_users_roles_lnk (id, user_id, role_id, role_ord, user_ord) FROM stdin;
    acstrapi               acstrapi    false    299   Ø      n          0    16610    articles 
   TABLE DATA              COPY acstrapi.articles (id, document_id, title, description, slug, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    acstrapi               acstrapi    false    235   ²Ø      ¨          0    16980    articles_author_lnk 
   TABLE DATA           W   COPY acstrapi.articles_author_lnk (id, article_id, author_id, article_ord) FROM stdin;
    acstrapi               acstrapi    false    293   @ß      ª          0    16993    articles_category_lnk 
   TABLE DATA           [   COPY acstrapi.articles_category_lnk (id, article_id, category_id, article_ord) FROM stdin;
    acstrapi               acstrapi    false    295   ½ß      l          0    16594    articles_cmps 
   TABLE DATA           `   COPY acstrapi.articles_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
    acstrapi               acstrapi    false    233   :à      p          0    16624    authors 
   TABLE DATA              COPY acstrapi.authors (id, document_id, name, email, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    acstrapi               acstrapi    false    237   åå      r          0    16638 
   categories 
   TABLE DATA              COPY acstrapi.categories (id, document_id, name, slug, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    acstrapi               acstrapi    false    239   ç                0    16821    components_shared_media 
   TABLE DATA           7   COPY acstrapi.components_shared_media (id) FROM stdin;
    acstrapi               acstrapi    false    267   §é                0    16810    components_shared_quotes 
   TABLE DATA           E   COPY acstrapi.components_shared_quotes (id, title, body) FROM stdin;
    acstrapi               acstrapi    false    265   ûé                0    16799    components_shared_rich_texts 
   TABLE DATA           B   COPY acstrapi.components_shared_rich_texts (id, body) FROM stdin;
    acstrapi               acstrapi    false    263   Gì                0    16788    components_shared_seos 
   TABLE DATA           T   COPY acstrapi.components_shared_seos (id, meta_title, meta_description) FROM stdin;
    acstrapi               acstrapi    false    261   &                0    16780    components_shared_sliders 
   TABLE DATA           9   COPY acstrapi.components_shared_sliders (id) FROM stdin;
    acstrapi               acstrapi    false    259   _      T          0    16414    files 
   TABLE DATA           
  COPY acstrapi.files (id, document_id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    acstrapi               acstrapi    false    209   ¬                0    16877    files_folder_lnk 
   TABLE DATA           N   COPY acstrapi.files_folder_lnk (id, file_id, folder_id, file_ord) FROM stdin;
    acstrapi               acstrapi    false    277   pW                0    16863    files_related_mph 
   TABLE DATA           d   COPY acstrapi.files_related_mph (id, file_id, related_id, related_type, field, "order") FROM stdin;
    acstrapi               acstrapi    false    275   W      v          0    16668    globals 
   TABLE DATA              COPY acstrapi.globals (id, document_id, site_name, site_description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    acstrapi               acstrapi    false    243   ¸\      t          0    16652    globals_cmps 
   TABLE DATA           _   COPY acstrapi.globals_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
    acstrapi               acstrapi    false    241   b]      X          0    16452    i18n_locale 
   TABLE DATA              COPY acstrapi.i18n_locale (id, document_id, name, code, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    acstrapi               acstrapi    false    213   ]      ´          0    24583    jobs 
   TABLE DATA              COPY acstrapi.jobs (id, document_id, type, title, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    acstrapi               acstrapi    false    305   1^                0    16738    strapi_api_token_permissions 
   TABLE DATA              COPY acstrapi.strapi_api_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    acstrapi               acstrapi    false    253   c      °          0    17033 &   strapi_api_token_permissions_token_lnk 
   TABLE DATA              COPY acstrapi.strapi_api_token_permissions_token_lnk (id, api_token_permission_id, api_token_id, api_token_permission_ord) FROM stdin;
    acstrapi               acstrapi    false    301   -f      ~          0    16724    strapi_api_tokens 
   TABLE DATA           Ó   COPY acstrapi.strapi_api_tokens (id, document_id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    acstrapi               acstrapi    false    251   f                0    16829    strapi_core_store_settings 
   TABLE DATA           ^   COPY acstrapi.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
    acstrapi               acstrapi    false    269   Úh      R          0    16403    strapi_database_schema 
   TABLE DATA           L   COPY acstrapi.strapi_database_schema (id, schema, "time", hash) FROM stdin;
    acstrapi               acstrapi    false    207   5                0    16851    strapi_history_versions 
   TABLE DATA              COPY acstrapi.strapi_history_versions (id, content_type, related_document_id, locale, status, data, schema, created_at, created_by_id) FROM stdin;
    acstrapi               acstrapi    false    273   ÃG      P          0    16393    strapi_migrations 
   TABLE DATA           ?   COPY acstrapi.strapi_migrations (id, name, "time") FROM stdin;
    acstrapi               acstrapi    false    205   ØG      O          0    16389    strapi_migrations_internal 
   TABLE DATA           H   COPY acstrapi.strapi_migrations_internal (id, name, "time") FROM stdin;
    acstrapi               acstrapi    false    204   íG      \          0    16480    strapi_release_actions 
   TABLE DATA           Æ   COPY acstrapi.strapi_release_actions (id, document_id, type, content_type, entry_document_id, locale, is_entry_valid, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    acstrapi               acstrapi    false    217   zI                0    16903 "   strapi_release_actions_release_lnk 
   TABLE DATA           u   COPY acstrapi.strapi_release_actions_release_lnk (id, release_action_id, release_id, release_action_ord) FROM stdin;
    acstrapi               acstrapi    false    281   I      Z          0    16466    strapi_releases 
   TABLE DATA           »   COPY acstrapi.strapi_releases (id, document_id, name, released_at, scheduled_at, timezone, status, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    acstrapi               acstrapi    false    215   ¤I                0    16766 !   strapi_transfer_token_permissions 
   TABLE DATA           ¢   COPY acstrapi.strapi_transfer_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    acstrapi               acstrapi    false    257   ¹I      ²          0    17046 +   strapi_transfer_token_permissions_token_lnk 
   TABLE DATA              COPY acstrapi.strapi_transfer_token_permissions_token_lnk (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_ord) FROM stdin;
    acstrapi               acstrapi    false    303   ÎI                0    16752    strapi_transfer_tokens 
   TABLE DATA           Ò   COPY acstrapi.strapi_transfer_tokens (id, document_id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    acstrapi               acstrapi    false    255   ãI                0    16840    strapi_webhooks 
   TABLE DATA           T   COPY acstrapi.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    acstrapi               acstrapi    false    271   øI      ^          0    16494    strapi_workflows 
   TABLE DATA              COPY acstrapi.strapi_workflows (id, document_id, name, content_types, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    acstrapi               acstrapi    false    219   J                0    16916 .   strapi_workflows_stage_required_to_publish_lnk 
   TABLE DATA           n   COPY acstrapi.strapi_workflows_stage_required_to_publish_lnk (id, workflow_id, workflow_stage_id) FROM stdin;
    acstrapi               acstrapi    false    283   "J      `          0    16508    strapi_workflows_stages 
   TABLE DATA              COPY acstrapi.strapi_workflows_stages (id, document_id, name, color, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    acstrapi               acstrapi    false    221   7J      ¢          0    16941 '   strapi_workflows_stages_permissions_lnk 
   TABLE DATA           y   COPY acstrapi.strapi_workflows_stages_permissions_lnk (id, workflow_stage_id, permission_id, permission_ord) FROM stdin;
    acstrapi               acstrapi    false    287   LJ                 0    16928 $   strapi_workflows_stages_workflow_lnk 
   TABLE DATA           x   COPY acstrapi.strapi_workflows_stages_workflow_lnk (id, workflow_stage_id, workflow_id, workflow_stage_ord) FROM stdin;
    acstrapi               acstrapi    false    285   aJ      b          0    16522    up_permissions 
   TABLE DATA              COPY acstrapi.up_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    acstrapi               acstrapi    false    223   vJ      ¤          0    16954    up_permissions_role_lnk 
   TABLE DATA           _   COPY acstrapi.up_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
    acstrapi               acstrapi    false    289   jT      d          0    16536    up_roles 
   TABLE DATA              COPY acstrapi.up_roles (id, document_id, name, description, type, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    acstrapi               acstrapi    false    225   lU      f          0    16550    up_users 
   TABLE DATA           ä   COPY acstrapi.up_users (id, document_id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    acstrapi               acstrapi    false    227   ãV      ¦          0    16967    up_users_role_lnk 
   TABLE DATA           M   COPY acstrapi.up_users_role_lnk (id, user_id, role_id, user_ord) FROM stdin;
    acstrapi               acstrapi    false    291   øV      V          0    16434    upload_folders 
   TABLE DATA              COPY acstrapi.upload_folders (id, document_id, name, path_id, path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    acstrapi               acstrapi    false    211   W                0    16890    upload_folders_parent_lnk 
   TABLE DATA           _   COPY acstrapi.upload_folders_parent_lnk (id, folder_id, inv_folder_id, folder_ord) FROM stdin;
    acstrapi               acstrapi    false    279   "W      ð           0    0    abouts_cmps_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('acstrapi.abouts_cmps_id_seq', 3, true);
          acstrapi               acstrapi    false    228            ñ           0    0    abouts_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('acstrapi.abouts_id_seq', 1, true);
          acstrapi               acstrapi    false    230            ò           0    0    admin_permissions_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('acstrapi.admin_permissions_id_seq', 164, true);
          acstrapi               acstrapi    false    244            ó           0    0 !   admin_permissions_role_lnk_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('acstrapi.admin_permissions_role_lnk_id_seq', 164, true);
          acstrapi               acstrapi    false    296            ô           0    0    admin_roles_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('acstrapi.admin_roles_id_seq', 5, true);
          acstrapi               acstrapi    false    248            õ           0    0    admin_users_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('acstrapi.admin_users_id_seq', 1, true);
          acstrapi               acstrapi    false    246            ö           0    0    admin_users_roles_lnk_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('acstrapi.admin_users_roles_lnk_id_seq', 1, true);
          acstrapi               acstrapi    false    298            ÷           0    0    articles_author_lnk_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('acstrapi.articles_author_lnk_id_seq', 8, true);
          acstrapi               acstrapi    false    292            ø           0    0    articles_category_lnk_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('acstrapi.articles_category_lnk_id_seq', 8, true);
          acstrapi               acstrapi    false    294            ù           0    0    articles_cmps_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('acstrapi.articles_cmps_id_seq', 40, true);
          acstrapi               acstrapi    false    232            ú           0    0    articles_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('acstrapi.articles_id_seq', 8, true);
          acstrapi               acstrapi    false    234            û           0    0    authors_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('acstrapi.authors_id_seq', 2, true);
          acstrapi               acstrapi    false    236            ü           0    0    categories_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('acstrapi.categories_id_seq', 5, true);
          acstrapi               acstrapi    false    238            ý           0    0    components_shared_media_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('acstrapi.components_shared_media_id_seq', 9, true);
          acstrapi               acstrapi    false    266            þ           0    0    components_shared_quotes_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('acstrapi.components_shared_quotes_id_seq', 9, true);
          acstrapi               acstrapi    false    264            ÿ           0    0 #   components_shared_rich_texts_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('acstrapi.components_shared_rich_texts_id_seq', 17, true);
          acstrapi               acstrapi    false    262                        0    0    components_shared_seos_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('acstrapi.components_shared_seos_id_seq', 1, true);
          acstrapi               acstrapi    false    260                       0    0     components_shared_sliders_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('acstrapi.components_shared_sliders_id_seq', 8, true);
          acstrapi               acstrapi    false    258                       0    0    files_folder_lnk_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('acstrapi.files_folder_lnk_id_seq', 1, false);
          acstrapi               acstrapi    false    276                       0    0    files_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('acstrapi.files_id_seq', 11, true);
          acstrapi               acstrapi    false    208                       0    0    files_related_mph_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('acstrapi.files_related_mph_id_seq', 37, true);
          acstrapi               acstrapi    false    274                       0    0    globals_cmps_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('acstrapi.globals_cmps_id_seq', 1, true);
          acstrapi               acstrapi    false    240                       0    0    globals_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('acstrapi.globals_id_seq', 1, true);
          acstrapi               acstrapi    false    242                       0    0    i18n_locale_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('acstrapi.i18n_locale_id_seq', 1, true);
          acstrapi               acstrapi    false    212                       0    0    jobs_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('acstrapi.jobs_id_seq', 10, true);
          acstrapi               acstrapi    false    304            	           0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('acstrapi.strapi_api_token_permissions_id_seq', 5, true);
          acstrapi               acstrapi    false    252            
           0    0 -   strapi_api_token_permissions_token_lnk_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('acstrapi.strapi_api_token_permissions_token_lnk_id_seq', 5, true);
          acstrapi               acstrapi    false    300                       0    0    strapi_api_tokens_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('acstrapi.strapi_api_tokens_id_seq', 2, true);
          acstrapi               acstrapi    false    250                       0    0 !   strapi_core_store_settings_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('acstrapi.strapi_core_store_settings_id_seq', 38, true);
          acstrapi               acstrapi    false    268                       0    0    strapi_database_schema_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('acstrapi.strapi_database_schema_id_seq', 4, true);
          acstrapi               acstrapi    false    206                       0    0    strapi_history_versions_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('acstrapi.strapi_history_versions_id_seq', 1, false);
          acstrapi               acstrapi    false    272                       0    0    strapi_migrations_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('acstrapi.strapi_migrations_id_seq', 1, false);
          acstrapi               acstrapi    false    202                       0    0 !   strapi_migrations_internal_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('acstrapi.strapi_migrations_internal_id_seq', 6, true);
          acstrapi               acstrapi    false    203                       0    0    strapi_release_actions_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('acstrapi.strapi_release_actions_id_seq', 1, false);
          acstrapi               acstrapi    false    216                       0    0 )   strapi_release_actions_release_lnk_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('acstrapi.strapi_release_actions_release_lnk_id_seq', 1, false);
          acstrapi               acstrapi    false    280                       0    0    strapi_releases_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('acstrapi.strapi_releases_id_seq', 1, false);
          acstrapi               acstrapi    false    214                       0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('acstrapi.strapi_transfer_token_permissions_id_seq', 1, false);
          acstrapi               acstrapi    false    256                       0    0 2   strapi_transfer_token_permissions_token_lnk_id_seq    SEQUENCE SET     c   SELECT pg_catalog.setval('acstrapi.strapi_transfer_token_permissions_token_lnk_id_seq', 1, false);
          acstrapi               acstrapi    false    302                       0    0    strapi_transfer_tokens_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('acstrapi.strapi_transfer_tokens_id_seq', 1, false);
          acstrapi               acstrapi    false    254                       0    0    strapi_webhooks_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('acstrapi.strapi_webhooks_id_seq', 1, false);
          acstrapi               acstrapi    false    270                       0    0    strapi_workflows_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('acstrapi.strapi_workflows_id_seq', 1, false);
          acstrapi               acstrapi    false    218                       0    0 5   strapi_workflows_stage_required_to_publish_lnk_id_seq    SEQUENCE SET     f   SELECT pg_catalog.setval('acstrapi.strapi_workflows_stage_required_to_publish_lnk_id_seq', 1, false);
          acstrapi               acstrapi    false    282                       0    0    strapi_workflows_stages_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('acstrapi.strapi_workflows_stages_id_seq', 1, false);
          acstrapi               acstrapi    false    220                       0    0 .   strapi_workflows_stages_permissions_lnk_id_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('acstrapi.strapi_workflows_stages_permissions_lnk_id_seq', 1, false);
          acstrapi               acstrapi    false    286                       0    0 +   strapi_workflows_stages_workflow_lnk_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('acstrapi.strapi_workflows_stages_workflow_lnk_id_seq', 1, false);
          acstrapi               acstrapi    false    284                       0    0    up_permissions_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('acstrapi.up_permissions_id_seq', 19, true);
          acstrapi               acstrapi    false    222                       0    0    up_permissions_role_lnk_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('acstrapi.up_permissions_role_lnk_id_seq', 19, true);
          acstrapi               acstrapi    false    288                       0    0    up_roles_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('acstrapi.up_roles_id_seq', 2, true);
          acstrapi               acstrapi    false    224                        0    0    up_users_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('acstrapi.up_users_id_seq', 1, false);
          acstrapi               acstrapi    false    226            !           0    0    up_users_role_lnk_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('acstrapi.up_users_role_lnk_id_seq', 1, false);
          acstrapi               acstrapi    false    290            "           0    0    upload_folders_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('acstrapi.upload_folders_id_seq', 1, false);
          acstrapi               acstrapi    false    210            #           0    0     upload_folders_parent_lnk_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('acstrapi.upload_folders_parent_lnk_id_seq', 1, false);
          acstrapi               acstrapi    false    278            ³           2606    16572    abouts_cmps abouts_cmps_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY acstrapi.abouts_cmps
    ADD CONSTRAINT abouts_cmps_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY acstrapi.abouts_cmps DROP CONSTRAINT abouts_cmps_pkey;
       acstrapi                 acstrapi    false    229            ¼           2606    16588    abouts abouts_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY acstrapi.abouts
    ADD CONSTRAINT abouts_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY acstrapi.abouts DROP CONSTRAINT abouts_pkey;
       acstrapi                 acstrapi    false    231            ¸           2606    16577    abouts_cmps abouts_uq 
   CONSTRAINT     v   ALTER TABLE ONLY acstrapi.abouts_cmps
    ADD CONSTRAINT abouts_uq UNIQUE (entity_id, cmp_id, field, component_type);
 A   ALTER TABLE ONLY acstrapi.abouts_cmps DROP CONSTRAINT abouts_uq;
       acstrapi                 acstrapi    false    229    229    229    229            ã           2606    16690 (   admin_permissions admin_permissions_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY acstrapi.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY acstrapi.admin_permissions DROP CONSTRAINT admin_permissions_pkey;
       acstrapi                 acstrapi    false    245            b           2606    17011 :   admin_permissions_role_lnk admin_permissions_role_lnk_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY acstrapi.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY acstrapi.admin_permissions_role_lnk DROP CONSTRAINT admin_permissions_role_lnk_pkey;
       acstrapi                 acstrapi    false    297            d           2606    17015 8   admin_permissions_role_lnk admin_permissions_role_lnk_uq 
   CONSTRAINT        ALTER TABLE ONLY acstrapi.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_uq UNIQUE (permission_id, role_id);
 d   ALTER TABLE ONLY acstrapi.admin_permissions_role_lnk DROP CONSTRAINT admin_permissions_role_lnk_uq;
       acstrapi                 acstrapi    false    297    297            í           2606    16718    admin_roles admin_roles_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY acstrapi.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY acstrapi.admin_roles DROP CONSTRAINT admin_roles_pkey;
       acstrapi                 acstrapi    false    249            è           2606    16704    admin_users admin_users_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY acstrapi.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY acstrapi.admin_users DROP CONSTRAINT admin_users_pkey;
       acstrapi                 acstrapi    false    247            j           2606    17024 0   admin_users_roles_lnk admin_users_roles_lnk_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY acstrapi.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY acstrapi.admin_users_roles_lnk DROP CONSTRAINT admin_users_roles_lnk_pkey;
       acstrapi                 acstrapi    false    299            l           2606    17028 .   admin_users_roles_lnk admin_users_roles_lnk_uq 
   CONSTRAINT     w   ALTER TABLE ONLY acstrapi.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_uq UNIQUE (user_id, role_id);
 Z   ALTER TABLE ONLY acstrapi.admin_users_roles_lnk DROP CONSTRAINT admin_users_roles_lnk_uq;
       acstrapi                 acstrapi    false    299    299            T           2606    16985 ,   articles_author_lnk articles_author_lnk_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY acstrapi.articles_author_lnk
    ADD CONSTRAINT articles_author_lnk_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY acstrapi.articles_author_lnk DROP CONSTRAINT articles_author_lnk_pkey;
       acstrapi                 acstrapi    false    293            V           2606    16989 *   articles_author_lnk articles_author_lnk_uq 
   CONSTRAINT     x   ALTER TABLE ONLY acstrapi.articles_author_lnk
    ADD CONSTRAINT articles_author_lnk_uq UNIQUE (article_id, author_id);
 V   ALTER TABLE ONLY acstrapi.articles_author_lnk DROP CONSTRAINT articles_author_lnk_uq;
       acstrapi                 acstrapi    false    293    293            [           2606    16998 0   articles_category_lnk articles_category_lnk_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY acstrapi.articles_category_lnk
    ADD CONSTRAINT articles_category_lnk_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY acstrapi.articles_category_lnk DROP CONSTRAINT articles_category_lnk_pkey;
       acstrapi                 acstrapi    false    295            ]           2606    17002 .   articles_category_lnk articles_category_lnk_uq 
   CONSTRAINT     ~   ALTER TABLE ONLY acstrapi.articles_category_lnk
    ADD CONSTRAINT articles_category_lnk_uq UNIQUE (article_id, category_id);
 Z   ALTER TABLE ONLY acstrapi.articles_category_lnk DROP CONSTRAINT articles_category_lnk_uq;
       acstrapi                 acstrapi    false    295    295            ¿           2606    16602     articles_cmps articles_cmps_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY acstrapi.articles_cmps
    ADD CONSTRAINT articles_cmps_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY acstrapi.articles_cmps DROP CONSTRAINT articles_cmps_pkey;
       acstrapi                 acstrapi    false    233            È           2606    16618    articles articles_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY acstrapi.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY acstrapi.articles DROP CONSTRAINT articles_pkey;
       acstrapi                 acstrapi    false    235            Ä           2606    16607    articles_cmps articles_uq 
   CONSTRAINT     z   ALTER TABLE ONLY acstrapi.articles_cmps
    ADD CONSTRAINT articles_uq UNIQUE (entity_id, cmp_id, field, component_type);
 E   ALTER TABLE ONLY acstrapi.articles_cmps DROP CONSTRAINT articles_uq;
       acstrapi                 acstrapi    false    233    233    233    233            Í           2606    16632    authors authors_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY acstrapi.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY acstrapi.authors DROP CONSTRAINT authors_pkey;
       acstrapi                 acstrapi    false    237            Ò           2606    16646    categories categories_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY acstrapi.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY acstrapi.categories DROP CONSTRAINT categories_pkey;
       acstrapi                 acstrapi    false    239                       2606    16826 4   components_shared_media components_shared_media_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY acstrapi.components_shared_media
    ADD CONSTRAINT components_shared_media_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY acstrapi.components_shared_media DROP CONSTRAINT components_shared_media_pkey;
       acstrapi                 acstrapi    false    267            
           2606    16818 6   components_shared_quotes components_shared_quotes_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY acstrapi.components_shared_quotes
    ADD CONSTRAINT components_shared_quotes_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY acstrapi.components_shared_quotes DROP CONSTRAINT components_shared_quotes_pkey;
       acstrapi                 acstrapi    false    265                       2606    16807 >   components_shared_rich_texts components_shared_rich_texts_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY acstrapi.components_shared_rich_texts
    ADD CONSTRAINT components_shared_rich_texts_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY acstrapi.components_shared_rich_texts DROP CONSTRAINT components_shared_rich_texts_pkey;
       acstrapi                 acstrapi    false    263                       2606    16796 2   components_shared_seos components_shared_seos_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY acstrapi.components_shared_seos
    ADD CONSTRAINT components_shared_seos_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY acstrapi.components_shared_seos DROP CONSTRAINT components_shared_seos_pkey;
       acstrapi                 acstrapi    false    261                       2606    16785 8   components_shared_sliders components_shared_sliders_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY acstrapi.components_shared_sliders
    ADD CONSTRAINT components_shared_sliders_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY acstrapi.components_shared_sliders DROP CONSTRAINT components_shared_sliders_pkey;
       acstrapi                 acstrapi    false    259                       2606    16882 &   files_folder_lnk files_folder_lnk_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY acstrapi.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY acstrapi.files_folder_lnk DROP CONSTRAINT files_folder_lnk_pkey;
       acstrapi                 acstrapi    false    277                       2606    16886 $   files_folder_lnk files_folder_lnk_uq 
   CONSTRAINT     o   ALTER TABLE ONLY acstrapi.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_uq UNIQUE (file_id, folder_id);
 P   ALTER TABLE ONLY acstrapi.files_folder_lnk DROP CONSTRAINT files_folder_lnk_uq;
       acstrapi                 acstrapi    false    277    277            y           2606    16422    files files_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY acstrapi.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY acstrapi.files DROP CONSTRAINT files_pkey;
       acstrapi                 acstrapi    false    209                       2606    16871 (   files_related_mph files_related_mph_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY acstrapi.files_related_mph
    ADD CONSTRAINT files_related_mph_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY acstrapi.files_related_mph DROP CONSTRAINT files_related_mph_pkey;
       acstrapi                 acstrapi    false    275            Õ           2606    16660    globals_cmps globals_cmps_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY acstrapi.globals_cmps
    ADD CONSTRAINT globals_cmps_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY acstrapi.globals_cmps DROP CONSTRAINT globals_cmps_pkey;
       acstrapi                 acstrapi    false    241            Þ           2606    16676    globals globals_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY acstrapi.globals
    ADD CONSTRAINT globals_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY acstrapi.globals DROP CONSTRAINT globals_pkey;
       acstrapi                 acstrapi    false    243            Ú           2606    16665    globals_cmps globals_uq 
   CONSTRAINT     x   ALTER TABLE ONLY acstrapi.globals_cmps
    ADD CONSTRAINT globals_uq UNIQUE (entity_id, cmp_id, field, component_type);
 C   ALTER TABLE ONLY acstrapi.globals_cmps DROP CONSTRAINT globals_uq;
       acstrapi                 acstrapi    false    241    241    241    241                       2606    16460    i18n_locale i18n_locale_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY acstrapi.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY acstrapi.i18n_locale DROP CONSTRAINT i18n_locale_pkey;
       acstrapi                 acstrapi    false    213            ~           2606    24591    jobs jobs_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY acstrapi.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY acstrapi.jobs DROP CONSTRAINT jobs_pkey;
       acstrapi                 acstrapi    false    305            ÷           2606    16746 >   strapi_api_token_permissions strapi_api_token_permissions_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY acstrapi.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY acstrapi.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_pkey;
       acstrapi                 acstrapi    false    253            q           2606    17038 R   strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_pkey 
   CONSTRAINT        ALTER TABLE ONLY acstrapi.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_pkey PRIMARY KEY (id);
 ~   ALTER TABLE ONLY acstrapi.strapi_api_token_permissions_token_lnk DROP CONSTRAINT strapi_api_token_permissions_token_lnk_pkey;
       acstrapi                 acstrapi    false    301            s           2606    17042 P   strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_uq 
   CONSTRAINT     ®   ALTER TABLE ONLY acstrapi.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_uq UNIQUE (api_token_permission_id, api_token_id);
 |   ALTER TABLE ONLY acstrapi.strapi_api_token_permissions_token_lnk DROP CONSTRAINT strapi_api_token_permissions_token_lnk_uq;
       acstrapi                 acstrapi    false    301    301            ò           2606    16732 (   strapi_api_tokens strapi_api_tokens_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY acstrapi.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY acstrapi.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_pkey;
       acstrapi                 acstrapi    false    251                       2606    16837 :   strapi_core_store_settings strapi_core_store_settings_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY acstrapi.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY acstrapi.strapi_core_store_settings DROP CONSTRAINT strapi_core_store_settings_pkey;
       acstrapi                 acstrapi    false    269            u           2606    16411 2   strapi_database_schema strapi_database_schema_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY acstrapi.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY acstrapi.strapi_database_schema DROP CONSTRAINT strapi_database_schema_pkey;
       acstrapi                 acstrapi    false    207                       2606    16859 4   strapi_history_versions strapi_history_versions_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY acstrapi.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY acstrapi.strapi_history_versions DROP CONSTRAINT strapi_history_versions_pkey;
       acstrapi                 acstrapi    false    273            q           2606    16400 :   strapi_migrations_internal strapi_migrations_internal_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY acstrapi.strapi_migrations_internal
    ADD CONSTRAINT strapi_migrations_internal_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY acstrapi.strapi_migrations_internal DROP CONSTRAINT strapi_migrations_internal_pkey;
       acstrapi                 acstrapi    false    204            s           2606    16399 (   strapi_migrations strapi_migrations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY acstrapi.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY acstrapi.strapi_migrations DROP CONSTRAINT strapi_migrations_pkey;
       acstrapi                 acstrapi    false    205                       2606    16488 2   strapi_release_actions strapi_release_actions_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY acstrapi.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY acstrapi.strapi_release_actions DROP CONSTRAINT strapi_release_actions_pkey;
       acstrapi                 acstrapi    false    217            +           2606    16908 J   strapi_release_actions_release_lnk strapi_release_actions_release_lnk_pkey 
   CONSTRAINT        ALTER TABLE ONLY acstrapi.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY acstrapi.strapi_release_actions_release_lnk DROP CONSTRAINT strapi_release_actions_release_lnk_pkey;
       acstrapi                 acstrapi    false    281            -           2606    16912 H   strapi_release_actions_release_lnk strapi_release_actions_release_lnk_uq 
   CONSTRAINT        ALTER TABLE ONLY acstrapi.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_uq UNIQUE (release_action_id, release_id);
 t   ALTER TABLE ONLY acstrapi.strapi_release_actions_release_lnk DROP CONSTRAINT strapi_release_actions_release_lnk_uq;
       acstrapi                 acstrapi    false    281    281                       2606    16474 $   strapi_releases strapi_releases_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY acstrapi.strapi_releases
    ADD CONSTRAINT strapi_releases_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY acstrapi.strapi_releases DROP CONSTRAINT strapi_releases_pkey;
       acstrapi                 acstrapi    false    215                       2606    16774 H   strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey 
   CONSTRAINT        ALTER TABLE ONLY acstrapi.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY acstrapi.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_pkey;
       acstrapi                 acstrapi    false    257            x           2606    17051 \   strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_pkey 
   CONSTRAINT        ALTER TABLE ONLY acstrapi.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_pkey PRIMARY KEY (id);
    ALTER TABLE ONLY acstrapi.strapi_transfer_token_permissions_token_lnk DROP CONSTRAINT strapi_transfer_token_permissions_token_lnk_pkey;
       acstrapi                 acstrapi    false    303            z           2606    17055 Z   strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_uq 
   CONSTRAINT     Â   ALTER TABLE ONLY acstrapi.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_uq UNIQUE (transfer_token_permission_id, transfer_token_id);
    ALTER TABLE ONLY acstrapi.strapi_transfer_token_permissions_token_lnk DROP CONSTRAINT strapi_transfer_token_permissions_token_lnk_uq;
       acstrapi                 acstrapi    false    303    303            ü           2606    16760 2   strapi_transfer_tokens strapi_transfer_tokens_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY acstrapi.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY acstrapi.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_pkey;
       acstrapi                 acstrapi    false    255                       2606    16848 $   strapi_webhooks strapi_webhooks_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY acstrapi.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY acstrapi.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
       acstrapi                 acstrapi    false    271                       2606    16502 &   strapi_workflows strapi_workflows_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY acstrapi.strapi_workflows
    ADD CONSTRAINT strapi_workflows_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY acstrapi.strapi_workflows DROP CONSTRAINT strapi_workflows_pkey;
       acstrapi                 acstrapi    false    219            1           2606    16921 b   strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_pkey 
   CONSTRAINT     ¢   ALTER TABLE ONLY acstrapi.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_pkey PRIMARY KEY (id);
    ALTER TABLE ONLY acstrapi.strapi_workflows_stage_required_to_publish_lnk DROP CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_pkey;
       acstrapi                 acstrapi    false    283            3           2606    16925 `   strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_uq 
   CONSTRAINT     ·   ALTER TABLE ONLY acstrapi.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_uq UNIQUE (workflow_id, workflow_stage_id);
    ALTER TABLE ONLY acstrapi.strapi_workflows_stage_required_to_publish_lnk DROP CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_uq;
       acstrapi                 acstrapi    false    283    283            ?           2606    16946 T   strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_pkey 
   CONSTRAINT        ALTER TABLE ONLY acstrapi.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_pkey PRIMARY KEY (id);
    ALTER TABLE ONLY acstrapi.strapi_workflows_stages_permissions_lnk DROP CONSTRAINT strapi_workflows_stages_permissions_lnk_pkey;
       acstrapi                 acstrapi    false    287            A           2606    16950 R   strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_uq 
   CONSTRAINT     «   ALTER TABLE ONLY acstrapi.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_uq UNIQUE (workflow_stage_id, permission_id);
 ~   ALTER TABLE ONLY acstrapi.strapi_workflows_stages_permissions_lnk DROP CONSTRAINT strapi_workflows_stages_permissions_lnk_uq;
       acstrapi                 acstrapi    false    287    287            ¡           2606    16516 4   strapi_workflows_stages strapi_workflows_stages_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY acstrapi.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY acstrapi.strapi_workflows_stages DROP CONSTRAINT strapi_workflows_stages_pkey;
       acstrapi                 acstrapi    false    221            8           2606    16933 N   strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_pkey 
   CONSTRAINT        ALTER TABLE ONLY acstrapi.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_pkey PRIMARY KEY (id);
 z   ALTER TABLE ONLY acstrapi.strapi_workflows_stages_workflow_lnk DROP CONSTRAINT strapi_workflows_stages_workflow_lnk_pkey;
       acstrapi                 acstrapi    false    285            :           2606    16937 L   strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_uq 
   CONSTRAINT     £   ALTER TABLE ONLY acstrapi.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_uq UNIQUE (workflow_stage_id, workflow_id);
 x   ALTER TABLE ONLY acstrapi.strapi_workflows_stages_workflow_lnk DROP CONSTRAINT strapi_workflows_stages_workflow_lnk_uq;
       acstrapi                 acstrapi    false    285    285            ¦           2606    16530 "   up_permissions up_permissions_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY acstrapi.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY acstrapi.up_permissions DROP CONSTRAINT up_permissions_pkey;
       acstrapi                 acstrapi    false    223            F           2606    16959 4   up_permissions_role_lnk up_permissions_role_lnk_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY acstrapi.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY acstrapi.up_permissions_role_lnk DROP CONSTRAINT up_permissions_role_lnk_pkey;
       acstrapi                 acstrapi    false    289            H           2606    16963 2   up_permissions_role_lnk up_permissions_role_lnk_uq 
   CONSTRAINT        ALTER TABLE ONLY acstrapi.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_uq UNIQUE (permission_id, role_id);
 ^   ALTER TABLE ONLY acstrapi.up_permissions_role_lnk DROP CONSTRAINT up_permissions_role_lnk_uq;
       acstrapi                 acstrapi    false    289    289            «           2606    16544    up_roles up_roles_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY acstrapi.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY acstrapi.up_roles DROP CONSTRAINT up_roles_pkey;
       acstrapi                 acstrapi    false    225            °           2606    16558    up_users up_users_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY acstrapi.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY acstrapi.up_users DROP CONSTRAINT up_users_pkey;
       acstrapi                 acstrapi    false    227            M           2606    16972 (   up_users_role_lnk up_users_role_lnk_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY acstrapi.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY acstrapi.up_users_role_lnk DROP CONSTRAINT up_users_role_lnk_pkey;
       acstrapi                 acstrapi    false    291            O           2606    16976 &   up_users_role_lnk up_users_role_lnk_uq 
   CONSTRAINT     o   ALTER TABLE ONLY acstrapi.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_uq UNIQUE (user_id, role_id);
 R   ALTER TABLE ONLY acstrapi.up_users_role_lnk DROP CONSTRAINT up_users_role_lnk_uq;
       acstrapi                 acstrapi    false    291    291            $           2606    16895 8   upload_folders_parent_lnk upload_folders_parent_lnk_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY acstrapi.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY acstrapi.upload_folders_parent_lnk DROP CONSTRAINT upload_folders_parent_lnk_pkey;
       acstrapi                 acstrapi    false    279            &           2606    16899 6   upload_folders_parent_lnk upload_folders_parent_lnk_uq 
   CONSTRAINT        ALTER TABLE ONLY acstrapi.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_uq UNIQUE (folder_id, inv_folder_id);
 b   ALTER TABLE ONLY acstrapi.upload_folders_parent_lnk DROP CONSTRAINT upload_folders_parent_lnk_uq;
       acstrapi                 acstrapi    false    279    279                       2606    16444 +   upload_folders upload_folders_path_id_index 
   CONSTRAINT     k   ALTER TABLE ONLY acstrapi.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);
 W   ALTER TABLE ONLY acstrapi.upload_folders DROP CONSTRAINT upload_folders_path_id_index;
       acstrapi                 acstrapi    false    211                       2606    16446 (   upload_folders upload_folders_path_index 
   CONSTRAINT     e   ALTER TABLE ONLY acstrapi.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);
 T   ALTER TABLE ONLY acstrapi.upload_folders DROP CONSTRAINT upload_folders_path_index;
       acstrapi                 acstrapi    false    211                       2606    16442 "   upload_folders upload_folders_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY acstrapi.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY acstrapi.upload_folders DROP CONSTRAINT upload_folders_pkey;
       acstrapi                 acstrapi    false    211            ´           1259    16574    abouts_component_type_idx    INDEX     ]   CREATE INDEX abouts_component_type_idx ON acstrapi.abouts_cmps USING btree (component_type);
 /   DROP INDEX acstrapi.abouts_component_type_idx;
       acstrapi                 acstrapi    false    229            ¹           1259    16590    abouts_created_by_id_fk    INDEX     U   CREATE INDEX abouts_created_by_id_fk ON acstrapi.abouts USING btree (created_by_id);
 -   DROP INDEX acstrapi.abouts_created_by_id_fk;
       acstrapi                 acstrapi    false    231            º           1259    16589    abouts_documents_idx    INDEX     f   CREATE INDEX abouts_documents_idx ON acstrapi.abouts USING btree (document_id, locale, published_at);
 *   DROP INDEX acstrapi.abouts_documents_idx;
       acstrapi                 acstrapi    false    231    231    231            µ           1259    16575    abouts_entity_fk    INDEX     O   CREATE INDEX abouts_entity_fk ON acstrapi.abouts_cmps USING btree (entity_id);
 &   DROP INDEX acstrapi.abouts_entity_fk;
       acstrapi                 acstrapi    false    229            ¶           1259    16573    abouts_field_idx    INDEX     K   CREATE INDEX abouts_field_idx ON acstrapi.abouts_cmps USING btree (field);
 &   DROP INDEX acstrapi.abouts_field_idx;
       acstrapi                 acstrapi    false    229            ½           1259    16591    abouts_updated_by_id_fk    INDEX     U   CREATE INDEX abouts_updated_by_id_fk ON acstrapi.abouts USING btree (updated_by_id);
 -   DROP INDEX acstrapi.abouts_updated_by_id_fk;
       acstrapi                 acstrapi    false    231            à           1259    16692 "   admin_permissions_created_by_id_fk    INDEX     k   CREATE INDEX admin_permissions_created_by_id_fk ON acstrapi.admin_permissions USING btree (created_by_id);
 8   DROP INDEX acstrapi.admin_permissions_created_by_id_fk;
       acstrapi                 acstrapi    false    245            á           1259    16691    admin_permissions_documents_idx    INDEX     |   CREATE INDEX admin_permissions_documents_idx ON acstrapi.admin_permissions USING btree (document_id, locale, published_at);
 5   DROP INDEX acstrapi.admin_permissions_documents_idx;
       acstrapi                 acstrapi    false    245    245    245            ^           1259    17012    admin_permissions_role_lnk_fk    INDEX     o   CREATE INDEX admin_permissions_role_lnk_fk ON acstrapi.admin_permissions_role_lnk USING btree (permission_id);
 3   DROP INDEX acstrapi.admin_permissions_role_lnk_fk;
       acstrapi                 acstrapi    false    297            _           1259    17013    admin_permissions_role_lnk_ifk    INDEX     j   CREATE INDEX admin_permissions_role_lnk_ifk ON acstrapi.admin_permissions_role_lnk USING btree (role_id);
 4   DROP INDEX acstrapi.admin_permissions_role_lnk_ifk;
       acstrapi                 acstrapi    false    297            `           1259    17016    admin_permissions_role_lnk_oifk    INDEX     r   CREATE INDEX admin_permissions_role_lnk_oifk ON acstrapi.admin_permissions_role_lnk USING btree (permission_ord);
 5   DROP INDEX acstrapi.admin_permissions_role_lnk_oifk;
       acstrapi                 acstrapi    false    297            ä           1259    16693 "   admin_permissions_updated_by_id_fk    INDEX     k   CREATE INDEX admin_permissions_updated_by_id_fk ON acstrapi.admin_permissions USING btree (updated_by_id);
 8   DROP INDEX acstrapi.admin_permissions_updated_by_id_fk;
       acstrapi                 acstrapi    false    245            ê           1259    16720    admin_roles_created_by_id_fk    INDEX     _   CREATE INDEX admin_roles_created_by_id_fk ON acstrapi.admin_roles USING btree (created_by_id);
 2   DROP INDEX acstrapi.admin_roles_created_by_id_fk;
       acstrapi                 acstrapi    false    249            ë           1259    16719    admin_roles_documents_idx    INDEX     p   CREATE INDEX admin_roles_documents_idx ON acstrapi.admin_roles USING btree (document_id, locale, published_at);
 /   DROP INDEX acstrapi.admin_roles_documents_idx;
       acstrapi                 acstrapi    false    249    249    249            î           1259    16721    admin_roles_updated_by_id_fk    INDEX     _   CREATE INDEX admin_roles_updated_by_id_fk ON acstrapi.admin_roles USING btree (updated_by_id);
 2   DROP INDEX acstrapi.admin_roles_updated_by_id_fk;
       acstrapi                 acstrapi    false    249            å           1259    16706    admin_users_created_by_id_fk    INDEX     _   CREATE INDEX admin_users_created_by_id_fk ON acstrapi.admin_users USING btree (created_by_id);
 2   DROP INDEX acstrapi.admin_users_created_by_id_fk;
       acstrapi                 acstrapi    false    247            æ           1259    16705    admin_users_documents_idx    INDEX     p   CREATE INDEX admin_users_documents_idx ON acstrapi.admin_users USING btree (document_id, locale, published_at);
 /   DROP INDEX acstrapi.admin_users_documents_idx;
       acstrapi                 acstrapi    false    247    247    247            e           1259    17025    admin_users_roles_lnk_fk    INDEX     _   CREATE INDEX admin_users_roles_lnk_fk ON acstrapi.admin_users_roles_lnk USING btree (user_id);
 .   DROP INDEX acstrapi.admin_users_roles_lnk_fk;
       acstrapi                 acstrapi    false    299            f           1259    17026    admin_users_roles_lnk_ifk    INDEX     `   CREATE INDEX admin_users_roles_lnk_ifk ON acstrapi.admin_users_roles_lnk USING btree (role_id);
 /   DROP INDEX acstrapi.admin_users_roles_lnk_ifk;
       acstrapi                 acstrapi    false    299            g           1259    17029    admin_users_roles_lnk_ofk    INDEX     a   CREATE INDEX admin_users_roles_lnk_ofk ON acstrapi.admin_users_roles_lnk USING btree (role_ord);
 /   DROP INDEX acstrapi.admin_users_roles_lnk_ofk;
       acstrapi                 acstrapi    false    299            h           1259    17030    admin_users_roles_lnk_oifk    INDEX     b   CREATE INDEX admin_users_roles_lnk_oifk ON acstrapi.admin_users_roles_lnk USING btree (user_ord);
 0   DROP INDEX acstrapi.admin_users_roles_lnk_oifk;
       acstrapi                 acstrapi    false    299            é           1259    16707    admin_users_updated_by_id_fk    INDEX     _   CREATE INDEX admin_users_updated_by_id_fk ON acstrapi.admin_users USING btree (updated_by_id);
 2   DROP INDEX acstrapi.admin_users_updated_by_id_fk;
       acstrapi                 acstrapi    false    247            P           1259    16986    articles_author_lnk_fk    INDEX     ^   CREATE INDEX articles_author_lnk_fk ON acstrapi.articles_author_lnk USING btree (article_id);
 ,   DROP INDEX acstrapi.articles_author_lnk_fk;
       acstrapi                 acstrapi    false    293            Q           1259    16987    articles_author_lnk_ifk    INDEX     ^   CREATE INDEX articles_author_lnk_ifk ON acstrapi.articles_author_lnk USING btree (author_id);
 -   DROP INDEX acstrapi.articles_author_lnk_ifk;
       acstrapi                 acstrapi    false    293            R           1259    16990    articles_author_lnk_oifk    INDEX     a   CREATE INDEX articles_author_lnk_oifk ON acstrapi.articles_author_lnk USING btree (article_ord);
 .   DROP INDEX acstrapi.articles_author_lnk_oifk;
       acstrapi                 acstrapi    false    293            W           1259    16999    articles_category_lnk_fk    INDEX     b   CREATE INDEX articles_category_lnk_fk ON acstrapi.articles_category_lnk USING btree (article_id);
 .   DROP INDEX acstrapi.articles_category_lnk_fk;
       acstrapi                 acstrapi    false    295            X           1259    17000    articles_category_lnk_ifk    INDEX     d   CREATE INDEX articles_category_lnk_ifk ON acstrapi.articles_category_lnk USING btree (category_id);
 /   DROP INDEX acstrapi.articles_category_lnk_ifk;
       acstrapi                 acstrapi    false    295            Y           1259    17003    articles_category_lnk_oifk    INDEX     e   CREATE INDEX articles_category_lnk_oifk ON acstrapi.articles_category_lnk USING btree (article_ord);
 0   DROP INDEX acstrapi.articles_category_lnk_oifk;
       acstrapi                 acstrapi    false    295            À           1259    16604    articles_component_type_idx    INDEX     a   CREATE INDEX articles_component_type_idx ON acstrapi.articles_cmps USING btree (component_type);
 1   DROP INDEX acstrapi.articles_component_type_idx;
       acstrapi                 acstrapi    false    233            Å           1259    16620    articles_created_by_id_fk    INDEX     Y   CREATE INDEX articles_created_by_id_fk ON acstrapi.articles USING btree (created_by_id);
 /   DROP INDEX acstrapi.articles_created_by_id_fk;
       acstrapi                 acstrapi    false    235            Æ           1259    16619    articles_documents_idx    INDEX     j   CREATE INDEX articles_documents_idx ON acstrapi.articles USING btree (document_id, locale, published_at);
 ,   DROP INDEX acstrapi.articles_documents_idx;
       acstrapi                 acstrapi    false    235    235    235            Á           1259    16605    articles_entity_fk    INDEX     S   CREATE INDEX articles_entity_fk ON acstrapi.articles_cmps USING btree (entity_id);
 (   DROP INDEX acstrapi.articles_entity_fk;
       acstrapi                 acstrapi    false    233            Â           1259    16603    articles_field_idx    INDEX     O   CREATE INDEX articles_field_idx ON acstrapi.articles_cmps USING btree (field);
 (   DROP INDEX acstrapi.articles_field_idx;
       acstrapi                 acstrapi    false    233            É           1259    16621    articles_updated_by_id_fk    INDEX     Y   CREATE INDEX articles_updated_by_id_fk ON acstrapi.articles USING btree (updated_by_id);
 /   DROP INDEX acstrapi.articles_updated_by_id_fk;
       acstrapi                 acstrapi    false    235            Ê           1259    16634    authors_created_by_id_fk    INDEX     W   CREATE INDEX authors_created_by_id_fk ON acstrapi.authors USING btree (created_by_id);
 .   DROP INDEX acstrapi.authors_created_by_id_fk;
       acstrapi                 acstrapi    false    237            Ë           1259    16633    authors_documents_idx    INDEX     h   CREATE INDEX authors_documents_idx ON acstrapi.authors USING btree (document_id, locale, published_at);
 +   DROP INDEX acstrapi.authors_documents_idx;
       acstrapi                 acstrapi    false    237    237    237            Î           1259    16635    authors_updated_by_id_fk    INDEX     W   CREATE INDEX authors_updated_by_id_fk ON acstrapi.authors USING btree (updated_by_id);
 .   DROP INDEX acstrapi.authors_updated_by_id_fk;
       acstrapi                 acstrapi    false    237            Ï           1259    16648    categories_created_by_id_fk    INDEX     ]   CREATE INDEX categories_created_by_id_fk ON acstrapi.categories USING btree (created_by_id);
 1   DROP INDEX acstrapi.categories_created_by_id_fk;
       acstrapi                 acstrapi    false    239            Ð           1259    16647    categories_documents_idx    INDEX     n   CREATE INDEX categories_documents_idx ON acstrapi.categories USING btree (document_id, locale, published_at);
 .   DROP INDEX acstrapi.categories_documents_idx;
       acstrapi                 acstrapi    false    239    239    239            Ó           1259    16649    categories_updated_by_id_fk    INDEX     ]   CREATE INDEX categories_updated_by_id_fk ON acstrapi.categories USING btree (updated_by_id);
 1   DROP INDEX acstrapi.categories_updated_by_id_fk;
       acstrapi                 acstrapi    false    239            v           1259    16430    files_created_by_id_fk    INDEX     S   CREATE INDEX files_created_by_id_fk ON acstrapi.files USING btree (created_by_id);
 ,   DROP INDEX acstrapi.files_created_by_id_fk;
       acstrapi                 acstrapi    false    209            w           1259    16429    files_documents_idx    INDEX     d   CREATE INDEX files_documents_idx ON acstrapi.files USING btree (document_id, locale, published_at);
 )   DROP INDEX acstrapi.files_documents_idx;
       acstrapi                 acstrapi    false    209    209    209                       1259    16883    files_folder_lnk_fk    INDEX     U   CREATE INDEX files_folder_lnk_fk ON acstrapi.files_folder_lnk USING btree (file_id);
 )   DROP INDEX acstrapi.files_folder_lnk_fk;
       acstrapi                 acstrapi    false    277                       1259    16884    files_folder_lnk_ifk    INDEX     X   CREATE INDEX files_folder_lnk_ifk ON acstrapi.files_folder_lnk USING btree (folder_id);
 *   DROP INDEX acstrapi.files_folder_lnk_ifk;
       acstrapi                 acstrapi    false    277                       1259    16887    files_folder_lnk_oifk    INDEX     X   CREATE INDEX files_folder_lnk_oifk ON acstrapi.files_folder_lnk USING btree (file_ord);
 +   DROP INDEX acstrapi.files_folder_lnk_oifk;
       acstrapi                 acstrapi    false    277                       1259    16872    files_related_mph_fk    INDEX     W   CREATE INDEX files_related_mph_fk ON acstrapi.files_related_mph USING btree (file_id);
 *   DROP INDEX acstrapi.files_related_mph_fk;
       acstrapi                 acstrapi    false    275                       1259    16874    files_related_mph_idix    INDEX     \   CREATE INDEX files_related_mph_idix ON acstrapi.files_related_mph USING btree (related_id);
 ,   DROP INDEX acstrapi.files_related_mph_idix;
       acstrapi                 acstrapi    false    275                       1259    16873    files_related_mph_oidx    INDEX     Y   CREATE INDEX files_related_mph_oidx ON acstrapi.files_related_mph USING btree ("order");
 ,   DROP INDEX acstrapi.files_related_mph_oidx;
       acstrapi                 acstrapi    false    275            z           1259    16431    files_updated_by_id_fk    INDEX     S   CREATE INDEX files_updated_by_id_fk ON acstrapi.files USING btree (updated_by_id);
 ,   DROP INDEX acstrapi.files_updated_by_id_fk;
       acstrapi                 acstrapi    false    209            Ö           1259    16662    globals_component_type_idx    INDEX     _   CREATE INDEX globals_component_type_idx ON acstrapi.globals_cmps USING btree (component_type);
 0   DROP INDEX acstrapi.globals_component_type_idx;
       acstrapi                 acstrapi    false    241            Û           1259    16678    globals_created_by_id_fk    INDEX     W   CREATE INDEX globals_created_by_id_fk ON acstrapi.globals USING btree (created_by_id);
 .   DROP INDEX acstrapi.globals_created_by_id_fk;
       acstrapi                 acstrapi    false    243            Ü           1259    16677    globals_documents_idx    INDEX     h   CREATE INDEX globals_documents_idx ON acstrapi.globals USING btree (document_id, locale, published_at);
 +   DROP INDEX acstrapi.globals_documents_idx;
       acstrapi                 acstrapi    false    243    243    243            ×           1259    16663    globals_entity_fk    INDEX     Q   CREATE INDEX globals_entity_fk ON acstrapi.globals_cmps USING btree (entity_id);
 '   DROP INDEX acstrapi.globals_entity_fk;
       acstrapi                 acstrapi    false    241            Ø           1259    16661    globals_field_idx    INDEX     M   CREATE INDEX globals_field_idx ON acstrapi.globals_cmps USING btree (field);
 '   DROP INDEX acstrapi.globals_field_idx;
       acstrapi                 acstrapi    false    241            ß           1259    16679    globals_updated_by_id_fk    INDEX     W   CREATE INDEX globals_updated_by_id_fk ON acstrapi.globals USING btree (updated_by_id);
 .   DROP INDEX acstrapi.globals_updated_by_id_fk;
       acstrapi                 acstrapi    false    243                       1259    16462    i18n_locale_created_by_id_fk    INDEX     _   CREATE INDEX i18n_locale_created_by_id_fk ON acstrapi.i18n_locale USING btree (created_by_id);
 2   DROP INDEX acstrapi.i18n_locale_created_by_id_fk;
       acstrapi                 acstrapi    false    213                       1259    16461    i18n_locale_documents_idx    INDEX     p   CREATE INDEX i18n_locale_documents_idx ON acstrapi.i18n_locale USING btree (document_id, locale, published_at);
 /   DROP INDEX acstrapi.i18n_locale_documents_idx;
       acstrapi                 acstrapi    false    213    213    213                       1259    16463    i18n_locale_updated_by_id_fk    INDEX     _   CREATE INDEX i18n_locale_updated_by_id_fk ON acstrapi.i18n_locale USING btree (updated_by_id);
 2   DROP INDEX acstrapi.i18n_locale_updated_by_id_fk;
       acstrapi                 acstrapi    false    213            {           1259    24593    jobs_created_by_id_fk    INDEX     Q   CREATE INDEX jobs_created_by_id_fk ON acstrapi.jobs USING btree (created_by_id);
 +   DROP INDEX acstrapi.jobs_created_by_id_fk;
       acstrapi                 acstrapi    false    305            |           1259    24592    jobs_documents_idx    INDEX     b   CREATE INDEX jobs_documents_idx ON acstrapi.jobs USING btree (document_id, locale, published_at);
 (   DROP INDEX acstrapi.jobs_documents_idx;
       acstrapi                 acstrapi    false    305    305    305                       1259    24594    jobs_updated_by_id_fk    INDEX     Q   CREATE INDEX jobs_updated_by_id_fk ON acstrapi.jobs USING btree (updated_by_id);
 +   DROP INDEX acstrapi.jobs_updated_by_id_fk;
       acstrapi                 acstrapi    false    305            ô           1259    16748 -   strapi_api_token_permissions_created_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON acstrapi.strapi_api_token_permissions USING btree (created_by_id);
 C   DROP INDEX acstrapi.strapi_api_token_permissions_created_by_id_fk;
       acstrapi                 acstrapi    false    253            õ           1259    16747 *   strapi_api_token_permissions_documents_idx    INDEX        CREATE INDEX strapi_api_token_permissions_documents_idx ON acstrapi.strapi_api_token_permissions USING btree (document_id, locale, published_at);
 @   DROP INDEX acstrapi.strapi_api_token_permissions_documents_idx;
       acstrapi                 acstrapi    false    253    253    253            m           1259    17039 )   strapi_api_token_permissions_token_lnk_fk    INDEX        CREATE INDEX strapi_api_token_permissions_token_lnk_fk ON acstrapi.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_id);
 ?   DROP INDEX acstrapi.strapi_api_token_permissions_token_lnk_fk;
       acstrapi                 acstrapi    false    301            n           1259    17040 *   strapi_api_token_permissions_token_lnk_ifk    INDEX        CREATE INDEX strapi_api_token_permissions_token_lnk_ifk ON acstrapi.strapi_api_token_permissions_token_lnk USING btree (api_token_id);
 @   DROP INDEX acstrapi.strapi_api_token_permissions_token_lnk_ifk;
       acstrapi                 acstrapi    false    301            o           1259    17043 +   strapi_api_token_permissions_token_lnk_oifk    INDEX        CREATE INDEX strapi_api_token_permissions_token_lnk_oifk ON acstrapi.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_ord);
 A   DROP INDEX acstrapi.strapi_api_token_permissions_token_lnk_oifk;
       acstrapi                 acstrapi    false    301            ø           1259    16749 -   strapi_api_token_permissions_updated_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON acstrapi.strapi_api_token_permissions USING btree (updated_by_id);
 C   DROP INDEX acstrapi.strapi_api_token_permissions_updated_by_id_fk;
       acstrapi                 acstrapi    false    253            ï           1259    16734 "   strapi_api_tokens_created_by_id_fk    INDEX     k   CREATE INDEX strapi_api_tokens_created_by_id_fk ON acstrapi.strapi_api_tokens USING btree (created_by_id);
 8   DROP INDEX acstrapi.strapi_api_tokens_created_by_id_fk;
       acstrapi                 acstrapi    false    251            ð           1259    16733    strapi_api_tokens_documents_idx    INDEX     |   CREATE INDEX strapi_api_tokens_documents_idx ON acstrapi.strapi_api_tokens USING btree (document_id, locale, published_at);
 5   DROP INDEX acstrapi.strapi_api_tokens_documents_idx;
       acstrapi                 acstrapi    false    251    251    251            ó           1259    16735 "   strapi_api_tokens_updated_by_id_fk    INDEX     k   CREATE INDEX strapi_api_tokens_updated_by_id_fk ON acstrapi.strapi_api_tokens USING btree (updated_by_id);
 8   DROP INDEX acstrapi.strapi_api_tokens_updated_by_id_fk;
       acstrapi                 acstrapi    false    251                       1259    16860 (   strapi_history_versions_created_by_id_fk    INDEX     w   CREATE INDEX strapi_history_versions_created_by_id_fk ON acstrapi.strapi_history_versions USING btree (created_by_id);
 >   DROP INDEX acstrapi.strapi_history_versions_created_by_id_fk;
       acstrapi                 acstrapi    false    273                       1259    16490 '   strapi_release_actions_created_by_id_fk    INDEX     u   CREATE INDEX strapi_release_actions_created_by_id_fk ON acstrapi.strapi_release_actions USING btree (created_by_id);
 =   DROP INDEX acstrapi.strapi_release_actions_created_by_id_fk;
       acstrapi                 acstrapi    false    217                       1259    16489 $   strapi_release_actions_documents_idx    INDEX        CREATE INDEX strapi_release_actions_documents_idx ON acstrapi.strapi_release_actions USING btree (document_id, locale, published_at);
 :   DROP INDEX acstrapi.strapi_release_actions_documents_idx;
       acstrapi                 acstrapi    false    217    217    217            '           1259    16909 %   strapi_release_actions_release_lnk_fk    INDEX        CREATE INDEX strapi_release_actions_release_lnk_fk ON acstrapi.strapi_release_actions_release_lnk USING btree (release_action_id);
 ;   DROP INDEX acstrapi.strapi_release_actions_release_lnk_fk;
       acstrapi                 acstrapi    false    281            (           1259    16910 &   strapi_release_actions_release_lnk_ifk    INDEX     }   CREATE INDEX strapi_release_actions_release_lnk_ifk ON acstrapi.strapi_release_actions_release_lnk USING btree (release_id);
 <   DROP INDEX acstrapi.strapi_release_actions_release_lnk_ifk;
       acstrapi                 acstrapi    false    281            )           1259    16913 '   strapi_release_actions_release_lnk_oifk    INDEX        CREATE INDEX strapi_release_actions_release_lnk_oifk ON acstrapi.strapi_release_actions_release_lnk USING btree (release_action_ord);
 =   DROP INDEX acstrapi.strapi_release_actions_release_lnk_oifk;
       acstrapi                 acstrapi    false    281                       1259    16491 '   strapi_release_actions_updated_by_id_fk    INDEX     u   CREATE INDEX strapi_release_actions_updated_by_id_fk ON acstrapi.strapi_release_actions USING btree (updated_by_id);
 =   DROP INDEX acstrapi.strapi_release_actions_updated_by_id_fk;
       acstrapi                 acstrapi    false    217                       1259    16476     strapi_releases_created_by_id_fk    INDEX     g   CREATE INDEX strapi_releases_created_by_id_fk ON acstrapi.strapi_releases USING btree (created_by_id);
 6   DROP INDEX acstrapi.strapi_releases_created_by_id_fk;
       acstrapi                 acstrapi    false    215                       1259    16475    strapi_releases_documents_idx    INDEX     x   CREATE INDEX strapi_releases_documents_idx ON acstrapi.strapi_releases USING btree (document_id, locale, published_at);
 3   DROP INDEX acstrapi.strapi_releases_documents_idx;
       acstrapi                 acstrapi    false    215    215    215                       1259    16477     strapi_releases_updated_by_id_fk    INDEX     g   CREATE INDEX strapi_releases_updated_by_id_fk ON acstrapi.strapi_releases USING btree (updated_by_id);
 6   DROP INDEX acstrapi.strapi_releases_updated_by_id_fk;
       acstrapi                 acstrapi    false    215            þ           1259    16776 2   strapi_transfer_token_permissions_created_by_id_fk    INDEX        CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON acstrapi.strapi_transfer_token_permissions USING btree (created_by_id);
 H   DROP INDEX acstrapi.strapi_transfer_token_permissions_created_by_id_fk;
       acstrapi                 acstrapi    false    257            ÿ           1259    16775 /   strapi_transfer_token_permissions_documents_idx    INDEX        CREATE INDEX strapi_transfer_token_permissions_documents_idx ON acstrapi.strapi_transfer_token_permissions USING btree (document_id, locale, published_at);
 E   DROP INDEX acstrapi.strapi_transfer_token_permissions_documents_idx;
       acstrapi                 acstrapi    false    257    257    257            t           1259    17052 .   strapi_transfer_token_permissions_token_lnk_fk    INDEX         CREATE INDEX strapi_transfer_token_permissions_token_lnk_fk ON acstrapi.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_id);
 D   DROP INDEX acstrapi.strapi_transfer_token_permissions_token_lnk_fk;
       acstrapi                 acstrapi    false    303            u           1259    17053 /   strapi_transfer_token_permissions_token_lnk_ifk    INDEX        CREATE INDEX strapi_transfer_token_permissions_token_lnk_ifk ON acstrapi.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_id);
 E   DROP INDEX acstrapi.strapi_transfer_token_permissions_token_lnk_ifk;
       acstrapi                 acstrapi    false    303            v           1259    17056 0   strapi_transfer_token_permissions_token_lnk_oifk    INDEX     £   CREATE INDEX strapi_transfer_token_permissions_token_lnk_oifk ON acstrapi.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_ord);
 F   DROP INDEX acstrapi.strapi_transfer_token_permissions_token_lnk_oifk;
       acstrapi                 acstrapi    false    303                       1259    16777 2   strapi_transfer_token_permissions_updated_by_id_fk    INDEX        CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON acstrapi.strapi_transfer_token_permissions USING btree (updated_by_id);
 H   DROP INDEX acstrapi.strapi_transfer_token_permissions_updated_by_id_fk;
       acstrapi                 acstrapi    false    257            ù           1259    16762 '   strapi_transfer_tokens_created_by_id_fk    INDEX     u   CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON acstrapi.strapi_transfer_tokens USING btree (created_by_id);
 =   DROP INDEX acstrapi.strapi_transfer_tokens_created_by_id_fk;
       acstrapi                 acstrapi    false    255            ú           1259    16761 $   strapi_transfer_tokens_documents_idx    INDEX        CREATE INDEX strapi_transfer_tokens_documents_idx ON acstrapi.strapi_transfer_tokens USING btree (document_id, locale, published_at);
 :   DROP INDEX acstrapi.strapi_transfer_tokens_documents_idx;
       acstrapi                 acstrapi    false    255    255    255            ý           1259    16763 '   strapi_transfer_tokens_updated_by_id_fk    INDEX     u   CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON acstrapi.strapi_transfer_tokens USING btree (updated_by_id);
 =   DROP INDEX acstrapi.strapi_transfer_tokens_updated_by_id_fk;
       acstrapi                 acstrapi    false    255                       1259    16504 !   strapi_workflows_created_by_id_fk    INDEX     i   CREATE INDEX strapi_workflows_created_by_id_fk ON acstrapi.strapi_workflows USING btree (created_by_id);
 7   DROP INDEX acstrapi.strapi_workflows_created_by_id_fk;
       acstrapi                 acstrapi    false    219                       1259    16503    strapi_workflows_documents_idx    INDEX     z   CREATE INDEX strapi_workflows_documents_idx ON acstrapi.strapi_workflows USING btree (document_id, locale, published_at);
 4   DROP INDEX acstrapi.strapi_workflows_documents_idx;
       acstrapi                 acstrapi    false    219    219    219            .           1259    16922 1   strapi_workflows_stage_required_to_publish_lnk_fk    INDEX        CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_fk ON acstrapi.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_id);
 G   DROP INDEX acstrapi.strapi_workflows_stage_required_to_publish_lnk_fk;
       acstrapi                 acstrapi    false    283            /           1259    16923 2   strapi_workflows_stage_required_to_publish_lnk_ifk    INDEX        CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_ifk ON acstrapi.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_stage_id);
 H   DROP INDEX acstrapi.strapi_workflows_stage_required_to_publish_lnk_ifk;
       acstrapi                 acstrapi    false    283                       1259    16518 (   strapi_workflows_stages_created_by_id_fk    INDEX     w   CREATE INDEX strapi_workflows_stages_created_by_id_fk ON acstrapi.strapi_workflows_stages USING btree (created_by_id);
 >   DROP INDEX acstrapi.strapi_workflows_stages_created_by_id_fk;
       acstrapi                 acstrapi    false    221                       1259    16517 %   strapi_workflows_stages_documents_idx    INDEX        CREATE INDEX strapi_workflows_stages_documents_idx ON acstrapi.strapi_workflows_stages USING btree (document_id, locale, published_at);
 ;   DROP INDEX acstrapi.strapi_workflows_stages_documents_idx;
       acstrapi                 acstrapi    false    221    221    221            ;           1259    16947 *   strapi_workflows_stages_permissions_lnk_fk    INDEX        CREATE INDEX strapi_workflows_stages_permissions_lnk_fk ON acstrapi.strapi_workflows_stages_permissions_lnk USING btree (workflow_stage_id);
 @   DROP INDEX acstrapi.strapi_workflows_stages_permissions_lnk_fk;
       acstrapi                 acstrapi    false    287            <           1259    16948 +   strapi_workflows_stages_permissions_lnk_ifk    INDEX        CREATE INDEX strapi_workflows_stages_permissions_lnk_ifk ON acstrapi.strapi_workflows_stages_permissions_lnk USING btree (permission_id);
 A   DROP INDEX acstrapi.strapi_workflows_stages_permissions_lnk_ifk;
       acstrapi                 acstrapi    false    287            =           1259    16951 +   strapi_workflows_stages_permissions_lnk_ofk    INDEX        CREATE INDEX strapi_workflows_stages_permissions_lnk_ofk ON acstrapi.strapi_workflows_stages_permissions_lnk USING btree (permission_ord);
 A   DROP INDEX acstrapi.strapi_workflows_stages_permissions_lnk_ofk;
       acstrapi                 acstrapi    false    287            ¢           1259    16519 (   strapi_workflows_stages_updated_by_id_fk    INDEX     w   CREATE INDEX strapi_workflows_stages_updated_by_id_fk ON acstrapi.strapi_workflows_stages USING btree (updated_by_id);
 >   DROP INDEX acstrapi.strapi_workflows_stages_updated_by_id_fk;
       acstrapi                 acstrapi    false    221            4           1259    16934 '   strapi_workflows_stages_workflow_lnk_fk    INDEX        CREATE INDEX strapi_workflows_stages_workflow_lnk_fk ON acstrapi.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_id);
 =   DROP INDEX acstrapi.strapi_workflows_stages_workflow_lnk_fk;
       acstrapi                 acstrapi    false    285            5           1259    16935 (   strapi_workflows_stages_workflow_lnk_ifk    INDEX        CREATE INDEX strapi_workflows_stages_workflow_lnk_ifk ON acstrapi.strapi_workflows_stages_workflow_lnk USING btree (workflow_id);
 >   DROP INDEX acstrapi.strapi_workflows_stages_workflow_lnk_ifk;
       acstrapi                 acstrapi    false    285            6           1259    16938 )   strapi_workflows_stages_workflow_lnk_oifk    INDEX        CREATE INDEX strapi_workflows_stages_workflow_lnk_oifk ON acstrapi.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_ord);
 ?   DROP INDEX acstrapi.strapi_workflows_stages_workflow_lnk_oifk;
       acstrapi                 acstrapi    false    285                       1259    16505 !   strapi_workflows_updated_by_id_fk    INDEX     i   CREATE INDEX strapi_workflows_updated_by_id_fk ON acstrapi.strapi_workflows USING btree (updated_by_id);
 7   DROP INDEX acstrapi.strapi_workflows_updated_by_id_fk;
       acstrapi                 acstrapi    false    219            £           1259    16532    up_permissions_created_by_id_fk    INDEX     e   CREATE INDEX up_permissions_created_by_id_fk ON acstrapi.up_permissions USING btree (created_by_id);
 5   DROP INDEX acstrapi.up_permissions_created_by_id_fk;
       acstrapi                 acstrapi    false    223            ¤           1259    16531    up_permissions_documents_idx    INDEX     v   CREATE INDEX up_permissions_documents_idx ON acstrapi.up_permissions USING btree (document_id, locale, published_at);
 2   DROP INDEX acstrapi.up_permissions_documents_idx;
       acstrapi                 acstrapi    false    223    223    223            B           1259    16960    up_permissions_role_lnk_fk    INDEX     i   CREATE INDEX up_permissions_role_lnk_fk ON acstrapi.up_permissions_role_lnk USING btree (permission_id);
 0   DROP INDEX acstrapi.up_permissions_role_lnk_fk;
       acstrapi                 acstrapi    false    289            C           1259    16961    up_permissions_role_lnk_ifk    INDEX     d   CREATE INDEX up_permissions_role_lnk_ifk ON acstrapi.up_permissions_role_lnk USING btree (role_id);
 1   DROP INDEX acstrapi.up_permissions_role_lnk_ifk;
       acstrapi                 acstrapi    false    289            D           1259    16964    up_permissions_role_lnk_oifk    INDEX     l   CREATE INDEX up_permissions_role_lnk_oifk ON acstrapi.up_permissions_role_lnk USING btree (permission_ord);
 2   DROP INDEX acstrapi.up_permissions_role_lnk_oifk;
       acstrapi                 acstrapi    false    289            §           1259    16533    up_permissions_updated_by_id_fk    INDEX     e   CREATE INDEX up_permissions_updated_by_id_fk ON acstrapi.up_permissions USING btree (updated_by_id);
 5   DROP INDEX acstrapi.up_permissions_updated_by_id_fk;
       acstrapi                 acstrapi    false    223            ¨           1259    16546    up_roles_created_by_id_fk    INDEX     Y   CREATE INDEX up_roles_created_by_id_fk ON acstrapi.up_roles USING btree (created_by_id);
 /   DROP INDEX acstrapi.up_roles_created_by_id_fk;
       acstrapi                 acstrapi    false    225            ©           1259    16545    up_roles_documents_idx    INDEX     j   CREATE INDEX up_roles_documents_idx ON acstrapi.up_roles USING btree (document_id, locale, published_at);
 ,   DROP INDEX acstrapi.up_roles_documents_idx;
       acstrapi                 acstrapi    false    225    225    225            ¬           1259    16547    up_roles_updated_by_id_fk    INDEX     Y   CREATE INDEX up_roles_updated_by_id_fk ON acstrapi.up_roles USING btree (updated_by_id);
 /   DROP INDEX acstrapi.up_roles_updated_by_id_fk;
       acstrapi                 acstrapi    false    225            ­           1259    16560    up_users_created_by_id_fk    INDEX     Y   CREATE INDEX up_users_created_by_id_fk ON acstrapi.up_users USING btree (created_by_id);
 /   DROP INDEX acstrapi.up_users_created_by_id_fk;
       acstrapi                 acstrapi    false    227            ®           1259    16559    up_users_documents_idx    INDEX     j   CREATE INDEX up_users_documents_idx ON acstrapi.up_users USING btree (document_id, locale, published_at);
 ,   DROP INDEX acstrapi.up_users_documents_idx;
       acstrapi                 acstrapi    false    227    227    227            I           1259    16973    up_users_role_lnk_fk    INDEX     W   CREATE INDEX up_users_role_lnk_fk ON acstrapi.up_users_role_lnk USING btree (user_id);
 *   DROP INDEX acstrapi.up_users_role_lnk_fk;
       acstrapi                 acstrapi    false    291            J           1259    16974    up_users_role_lnk_ifk    INDEX     X   CREATE INDEX up_users_role_lnk_ifk ON acstrapi.up_users_role_lnk USING btree (role_id);
 +   DROP INDEX acstrapi.up_users_role_lnk_ifk;
       acstrapi                 acstrapi    false    291            K           1259    16977    up_users_role_lnk_oifk    INDEX     Z   CREATE INDEX up_users_role_lnk_oifk ON acstrapi.up_users_role_lnk USING btree (user_ord);
 ,   DROP INDEX acstrapi.up_users_role_lnk_oifk;
       acstrapi                 acstrapi    false    291            ±           1259    16561    up_users_updated_by_id_fk    INDEX     Y   CREATE INDEX up_users_updated_by_id_fk ON acstrapi.up_users USING btree (updated_by_id);
 /   DROP INDEX acstrapi.up_users_updated_by_id_fk;
       acstrapi                 acstrapi    false    227            {           1259    16424    upload_files_created_at_index    INDEX     W   CREATE INDEX upload_files_created_at_index ON acstrapi.files USING btree (created_at);
 3   DROP INDEX acstrapi.upload_files_created_at_index;
       acstrapi                 acstrapi    false    209            |           1259    16428    upload_files_ext_index    INDEX     I   CREATE INDEX upload_files_ext_index ON acstrapi.files USING btree (ext);
 ,   DROP INDEX acstrapi.upload_files_ext_index;
       acstrapi                 acstrapi    false    209            }           1259    16423    upload_files_folder_path_index    INDEX     Y   CREATE INDEX upload_files_folder_path_index ON acstrapi.files USING btree (folder_path);
 4   DROP INDEX acstrapi.upload_files_folder_path_index;
       acstrapi                 acstrapi    false    209            ~           1259    16426    upload_files_name_index    INDEX     K   CREATE INDEX upload_files_name_index ON acstrapi.files USING btree (name);
 -   DROP INDEX acstrapi.upload_files_name_index;
       acstrapi                 acstrapi    false    209                       1259    16427    upload_files_size_index    INDEX     K   CREATE INDEX upload_files_size_index ON acstrapi.files USING btree (size);
 -   DROP INDEX acstrapi.upload_files_size_index;
       acstrapi                 acstrapi    false    209                       1259    16425    upload_files_updated_at_index    INDEX     W   CREATE INDEX upload_files_updated_at_index ON acstrapi.files USING btree (updated_at);
 3   DROP INDEX acstrapi.upload_files_updated_at_index;
       acstrapi                 acstrapi    false    209                       1259    16448    upload_folders_created_by_id_fk    INDEX     e   CREATE INDEX upload_folders_created_by_id_fk ON acstrapi.upload_folders USING btree (created_by_id);
 5   DROP INDEX acstrapi.upload_folders_created_by_id_fk;
       acstrapi                 acstrapi    false    211                       1259    16447    upload_folders_documents_idx    INDEX     v   CREATE INDEX upload_folders_documents_idx ON acstrapi.upload_folders USING btree (document_id, locale, published_at);
 2   DROP INDEX acstrapi.upload_folders_documents_idx;
       acstrapi                 acstrapi    false    211    211    211                        1259    16896    upload_folders_parent_lnk_fk    INDEX     i   CREATE INDEX upload_folders_parent_lnk_fk ON acstrapi.upload_folders_parent_lnk USING btree (folder_id);
 2   DROP INDEX acstrapi.upload_folders_parent_lnk_fk;
       acstrapi                 acstrapi    false    279            !           1259    16897    upload_folders_parent_lnk_ifk    INDEX     n   CREATE INDEX upload_folders_parent_lnk_ifk ON acstrapi.upload_folders_parent_lnk USING btree (inv_folder_id);
 3   DROP INDEX acstrapi.upload_folders_parent_lnk_ifk;
       acstrapi                 acstrapi    false    279            "           1259    16900    upload_folders_parent_lnk_oifk    INDEX     l   CREATE INDEX upload_folders_parent_lnk_oifk ON acstrapi.upload_folders_parent_lnk USING btree (folder_ord);
 4   DROP INDEX acstrapi.upload_folders_parent_lnk_oifk;
       acstrapi                 acstrapi    false    279                       1259    16449    upload_folders_updated_by_id_fk    INDEX     e   CREATE INDEX upload_folders_updated_by_id_fk ON acstrapi.upload_folders USING btree (updated_by_id);
 5   DROP INDEX acstrapi.upload_folders_updated_by_id_fk;
       acstrapi                 acstrapi    false    211                       2606    17162    abouts abouts_created_by_id_fk    FK CONSTRAINT         ALTER TABLE ONLY acstrapi.abouts
    ADD CONSTRAINT abouts_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY acstrapi.abouts DROP CONSTRAINT abouts_created_by_id_fk;
       acstrapi               acstrapi    false    3304    247    231                       2606    17157    abouts_cmps abouts_entity_fk    FK CONSTRAINT        ALTER TABLE ONLY acstrapi.abouts_cmps
    ADD CONSTRAINT abouts_entity_fk FOREIGN KEY (entity_id) REFERENCES acstrapi.abouts(id) ON DELETE CASCADE;
 H   ALTER TABLE ONLY acstrapi.abouts_cmps DROP CONSTRAINT abouts_entity_fk;
       acstrapi               acstrapi    false    229    231    3260                       2606    17167    abouts abouts_updated_by_id_fk    FK CONSTRAINT         ALTER TABLE ONLY acstrapi.abouts
    ADD CONSTRAINT abouts_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY acstrapi.abouts DROP CONSTRAINT abouts_updated_by_id_fk;
       acstrapi               acstrapi    false    3304    231    247            ¡           2606    17222 4   admin_permissions admin_permissions_created_by_id_fk    FK CONSTRAINT     ¶   ALTER TABLE ONLY acstrapi.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 `   ALTER TABLE ONLY acstrapi.admin_permissions DROP CONSTRAINT admin_permissions_created_by_id_fk;
       acstrapi               acstrapi    false    247    245    3304            Å           2606    17402 8   admin_permissions_role_lnk admin_permissions_role_lnk_fk    FK CONSTRAINT     ¿   ALTER TABLE ONLY acstrapi.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES acstrapi.admin_permissions(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY acstrapi.admin_permissions_role_lnk DROP CONSTRAINT admin_permissions_role_lnk_fk;
       acstrapi               acstrapi    false    297    3299    245            Æ           2606    17407 9   admin_permissions_role_lnk admin_permissions_role_lnk_ifk    FK CONSTRAINT     ´   ALTER TABLE ONLY acstrapi.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES acstrapi.admin_roles(id) ON DELETE CASCADE;
 e   ALTER TABLE ONLY acstrapi.admin_permissions_role_lnk DROP CONSTRAINT admin_permissions_role_lnk_ifk;
       acstrapi               acstrapi    false    297    3309    249            ¢           2606    17227 4   admin_permissions admin_permissions_updated_by_id_fk    FK CONSTRAINT     ¶   ALTER TABLE ONLY acstrapi.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 `   ALTER TABLE ONLY acstrapi.admin_permissions DROP CONSTRAINT admin_permissions_updated_by_id_fk;
       acstrapi               acstrapi    false    245    3304    247            ¥           2606    17242 (   admin_roles admin_roles_created_by_id_fk    FK CONSTRAINT     ª   ALTER TABLE ONLY acstrapi.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 T   ALTER TABLE ONLY acstrapi.admin_roles DROP CONSTRAINT admin_roles_created_by_id_fk;
       acstrapi               acstrapi    false    249    247    3304            ¦           2606    17247 (   admin_roles admin_roles_updated_by_id_fk    FK CONSTRAINT     ª   ALTER TABLE ONLY acstrapi.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 T   ALTER TABLE ONLY acstrapi.admin_roles DROP CONSTRAINT admin_roles_updated_by_id_fk;
       acstrapi               acstrapi    false    247    3304    249            £           2606    17232 (   admin_users admin_users_created_by_id_fk    FK CONSTRAINT     ª   ALTER TABLE ONLY acstrapi.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 T   ALTER TABLE ONLY acstrapi.admin_users DROP CONSTRAINT admin_users_created_by_id_fk;
       acstrapi               acstrapi    false    3304    247    247            Ç           2606    17412 .   admin_users_roles_lnk admin_users_roles_lnk_fk    FK CONSTRAINT     ©   ALTER TABLE ONLY acstrapi.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_fk FOREIGN KEY (user_id) REFERENCES acstrapi.admin_users(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY acstrapi.admin_users_roles_lnk DROP CONSTRAINT admin_users_roles_lnk_fk;
       acstrapi               acstrapi    false    3304    299    247            È           2606    17417 /   admin_users_roles_lnk admin_users_roles_lnk_ifk    FK CONSTRAINT     ª   ALTER TABLE ONLY acstrapi.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_ifk FOREIGN KEY (role_id) REFERENCES acstrapi.admin_roles(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY acstrapi.admin_users_roles_lnk DROP CONSTRAINT admin_users_roles_lnk_ifk;
       acstrapi               acstrapi    false    249    3309    299            ¤           2606    17237 (   admin_users admin_users_updated_by_id_fk    FK CONSTRAINT     ª   ALTER TABLE ONLY acstrapi.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 T   ALTER TABLE ONLY acstrapi.admin_users DROP CONSTRAINT admin_users_updated_by_id_fk;
       acstrapi               acstrapi    false    247    247    3304            Á           2606    17382 *   articles_author_lnk articles_author_lnk_fk    FK CONSTRAINT     ¥   ALTER TABLE ONLY acstrapi.articles_author_lnk
    ADD CONSTRAINT articles_author_lnk_fk FOREIGN KEY (article_id) REFERENCES acstrapi.articles(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY acstrapi.articles_author_lnk DROP CONSTRAINT articles_author_lnk_fk;
       acstrapi               acstrapi    false    293    235    3272            Â           2606    17387 +   articles_author_lnk articles_author_lnk_ifk    FK CONSTRAINT     ¤   ALTER TABLE ONLY acstrapi.articles_author_lnk
    ADD CONSTRAINT articles_author_lnk_ifk FOREIGN KEY (author_id) REFERENCES acstrapi.authors(id) ON DELETE CASCADE;
 W   ALTER TABLE ONLY acstrapi.articles_author_lnk DROP CONSTRAINT articles_author_lnk_ifk;
       acstrapi               acstrapi    false    237    293    3277            Ã           2606    17392 .   articles_category_lnk articles_category_lnk_fk    FK CONSTRAINT     ©   ALTER TABLE ONLY acstrapi.articles_category_lnk
    ADD CONSTRAINT articles_category_lnk_fk FOREIGN KEY (article_id) REFERENCES acstrapi.articles(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY acstrapi.articles_category_lnk DROP CONSTRAINT articles_category_lnk_fk;
       acstrapi               acstrapi    false    235    295    3272            Ä           2606    17397 /   articles_category_lnk articles_category_lnk_ifk    FK CONSTRAINT     ­   ALTER TABLE ONLY acstrapi.articles_category_lnk
    ADD CONSTRAINT articles_category_lnk_ifk FOREIGN KEY (category_id) REFERENCES acstrapi.categories(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY acstrapi.articles_category_lnk DROP CONSTRAINT articles_category_lnk_ifk;
       acstrapi               acstrapi    false    3282    239    295                       2606    17177 "   articles articles_created_by_id_fk    FK CONSTRAINT     ¤   ALTER TABLE ONLY acstrapi.articles
    ADD CONSTRAINT articles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 N   ALTER TABLE ONLY acstrapi.articles DROP CONSTRAINT articles_created_by_id_fk;
       acstrapi               acstrapi    false    3304    247    235                       2606    17172     articles_cmps articles_entity_fk    FK CONSTRAINT        ALTER TABLE ONLY acstrapi.articles_cmps
    ADD CONSTRAINT articles_entity_fk FOREIGN KEY (entity_id) REFERENCES acstrapi.articles(id) ON DELETE CASCADE;
 L   ALTER TABLE ONLY acstrapi.articles_cmps DROP CONSTRAINT articles_entity_fk;
       acstrapi               acstrapi    false    235    3272    233                       2606    17182 "   articles articles_updated_by_id_fk    FK CONSTRAINT     ¤   ALTER TABLE ONLY acstrapi.articles
    ADD CONSTRAINT articles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 N   ALTER TABLE ONLY acstrapi.articles DROP CONSTRAINT articles_updated_by_id_fk;
       acstrapi               acstrapi    false    247    3304    235                       2606    17187     authors authors_created_by_id_fk    FK CONSTRAINT     ¢   ALTER TABLE ONLY acstrapi.authors
    ADD CONSTRAINT authors_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY acstrapi.authors DROP CONSTRAINT authors_created_by_id_fk;
       acstrapi               acstrapi    false    237    3304    247                       2606    17192     authors authors_updated_by_id_fk    FK CONSTRAINT     ¢   ALTER TABLE ONLY acstrapi.authors
    ADD CONSTRAINT authors_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY acstrapi.authors DROP CONSTRAINT authors_updated_by_id_fk;
       acstrapi               acstrapi    false    3304    247    237                       2606    17197 &   categories categories_created_by_id_fk    FK CONSTRAINT     ¨   ALTER TABLE ONLY acstrapi.categories
    ADD CONSTRAINT categories_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY acstrapi.categories DROP CONSTRAINT categories_created_by_id_fk;
       acstrapi               acstrapi    false    247    3304    239                       2606    17202 &   categories categories_updated_by_id_fk    FK CONSTRAINT     ¨   ALTER TABLE ONLY acstrapi.categories
    ADD CONSTRAINT categories_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY acstrapi.categories DROP CONSTRAINT categories_updated_by_id_fk;
       acstrapi               acstrapi    false    239    3304    247                       2606    17057    files files_created_by_id_fk    FK CONSTRAINT        ALTER TABLE ONLY acstrapi.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 H   ALTER TABLE ONLY acstrapi.files DROP CONSTRAINT files_created_by_id_fk;
       acstrapi               acstrapi    false    209    247    3304            ±           2606    17302 $   files_folder_lnk files_folder_lnk_fk    FK CONSTRAINT        ALTER TABLE ONLY acstrapi.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_fk FOREIGN KEY (file_id) REFERENCES acstrapi.files(id) ON DELETE CASCADE;
 P   ALTER TABLE ONLY acstrapi.files_folder_lnk DROP CONSTRAINT files_folder_lnk_fk;
       acstrapi               acstrapi    false    277    3193    209            ²           2606    17307 %   files_folder_lnk files_folder_lnk_ifk    FK CONSTRAINT     ¥   ALTER TABLE ONLY acstrapi.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_ifk FOREIGN KEY (folder_id) REFERENCES acstrapi.upload_folders(id) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY acstrapi.files_folder_lnk DROP CONSTRAINT files_folder_lnk_ifk;
       acstrapi               acstrapi    false    3208    277    211            °           2606    17297 &   files_related_mph files_related_mph_fk    FK CONSTRAINT        ALTER TABLE ONLY acstrapi.files_related_mph
    ADD CONSTRAINT files_related_mph_fk FOREIGN KEY (file_id) REFERENCES acstrapi.files(id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY acstrapi.files_related_mph DROP CONSTRAINT files_related_mph_fk;
       acstrapi               acstrapi    false    275    3193    209                       2606    17062    files files_updated_by_id_fk    FK CONSTRAINT        ALTER TABLE ONLY acstrapi.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 H   ALTER TABLE ONLY acstrapi.files DROP CONSTRAINT files_updated_by_id_fk;
       acstrapi               acstrapi    false    247    209    3304                       2606    17212     globals globals_created_by_id_fk    FK CONSTRAINT     ¢   ALTER TABLE ONLY acstrapi.globals
    ADD CONSTRAINT globals_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY acstrapi.globals DROP CONSTRAINT globals_created_by_id_fk;
       acstrapi               acstrapi    false    243    3304    247                       2606    17207    globals_cmps globals_entity_fk    FK CONSTRAINT        ALTER TABLE ONLY acstrapi.globals_cmps
    ADD CONSTRAINT globals_entity_fk FOREIGN KEY (entity_id) REFERENCES acstrapi.globals(id) ON DELETE CASCADE;
 J   ALTER TABLE ONLY acstrapi.globals_cmps DROP CONSTRAINT globals_entity_fk;
       acstrapi               acstrapi    false    3294    241    243                        2606    17217     globals globals_updated_by_id_fk    FK CONSTRAINT     ¢   ALTER TABLE ONLY acstrapi.globals
    ADD CONSTRAINT globals_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY acstrapi.globals DROP CONSTRAINT globals_updated_by_id_fk;
       acstrapi               acstrapi    false    3304    247    243                       2606    17077 (   i18n_locale i18n_locale_created_by_id_fk    FK CONSTRAINT     ª   ALTER TABLE ONLY acstrapi.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 T   ALTER TABLE ONLY acstrapi.i18n_locale DROP CONSTRAINT i18n_locale_created_by_id_fk;
       acstrapi               acstrapi    false    247    3304    213                       2606    17082 (   i18n_locale i18n_locale_updated_by_id_fk    FK CONSTRAINT     ª   ALTER TABLE ONLY acstrapi.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 T   ALTER TABLE ONLY acstrapi.i18n_locale DROP CONSTRAINT i18n_locale_updated_by_id_fk;
       acstrapi               acstrapi    false    213    3304    247            Í           2606    24595    jobs jobs_created_by_id_fk    FK CONSTRAINT        ALTER TABLE ONLY acstrapi.jobs
    ADD CONSTRAINT jobs_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY acstrapi.jobs DROP CONSTRAINT jobs_created_by_id_fk;
       acstrapi               acstrapi    false    247    3304    305            Î           2606    24600    jobs jobs_updated_by_id_fk    FK CONSTRAINT        ALTER TABLE ONLY acstrapi.jobs
    ADD CONSTRAINT jobs_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY acstrapi.jobs DROP CONSTRAINT jobs_updated_by_id_fk;
       acstrapi               acstrapi    false    305    3304    247            ©           2606    17262 J   strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk    FK CONSTRAINT     Ì   ALTER TABLE ONLY acstrapi.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 v   ALTER TABLE ONLY acstrapi.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_created_by_id_fk;
       acstrapi               acstrapi    false    3304    247    253            É           2606    17422 P   strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_fk    FK CONSTRAINT     ì   ALTER TABLE ONLY acstrapi.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_fk FOREIGN KEY (api_token_permission_id) REFERENCES acstrapi.strapi_api_token_permissions(id) ON DELETE CASCADE;
 |   ALTER TABLE ONLY acstrapi.strapi_api_token_permissions_token_lnk DROP CONSTRAINT strapi_api_token_permissions_token_lnk_fk;
       acstrapi               acstrapi    false    253    301    3319            Ê           2606    17427 Q   strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_ifk    FK CONSTRAINT     ×   ALTER TABLE ONLY acstrapi.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_ifk FOREIGN KEY (api_token_id) REFERENCES acstrapi.strapi_api_tokens(id) ON DELETE CASCADE;
 }   ALTER TABLE ONLY acstrapi.strapi_api_token_permissions_token_lnk DROP CONSTRAINT strapi_api_token_permissions_token_lnk_ifk;
       acstrapi               acstrapi    false    301    3314    251            ª           2606    17267 J   strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk    FK CONSTRAINT     Ì   ALTER TABLE ONLY acstrapi.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 v   ALTER TABLE ONLY acstrapi.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_updated_by_id_fk;
       acstrapi               acstrapi    false    3304    253    247            §           2606    17252 4   strapi_api_tokens strapi_api_tokens_created_by_id_fk    FK CONSTRAINT     ¶   ALTER TABLE ONLY acstrapi.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 `   ALTER TABLE ONLY acstrapi.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_created_by_id_fk;
       acstrapi               acstrapi    false    251    3304    247            ¨           2606    17257 4   strapi_api_tokens strapi_api_tokens_updated_by_id_fk    FK CONSTRAINT     ¶   ALTER TABLE ONLY acstrapi.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 `   ALTER TABLE ONLY acstrapi.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_updated_by_id_fk;
       acstrapi               acstrapi    false    251    3304    247            ¯           2606    17292 @   strapi_history_versions strapi_history_versions_created_by_id_fk    FK CONSTRAINT     Â   ALTER TABLE ONLY acstrapi.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 l   ALTER TABLE ONLY acstrapi.strapi_history_versions DROP CONSTRAINT strapi_history_versions_created_by_id_fk;
       acstrapi               acstrapi    false    3304    273    247                       2606    17097 >   strapi_release_actions strapi_release_actions_created_by_id_fk    FK CONSTRAINT     À   ALTER TABLE ONLY acstrapi.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 j   ALTER TABLE ONLY acstrapi.strapi_release_actions DROP CONSTRAINT strapi_release_actions_created_by_id_fk;
       acstrapi               acstrapi    false    3304    247    217            µ           2606    17322 H   strapi_release_actions_release_lnk strapi_release_actions_release_lnk_fk    FK CONSTRAINT     Ø   ALTER TABLE ONLY acstrapi.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_fk FOREIGN KEY (release_action_id) REFERENCES acstrapi.strapi_release_actions(id) ON DELETE CASCADE;
 t   ALTER TABLE ONLY acstrapi.strapi_release_actions_release_lnk DROP CONSTRAINT strapi_release_actions_release_lnk_fk;
       acstrapi               acstrapi    false    281    217    3223            ¶           2606    17327 I   strapi_release_actions_release_lnk strapi_release_actions_release_lnk_ifk    FK CONSTRAINT     Ë   ALTER TABLE ONLY acstrapi.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_ifk FOREIGN KEY (release_id) REFERENCES acstrapi.strapi_releases(id) ON DELETE CASCADE;
 u   ALTER TABLE ONLY acstrapi.strapi_release_actions_release_lnk DROP CONSTRAINT strapi_release_actions_release_lnk_ifk;
       acstrapi               acstrapi    false    281    215    3218                       2606    17102 >   strapi_release_actions strapi_release_actions_updated_by_id_fk    FK CONSTRAINT     À   ALTER TABLE ONLY acstrapi.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 j   ALTER TABLE ONLY acstrapi.strapi_release_actions DROP CONSTRAINT strapi_release_actions_updated_by_id_fk;
       acstrapi               acstrapi    false    217    3304    247                       2606    17087 0   strapi_releases strapi_releases_created_by_id_fk    FK CONSTRAINT     ²   ALTER TABLE ONLY acstrapi.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 \   ALTER TABLE ONLY acstrapi.strapi_releases DROP CONSTRAINT strapi_releases_created_by_id_fk;
       acstrapi               acstrapi    false    247    3304    215                       2606    17092 0   strapi_releases strapi_releases_updated_by_id_fk    FK CONSTRAINT     ²   ALTER TABLE ONLY acstrapi.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 \   ALTER TABLE ONLY acstrapi.strapi_releases DROP CONSTRAINT strapi_releases_updated_by_id_fk;
       acstrapi               acstrapi    false    247    215    3304            ­           2606    17282 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk    FK CONSTRAINT     Ö   ALTER TABLE ONLY acstrapi.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
    ALTER TABLE ONLY acstrapi.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk;
       acstrapi               acstrapi    false    3304    247    257            Ë           2606    17432 Z   strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_fk    FK CONSTRAINT        ALTER TABLE ONLY acstrapi.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES acstrapi.strapi_transfer_token_permissions(id) ON DELETE CASCADE;
    ALTER TABLE ONLY acstrapi.strapi_transfer_token_permissions_token_lnk DROP CONSTRAINT strapi_transfer_token_permissions_token_lnk_fk;
       acstrapi               acstrapi    false    3329    257    303            Ì           2606    17437 [   strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_ifk    FK CONSTRAINT     ë   ALTER TABLE ONLY acstrapi.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_ifk FOREIGN KEY (transfer_token_id) REFERENCES acstrapi.strapi_transfer_tokens(id) ON DELETE CASCADE;
    ALTER TABLE ONLY acstrapi.strapi_transfer_token_permissions_token_lnk DROP CONSTRAINT strapi_transfer_token_permissions_token_lnk_ifk;
       acstrapi               acstrapi    false    255    3324    303            ®           2606    17287 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk    FK CONSTRAINT     Ö   ALTER TABLE ONLY acstrapi.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
    ALTER TABLE ONLY acstrapi.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk;
       acstrapi               acstrapi    false    257    247    3304            «           2606    17272 >   strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk    FK CONSTRAINT     À   ALTER TABLE ONLY acstrapi.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 j   ALTER TABLE ONLY acstrapi.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_created_by_id_fk;
       acstrapi               acstrapi    false    255    3304    247            ¬           2606    17277 >   strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk    FK CONSTRAINT     À   ALTER TABLE ONLY acstrapi.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 j   ALTER TABLE ONLY acstrapi.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_updated_by_id_fk;
       acstrapi               acstrapi    false    3304    255    247                       2606    17107 2   strapi_workflows strapi_workflows_created_by_id_fk    FK CONSTRAINT     ´   ALTER TABLE ONLY acstrapi.strapi_workflows
    ADD CONSTRAINT strapi_workflows_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY acstrapi.strapi_workflows DROP CONSTRAINT strapi_workflows_created_by_id_fk;
       acstrapi               acstrapi    false    3304    247    219            ·           2606    17332 `   strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_fk    FK CONSTRAINT     ä   ALTER TABLE ONLY acstrapi.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_fk FOREIGN KEY (workflow_id) REFERENCES acstrapi.strapi_workflows(id) ON DELETE CASCADE;
    ALTER TABLE ONLY acstrapi.strapi_workflows_stage_required_to_publish_lnk DROP CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_fk;
       acstrapi               acstrapi    false    3228    219    283            ¸           2606    17337 a   strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_ifk    FK CONSTRAINT     ò   ALTER TABLE ONLY acstrapi.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_ifk FOREIGN KEY (workflow_stage_id) REFERENCES acstrapi.strapi_workflows_stages(id) ON DELETE CASCADE;
    ALTER TABLE ONLY acstrapi.strapi_workflows_stage_required_to_publish_lnk DROP CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_ifk;
       acstrapi               acstrapi    false    3233    221    283                       2606    17117 @   strapi_workflows_stages strapi_workflows_stages_created_by_id_fk    FK CONSTRAINT     Â   ALTER TABLE ONLY acstrapi.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 l   ALTER TABLE ONLY acstrapi.strapi_workflows_stages DROP CONSTRAINT strapi_workflows_stages_created_by_id_fk;
       acstrapi               acstrapi    false    247    3304    221            »           2606    17352 R   strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_fk    FK CONSTRAINT     ã   ALTER TABLE ONLY acstrapi.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES acstrapi.strapi_workflows_stages(id) ON DELETE CASCADE;
 ~   ALTER TABLE ONLY acstrapi.strapi_workflows_stages_permissions_lnk DROP CONSTRAINT strapi_workflows_stages_permissions_lnk_fk;
       acstrapi               acstrapi    false    287    3233    221            ¼           2606    17357 S   strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_ifk    FK CONSTRAINT     Ú   ALTER TABLE ONLY acstrapi.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_ifk FOREIGN KEY (permission_id) REFERENCES acstrapi.admin_permissions(id) ON DELETE CASCADE;
    ALTER TABLE ONLY acstrapi.strapi_workflows_stages_permissions_lnk DROP CONSTRAINT strapi_workflows_stages_permissions_lnk_ifk;
       acstrapi               acstrapi    false    287    3299    245                       2606    17122 @   strapi_workflows_stages strapi_workflows_stages_updated_by_id_fk    FK CONSTRAINT     Â   ALTER TABLE ONLY acstrapi.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 l   ALTER TABLE ONLY acstrapi.strapi_workflows_stages DROP CONSTRAINT strapi_workflows_stages_updated_by_id_fk;
       acstrapi               acstrapi    false    221    247    3304            ¹           2606    17342 L   strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_fk    FK CONSTRAINT     Ý   ALTER TABLE ONLY acstrapi.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES acstrapi.strapi_workflows_stages(id) ON DELETE CASCADE;
 x   ALTER TABLE ONLY acstrapi.strapi_workflows_stages_workflow_lnk DROP CONSTRAINT strapi_workflows_stages_workflow_lnk_fk;
       acstrapi               acstrapi    false    3233    285    221            º           2606    17347 M   strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_ifk    FK CONSTRAINT     Ñ   ALTER TABLE ONLY acstrapi.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_ifk FOREIGN KEY (workflow_id) REFERENCES acstrapi.strapi_workflows(id) ON DELETE CASCADE;
 y   ALTER TABLE ONLY acstrapi.strapi_workflows_stages_workflow_lnk DROP CONSTRAINT strapi_workflows_stages_workflow_lnk_ifk;
       acstrapi               acstrapi    false    285    219    3228                       2606    17112 2   strapi_workflows strapi_workflows_updated_by_id_fk    FK CONSTRAINT     ´   ALTER TABLE ONLY acstrapi.strapi_workflows
    ADD CONSTRAINT strapi_workflows_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY acstrapi.strapi_workflows DROP CONSTRAINT strapi_workflows_updated_by_id_fk;
       acstrapi               acstrapi    false    219    3304    247                       2606    17127 .   up_permissions up_permissions_created_by_id_fk    FK CONSTRAINT     °   ALTER TABLE ONLY acstrapi.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY acstrapi.up_permissions DROP CONSTRAINT up_permissions_created_by_id_fk;
       acstrapi               acstrapi    false    247    223    3304            ½           2606    17362 2   up_permissions_role_lnk up_permissions_role_lnk_fk    FK CONSTRAINT     ¶   ALTER TABLE ONLY acstrapi.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES acstrapi.up_permissions(id) ON DELETE CASCADE;
 ^   ALTER TABLE ONLY acstrapi.up_permissions_role_lnk DROP CONSTRAINT up_permissions_role_lnk_fk;
       acstrapi               acstrapi    false    3238    289    223            ¾           2606    17367 3   up_permissions_role_lnk up_permissions_role_lnk_ifk    FK CONSTRAINT     «   ALTER TABLE ONLY acstrapi.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES acstrapi.up_roles(id) ON DELETE CASCADE;
 _   ALTER TABLE ONLY acstrapi.up_permissions_role_lnk DROP CONSTRAINT up_permissions_role_lnk_ifk;
       acstrapi               acstrapi    false    225    289    3243                       2606    17132 .   up_permissions up_permissions_updated_by_id_fk    FK CONSTRAINT     °   ALTER TABLE ONLY acstrapi.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY acstrapi.up_permissions DROP CONSTRAINT up_permissions_updated_by_id_fk;
       acstrapi               acstrapi    false    247    223    3304                       2606    17137 "   up_roles up_roles_created_by_id_fk    FK CONSTRAINT     ¤   ALTER TABLE ONLY acstrapi.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 N   ALTER TABLE ONLY acstrapi.up_roles DROP CONSTRAINT up_roles_created_by_id_fk;
       acstrapi               acstrapi    false    247    225    3304                       2606    17142 "   up_roles up_roles_updated_by_id_fk    FK CONSTRAINT     ¤   ALTER TABLE ONLY acstrapi.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 N   ALTER TABLE ONLY acstrapi.up_roles DROP CONSTRAINT up_roles_updated_by_id_fk;
       acstrapi               acstrapi    false    247    225    3304                       2606    17147 "   up_users up_users_created_by_id_fk    FK CONSTRAINT     ¤   ALTER TABLE ONLY acstrapi.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 N   ALTER TABLE ONLY acstrapi.up_users DROP CONSTRAINT up_users_created_by_id_fk;
       acstrapi               acstrapi    false    247    227    3304            ¿           2606    17372 &   up_users_role_lnk up_users_role_lnk_fk    FK CONSTRAINT        ALTER TABLE ONLY acstrapi.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_fk FOREIGN KEY (user_id) REFERENCES acstrapi.up_users(id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY acstrapi.up_users_role_lnk DROP CONSTRAINT up_users_role_lnk_fk;
       acstrapi               acstrapi    false    291    227    3248            À           2606    17377 '   up_users_role_lnk up_users_role_lnk_ifk    FK CONSTRAINT        ALTER TABLE ONLY acstrapi.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES acstrapi.up_roles(id) ON DELETE CASCADE;
 S   ALTER TABLE ONLY acstrapi.up_users_role_lnk DROP CONSTRAINT up_users_role_lnk_ifk;
       acstrapi               acstrapi    false    291    225    3243                       2606    17152 "   up_users up_users_updated_by_id_fk    FK CONSTRAINT     ¤   ALTER TABLE ONLY acstrapi.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 N   ALTER TABLE ONLY acstrapi.up_users DROP CONSTRAINT up_users_updated_by_id_fk;
       acstrapi               acstrapi    false    3304    227    247                       2606    17067 .   upload_folders upload_folders_created_by_id_fk    FK CONSTRAINT     °   ALTER TABLE ONLY acstrapi.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY acstrapi.upload_folders DROP CONSTRAINT upload_folders_created_by_id_fk;
       acstrapi               acstrapi    false    247    211    3304            ³           2606    17312 6   upload_folders_parent_lnk upload_folders_parent_lnk_fk    FK CONSTRAINT     ¶   ALTER TABLE ONLY acstrapi.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_fk FOREIGN KEY (folder_id) REFERENCES acstrapi.upload_folders(id) ON DELETE CASCADE;
 b   ALTER TABLE ONLY acstrapi.upload_folders_parent_lnk DROP CONSTRAINT upload_folders_parent_lnk_fk;
       acstrapi               acstrapi    false    211    3208    279            ´           2606    17317 7   upload_folders_parent_lnk upload_folders_parent_lnk_ifk    FK CONSTRAINT     »   ALTER TABLE ONLY acstrapi.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_ifk FOREIGN KEY (inv_folder_id) REFERENCES acstrapi.upload_folders(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY acstrapi.upload_folders_parent_lnk DROP CONSTRAINT upload_folders_parent_lnk_ifk;
       acstrapi               acstrapi    false    279    211    3208                       2606    17072 .   upload_folders upload_folders_updated_by_id_fk    FK CONSTRAINT     °   ALTER TABLE ONLY acstrapi.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES acstrapi.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY acstrapi.upload_folders DROP CONSTRAINT upload_folders_updated_by_id_fk;
       acstrapi               acstrapi    false    247    211    3304            j      1	c030n2onrh88qoal6p25ghdq	About the strapi blog	2025-01-05 23:38:48.256	2025-01-05 23:38:48.256	2025-01-05 23:38:48.239	\N	\N	\N
    \.


      h      1	1	6	shared.quote	blocks	1
 !   2	1	11	shared.rich-text	blocks	2
    3	1	6	shared.media	blocks	3
    \.


      x   Ë   1	xvka4few5jk26jv24ayy4uer	plugin::content-manager.explorer.create	{}	api::about.about	{"fields": ["title", "blocks"]}	[]	2025-01-05 23:38:38.622	2025-01-05 23:38:38.622	2025-01-05 23:38:38.622	\N	\N	\N
   2	e1jmkcsg2zowd602chztc0dh	plugin::content-manager.explorer.create	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "author", "category", "blocks"]}	[]	2025-01-05 23:38:38.654	2025-01-05 23:38:38.654	2025-01-05 23:38:38.655	\N	\N	\N
 á   3	srj4lobmn9myd803897c084j	plugin::content-manager.explorer.create	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	[]	2025-01-05 23:38:38.686	2025-01-05 23:38:38.686	2025-01-05 23:38:38.687	\N	\N	\N
 é   4	imqzwy084jgvkuo9zviwqexh	plugin::content-manager.explorer.create	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	[]	2025-01-05 23:38:38.717	2025-01-05 23:38:38.717	2025-01-05 23:38:38.717	\N	\N	\N
 3  5	qecram63g4h5dbn6mtsyua75	plugin::content-manager.explorer.create	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	[]	2025-01-05 23:38:38.748	2025-01-05 23:38:38.748	2025-01-05 23:38:38.748	\N	\N	\N
 É   6	s14usganq30tnzwb9svspc3g	plugin::content-manager.explorer.read	{}	api::about.about	{"fields": ["title", "blocks"]}	[]	2025-01-05 23:38:38.779	2025-01-05 23:38:38.779	2025-01-05 23:38:38.779	\N	\N	\N
    7	zyn9lwypjkra0v21mktvxl2e	plugin::content-manager.explorer.read	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "author", "category", "blocks"]}	[]	2025-01-05 23:38:38.81	2025-01-05 23:38:38.81	2025-01-05 23:38:38.81	\N	\N	\N
 ß   8	pgwt7s0h157yn4mfm1whoh96	plugin::content-manager.explorer.read	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	[]	2025-01-05 23:38:38.841	2025-01-05 23:38:38.841	2025-01-05 23:38:38.841	\N	\N	\N
 å   9	gnce5uktryfw12kdaobzd5te	plugin::content-manager.explorer.read	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	[]	2025-01-05 23:38:38.87	2025-01-05 23:38:38.87	2025-01-05 23:38:38.871	\N	\N	\N
 2  10	rugwijlb2tey4lasdeuyk58z	plugin::content-manager.explorer.read	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	[]	2025-01-05 23:38:38.917	2025-01-05 23:38:38.917	2025-01-05 23:38:38.917	\N	\N	\N
 Ì   11	sup7lzpvu23jspi9ecnqbr4q	plugin::content-manager.explorer.update	{}	api::about.about	{"fields": ["title", "blocks"]}	[]	2025-01-05 23:38:38.952	2025-01-05 23:38:38.952	2025-01-05 23:38:38.953	\N	\N	\N
   12	bshy4ojc14asxuxaf9kyiz9w	plugin::content-manager.explorer.update	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "author", "category", "blocks"]}	[]	2025-01-05 23:38:38.984	2025-01-05 23:38:38.984	2025-01-05 23:38:38.985	\N	\N	\N
 â   13	y9o5iufxjy4szl1ifpughidz	plugin::content-manager.explorer.update	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	[]	2025-01-05 23:38:39.016	2025-01-05 23:38:39.016	2025-01-05 23:38:39.016	\N	\N	\N
 ê   14	y7z71uwjh8li274hxwvlj63v	plugin::content-manager.explorer.update	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	[]	2025-01-05 23:38:39.046	2025-01-05 23:38:39.046	2025-01-05 23:38:39.047	\N	\N	\N
 4  15	w3q3hljik2t9rbd3td3a9gsd	plugin::content-manager.explorer.update	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	[]	2025-01-05 23:38:39.081	2025-01-05 23:38:39.081	2025-01-05 23:38:39.081	\N	\N	\N
 ¯   16	ftmej5j7jz3oo2krwly06lrn	plugin::content-manager.explorer.delete	{}	api::about.about	{}	[]	2025-01-05 23:38:39.116	2025-01-05 23:38:39.116	2025-01-05 23:38:39.116	\N	\N	\N
 ³   17	fsfvbavkgzlo42xh6s3i4rwn	plugin::content-manager.explorer.delete	{}	api::article.article	{}	[]	2025-01-05 23:38:39.147	2025-01-05 23:38:39.147	2025-01-05 23:38:39.147	\N	\N	\N
 ±   18	c240cfvqdjtrpfl7lm4wvauj	plugin::content-manager.explorer.delete	{}	api::author.author	{}	[]	2025-01-05 23:38:39.182	2025-01-05 23:38:39.182	2025-01-05 23:38:39.182	\N	\N	\N
 µ   19	zqdqqx704azwvsjxbmrgiix6	plugin::content-manager.explorer.delete	{}	api::category.category	{}	[]	2025-01-05 23:38:39.212	2025-01-05 23:38:39.212	2025-01-05 23:38:39.212	\N	\N	\N
 ±   20	mcblesqexeup091rr5fuxq42	plugin::content-manager.explorer.delete	{}	api::global.global	{}	[]	2025-01-05 23:38:39.241	2025-01-05 23:38:39.241	2025-01-05 23:38:39.241	\N	\N	\N
 °   21	hp9sox42u6r9ra60t97juzdr	plugin::content-manager.explorer.publish	{}	api::about.about	{}	[]	2025-01-05 23:38:39.271	2025-01-05 23:38:39.271	2025-01-05 23:38:39.272	\N	\N	\N
 ´   22	n23zrt77vr8h3a8ni5dr5u86	plugin::content-manager.explorer.publish	{}	api::article.article	{}	[]	2025-01-05 23:38:39.301	2025-01-05 23:38:39.301	2025-01-05 23:38:39.301	\N	\N	\N
 ²   23	hjh3tbg3c5ws9s35k8y6drlx	plugin::content-manager.explorer.publish	{}	api::author.author	{}	[]	2025-01-05 23:38:39.332	2025-01-05 23:38:39.332	2025-01-05 23:38:39.332	\N	\N	\N
 ¶   24	gor6e5truhuzhx0qy43mykp1	plugin::content-manager.explorer.publish	{}	api::category.category	{}	[]	2025-01-05 23:38:39.367	2025-01-05 23:38:39.367	2025-01-05 23:38:39.367	\N	\N	\N
 ²   25	gl9fdi7571lhv169fxcywrdq	plugin::content-manager.explorer.publish	{}	api::global.global	{}	[]	2025-01-05 23:38:39.398	2025-01-05 23:38:39.398	2025-01-05 23:38:39.398	\N	\N	\N
    26	mmq6u52wn1n0ewixx19kr4a0	plugin::upload.read	{}	\N	{}	[]	2025-01-05 23:38:39.427	2025-01-05 23:38:39.427	2025-01-05 23:38:39.427	\N	\N	\N
    27	sugo7c0jr3xooluwpro4vr60	plugin::upload.configure-view	{}	\N	{}	[]	2025-01-05 23:38:39.457	2025-01-05 23:38:39.457	2025-01-05 23:38:39.457	\N	\N	\N
    28	ts7okfigyp2y9pe2onawzph2	plugin::upload.assets.create	{}	\N	{}	[]	2025-01-05 23:38:39.486	2025-01-05 23:38:39.486	2025-01-05 23:38:39.486	\N	\N	\N
    29	mwpj3yaqhfcd063hyem27a1k	plugin::upload.assets.update	{}	\N	{}	[]	2025-01-05 23:38:39.517	2025-01-05 23:38:39.517	2025-01-05 23:38:39.517	\N	\N	\N
    30	et1qmk30dpdrl86z9l6w8z8k	plugin::upload.assets.download	{}	\N	{}	[]	2025-01-05 23:38:39.549	2025-01-05 23:38:39.549	2025-01-05 23:38:39.549	\N	\N	\N
    31	bhnjsxwqls9435vjpaftsddb	plugin::upload.assets.copy-link	{}	\N	{}	[]	2025-01-05 23:38:39.579	2025-01-05 23:38:39.579	2025-01-05 23:38:39.579	\N	\N	\N
 ß   32	q8x3w69xrn43cy7izleke08m	plugin::content-manager.explorer.create	{}	api::about.about	{"fields": ["title", "blocks"]}	["admin::is-creator"]	2025-01-05 23:38:39.613	2025-01-05 23:38:39.613	2025-01-05 23:38:39.614	\N	\N	\N
   33	ds3jkne4r4w6t1630i2qrmlm	plugin::content-manager.explorer.create	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "author", "category", "blocks"]}	["admin::is-creator"]	2025-01-05 23:38:39.645	2025-01-05 23:38:39.645	2025-01-05 23:38:39.645	\N	\N	\N
 õ   34	vkaj0zz4zif26w4oyp106jdn	plugin::content-manager.explorer.create	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	["admin::is-creator"]	2025-01-05 23:38:39.675	2025-01-05 23:38:39.675	2025-01-05 23:38:39.675	\N	\N	\N
 ý   35	pukghe6rniw4hg0f1dt85rlv	plugin::content-manager.explorer.create	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	["admin::is-creator"]	2025-01-05 23:38:39.705	2025-01-05 23:38:39.705	2025-01-05 23:38:39.705	\N	\N	\N
 G  36	j34cn50vzrm5dzpcazapxo6s	plugin::content-manager.explorer.create	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	["admin::is-creator"]	2025-01-05 23:38:39.735	2025-01-05 23:38:39.735	2025-01-05 23:38:39.736	\N	\N	\N
 Ý   37	qezt3di5xbv8fl8sek5bet08	plugin::content-manager.explorer.read	{}	api::about.about	{"fields": ["title", "blocks"]}	["admin::is-creator"]	2025-01-05 23:38:39.766	2025-01-05 23:38:39.766	2025-01-05 23:38:39.767	\N	\N	\N
   38	pkq594k05rlsqulkco0x1a4m	plugin::content-manager.explorer.read	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "author", "category", "blocks"]}	["admin::is-creator"]	2025-01-05 23:38:39.811	2025-01-05 23:38:39.811	2025-01-05 23:38:39.811	\N	\N	\N
 ó   39	hfhx10mucu4jg38rm5d1eoy7	plugin::content-manager.explorer.read	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	["admin::is-creator"]	2025-01-05 23:38:39.849	2025-01-05 23:38:39.849	2025-01-05 23:38:39.849	\N	\N	\N
 û   40	nv5e82mrxgu50ymyzqqnpl86	plugin::content-manager.explorer.read	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	["admin::is-creator"]	2025-01-05 23:38:39.883	2025-01-05 23:38:39.883	2025-01-05 23:38:39.884	\N	\N	\N
 E  41	j4iozi6zg9atmewnhipr5m0s	plugin::content-manager.explorer.read	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	["admin::is-creator"]	2025-01-05 23:38:39.913	2025-01-05 23:38:39.913	2025-01-05 23:38:39.913	\N	\N	\N
 ß   42	b8k8zqa80xzylht690rqw5il	plugin::content-manager.explorer.update	{}	api::about.about	{"fields": ["title", "blocks"]}	["admin::is-creator"]	2025-01-05 23:38:39.942	2025-01-05 23:38:39.942	2025-01-05 23:38:39.942	\N	\N	\N
   43	w51wyw1tf6cwi5b9nq9x55ef	plugin::content-manager.explorer.update	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "author", "category", "blocks"]}	["admin::is-creator"]	2025-01-05 23:38:39.972	2025-01-05 23:38:39.972	2025-01-05 23:38:39.972	\N	\N	\N
 ò   44	pyd7hjjq8hd0lt5lkpybaitn	plugin::content-manager.explorer.update	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	["admin::is-creator"]	2025-01-05 23:38:40.01	2025-01-05 23:38:40.01	2025-01-05 23:38:40.01	\N	\N	\N
 ý   45	gtu4384j7qt6v60fe5yjz3f7	plugin::content-manager.explorer.update	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	["admin::is-creator"]	2025-01-05 23:38:40.042	2025-01-05 23:38:40.042	2025-01-05 23:38:40.042	\N	\N	\N
 G  46	mdup66fcx59mqto140t38uhz	plugin::content-manager.explorer.update	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	["admin::is-creator"]	2025-01-05 23:38:40.071	2025-01-05 23:38:40.071	2025-01-05 23:38:40.071	\N	\N	\N
 Â   47	s7gym39ufyzdzxdh9xsdtg4j	plugin::content-manager.explorer.delete	{}	api::about.about	{}	["admin::is-creator"]	2025-01-05 23:38:40.097	2025-01-05 23:38:40.097	2025-01-05 23:38:40.098	\N	\N	\N
 Æ   48	dhx5tos71gzc2fmjj3l5lelj	plugin::content-manager.explorer.delete	{}	api::article.article	{}	["admin::is-creator"]	2025-01-05 23:38:40.132	2025-01-05 23:38:40.132	2025-01-05 23:38:40.132	\N	\N	\N
 Ä   49	dh6w45iccc1gcb695o4dnee6	plugin::content-manager.explorer.delete	{}	api::author.author	{}	["admin::is-creator"]	2025-01-05 23:38:40.165	2025-01-05 23:38:40.165	2025-01-05 23:38:40.165	\N	\N	\N
 È   50	jmsfl9d5l2oh1eu1oxxg5zub	plugin::content-manager.explorer.delete	{}	api::category.category	{}	["admin::is-creator"]	2025-01-05 23:38:40.198	2025-01-05 23:38:40.198	2025-01-05 23:38:40.199	\N	\N	\N
 Ä   51	kww4cv8q0l7d2ysqcmkl8xs6	plugin::content-manager.explorer.delete	{}	api::global.global	{}	["admin::is-creator"]	2025-01-05 23:38:40.229	2025-01-05 23:38:40.229	2025-01-05 23:38:40.229	\N	\N	\N
    52	z1qyywfh78zl3jy2eiihuu3i	plugin::upload.read	{}	\N	{}	["admin::is-creator"]	2025-01-05 23:38:40.26	2025-01-05 23:38:40.26	2025-01-05 23:38:40.26	\N	\N	\N
    53	qe5ofia88cryszv97mip97k1	plugin::upload.configure-view	{}	\N	{}	[]	2025-01-05 23:38:40.303	2025-01-05 23:38:40.303	2025-01-05 23:38:40.304	\N	\N	\N
    54	t6fy49mrf4vprukgjipgev5w	plugin::upload.assets.create	{}	\N	{}	[]	2025-01-05 23:38:40.381	2025-01-05 23:38:40.381	2025-01-05 23:38:40.381	\N	\N	\N
 ©   55	lm7a1bkldt6tvo37bqmvcot4	plugin::upload.assets.update	{}	\N	{}	["admin::is-creator"]	2025-01-05 23:38:40.413	2025-01-05 23:38:40.413	2025-01-05 23:38:40.413	\N	\N	\N
    56	r4ntpbfwwhjz6r201bxyp2v4	plugin::upload.assets.download	{}	\N	{}	[]	2025-01-05 23:38:40.45	2025-01-05 23:38:40.45	2025-01-05 23:38:40.45	\N	\N	\N
    57	zfrfqi7dlekww1pgbaoxodig	plugin::upload.assets.copy-link	{}	\N	{}	[]	2025-01-05 23:38:40.481	2025-01-05 23:38:40.481	2025-01-05 23:38:40.482	\N	\N	\N
 Ì   59	alutrqg7rms9b6bgukk1d3t9	plugin::content-manager.explorer.create	{}	api::about.about	{"fields": ["title", "blocks"]}	[]	2025-01-05 23:38:40.613	2025-01-05 23:38:40.613	2025-01-05 23:38:40.613	\N	\N	\N
   60	xdawey3letsicjs4ji0bjk4p	plugin::content-manager.explorer.create	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "author", "category", "blocks"]}	[]	2025-01-05 23:38:40.647	2025-01-05 23:38:40.647	2025-01-05 23:38:40.647	\N	\N	\N
 â   61	jlhnh5ud038hdsjtgpsdo2pa	plugin::content-manager.explorer.create	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	[]	2025-01-05 23:38:40.678	2025-01-05 23:38:40.678	2025-01-05 23:38:40.678	\N	\N	\N
 ê   62	omtr2l2r3t1gdtftbj46g9cs	plugin::content-manager.explorer.create	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	[]	2025-01-05 23:38:40.713	2025-01-05 23:38:40.713	2025-01-05 23:38:40.713	\N	\N	\N
 4  63	l8xmlxjw2armdcxbffe8q8z2	plugin::content-manager.explorer.create	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	[]	2025-01-05 23:38:40.742	2025-01-05 23:38:40.742	2025-01-05 23:38:40.742	\N	\N	\N
 Ê   65	fx32e304j9qls1e7zp65570h	plugin::content-manager.explorer.read	{}	api::about.about	{"fields": ["title", "blocks"]}	[]	2025-01-05 23:38:40.803	2025-01-05 23:38:40.803	2025-01-05 23:38:40.803	\N	\N	\N
   66	cdy7rs10ua4wa2rflw4vk7g8	plugin::content-manager.explorer.read	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "author", "category", "blocks"]}	[]	2025-01-05 23:38:40.833	2025-01-05 23:38:40.833	2025-01-05 23:38:40.833	\N	\N	\N
 à   67	jwtbs46wyk8qw6ykd6xsli25	plugin::content-manager.explorer.read	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	[]	2025-01-05 23:38:40.865	2025-01-05 23:38:40.865	2025-01-05 23:38:40.865	\N	\N	\N
 è   68	h8gavaea73sm074sz8cjk4wx	plugin::content-manager.explorer.read	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	[]	2025-01-05 23:38:40.895	2025-01-05 23:38:40.895	2025-01-05 23:38:40.895	\N	\N	\N
 2  69	b3hji2fqr1fh9zghhlijw6al	plugin::content-manager.explorer.read	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	[]	2025-01-05 23:38:40.928	2025-01-05 23:38:40.928	2025-01-05 23:38:40.928	\N	\N	\N
 Ì   71	aa6ys2ughtyzxijbp3bvp8hi	plugin::content-manager.explorer.update	{}	api::about.about	{"fields": ["title", "blocks"]}	[]	2025-01-05 23:38:41.014	2025-01-05 23:38:41.014	2025-01-05 23:38:41.015	\N	\N	\N
   72	a7qy7rllpmbznoy0ead1p5il	plugin::content-manager.explorer.update	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "author", "category", "blocks"]}	[]	2025-01-05 23:38:41.045	2025-01-05 23:38:41.045	2025-01-05 23:38:41.046	\N	\N	\N
 â   73	azhe5wtdsjc9pw0a7o7n5buv	plugin::content-manager.explorer.update	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	[]	2025-01-05 23:38:41.075	2025-01-05 23:38:41.075	2025-01-05 23:38:41.076	\N	\N	\N
 ê   74	pv2dyhlhm4c8ra5yvm1bkyos	plugin::content-manager.explorer.update	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	[]	2025-01-05 23:38:41.106	2025-01-05 23:38:41.106	2025-01-05 23:38:41.106	\N	\N	\N
 4  75	gbj1tz9zlhtj1fuq25l9xk3q	plugin::content-manager.explorer.update	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	[]	2025-01-05 23:38:41.136	2025-01-05 23:38:41.136	2025-01-05 23:38:41.137	\N	\N	\N
 ½   76	a9oxxfec4ok6bjkj4290h1s9	plugin::content-manager.explorer.delete	{}	plugin::users-permissions.user	{}	[]	2025-01-05 23:38:41.168	2025-01-05 23:38:41.168	2025-01-05 23:38:41.168	\N	\N	\N
 ¯   77	umn9iwjn71xky6i6khfip0zx	plugin::content-manager.explorer.delete	{}	api::about.about	{}	[]	2025-01-05 23:38:41.199	2025-01-05 23:38:41.199	2025-01-05 23:38:41.199	\N	\N	\N
 ³   78	blfad39l61fhxubei4p2ok7n	plugin::content-manager.explorer.delete	{}	api::article.article	{}	[]	2025-01-05 23:38:41.228	2025-01-05 23:38:41.228	2025-01-05 23:38:41.228	\N	\N	\N
 ±   79	zvi7yz5h1fh9b8o3axchd7lz	plugin::content-manager.explorer.delete	{}	api::author.author	{}	[]	2025-01-05 23:38:41.258	2025-01-05 23:38:41.258	2025-01-05 23:38:41.258	\N	\N	\N
 µ   80	dddmgh7fac82tsbqh162r8qu	plugin::content-manager.explorer.delete	{}	api::category.category	{}	[]	2025-01-05 23:38:41.286	2025-01-05 23:38:41.286	2025-01-05 23:38:41.286	\N	\N	\N
 ±   81	uz8h1nqukocf42tub8sqy14q	plugin::content-manager.explorer.delete	{}	api::global.global	{}	[]	2025-01-05 23:38:41.317	2025-01-05 23:38:41.317	2025-01-05 23:38:41.317	\N	\N	\N
 ¾   82	we0bddhybs3cnplygicg12w4	plugin::content-manager.explorer.publish	{}	plugin::users-permissions.user	{}	[]	2025-01-05 23:38:41.349	2025-01-05 23:38:41.349	2025-01-05 23:38:41.349	\N	\N	\N
 ­   83	eybml90qk4k1p7tpq9xyxif3	plugin::content-manager.explorer.publish	{}	api::about.about	{}	[]	2025-01-05 23:38:41.38	2025-01-05 23:38:41.38	2025-01-05 23:38:41.38	\N	\N	\N
 ±   84	whcms5km81hgueehhapsf5pn	plugin::content-manager.explorer.publish	{}	api::article.article	{}	[]	2025-01-05 23:38:41.42	2025-01-05 23:38:41.42	2025-01-05 23:38:41.42	\N	\N	\N
 ²   85	apg8kc2gx7vbiqh2pm9igxal	plugin::content-manager.explorer.publish	{}	api::author.author	{}	[]	2025-01-05 23:38:41.447	2025-01-05 23:38:41.447	2025-01-05 23:38:41.448	\N	\N	\N
 ¶   86	hrod8xbgzsmntmbq8fe6hmw4	plugin::content-manager.explorer.publish	{}	api::category.category	{}	[]	2025-01-05 23:38:41.477	2025-01-05 23:38:41.477	2025-01-05 23:38:41.477	\N	\N	\N
 ²   87	g9bhpyfffwnlpffzj2f2oqkp	plugin::content-manager.explorer.publish	{}	api::global.global	{}	[]	2025-01-05 23:38:41.508	2025-01-05 23:38:41.508	2025-01-05 23:38:41.508	\N	\N	\N
 ­   88	o7sdgqfn8t7hp8al744glgen	plugin::content-manager.single-types.configure-view	{}	\N	{}	[]	2025-01-05 23:38:41.542	2025-01-05 23:38:41.542	2025-01-05 23:38:41.542	\N	\N	\N
 ±   89	ciwuyw4zt8wxmw4i9289tn97	plugin::content-manager.collection-types.configure-view	{}	\N	{}	[]	2025-01-05 23:38:41.579	2025-01-05 23:38:41.579	2025-01-05 23:38:41.579	\N	\N	\N
 ­   90	h3mmnek1bri9v0qprvwmpa8m	plugin::content-manager.components.configure-layout	{}	\N	{}	[]	2025-01-05 23:38:41.609	2025-01-05 23:38:41.609	2025-01-05 23:38:41.609	\N	\N	\N
    91	hlojdtljzmstm5hgfpmpf9pg	plugin::content-type-builder.read	{}	\N	{}	[]	2025-01-05 23:38:41.643	2025-01-05 23:38:41.643	2025-01-05 23:38:41.643	\N	\N	\N
    92	lvbn72ug7sk0s7v3o4vqfmdk	plugin::email.settings.read	{}	\N	{}	[]	2025-01-05 23:38:41.672	2025-01-05 23:38:41.672	2025-01-05 23:38:41.672	\N	\N	\N
    93	okn0gt2966xteukcsu06wftv	plugin::upload.read	{}	\N	{}	[]	2025-01-05 23:38:41.705	2025-01-05 23:38:41.705	2025-01-05 23:38:41.706	\N	\N	\N
    94	ald8dro19vz3fnq83vblvkck	plugin::upload.assets.create	{}	\N	{}	[]	2025-01-05 23:38:41.735	2025-01-05 23:38:41.735	2025-01-05 23:38:41.735	\N	\N	\N
    95	gtghlmtk7lxjcb6mgwggmhtc	plugin::upload.assets.update	{}	\N	{}	[]	2025-01-05 23:38:41.766	2025-01-05 23:38:41.766	2025-01-05 23:38:41.766	\N	\N	\N
    96	gx75bn1dhah3va5dndv7701a	plugin::upload.assets.download	{}	\N	{}	[]	2025-01-05 23:38:41.802	2025-01-05 23:38:41.802	2025-01-05 23:38:41.803	\N	\N	\N
    97	qyryxow1y1y9euilsd79jyj3	plugin::upload.assets.copy-link	{}	\N	{}	[]	2025-01-05 23:38:41.831	2025-01-05 23:38:41.831	2025-01-05 23:38:41.832	\N	\N	\N
    98	eo4boo9as5yvkc3m2jjx5ivi	plugin::upload.configure-view	{}	\N	{}	[]	2025-01-05 23:38:41.868	2025-01-05 23:38:41.868	2025-01-05 23:38:41.868	\N	\N	\N
    99	xj9i22i94anap7n8n0ilmtd9	plugin::upload.settings.read	{}	\N	{}	[]	2025-01-05 23:38:41.902	2025-01-05 23:38:41.902	2025-01-05 23:38:41.902	\N	\N	\N
    100	eufp9m000s5j5t7asf26qvxo	plugin::i18n.locale.create	{}	\N	{}	[]	2025-01-05 23:38:41.933	2025-01-05 23:38:41.933	2025-01-05 23:38:41.933	\N	\N	\N
    101	eb9wtn3pzf2js4pf0leteucu	plugin::i18n.locale.read	{}	\N	{}	[]	2025-01-05 23:38:41.965	2025-01-05 23:38:41.965	2025-01-05 23:38:41.965	\N	\N	\N
    102	wdrjck8q1ve5r6eoji88ya88	plugin::i18n.locale.update	{}	\N	{}	[]	2025-01-05 23:38:41.995	2025-01-05 23:38:41.995	2025-01-05 23:38:41.995	\N	\N	\N
    103	tu4yea7bbb8i0n6a3qlqtclb	plugin::i18n.locale.delete	{}	\N	{}	[]	2025-01-05 23:38:42.025	2025-01-05 23:38:42.025	2025-01-05 23:38:42.025	\N	\N	\N
 ¡   104	i0rk9fbjfa98y6zzjlmcql05	plugin::users-permissions.roles.create	{}	\N	{}	[]	2025-01-05 23:38:42.054	2025-01-05 23:38:42.054	2025-01-05 23:38:42.054	\N	\N	\N
    105	jhgfenqom24sam74gykl0gdj	plugin::users-permissions.roles.read	{}	\N	{}	[]	2025-01-05 23:38:42.084	2025-01-05 23:38:42.084	2025-01-05 23:38:42.084	\N	\N	\N
 ¡   106	dkbxkm994ntptcqbzbbqo1nv	plugin::users-permissions.roles.update	{}	\N	{}	[]	2025-01-05 23:38:42.113	2025-01-05 23:38:42.113	2025-01-05 23:38:42.113	\N	\N	\N
    107	hbfslz9md25m321ai313bygw	plugin::users-permissions.roles.delete	{}	\N	{}	[]	2025-01-05 23:38:42.14	2025-01-05 23:38:42.14	2025-01-05 23:38:42.14	\N	\N	\N
 £   108	h31329quw7q7jwrj0fdggnqx	plugin::users-permissions.providers.read	{}	\N	{}	[]	2025-01-05 23:38:42.172	2025-01-05 23:38:42.172	2025-01-05 23:38:42.172	\N	\N	\N
 ¥   109	ddqu4pg2j60b7k83d0rv8gaw	plugin::users-permissions.providers.update	{}	\N	{}	[]	2025-01-05 23:38:42.204	2025-01-05 23:38:42.204	2025-01-05 23:38:42.204	\N	\N	\N
 ©   110	ur9gx5gpi8ngemjsq2u8f63h	plugin::users-permissions.email-templates.read	{}	\N	{}	[]	2025-01-05 23:38:42.235	2025-01-05 23:38:42.235	2025-01-05 23:38:42.235	\N	\N	\N
 «   111	gbe0grrfkcefjm5yu2xsvklt	plugin::users-permissions.email-templates.update	{}	\N	{}	[]	2025-01-05 23:38:42.266	2025-01-05 23:38:42.266	2025-01-05 23:38:42.266	\N	\N	\N
 «   112	ab99ob64hhch1wmkqgbyypr3	plugin::users-permissions.advanced-settings.read	{}	\N	{}	[]	2025-01-05 23:38:42.296	2025-01-05 23:38:42.296	2025-01-05 23:38:42.296	\N	\N	\N
 ­   113	h3iif2qvsyv3nkcok53687ev	plugin::users-permissions.advanced-settings.update	{}	\N	{}	[]	2025-01-05 23:38:42.325	2025-01-05 23:38:42.325	2025-01-05 23:38:42.325	\N	\N	\N
    114	p3ki6etez457pzr67ajq008l	admin::marketplace.read	{}	\N	{}	[]	2025-01-05 23:38:42.354	2025-01-05 23:38:42.354	2025-01-05 23:38:42.354	\N	\N	\N
    115	hex4y8h250r7prne8oea5t23	admin::webhooks.create	{}	\N	{}	[]	2025-01-05 23:38:42.385	2025-01-05 23:38:42.385	2025-01-05 23:38:42.385	\N	\N	\N
    116	lcig6r6zzxi11w183pqwsqv9	admin::webhooks.read	{}	\N	{}	[]	2025-01-05 23:38:42.414	2025-01-05 23:38:42.414	2025-01-05 23:38:42.414	\N	\N	\N
    117	jlpwro9m6z3d0blfc52xj4x7	admin::webhooks.update	{}	\N	{}	[]	2025-01-05 23:38:42.443	2025-01-05 23:38:42.443	2025-01-05 23:38:42.443	\N	\N	\N
    118	ogvigs8yd6led4hole51ffq4	admin::webhooks.delete	{}	\N	{}	[]	2025-01-05 23:38:42.474	2025-01-05 23:38:42.474	2025-01-05 23:38:42.474	\N	\N	\N
    119	cayo9adi7ndn4fkw8ogy3ga1	admin::users.create	{}	\N	{}	[]	2025-01-05 23:38:42.508	2025-01-05 23:38:42.508	2025-01-05 23:38:42.508	\N	\N	\N
    120	t0tfanjma25ql7hbizkurzyo	admin::users.read	{}	\N	{}	[]	2025-01-05 23:38:42.536	2025-01-05 23:38:42.536	2025-01-05 23:38:42.536	\N	\N	\N
    121	mcy5kuhn1ivukl0yvgujj5ol	admin::users.update	{}	\N	{}	[]	2025-01-05 23:38:42.57	2025-01-05 23:38:42.57	2025-01-05 23:38:42.57	\N	\N	\N
    122	s8pkqud9etpia1d61qqo1d3m	admin::users.delete	{}	\N	{}	[]	2025-01-05 23:38:42.601	2025-01-05 23:38:42.601	2025-01-05 23:38:42.601	\N	\N	\N
    123	ru0kivkek92wspg1487g27hd	admin::roles.create	{}	\N	{}	[]	2025-01-05 23:38:42.634	2025-01-05 23:38:42.634	2025-01-05 23:38:42.635	\N	\N	\N
    124	ajnvvw11m8tzmtg1zoy8ni0l	admin::roles.read	{}	\N	{}	[]	2025-01-05 23:38:42.665	2025-01-05 23:38:42.665	2025-01-05 23:38:42.666	\N	\N	\N
    125	ntqzpp6xro5r66c262a9zifh	admin::roles.update	{}	\N	{}	[]	2025-01-05 23:38:42.695	2025-01-05 23:38:42.695	2025-01-05 23:38:42.695	\N	\N	\N
    126	sbgd5j2irkd6vx9jkztgb5oq	admin::roles.delete	{}	\N	{}	[]	2025-01-05 23:38:42.725	2025-01-05 23:38:42.725	2025-01-05 23:38:42.725	\N	\N	\N
    127	k0zvmnbd3kq7l3km4qauz06u	admin::api-tokens.access	{}	\N	{}	[]	2025-01-05 23:38:42.755	2025-01-05 23:38:42.755	2025-01-05 23:38:42.755	\N	\N	\N
    128	edqllthfc4ju5n69lk1vrq33	admin::api-tokens.create	{}	\N	{}	[]	2025-01-05 23:38:42.784	2025-01-05 23:38:42.784	2025-01-05 23:38:42.784	\N	\N	\N
    129	thjayqzxq9kvno4si9lfxjxe	admin::api-tokens.read	{}	\N	{}	[]	2025-01-05 23:38:42.814	2025-01-05 23:38:42.814	2025-01-05 23:38:42.814	\N	\N	\N
    130	jlxqza4vv0kuceh69bh7js6q	admin::api-tokens.update	{}	\N	{}	[]	2025-01-05 23:38:42.843	2025-01-05 23:38:42.843	2025-01-05 23:38:42.843	\N	\N	\N
    131	faas7v6o3b6m8tqs01uedlno	admin::api-tokens.regenerate	{}	\N	{}	[]	2025-01-05 23:38:42.873	2025-01-05 23:38:42.873	2025-01-05 23:38:42.873	\N	\N	\N
    132	ko4zw94m9yzvhcnb9h3u9pkn	admin::api-tokens.delete	{}	\N	{}	[]	2025-01-05 23:38:42.907	2025-01-05 23:38:42.907	2025-01-05 23:38:42.907	\N	\N	\N
    133	ffkpqcf4ugh3tno6a5fzrr4f	admin::project-settings.update	{}	\N	{}	[]	2025-01-05 23:38:42.945	2025-01-05 23:38:42.945	2025-01-05 23:38:42.945	\N	\N	\N
    134	wnip5orkk2d8u36gijn851z2	admin::project-settings.read	{}	\N	{}	[]	2025-01-05 23:38:42.988	2025-01-05 23:38:42.988	2025-01-05 23:38:42.988	\N	\N	\N
    135	twxkbaqajlgbnmagbvmr65pi	admin::transfer.tokens.access	{}	\N	{}	[]	2025-01-05 23:38:43.017	2025-01-05 23:38:43.017	2025-01-05 23:38:43.018	\N	\N	\N
    136	yeyhkppiymwylaatxg6pyyug	admin::transfer.tokens.create	{}	\N	{}	[]	2025-01-05 23:38:43.045	2025-01-05 23:38:43.045	2025-01-05 23:38:43.046	\N	\N	\N
    137	ds6qx07ehw2lk6w9uv4961io	admin::transfer.tokens.read	{}	\N	{}	[]	2025-01-05 23:38:43.073	2025-01-05 23:38:43.073	2025-01-05 23:38:43.073	\N	\N	\N
    138	wubgj9jdlqqibekkpbjx3olx	admin::transfer.tokens.update	{}	\N	{}	[]	2025-01-05 23:38:43.107	2025-01-05 23:38:43.107	2025-01-05 23:38:43.107	\N	\N	\N
    139	qg2i2qumtimoxibm4v3u5gop	admin::transfer.tokens.regenerate	{}	\N	{}	[]	2025-01-05 23:38:43.141	2025-01-05 23:38:43.141	2025-01-05 23:38:43.141	\N	\N	\N
    140	cs8xjlsjk9d2rgu6b76dqx9y	admin::transfer.tokens.delete	{}	\N	{}	[]	2025-01-05 23:38:43.173	2025-01-05 23:38:43.173	2025-01-05 23:38:43.173	\N	\N	\N
    141	tssqhbvvdp8z6zcika2ce5yb	plugin::upload.assets.create	{}	\N	{}	[]	2025-01-06 22:59:51.655	2025-01-06 22:59:51.655	2025-01-06 22:59:51.656	\N	\N	\N
    142	ueolenf4ljupejmu9w4hrfql	plugin::upload.assets.update	{}	\N	{}	[]	2025-01-06 22:59:51.851	2025-01-06 22:59:51.851	2025-01-06 22:59:51.851	\N	\N	\N
 º   146	ik5mxynwl10nqrhnfcgh8pra	plugin::content-manager.explorer.delete	{}	api::job.job	{"locales": ["en"]}	[]	2025-01-06 23:43:02.96	2025-01-06 23:43:02.96	2025-01-06 23:43:02.96	\N	\N	\N
 ¾   147	q2jyg8pfevidfzqdb526mthd	plugin::content-manager.explorer.publish	{}	api::job.job	{"locales": ["en"]}	[]	2025-01-06 23:43:02.988	2025-01-06 23:43:02.988	2025-01-06 23:43:02.988	\N	\N	\N
 @  154	uyi038a8lca16dqy69qkfvnc	plugin::content-manager.explorer.create	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2025-01-07 01:07:17.275	2025-01-07 01:07:17.275	2025-01-07 01:07:17.276	\N	\N	\N
 Ú   155	nrgae3lkzbxc031m2jms5ht7	plugin::content-manager.explorer.create	{}	api::job.job	{"fields": ["type", "title"], "locales": ["en"]}	[]	2025-01-07 01:07:17.322	2025-01-07 01:07:17.322	2025-01-07 01:07:17.322	\N	\N	\N
 >  156	cnv31yfqdizca1qxcepnj6z6	plugin::content-manager.explorer.read	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2025-01-07 01:07:17.355	2025-01-07 01:07:17.355	2025-01-07 01:07:17.355	\N	\N	\N
 Ø   157	kyx9pjn2nqxw36kr6acee9c4	plugin::content-manager.explorer.read	{}	api::job.job	{"fields": ["type", "title"], "locales": ["en"]}	[]	2025-01-07 01:07:17.385	2025-01-07 01:07:17.385	2025-01-07 01:07:17.385	\N	\N	\N
 @  158	bzasaiqwlt92hkd3a28pgknl	plugin::content-manager.explorer.update	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2025-01-07 01:07:17.423	2025-01-07 01:07:17.423	2025-01-07 01:07:17.423	\N	\N	\N
 Ú   159	c23iu6054a5wrhyjp29dprzx	plugin::content-manager.explorer.update	{}	api::job.job	{"fields": ["type", "title"], "locales": ["en"]}	[]	2025-01-07 01:07:17.509	2025-01-07 01:07:17.509	2025-01-07 01:07:17.509	\N	\N	\N
 í   160	vtjowm7gcmpg6w0u9s2ymfdb	plugin::content-manager.explorer.create	{}	api::job.job	{"fields": ["type", "title"], "locales": ["en"]}	["admin::is-creator"]	2025-01-07 01:08:17.006	2025-01-07 01:08:17.006	2025-01-07 01:08:17.006	\N	\N	\N
 ë   161	axqfhydzd6k10efkjowww10n	plugin::content-manager.explorer.read	{}	api::job.job	{"fields": ["type", "title"], "locales": ["en"]}	["admin::is-creator"]	2025-01-07 01:08:17.075	2025-01-07 01:08:17.075	2025-01-07 01:08:17.076	\N	\N	\N
 í   162	vczaihi3ak5nlt170egngief	plugin::content-manager.explorer.update	{}	api::job.job	{"fields": ["type", "title"], "locales": ["en"]}	["admin::is-creator"]	2025-01-07 01:08:17.136	2025-01-07 01:08:17.136	2025-01-07 01:08:17.137	\N	\N	\N
 Ð   163	sfhyc2yhmff54t63d3l34rgn	plugin::content-manager.explorer.delete	{}	api::job.job	{"locales": ["en"]}	["admin::is-creator"]	2025-01-07 01:08:17.172	2025-01-07 01:08:17.172	2025-01-07 01:08:17.173	\N	\N	\N
 Ñ   164	k5mkfwo4sm910hf1alnphqnq	plugin::content-manager.explorer.publish	{}	api::job.job	{"locales": ["en"]}	["admin::is-creator"]	2025-01-07 01:08:17.201	2025-01-07 01:08:17.201	2025-01-07 01:08:17.201	\N	\N	\N
    \.


      ¬      1	1	2	1
    2	2	2	2
    3	3	2	3
    4	4	2	4
    5	5	2	5
    6	6	2	6
    7	7	2	7
    8	8	2	8
    9	9	2	9
    10	10	2	10
    11	11	2	11
    12	12	2	12
    13	13	2	13
    14	14	2	14
    15	15	2	15
    16	16	2	16
    17	17	2	17
    18	18	2	18
    19	19	2	19
    20	20	2	20
    21	21	2	21
    22	22	2	22
    23	23	2	23
    24	24	2	24
    25	25	2	25
    26	26	2	26
    27	27	2	27
    28	28	2	28
    29	29	2	29
    30	30	2	30
    31	31	2	31
 
   32	32	3	1
 
   33	33	3	2
 
   34	34	3	3
 
   35	35	3	4
 
   36	36	3	5
 
   37	37	3	6
 
   38	38	3	7
 
   39	39	3	8
 
   40	40	3	9
    41	41	3	10
    42	42	3	11
    43	43	3	12
    44	44	3	13
    45	45	3	14
    46	46	3	15
    47	47	3	16
    48	48	3	17
    49	49	3	18
    50	50	3	19
    51	51	3	20
    52	52	3	21
    53	53	3	22
    54	54	3	23
    55	55	3	24
    56	56	3	25
    57	57	3	26
 
   59	59	1	2
 
   60	60	1	3
 
   61	61	1	4
 
   62	62	1	5
 
   63	63	1	6
 
   65	65	1	8
 
   66	66	1	9
    67	67	1	10
    68	68	1	11
    69	69	1	12
    71	71	1	14
    72	72	1	15
    73	73	1	16
    74	74	1	17
    75	75	1	18
    76	76	1	19
    77	77	1	20
    78	78	1	21
    79	79	1	22
    80	80	1	23
    81	81	1	24
    82	82	1	25
    83	83	1	26
    84	84	1	27
    85	85	1	28
    86	86	1	29
    87	87	1	30
    88	88	1	31
    89	89	1	32
    90	90	1	33
    91	91	1	34
    92	92	1	35
    93	93	1	36
    94	94	1	37
    95	95	1	38
    96	96	1	39
    97	97	1	40
    98	98	1	41
    99	99	1	42
    100	100	1	43
    101	101	1	44
    102	102	1	45
    103	103	1	46
    104	104	1	47
    105	105	1	48
    106	106	1	49
    107	107	1	50
    108	108	1	51
    109	109	1	52
    110	110	1	53
    111	111	1	54
    112	112	1	55
    113	113	1	56
    114	114	1	57
    115	115	1	58
    116	116	1	59
    117	117	1	60
    118	118	1	61
    119	119	1	62
    120	120	1	63
    121	121	1	64
    122	122	1	65
    123	123	1	66
    124	124	1	67
    125	125	1	68
    126	126	1	69
    127	127	1	70
    128	128	1	71
    129	129	1	72
    130	130	1	73
    131	131	1	74
    132	132	1	75
    133	133	1	76
    134	134	1	77
    135	135	1	78
    136	136	1	79
    137	137	1	80
    138	138	1	81
    139	139	1	82
    140	140	1	83
    141	141	4	1
    142	142	4	2
    146	146	1	87
    147	147	1	88
    154	154	1	89
    155	155	1	90
    156	156	1	91
    157	157	1	92
    158	158	1	93
    159	159	1	94
    160	160	4	3
    161	161	4	4
    162	162	4	5
    163	163	4	6
    164	164	4	7
    \.


      |   É   1	mz1r05hlycbbl7s9n2d0w6va	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2025-01-05 23:38:38.517	2025-01-05 23:38:38.517	2025-01-05 23:38:38.517	\N	\N	\N
 É   2	o3z8ut4zithpnf3l0g8za9r9	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2025-01-05 23:38:38.573	2025-01-05 23:38:38.573	2025-01-05 23:38:38.573	\N	\N	\N
 ³   3	gpoucm0ar7j3ud1lheo2i3x4	Author	strapi-author	Authors can manage the content they have created.	2025-01-05 23:38:38.594	2025-01-05 23:38:38.594	2025-01-05 23:38:38.594	\N	\N	\N
 Ú   4	smhhq4rdrpk3835e7lvqn83u	Customer	customer-m5kzoupu	Customer that need to hire Service Provider to do a job\nCreated January 6th, 2025	2025-01-06 22:59:51.426	2025-01-07 01:08:16.844	2025-01-06 22:59:51.432	\N	\N	\N
 á   5	cifoyqz63rl2v0qsi4rfr5iv	Service Provider	service-provider-m5kzq06w	Service Provider that completes task for money\nCreated January 6th, 2025	2025-01-06 23:00:45.176	2025-01-07 01:09:16.104	2025-01-06 23:00:45.177	\N	\N	\N
    \.


      z   ß   1	ktfrg4d4t92x98zwv4r5fxv0	JoJo	G	\N	jojo5544+strapilocal@gmail.com	$2a$10$0kHzses3l9pgsWIT4DI0NO99YroaqysKprre/iZ1ndt301MUiadJC	\N	\N	t	f	\N	2025-01-06 00:29:52.593	2025-01-06 00:29:52.593	2025-01-06 00:29:52.594	\N	\N	\N
    \.


      ®   
   1	1	1	1	1
    \.


      n   È   1	chzb2v5ddf2os38qheatqtyr	The internet's Own boy	Follow the story of Aaron Swartz, the boy who could change the world	the-internet-s-own-boy	2025-01-05 23:38:46.41	2025-01-05 23:38:46.41	\N	\N	\N	\N
 Ö   2	g9fjrt3ql8xm3qa0mbfi71z5	This shrimp is awesome	Mantis shrimps, or stomatopods, are marine crustaceans of the order Stomatopoda.	this-shrimp-is-awesome	2025-01-05 23:38:46.627	2025-01-05 23:38:46.627	\N	\N	\N	\N
 Ý   3	qwmoofurnv0vmanwp1uy1mrm	A bug is becoming a meme on the internet	How a bug on MySQL is becoming a meme on the internet	a-bug-is-becoming-a-meme-on-the-internet	2025-01-05 23:38:47.04	2025-01-05 23:38:47.04	\N	\N	\N	\N
    4	u52jte9tphlleohi1pkfo8l1	Beautiful picture	Description of a beautiful picture	beautiful-picture	2025-01-05 23:38:47.51	2025-01-05 23:38:47.51	\N	\N	\N	\N
 º   5	bqwlvidqenvlqydpjl3shqul	What's inside a Black Hole	Maybe the answer is in this article, or not...	what-s-inside-a-black-hole	2025-01-05 23:38:47.68	2025-01-05 23:38:47.68	\N	\N	\N	\N
 ò   6	qwmoofurnv0vmanwp1uy1mrm	A bug is becoming a meme on the internet	How a bug on MySQL is becoming a meme on the internet	a-bug-is-becoming-a-meme-on-the-internet	2025-01-05 23:38:47.04	2025-01-05 23:38:47.04	2025-01-06 01:39:28.258	\N	\N	\N
 ±   7	u52jte9tphlleohi1pkfo8l1	Beautiful picture	Description of a beautiful picture	beautiful-picture	2025-01-05 23:38:47.51	2025-01-05 23:38:47.51	2025-01-06 01:39:28.261	\N	\N	\N
 Ý   8	chzb2v5ddf2os38qheatqtyr	The internet's Own boy	Follow the story of Aaron Swartz, the boy who could change the world	the-internet-s-own-boy	2025-01-05 23:38:46.41	2025-01-05 23:38:46.41	2025-01-06 01:39:28.262	\N	\N	\N
    \.


      ¨      1	1	1	1
    2	2	1	2
    3	3	2	1
    4	4	2	2
    5	5	2	3
    6	6	2	4
    7	7	2	4
    8	8	1	3
    \.


      ª      1	1	5	1
    2	2	4	1
    3	3	2	1
    4	4	4	2
    5	5	1	1
    6	6	2	2
    7	7	4	3
    8	8	5	2
    \.


      l       1	1	1	shared.rich-text	blocks	1
    2	1	1	shared.quote	blocks	2
    3	1	1	shared.media	blocks	3
     4	1	2	shared.rich-text	blocks	4
    5	1	1	shared.slider	blocks	5
     6	2	3	shared.rich-text	blocks	1
    7	2	2	shared.quote	blocks	2
    8	2	2	shared.media	blocks	3
     9	2	4	shared.rich-text	blocks	4
    10	2	2	shared.slider	blocks	5
 !   11	3	5	shared.rich-text	blocks	1
    12	3	3	shared.quote	blocks	2
    13	3	3	shared.media	blocks	3
 !   14	3	6	shared.rich-text	blocks	4
    15	3	3	shared.slider	blocks	5
 !   16	4	7	shared.rich-text	blocks	1
    17	4	4	shared.quote	blocks	2
    18	4	4	shared.media	blocks	3
 !   19	4	8	shared.rich-text	blocks	4
    20	4	4	shared.slider	blocks	5
 !   21	5	9	shared.rich-text	blocks	1
    22	5	5	shared.quote	blocks	2
    23	5	5	shared.media	blocks	3
 "   24	5	10	shared.rich-text	blocks	4
    25	5	5	shared.slider	blocks	5
 "   26	6	12	shared.rich-text	blocks	1
    27	6	7	shared.quote	blocks	2
    28	6	7	shared.media	blocks	3
 "   29	6	13	shared.rich-text	blocks	4
    30	6	6	shared.slider	blocks	5
 "   31	7	14	shared.rich-text	blocks	1
    32	7	8	shared.quote	blocks	2
    33	7	8	shared.media	blocks	3
 "   34	7	15	shared.rich-text	blocks	4
    35	7	7	shared.slider	blocks	5
 "   36	8	16	shared.rich-text	blocks	1
    37	8	9	shared.quote	blocks	2
    38	8	9	shared.media	blocks	3
 "   39	8	17	shared.rich-text	blocks	4
    40	8	8	shared.slider	blocks	5
    \.


      p      1	j6de7czzmscj6f011ue3btqz	David Doe	daviddoe@strapi.io	2025-01-05 23:38:43.895	2025-01-05 23:38:43.895	2025-01-05 23:38:43.891	\N	\N	\N
    2	ikol124ihciu2sr9h7ho5i7i	Sarah Baker	sarahbaker@strapi.io	2025-01-05 23:38:44.332	2025-01-05 23:38:44.332	2025-01-05 23:38:44.329	\N	\N	\N
    \.


      r   y   1	p4pfws1goi0urb5nm7gdembl	news	news	\N	2025-01-05 23:38:43.384	2025-01-05 23:38:43.384	2025-01-05 23:38:43.376	\N	\N	\N
 y   2	zmj67uwkmxvrf9xw62r6ml33	tech	tech	\N	2025-01-05 23:38:43.408	2025-01-05 23:38:43.408	2025-01-05 23:38:43.403	\N	\N	\N
 w   3	n7xc9h5uqrjvdirk53j96qpm	food	food	\N	2025-01-05 23:38:43.43	2025-01-05 23:38:43.43	2025-01-05 23:38:43.427	\N	\N	\N
 {   4	nwl9frxzi35fxz34bt5nbp4a	nature	nature	\N	2025-01-05 23:38:43.45	2025-01-05 23:38:43.45	2025-01-05 23:38:43.447	\N	\N	\N
 {   5	j5aiay202nw4at6gpvu7ecvd	story	story	\N	2025-01-05 23:38:43.469	2025-01-05 23:38:43.469	2025-01-05 23:38:43.466	\N	\N	\N
    \.


            1
    2
    3
    4
    5
    6
    7
    8
    9
    \.


         :   1	Thelonius Monk	You've got to dig it to dig it, you dig?
 :   2	Thelonius Monk	You've got to dig it to dig it, you dig?
 :   3	Thelonius Monk	You've got to dig it to dig it, you dig?
 :   4	Thelonius Monk	You've got to dig it to dig it, you dig?
 :   5	Thelonius Monk	You've got to dig it to dig it, you dig?
 :   6	Thelonius Monk	You've got to dig it to dig it, you dig?
 :   7	Thelonius Monk	You've got to dig it to dig it, you dig?
 :   8	Thelonius Monk	You've got to dig it to dig it, you dig?
 :   9	Thelonius Monk	You've got to dig it to dig it, you dig?
    \.


         s  1	## Probant \n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. \n\n## Abit sua\n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. 
 ^  2	## Spatiantia astra \n\nFoeda, medio silva *errandum*: onus formam munere. Mutata bibulis est auxiliare arces etiamnunc verbis virgineo Priamidas illa Thescelus, nam fit locis lucis auras. Exitus hospes gratulor ut pondere [speslimite](http://www.curas.io/figuram); quid habent, Avernales faciente de. Pervenit Ino sonabile supplex cognoscenti vires, Bacchumque errat miserarum venandi dignabere dedisti. Discrimina iuncosaque virgaque tot sine superest [fissus](http://quos.org/sitet.aspx). Non color esset potest non sumit, sed vix arserat. Nisi immo silva tantum pectusque quos pennis quisquam artus!
 s  3	## Probant \n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. \n\n## Abit sua\n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. 
 ^  4	## Spatiantia astra \n\nFoeda, medio silva *errandum*: onus formam munere. Mutata bibulis est auxiliare arces etiamnunc verbis virgineo Priamidas illa Thescelus, nam fit locis lucis auras. Exitus hospes gratulor ut pondere [speslimite](http://www.curas.io/figuram); quid habent, Avernales faciente de. Pervenit Ino sonabile supplex cognoscenti vires, Bacchumque errat miserarum venandi dignabere dedisti. Discrimina iuncosaque virgaque tot sine superest [fissus](http://quos.org/sitet.aspx). Non color esset potest non sumit, sed vix arserat. Nisi immo silva tantum pectusque quos pennis quisquam artus!
 s  5	## Probant \n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. \n\n## Abit sua\n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. 
 ^  6	## Spatiantia astra \n\nFoeda, medio silva *errandum*: onus formam munere. Mutata bibulis est auxiliare arces etiamnunc verbis virgineo Priamidas illa Thescelus, nam fit locis lucis auras. Exitus hospes gratulor ut pondere [speslimite](http://www.curas.io/figuram); quid habent, Avernales faciente de. Pervenit Ino sonabile supplex cognoscenti vires, Bacchumque errat miserarum venandi dignabere dedisti. Discrimina iuncosaque virgaque tot sine superest [fissus](http://quos.org/sitet.aspx). Non color esset potest non sumit, sed vix arserat. Nisi immo silva tantum pectusque quos pennis quisquam artus!
 s  7	## Probant \n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. \n\n## Abit sua\n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. 
 ^  8	## Spatiantia astra \n\nFoeda, medio silva *errandum*: onus formam munere. Mutata bibulis est auxiliare arces etiamnunc verbis virgineo Priamidas illa Thescelus, nam fit locis lucis auras. Exitus hospes gratulor ut pondere [speslimite](http://www.curas.io/figuram); quid habent, Avernales faciente de. Pervenit Ino sonabile supplex cognoscenti vires, Bacchumque errat miserarum venandi dignabere dedisti. Discrimina iuncosaque virgaque tot sine superest [fissus](http://quos.org/sitet.aspx). Non color esset potest non sumit, sed vix arserat. Nisi immo silva tantum pectusque quos pennis quisquam artus!
 s  9	## Probant \n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. \n\n## Abit sua\n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. 
 _  10	## Spatiantia astra \n\nFoeda, medio silva *errandum*: onus formam munere. Mutata bibulis est auxiliare arces etiamnunc verbis virgineo Priamidas illa Thescelus, nam fit locis lucis auras. Exitus hospes gratulor ut pondere [speslimite](http://www.curas.io/figuram); quid habent, Avernales faciente de. Pervenit Ino sonabile supplex cognoscenti vires, Bacchumque errat miserarum venandi dignabere dedisti. Discrimina iuncosaque virgaque tot sine superest [fissus](http://quos.org/sitet.aspx). Non color esset potest non sumit, sed vix arserat. Nisi immo silva tantum pectusque quos pennis quisquam artus!
 æ   11	## Dedit imago conspicuus cum capillis totidem inhibere\n\nLorem markdownum **rerum**, est limine: columbas: ab infelix hostem arbore nudis\ncrudelis. Videtur reliquit ambo ferrum dote sub amne fatis **illuc**, in magis,\nnec.
 t  12	## Probant \n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. \n\n## Abit sua\n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. 
 _  13	## Spatiantia astra \n\nFoeda, medio silva *errandum*: onus formam munere. Mutata bibulis est auxiliare arces etiamnunc verbis virgineo Priamidas illa Thescelus, nam fit locis lucis auras. Exitus hospes gratulor ut pondere [speslimite](http://www.curas.io/figuram); quid habent, Avernales faciente de. Pervenit Ino sonabile supplex cognoscenti vires, Bacchumque errat miserarum venandi dignabere dedisti. Discrimina iuncosaque virgaque tot sine superest [fissus](http://quos.org/sitet.aspx). Non color esset potest non sumit, sed vix arserat. Nisi immo silva tantum pectusque quos pennis quisquam artus!
 t  14	## Probant \n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. \n\n## Abit sua\n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. 
 _  15	## Spatiantia astra \n\nFoeda, medio silva *errandum*: onus formam munere. Mutata bibulis est auxiliare arces etiamnunc verbis virgineo Priamidas illa Thescelus, nam fit locis lucis auras. Exitus hospes gratulor ut pondere [speslimite](http://www.curas.io/figuram); quid habent, Avernales faciente de. Pervenit Ino sonabile supplex cognoscenti vires, Bacchumque errat miserarum venandi dignabere dedisti. Discrimina iuncosaque virgaque tot sine superest [fissus](http://quos.org/sitet.aspx). Non color esset potest non sumit, sed vix arserat. Nisi immo silva tantum pectusque quos pennis quisquam artus!
 t  16	## Probant \n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. \n\n## Abit sua\n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. 
 _  17	## Spatiantia astra \n\nFoeda, medio silva *errandum*: onus formam munere. Mutata bibulis est auxiliare arces etiamnunc verbis virgineo Priamidas illa Thescelus, nam fit locis lucis auras. Exitus hospes gratulor ut pondere [speslimite](http://www.curas.io/figuram); quid habent, Avernales faciente de. Pervenit Ino sonabile supplex cognoscenti vires, Bacchumque errat miserarum venandi dignabere dedisti. Discrimina iuncosaque virgaque tot sine superest [fissus](http://quos.org/sitet.aspx). Non color esset potest non sumit, sed vix arserat. Nisi immo silva tantum pectusque quos pennis quisquam artus!
    \.


            1	Page	A blog made with Strapi
    \.


            1
    2
    3
    4
    5
    6
    7
    8
    \.


      T   c  1	k92swahvkoq4h8qnni4sukv6	daviddoe@strapi	An image uploaded to Strapi called daviddoe@strapi	daviddoe@strapi	2418	2711	{"large": {"ext": ".jpeg", "url": "/uploads/large_daviddoe_strapi_d3c351d038.jpeg", "hash": "large_daviddoe_strapi_d3c351d038", "mime": "image/jpeg", "name": "large_daviddoe@strapi", "path": null, "size": 74.56, "width": 892, "height": 1000, "sizeInBytes": 74560}, "small": {"ext": ".jpeg", "url": "/uploads/small_daviddoe_strapi_d3c351d038.jpeg", "hash": "small_daviddoe_strapi_d3c351d038", "mime": "image/jpeg", "name": "small_daviddoe@strapi", "path": null, "size": 22.51, "width": 446, "height": 500, "sizeInBytes": 22509}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_daviddoe_strapi_d3c351d038.jpeg", "hash": "medium_daviddoe_strapi_d3c351d038", "mime": "image/jpeg", "name": "medium_daviddoe@strapi", "path": null, "size": 44.37, "width": 669, "height": 750, "sizeInBytes": 44372}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_daviddoe_strapi_d3c351d038.jpeg", "hash": "thumbnail_daviddoe_strapi_d3c351d038", "mime": "image/jpeg", "name": "thumbnail_daviddoe@strapi", "path": null, "size": 4.18, "width": 139, "height": 156, "sizeInBytes": 4175}}	daviddoe_strapi_d3c351d038	.jpeg	image/jpeg	587.69	/uploads/daviddoe_strapi_d3c351d038.jpeg	\N	local	\N	/	2025-01-05 23:38:43.831	2025-01-05 23:38:43.831	2025-01-05 23:38:43.833	\N	\N	\N
   2	ov66wyqzdatj2rslyrdf8902	sarahbaker@strapi	An image uploaded to Strapi called sarahbaker@strapi	sarahbaker@strapi	3321	2746	{"large": {"ext": ".jpeg", "url": "/uploads/large_sarahbaker_strapi_9cfda5effb.jpeg", "hash": "large_sarahbaker_strapi_9cfda5effb", "mime": "image/jpeg", "name": "large_sarahbaker@strapi", "path": null, "size": 101.98, "width": 1000, "height": 827, "sizeInBytes": 101978}, "small": {"ext": ".jpeg", "url": "/uploads/small_sarahbaker_strapi_9cfda5effb.jpeg", "hash": "small_sarahbaker_strapi_9cfda5effb", "mime": "image/jpeg", "name": "small_sarahbaker@strapi", "path": null, "size": 30.58, "width": 500, "height": 413, "sizeInBytes": 30578}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_sarahbaker_strapi_9cfda5effb.jpeg", "hash": "medium_sarahbaker_strapi_9cfda5effb", "mime": "image/jpeg", "name": "medium_sarahbaker@strapi", "path": null, "size": 61.37, "width": 750, "height": 620, "sizeInBytes": 61368}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_sarahbaker_strapi_9cfda5effb.jpeg", "hash": "thumbnail_sarahbaker_strapi_9cfda5effb", "mime": "image/jpeg", "name": "thumbnail_sarahbaker@strapi", "path": null, "size": 6.68, "width": 189, "height": 156, "sizeInBytes": 6681}}	sarahbaker_strapi_9cfda5effb	.jpeg	image/jpeg	795.13	/uploads/sarahbaker_strapi_9cfda5effb.jpeg	\N	local	\N	/	2025-01-05 23:38:44.288	2025-01-05 23:38:44.288	2025-01-05 23:38:44.288	\N	\N	\N
 Ø  3	na2juvyyarrrr4eu6ipyey6g	the-internet-s-own-boy	An image uploaded to Strapi called the-internet-s-own-boy	the-internet-s-own-boy	1200	707	{"large": {"ext": ".jpeg", "url": "/uploads/large_the_internet_s_own_boy_507f69d48e.jpeg", "hash": "large_the_internet_s_own_boy_507f69d48e", "mime": "image/jpeg", "name": "large_the-internet-s-own-boy", "path": null, "size": 70.11, "width": 1000, "height": 589, "sizeInBytes": 70105}, "small": {"ext": ".jpeg", "url": "/uploads/small_the_internet_s_own_boy_507f69d48e.jpeg", "hash": "small_the_internet_s_own_boy_507f69d48e", "mime": "image/jpeg", "name": "small_the-internet-s-own-boy", "path": null, "size": 25.31, "width": 500, "height": 295, "sizeInBytes": 25308}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_the_internet_s_own_boy_507f69d48e.jpeg", "hash": "medium_the_internet_s_own_boy_507f69d48e", "mime": "image/jpeg", "name": "medium_the-internet-s-own-boy", "path": null, "size": 45.93, "width": 750, "height": 442, "sizeInBytes": 45925}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_the_internet_s_own_boy_507f69d48e.jpeg", "hash": "thumbnail_the_internet_s_own_boy_507f69d48e", "mime": "image/jpeg", "name": "thumbnail_the-internet-s-own-boy", "path": null, "size": 8.38, "width": 245, "height": 144, "sizeInBytes": 8380}}	the_internet_s_own_boy_507f69d48e	.jpeg	image/jpeg	91.55	/uploads/the_internet_s_own_boy_507f69d48e.jpeg	\N	local	\N	/	2025-01-05 23:38:44.455	2025-01-05 23:38:44.455	2025-01-05 23:38:44.455	\N	\N	\N
   4	xzgxdo2fh03ifnrattqm7icy	coffee-art	An image uploaded to Strapi called coffee-art	coffee-art	5824	3259	{"large": {"ext": ".jpeg", "url": "/uploads/large_coffee_art_7eb1323506.jpeg", "hash": "large_coffee_art_7eb1323506", "mime": "image/jpeg", "name": "large_coffee-art", "path": null, "size": 40.78, "width": 1000, "height": 559, "sizeInBytes": 40778}, "small": {"ext": ".jpeg", "url": "/uploads/small_coffee_art_7eb1323506.jpeg", "hash": "small_coffee_art_7eb1323506", "mime": "image/jpeg", "name": "small_coffee-art", "path": null, "size": 15.27, "width": 500, "height": 280, "sizeInBytes": 15273}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_coffee_art_7eb1323506.jpeg", "hash": "medium_coffee_art_7eb1323506", "mime": "image/jpeg", "name": "medium_coffee-art", "path": null, "size": 27.06, "width": 750, "height": 419, "sizeInBytes": 27063}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_coffee_art_7eb1323506.jpeg", "hash": "thumbnail_coffee_art_7eb1323506", "mime": "image/jpeg", "name": "thumbnail_coffee-art", "path": null, "size": 5.86, "width": 245, "height": 137, "sizeInBytes": 5860}}	coffee_art_7eb1323506	.jpeg	image/jpeg	978.11	/uploads/coffee_art_7eb1323506.jpeg	\N	local	\N	/	2025-01-05 23:38:45.297	2025-01-05 23:38:45.297	2025-01-05 23:38:45.297	\N	\N	\N
 3  5	eevxy1gf5winnjf70pxju9uf	coffee-beans	An image uploaded to Strapi called coffee-beans	coffee-beans	5021	3347	{"large": {"ext": ".jpeg", "url": "/uploads/large_coffee_beans_9bc74cb3fe.jpeg", "hash": "large_coffee_beans_9bc74cb3fe", "mime": "image/jpeg", "name": "large_coffee-beans", "path": null, "size": 115.66, "width": 1000, "height": 666, "sizeInBytes": 115659}, "small": {"ext": ".jpeg", "url": "/uploads/small_coffee_beans_9bc74cb3fe.jpeg", "hash": "small_coffee_beans_9bc74cb3fe", "mime": "image/jpeg", "name": "small_coffee-beans", "path": null, "size": 31.11, "width": 500, "height": 333, "sizeInBytes": 31106}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_coffee_beans_9bc74cb3fe.jpeg", "hash": "medium_coffee_beans_9bc74cb3fe", "mime": "image/jpeg", "name": "medium_coffee-beans", "path": null, "size": 67.95, "width": 750, "height": 500, "sizeInBytes": 67954}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_coffee_beans_9bc74cb3fe.jpeg", "hash": "thumbnail_coffee_beans_9bc74cb3fe", "mime": "image/jpeg", "name": "thumbnail_coffee-beans", "path": null, "size": 7.96, "width": 234, "height": 156, "sizeInBytes": 7962}}	coffee_beans_9bc74cb3fe	.jpeg	image/jpeg	2346.20	/uploads/coffee_beans_9bc74cb3fe.jpeg	\N	local	\N	/	2025-01-05 23:38:46.337	2025-01-05 23:38:46.337	2025-01-05 23:38:46.337	\N	\N	\N
 Õ  6	esrokv2x0cabtlmixvux32ma	this-shrimp-is-awesome	An image uploaded to Strapi called this-shrimp-is-awesome	this-shrimp-is-awesome	1200	630	{"large": {"ext": ".jpeg", "url": "/uploads/large_this_shrimp_is_awesome_bb49839dc4.jpeg", "hash": "large_this_shrimp_is_awesome_bb49839dc4", "mime": "image/jpeg", "name": "large_this-shrimp-is-awesome", "path": null, "size": 72.87, "width": 1000, "height": 525, "sizeInBytes": 72867}, "small": {"ext": ".jpeg", "url": "/uploads/small_this_shrimp_is_awesome_bb49839dc4.jpeg", "hash": "small_this_shrimp_is_awesome_bb49839dc4", "mime": "image/jpeg", "name": "small_this-shrimp-is-awesome", "path": null, "size": 26.93, "width": 500, "height": 263, "sizeInBytes": 26930}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_this_shrimp_is_awesome_bb49839dc4.jpeg", "hash": "medium_this_shrimp_is_awesome_bb49839dc4", "mime": "image/jpeg", "name": "medium_this-shrimp-is-awesome", "path": null, "size": 48.38, "width": 750, "height": 394, "sizeInBytes": 48380}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_this_shrimp_is_awesome_bb49839dc4.jpeg", "hash": "thumbnail_this_shrimp_is_awesome_bb49839dc4", "mime": "image/jpeg", "name": "thumbnail_this-shrimp-is-awesome", "path": null, "size": 9.63, "width": 245, "height": 129, "sizeInBytes": 9633}}	this_shrimp_is_awesome_bb49839dc4	.jpeg	image/jpeg	95.48	/uploads/this_shrimp_is_awesome_bb49839dc4.jpeg	\N	local	\N	/	2025-01-05 23:38:46.55	2025-01-05 23:38:46.55	2025-01-05 23:38:46.55	\N	\N	\N
   7	ek6gjteuoggi9t9m7ube0m72	a-bug-is-becoming-a-meme-on-the-internet	An image uploaded to Strapi called a-bug-is-becoming-a-meme-on-the-internet	a-bug-is-becoming-a-meme-on-the-internet	3628	2419	{"large": {"ext": ".jpeg", "url": "/uploads/large_a_bug_is_becoming_a_meme_on_the_internet_7eaf0eb8ce.jpeg", "hash": "large_a_bug_is_becoming_a_meme_on_the_internet_7eaf0eb8ce", "mime": "image/jpeg", "name": "large_a-bug-is-becoming-a-meme-on-the-internet", "path": null, "size": 51.05, "width": 1000, "height": 666, "sizeInBytes": 51046}, "small": {"ext": ".jpeg", "url": "/uploads/small_a_bug_is_becoming_a_meme_on_the_internet_7eaf0eb8ce.jpeg", "hash": "small_a_bug_is_becoming_a_meme_on_the_internet_7eaf0eb8ce", "mime": "image/jpeg", "name": "small_a-bug-is-becoming-a-meme-on-the-internet", "path": null, "size": 19.27, "width": 500, "height": 333, "sizeInBytes": 19268}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_a_bug_is_becoming_a_meme_on_the_internet_7eaf0eb8ce.jpeg", "hash": "medium_a_bug_is_becoming_a_meme_on_the_internet_7eaf0eb8ce", "mime": "image/jpeg", "name": "medium_a-bug-is-becoming-a-meme-on-the-internet", "path": null, "size": 33.58, "width": 750, "height": 500, "sizeInBytes": 33577}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_a_bug_is_becoming_a_meme_on_the_internet_7eaf0eb8ce.jpeg", "hash": "thumbnail_a_bug_is_becoming_a_meme_on_the_internet_7eaf0eb8ce", "mime": "image/jpeg", "name": "thumbnail_a-bug-is-becoming-a-meme-on-the-internet", "path": null, "size": 6.74, "width": 234, "height": 156, "sizeInBytes": 6743}}	a_bug_is_becoming_a_meme_on_the_internet_7eaf0eb8ce	.jpeg	image/jpeg	234.02	/uploads/a_bug_is_becoming_a_meme_on_the_internet_7eaf0eb8ce.jpeg	\N	local	\N	/	2025-01-05 23:38:46.979	2025-01-05 23:38:46.979	2025-01-05 23:38:46.979	\N	\N	\N
   8	bcs9oqaydpieq354vt5mans9	beautiful-picture	An image uploaded to Strapi called beautiful-picture	beautiful-picture	3824	2548	{"large": {"ext": ".jpeg", "url": "/uploads/large_beautiful_picture_c6ea33098b.jpeg", "hash": "large_beautiful_picture_c6ea33098b", "mime": "image/jpeg", "name": "large_beautiful-picture", "path": null, "size": 83.42, "width": 1000, "height": 666, "sizeInBytes": 83416}, "small": {"ext": ".jpeg", "url": "/uploads/small_beautiful_picture_c6ea33098b.jpeg", "hash": "small_beautiful_picture_c6ea33098b", "mime": "image/jpeg", "name": "small_beautiful-picture", "path": null, "size": 23.38, "width": 500, "height": 333, "sizeInBytes": 23380}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_beautiful_picture_c6ea33098b.jpeg", "hash": "medium_beautiful_picture_c6ea33098b", "mime": "image/jpeg", "name": "medium_beautiful-picture", "path": null, "size": 47.89, "width": 750, "height": 500, "sizeInBytes": 47888}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_beautiful_picture_c6ea33098b.jpeg", "hash": "thumbnail_beautiful_picture_c6ea33098b", "mime": "image/jpeg", "name": "thumbnail_beautiful-picture", "path": null, "size": 6.43, "width": 234, "height": 156, "sizeInBytes": 6427}}	beautiful_picture_c6ea33098b	.jpeg	image/jpeg	710.28	/uploads/beautiful_picture_c6ea33098b.jpeg	\N	local	\N	/	2025-01-05 23:38:47.434	2025-01-05 23:38:47.434	2025-01-05 23:38:47.435	\N	\N	\N
 í  9	krwhbvjuqpsae4b8s5eafhkh	what-s-inside-a-black-hole	An image uploaded to Strapi called what-s-inside-a-black-hole	what-s-inside-a-black-hole	800	466	{"small": {"ext": ".jpeg", "url": "/uploads/small_what_s_inside_a_black_hole_c81e1a0b57.jpeg", "hash": "small_what_s_inside_a_black_hole_c81e1a0b57", "mime": "image/jpeg", "name": "small_what-s-inside-a-black-hole", "path": null, "size": 3.89, "width": 500, "height": 291, "sizeInBytes": 3889}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_what_s_inside_a_black_hole_c81e1a0b57.jpeg", "hash": "medium_what_s_inside_a_black_hole_c81e1a0b57", "mime": "image/jpeg", "name": "medium_what-s-inside-a-black-hole", "path": null, "size": 6.94, "width": 750, "height": 437, "sizeInBytes": 6935}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_what_s_inside_a_black_hole_c81e1a0b57.jpeg", "hash": "thumbnail_what_s_inside_a_black_hole_c81e1a0b57", "mime": "image/jpeg", "name": "thumbnail_what-s-inside-a-black-hole", "path": null, "size": 1.55, "width": 245, "height": 143, "sizeInBytes": 1549}}	what_s_inside_a_black_hole_c81e1a0b57	.jpeg	image/jpeg	7.50	/uploads/what_s_inside_a_black_hole_c81e1a0b57.jpeg	\N	local	\N	/	2025-01-05 23:38:47.621	2025-01-05 23:38:47.621	2025-01-05 23:38:47.621	\N	\N	\N
 ì  10	ntx95nzegsmbk0tem2apo3cg	favicon	An image uploaded to Strapi called favicon	favicon	512	512	{"small": {"ext": ".png", "url": "/uploads/small_favicon_d59b710b8f.png", "hash": "small_favicon_d59b710b8f", "mime": "image/png", "name": "small_favicon", "path": null, "size": 20.56, "width": 500, "height": 500, "sizeInBytes": 20560}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_favicon_d59b710b8f.png", "hash": "thumbnail_favicon_d59b710b8f", "mime": "image/png", "name": "thumbnail_favicon", "path": null, "size": 4.69, "width": 156, "height": 156, "sizeInBytes": 4690}}	favicon_d59b710b8f	.png	image/png	2.78	/uploads/favicon_d59b710b8f.png	\N	local	\N	/	2025-01-05 23:38:47.802	2025-01-05 23:38:47.802	2025-01-05 23:38:47.802	\N	\N	\N
 6  11	j6rw6efrv69tat9g0t7drxtp	default-image	An image uploaded to Strapi called default-image	default-image	1208	715	{"large": {"ext": ".png", "url": "/uploads/large_default_image_c306f326a9.png", "hash": "large_default_image_c306f326a9", "mime": "image/png", "name": "large_default-image", "path": null, "size": 323.33, "width": 1000, "height": 592, "sizeInBytes": 323332}, "small": {"ext": ".png", "url": "/uploads/small_default_image_c306f326a9.png", "hash": "small_default_image_c306f326a9", "mime": "image/png", "name": "small_default-image", "path": null, "size": 74.09, "width": 500, "height": 296, "sizeInBytes": 74093}, "medium": {"ext": ".png", "url": "/uploads/medium_default_image_c306f326a9.png", "hash": "medium_default_image_c306f326a9", "mime": "image/png", "name": "medium_default-image", "path": null, "size": 170.23, "width": 750, "height": 444, "sizeInBytes": 170226}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_default_image_c306f326a9.png", "hash": "thumbnail_default_image_c306f326a9", "mime": "image/png", "name": "thumbnail_default-image", "path": null, "size": 20.6, "width": 245, "height": 145, "sizeInBytes": 20603}}	default_image_c306f326a9	.png	image/png	81.73	/uploads/default_image_c306f326a9.png	\N	local	\N	/	2025-01-05 23:38:48.154	2025-01-05 23:38:48.154	2025-01-05 23:38:48.155	\N	\N	\N
    \.


            \.


         "   1	1	1	api::author.author	avatar	1
 "   2	2	2	api::author.author	avatar	1
    3	4	1	shared.media	file	1
    4	4	1	shared.slider	files	1
    5	5	1	shared.slider	files	2
 #   6	3	1	api::article.article	cover	1
    7	4	2	shared.media	file	1
    8	4	2	shared.slider	files	1
    9	5	2	shared.slider	files	2
 $   10	6	2	api::article.article	cover	1
    11	4	3	shared.media	file	1
    12	4	3	shared.slider	files	1
    13	5	3	shared.slider	files	2
 $   14	7	3	api::article.article	cover	1
    15	4	4	shared.media	file	1
    16	4	4	shared.slider	files	1
    17	5	4	shared.slider	files	2
 $   18	8	4	api::article.article	cover	1
    19	4	5	shared.media	file	1
    20	4	5	shared.slider	files	1
    21	5	5	shared.slider	files	2
 $   22	9	5	api::article.article	cover	1
     23	11	1	shared.seo	shareImage	1
 %   24	10	1	api::global.global	favicon	1
    25	4	6	shared.media	file	1
    26	4	7	shared.media	file	1
    27	4	6	shared.slider	files	1
    28	5	6	shared.slider	files	2
    29	4	8	shared.media	file	1
    30	4	7	shared.slider	files	1
    31	5	7	shared.slider	files	2
    32	4	9	shared.media	file	1
    33	4	8	shared.slider	files	1
    34	5	8	shared.slider	files	2
 $   35	7	6	api::article.article	cover	1
 $   36	8	7	api::article.article	cover	1
 $   37	3	8	api::article.article	cover	1
    \.


      v      1	gaebk4nfvdyzg3dyyys68uu0	Strapi Blog	A Blog made with Strapi	2025-01-05 23:38:48.217	2025-01-05 23:38:48.217	2025-01-05 23:38:48.209	\N	\N	\N
    \.


      t      1	1	1	shared.seo	defaultSeo	\N
    \.


      X   |   1	ee0377hv3k1d4347ntkk36m8	English (en)	en	2025-01-05 23:38:38.158	2025-01-05 23:38:38.158	2025-01-05 23:38:38.159	\N	\N	\N
    \.


      ´   s   1	g6hijufhqqs3c7wnuenjvfsz	shortTermClean	City Apt Clean	2025-01-07 01:12:38.364	2025-01-07 01:12:38.364	\N	1	1	en
    2	g6hijufhqqs3c7wnuenjvfsz	shortTermClean	City Apt Clean	2025-01-07 01:12:38.364	2025-01-07 01:12:38.364	2025-01-07 01:27:05.941	1	1	en
 w   3	pwxn9yavgr7khcw2rbyc1alm	shortTermClean	City Apt Clean 2	2025-01-07 01:30:36.132	2025-01-07 01:30:36.132	\N	\N	\N	en
    4	pwxn9yavgr7khcw2rbyc1alm	shortTermClean	City Apt Clean 2	2025-01-07 01:30:36.132	2025-01-07 01:30:36.132	2025-01-07 01:30:36.139	\N	\N	en
 w   5	bz53opqxou3qo1fyxdj26pvr	shortTermClean	City Apt Clean 2	2025-01-07 01:30:40.588	2025-01-07 01:30:40.588	\N	\N	\N	en
    6	bz53opqxou3qo1fyxdj26pvr	shortTermClean	City Apt Clean 2	2025-01-07 01:30:40.588	2025-01-07 01:30:40.588	2025-01-07 01:30:40.595	\N	\N	en
 w   7	puv2ropxbk9woq7p24qxr8cp	shortTermClean	City Apt Clean 2	2025-01-07 18:27:32.677	2025-01-07 18:27:32.677	\N	\N	\N	en
    8	puv2ropxbk9woq7p24qxr8cp	shortTermClean	City Apt Clean 2	2025-01-07 18:27:32.677	2025-01-07 18:27:32.677	2025-01-07 18:27:32.688	\N	\N	en
 w   9	xee59uqs2max8xvy9no3gf4z	shortTermClean	City Apt Clean 3	2025-01-07 18:27:41.042	2025-01-07 18:27:41.042	\N	\N	\N	en
    10	xee59uqs2max8xvy9no3gf4z	shortTermClean	City Apt Clean 3	2025-01-07 18:27:41.042	2025-01-07 18:27:41.042	2025-01-07 18:27:41.052	\N	\N	en
    \.


         ~   1	lfckzetil8zevw3u3vcg9yl0	api::job.job.find	2025-01-07 01:30:21.325	2025-01-07 01:30:21.325	2025-01-07 01:30:21.325	\N	\N	\N
    2	nkf2f7m8n9kml3hvh5jm2lcb	api::job.job.findOne	2025-01-07 01:30:21.325	2025-01-07 01:30:21.325	2025-01-07 01:30:21.326	\N	\N	\N
    3	cgypj57zccb1vh0erl44fmt0	api::job.job.create	2025-01-07 01:30:21.325	2025-01-07 01:30:21.325	2025-01-07 01:30:21.326	\N	\N	\N
    4	li8fp7m1l3g18nkdhdnbveyf	api::job.job.update	2025-01-07 01:30:21.325	2025-01-07 01:30:21.325	2025-01-07 01:30:21.326	\N	\N	\N
    5	vods0j9udlmterxowtxy1e64	api::job.job.delete	2025-01-07 01:30:21.325	2025-01-07 01:30:21.325	2025-01-07 01:30:21.326	\N	\N	\N
    \.


      °      1	5	2	1
    2	1	2	1
    3	2	2	1
    4	3	2	1
    5	4	2	1
    \.


      ~     1	dpretyncatoeky6pudg10yde	ReadOnlyToken	ReadOnlyToken	read-only	0ffd8e54b3605a9d47fef0ab84cc5ca306f928a7792bb84249ea96a3a074fa0a3854fd9551125ae8f1c108357d67bc31891a9c13772ffa9f42e85d4d60431752	\N	\N	\N	2025-01-07 01:14:03.356	2025-01-07 01:15:17.06	2025-01-07 01:14:03.357	\N	\N	\N
   2	lij606efifk817pa1hk6elkw	FullJOBAPIToken	FullJOBAPIToken	custom	84a2ebf95bb9912ff80381032bd383a6d58aa47172dd58af62bce6e38076f2fcca07c60f795c76668f51eb38642a5436c18fc1b82ac836658d2972170d1dec83	\N	\N	\N	2025-01-07 01:30:21.302	2025-01-07 01:30:21.302	2025-01-07 01:30:21.302	\N	\N	\N
    \.


         U	  7	plugin_content_manager_configuration_content_types::plugin::content-releases.release	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"releasedAt":{"edit":{"label":"releasedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"releasedAt","searchable":true,"sortable":true}},"scheduledAt":{"edit":{"label":"scheduledAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"scheduledAt","searchable":true,"sortable":true}},"timezone":{"edit":{"label":"timezone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"timezone","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"actions":{"edit":{"label":"actions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"contentType"},"list":{"label":"actions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","releasedAt","scheduledAt"],"edit":[[{"name":"name","size":6},{"name":"releasedAt","size":6}],[{"name":"scheduledAt","size":6},{"name":"timezone","size":6}],[{"name":"status","size":6},{"name":"actions","size":6}]]},"uid":"plugin::content-releases.release"}	object	\N	\N
 ç  9	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]},"uid":"plugin::i18n.locale"}	object	\N	\N
 Ö  11	plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow-stage	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"color":{"edit":{"label":"color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"color","searchable":true,"sortable":true}},"workflow":{"edit":{"label":"workflow","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"workflow","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","color","workflow"],"edit":[[{"name":"name","size":6},{"name":"color","size":6}],[{"name":"workflow","size":6},{"name":"permissions","size":6}]]},"uid":"plugin::review-workflows.workflow-stage"}	object	\N	\N
 Õ  12	plugin_content_manager_configuration_content_types::plugin::content-releases.release-action	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"contentType","defaultSortBy":"contentType","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"contentType":{"edit":{"label":"contentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentType","searchable":true,"sortable":true}},"entryDocumentId":{"edit":{"label":"entryDocumentId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"entryDocumentId","searchable":true,"sortable":true}},"release":{"edit":{"label":"release","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"release","searchable":true,"sortable":true}},"isEntryValid":{"edit":{"label":"isEntryValid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isEntryValid","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","contentType","entryDocumentId"],"edit":[[{"name":"type","size":6},{"name":"contentType","size":6}],[{"name":"entryDocumentId","size":6},{"name":"release","size":6}],[{"name":"isEntryValid","size":4}]]},"uid":"plugin::content-releases.release-action"}	object	\N	\N
 j  21	plugin_content_manager_configuration_content_types::admin::role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6},{"name":"users","size":6}],[{"name":"permissions","size":6}]]},"uid":"admin::role"}	object	\N	\N
 5   37	type_setup_initHasRun	true	boolean	development	\N
 n   36	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null,"ssoLockedRoles":null}}	object	\N	\N
 $	  13	plugin_content_manager_configuration_content_types::plugin::upload.folder	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]},"uid":"plugin::upload.folder"}	object	\N	\N
 Å  8	plugin_content_manager_configuration_content_types::plugin::upload.file	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folder","size":6},{"name":"folderPath","size":6}]]},"uid":"plugin::upload.file"}	object	\N	\N
 Î  22	plugin_content_manager_configuration_content_types::api::global.global	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"siteName","defaultSortBy":"siteName","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"siteName":{"edit":{"label":"siteName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"siteName","searchable":true,"sortable":true}},"favicon":{"edit":{"label":"favicon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"favicon","searchable":false,"sortable":false}},"siteDescription":{"edit":{"label":"siteDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"siteDescription","searchable":true,"sortable":true}},"defaultSeo":{"edit":{"label":"defaultSeo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"defaultSeo","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","siteName","favicon","siteDescription"],"edit":[[{"name":"siteName","size":6},{"name":"favicon","size":6}],[{"name":"siteDescription","size":6}],[{"name":"defaultSeo","size":12}]]},"uid":"api::global.global"}	object	\N	\N
   24	plugin_content_manager_configuration_content_types::api::category.category	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"articles":{"edit":{"label":"articles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"articles","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","slug","articles"],"edit":[[{"name":"name","size":6},{"name":"slug","size":6}],[{"name":"articles","size":6},{"name":"description","size":6}]]},"uid":"api::category.category"}	object	\N	\N
 (  25	plugin_content_manager_configuration_content_types::admin::transfer-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::transfer-token-permission"}	object	\N	\N
   17	plugin_content_manager_configuration_content_types::api::author.author	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"avatar":{"edit":{"label":"avatar","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"avatar","searchable":false,"sortable":false}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"articles":{"edit":{"label":"articles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"articles","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","avatar","email"],"edit":[[{"name":"name","size":6},{"name":"avatar","size":6}],[{"name":"email","size":6},{"name":"articles","size":6}]]},"uid":"api::author.author"}	object	\N	\N
   27	plugin_content_manager_configuration_content_types::admin::api-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::api-token-permission"}	object	\N	\N
 í	  18	plugin_content_manager_configuration_content_types::api::article.article	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"cover":{"edit":{"label":"cover","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cover","searchable":false,"sortable":false}},"author":{"edit":{"label":"author","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"author","searchable":true,"sortable":true}},"category":{"edit":{"label":"category","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"category","searchable":true,"sortable":true}},"blocks":{"edit":{"label":"blocks","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocks","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","description","slug"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"slug","size":6},{"name":"cover","size":6}],[{"name":"author","size":6},{"name":"category","size":6}],[{"name":"blocks","size":12}]]},"uid":"api::article.article"}	object	\N	\N
 0   32	plugin_i18n_default_locale	"en"	string	\N	\N
 	  33	plugin_users-permissions_grant	{"email":{"icon":"envelope","enabled":true},"discord":{"icon":"discord","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"icon":"facebook-square","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/facebook/callback","scope":["email"]},"google":{"icon":"google","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/google/callback","scope":["email"]},"github":{"icon":"github","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"icon":"windows","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"icon":"twitter","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/twitter/callback"},"instagram":{"icon":"instagram","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"icon":"vk","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/vk/callback","scope":["email"]},"twitch":{"icon":"twitch","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"icon":"linkedin","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"icon":"aws","enabled":false,"key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"icon":"reddit","enabled":false,"key":"","secret":"","callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"icon":"book","enabled":false,"key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"},"patreon":{"icon":"","enabled":false,"key":"","secret":"","callback":"api/auth/patreon/callback","scope":["identity","identity[email]"]},"keycloak":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"myKeycloakProvider.com/realms/myrealm","callback":"api/auth/keycloak/callback","scope":["openid","email","profile"]}}	object	\N	\N
 z  34	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But donât worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
 Ú   35	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object	\N	\N
 Ç
  26	plugin_content_manager_configuration_content_types::admin::api-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}],[{"name":"lastUsedAt","size":6},{"name":"permissions","size":6}],[{"name":"expiresAt","size":6},{"name":"lifespan","size":4}]]},"uid":"admin::api-token"}	object	\N	\N
 !
  28	plugin_content_manager_configuration_content_types::admin::transfer-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","accessKey"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"accessKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]},"uid":"admin::transfer-token"}	object	\N	\N
 u   29	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false}	object	\N	\N
 Y   30	plugin_upload_view_configuration	{"pageSize":10,"sort":"createdAt:DESC"}	object	\N	\N
 i   31	plugin_upload_metrics	{"weeklySchedule":"5 32 0 * * 1","lastWeeklyUpdate":1736083925048}	object	\N	\N
   4	plugin_content_manager_configuration_components::shared.quote	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"body":{"edit":{"label":"body","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"body","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","body"],"edit":[[{"name":"title","size":6},{"name":"body","size":6}]]},"uid":"shared.quote","isComponent":true}	object	\N	\N
 å  1	strapi_content_types_schema	{"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"files"}}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"plugin":"upload","globalId":"UploadFile","uid":"plugin::upload.file","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelName":"file"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"upload_folders"}}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"plugin":"upload","globalId":"UploadFolder","uid":"plugin::upload.folder","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true}},"kind":"collectionType"},"modelName":"folder"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::i18n.locale","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"i18n_locale"}}},"plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale","uid":"plugin::i18n.locale","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"i18n_locale","info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelName":"locale"},"plugin::content-releases.release":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_releases"}}},"plugin":"content-releases","globalId":"ContentReleasesRelease","uid":"plugin::content-releases.release","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"}},"kind":"collectionType"},"modelName":"release"},"plugin::content-releases.release-action":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_release_actions"}}},"plugin":"content-releases","globalId":"ContentReleasesReleaseAction","uid":"plugin::content-releases.release-action","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"}},"kind":"collectionType"},"modelName":"release-action"},"plugin::review-workflows.workflow":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflow","uid":"plugin::review-workflows.workflow","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"}},"kind":"collectionType"},"modelName":"workflow"},"plugin::review-workflows.workflow-stage":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0","draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow-stage","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows_stages"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflowStage","uid":"plugin::review-workflows.workflow-stage","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false}},"kind":"collectionType"},"modelName":"workflow-stage"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_permissions"}}},"plugin":"users-permissions","globalId":"UsersPermissionsPermission","uid":"plugin::users-permissions.permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelName":"permission","options":{"draftAndPublish":false}},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_roles"}}},"plugin":"users-permissions","globalId":"UsersPermissionsRole","uid":"plugin::users-permissions.role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelName":"role","options":{"draftAndPublish":false}},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"timestamps":true,"draftAndPublish":false},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"plugin":"users-permissions","globalId":"UsersPermissionsUser","kind":"collectionType","__filename__":"schema.json","uid":"plugin::users-permissions.user","modelType":"contentType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelName":"user"},"api::about.about":{"kind":"singleType","collectionName":"abouts","info":{"singularName":"about","pluralName":"abouts","displayName":"About","description":"Write about yourself and the content you create"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"title":{"type":"string"},"blocks":{"type":"dynamiczone","components":["shared.media","shared.quote","shared.rich-text","shared.slider"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::about.about","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"abouts"}}},"apiName":"about","globalId":"About","uid":"api::about.about","modelType":"contentType","__schema__":{"collectionName":"abouts","info":{"singularName":"about","pluralName":"abouts","displayName":"About","description":"Write about yourself and the content you create"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"title":{"type":"string"},"blocks":{"type":"dynamiczone","components":["shared.media","shared.quote","shared.rich-text","shared.slider"]}},"kind":"singleType"},"modelName":"about","actions":{},"lifecycles":{}},"api::article.article":{"kind":"collectionType","collectionName":"articles","info":{"singularName":"article","pluralName":"articles","displayName":"Article","description":"Create your blog content"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"description":{"type":"text","maxLength":80},"slug":{"type":"uid","targetField":"title"},"cover":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"author":{"type":"relation","relation":"manyToOne","target":"api::author.author","inversedBy":"articles"},"category":{"type":"relation","relation":"manyToOne","target":"api::category.category","inversedBy":"articles"},"blocks":{"type":"dynamiczone","components":["shared.media","shared.quote","shared.rich-text","shared.slider"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::article.article","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"articles"}}},"apiName":"article","globalId":"Article","uid":"api::article.article","modelType":"contentType","__schema__":{"collectionName":"articles","info":{"singularName":"article","pluralName":"articles","displayName":"Article","description":"Create your blog content"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"description":{"type":"text","maxLength":80},"slug":{"type":"uid","targetField":"title"},"cover":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"author":{"type":"relation","relation":"manyToOne","target":"api::author.author","inversedBy":"articles"},"category":{"type":"relation","relation":"manyToOne","target":"api::category.category","inversedBy":"articles"},"blocks":{"type":"dynamiczone","components":["shared.media","shared.quote","shared.rich-text","shared.slider"]}},"kind":"collectionType"},"modelName":"article","actions":{},"lifecycles":{}},"api::author.author":{"kind":"collectionType","collectionName":"authors","info":{"singularName":"author","pluralName":"authors","displayName":"Author","description":"Create authors for your content"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"},"avatar":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"email":{"type":"string"},"articles":{"type":"relation","relation":"oneToMany","target":"api::article.article","mappedBy":"author"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::author.author","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"authors"}}},"apiName":"author","globalId":"Author","uid":"api::author.author","modelType":"contentType","__schema__":{"collectionName":"authors","info":{"singularName":"author","pluralName":"authors","displayName":"Author","description":"Create authors for your content"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"},"avatar":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"email":{"type":"string"},"articles":{"type":"relation","relation":"oneToMany","target":"api::article.article","mappedBy":"author"}},"kind":"collectionType"},"modelName":"author","actions":{},"lifecycles":{}},"api::category.category":{"kind":"collectionType","collectionName":"categories","info":{"singularName":"category","pluralName":"categories","displayName":"Category","description":"Organize your content into categories"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"},"slug":{"type":"uid"},"articles":{"type":"relation","relation":"oneToMany","target":"api::article.article","mappedBy":"category"},"description":{"type":"text"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::category.category","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"categories"}}},"apiName":"category","globalId":"Category","uid":"api::category.category","modelType":"contentType","__schema__":{"collectionName":"categories","info":{"singularName":"category","pluralName":"categories","displayName":"Category","description":"Organize your content into categories"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"},"slug":{"type":"uid"},"articles":{"type":"relation","relation":"oneToMany","target":"api::article.article","mappedBy":"category"},"description":{"type":"text"}},"kind":"collectionType"},"modelName":"category","actions":{},"lifecycles":{}},"api::global.global":{"kind":"singleType","collectionName":"globals","info":{"singularName":"global","pluralName":"globals","displayName":"Global","description":"Define global settings"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"siteName":{"type":"string","required":true},"favicon":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"siteDescription":{"type":"text","required":true},"defaultSeo":{"type":"component","repeatable":false,"component":"shared.seo"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::global.global","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"globals"}}},"apiName":"global","globalId":"Global","uid":"api::global.global","modelType":"contentType","__schema__":{"collectionName":"globals","info":{"singularName":"global","pluralName":"globals","displayName":"Global","description":"Define global settings"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"siteName":{"type":"string","required":true},"favicon":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"siteDescription":{"type":"text","required":true},"defaultSeo":{"type":"component","repeatable":false,"component":"shared.seo"}},"kind":"singleType"},"modelName":"global","actions":{},"lifecycles":{}},"api::job.job":{"kind":"collectionType","collectionName":"jobs","info":{"singularName":"job","pluralName":"jobs","displayName":"job","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"type":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"title":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::job.job","writable":false,"private":false,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"jobs"}}},"apiName":"job","globalId":"Job","uid":"api::job.job","modelType":"contentType","__schema__":{"collectionName":"jobs","info":{"singularName":"job","pluralName":"jobs","displayName":"job","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"type":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"title":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"}},"kind":"collectionType"},"modelName":"job","actions":{},"lifecycles":{}},"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_permissions"}}},"plugin":"admin","globalId":"AdminPermission","uid":"admin::permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelName":"permission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"registrationToken":{"hidden":true}}},"plugin":"admin","globalId":"AdminUser","uid":"admin::user","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelName":"user","options":{"draftAndPublish":false}},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_roles"}}},"plugin":"admin","globalId":"AdminRole","uid":"admin::role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelName":"role"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_tokens"}}},"plugin":"admin","globalId":"AdminApiToken","uid":"admin::api-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"api-token"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_token_permissions"}}},"plugin":"admin","globalId":"AdminApiTokenPermission","uid":"admin::api-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelName":"api-token-permission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_tokens"}}},"plugin":"admin","globalId":"AdminTransferToken","uid":"admin::transfer-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"transfer-token"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_token_permissions"}}},"plugin":"admin","globalId":"AdminTransferTokenPermission","uid":"admin::transfer-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelName":"transfer-token-permission"}}	object	\N	\N
 H  2	plugin_content_manager_configuration_components::shared.slider	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"files","searchable":false,"sortable":false}}},"layouts":{"list":["id","files"],"edit":[[{"name":"files","size":6}]]},"uid":"shared.slider","isComponent":true}	object	\N	\N
 C  5	plugin_content_manager_configuration_components::shared.rich-text	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"body":{"edit":{"label":"body","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"body","searchable":false,"sortable":false}}},"layouts":{"list":["id"],"edit":[[{"name":"body","size":12}]]},"uid":"shared.rich-text","isComponent":true}	object	\N	\N
 3  3	plugin_content_manager_configuration_components::shared.seo	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"metaTitle","defaultSortBy":"metaTitle","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"metaTitle":{"edit":{"label":"metaTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaTitle","searchable":true,"sortable":true}},"metaDescription":{"edit":{"label":"metaDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaDescription","searchable":true,"sortable":true}},"shareImage":{"edit":{"label":"shareImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"shareImage","searchable":false,"sortable":false}}},"layouts":{"list":["id","metaTitle","metaDescription","shareImage"],"edit":[[{"name":"metaTitle","size":6},{"name":"metaDescription","size":6}],[{"name":"shareImage","size":6}]]},"uid":"shared.seo","isComponent":true}	object	\N	\N
 A  6	plugin_content_manager_configuration_components::shared.media	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"file":{"edit":{"label":"file","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"file","searchable":false,"sortable":false}}},"layouts":{"list":["id","file"],"edit":[[{"name":"file","size":6}]]},"uid":"shared.media","isComponent":true}	object	\N	\N
 ß  38	plugin_content_manager_configuration_content_types::api::job.job	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"type","defaultSortBy":"type","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","title","createdAt"],"edit":[[{"name":"type","size":6},{"name":"title","size":6}]]},"uid":"api::job.job"}	object	\N	\N
 n  14	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.user"}	object	\N	\N
 +  15	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.permission"}	object	\N	\N
 û  23	plugin_content_manager_configuration_content_types::api::about.about	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"blocks":{"edit":{"label":"blocks","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocks","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","createdAt","updatedAt"],"edit":[[{"name":"title","size":6}],[{"name":"blocks","size":12}]]},"uid":"api::about.about"}	object	\N	\N
   16	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"permissions","size":6}],[{"name":"users","size":6}]]},"uid":"plugin::users-permissions.role"}	object	\N	\N
 V	  19	plugin_content_manager_configuration_content_types::admin::permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"actionParameters":{"edit":{"label":"actionParameters","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"actionParameters","searchable":false,"sortable":false}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"edit":[[{"name":"action","size":6}],[{"name":"actionParameters","size":12}],[{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}],[{"name":"role","size":6}]]},"uid":"admin::permission"}	object	\N	\N
   10	plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"stages":{"edit":{"label":"stages","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"stages","searchable":false,"sortable":false}},"stageRequiredToPublish":{"edit":{"label":"stageRequiredToPublish","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"stageRequiredToPublish","searchable":true,"sortable":true}},"contentTypes":{"edit":{"label":"contentTypes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentTypes","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","stages","stageRequiredToPublish"],"edit":[[{"name":"name","size":6},{"name":"stages","size":6}],[{"name":"stageRequiredToPublish","size":6}],[{"name":"contentTypes","size":12}]]},"uid":"plugin::review-workflows.workflow"}	object	\N	\N
   20	plugin_content_manager_configuration_content_types::admin::user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"isActive","size":4}],[{"name":"roles","size":6},{"name":"blocked","size":4}],[{"name":"preferedLanguage","size":6}]]},"uid":"admin::user"}	object	\N	\N
    \.


      R    4	{"tables":[{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_documents_idx","columns":["document_id","locale","published_at"]},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_documents_idx","columns":["document_id","locale","published_at"]},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_documents_idx","columns":["document_id","locale","published_at"]},{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_releases","indexes":[{"name":"strapi_releases_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"released_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"scheduled_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"timezone","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_release_actions","indexes":[{"name":"strapi_release_actions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"entry_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_entry_valid","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows","indexes":[{"name":"strapi_workflows_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_types","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_workflows_stages","indexes":[{"name":"strapi_workflows_stages_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_roles","indexes":[{"name":"up_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_users","indexes":[{"name":"up_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"abouts_cmps","indexes":[{"name":"abouts_field_idx","columns":["field"]},{"name":"abouts_component_type_idx","columns":["component_type"]},{"name":"abouts_entity_fk","columns":["entity_id"]},{"name":"abouts_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"abouts_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"abouts","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"abouts","indexes":[{"name":"abouts_documents_idx","columns":["document_id","locale","published_at"]},{"name":"abouts_created_by_id_fk","columns":["created_by_id"]},{"name":"abouts_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"abouts_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"abouts_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"articles_cmps","indexes":[{"name":"articles_field_idx","columns":["field"]},{"name":"articles_component_type_idx","columns":["component_type"]},{"name":"articles_entity_fk","columns":["entity_id"]},{"name":"articles_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"articles_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"articles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"articles","indexes":[{"name":"articles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"articles_created_by_id_fk","columns":["created_by_id"]},{"name":"articles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"articles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"articles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"authors","indexes":[{"name":"authors_documents_idx","columns":["document_id","locale","published_at"]},{"name":"authors_created_by_id_fk","columns":["created_by_id"]},{"name":"authors_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"authors_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"authors_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"categories","indexes":[{"name":"categories_documents_idx","columns":["document_id","locale","published_at"]},{"name":"categories_created_by_id_fk","columns":["created_by_id"]},{"name":"categories_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"categories_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"categories_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"globals_cmps","indexes":[{"name":"globals_field_idx","columns":["field"]},{"name":"globals_component_type_idx","columns":["component_type"]},{"name":"globals_entity_fk","columns":["entity_id"]},{"name":"globals_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"globals_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"globals","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"globals","indexes":[{"name":"globals_documents_idx","columns":["document_id","locale","published_at"]},{"name":"globals_created_by_id_fk","columns":["created_by_id"]},{"name":"globals_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"globals_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"globals_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"site_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"site_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"jobs","indexes":[{"name":"jobs_documents_idx","columns":["document_id","locale","published_at"]},{"name":"jobs_created_by_id_fk","columns":["created_by_id"]},{"name":"jobs_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"jobs_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"jobs_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action_parameters","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_users","indexes":[{"name":"admin_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_tokens","indexes":[{"name":"strapi_transfer_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_token_permissions","indexes":[{"name":"strapi_transfer_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_sliders","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_shared_seos","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"meta_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"meta_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_rich_texts","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"body","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_quotes","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"body","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_media","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_history_versions","indexes":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"]}],"foreignKeys":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"related_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"data","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"schema","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_mph","indexes":[{"name":"files_related_mph_fk","columns":["file_id"]},{"name":"files_related_mph_oidx","columns":["order"]},{"name":"files_related_mph_idix","columns":["related_id"]}],"foreignKeys":[{"name":"files_related_mph_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_lnk","indexes":[{"name":"files_folder_lnk_fk","columns":["file_id"]},{"name":"files_folder_lnk_ifk","columns":["folder_id"]},{"name":"files_folder_lnk_uq","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_lnk_oifk","columns":["file_ord"]}],"foreignKeys":[{"name":"files_folder_lnk_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_lnk_ifk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_lnk","indexes":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"]},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_lnk_uq","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_lnk_oifk","columns":["folder_ord"]}],"foreignKeys":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_release_actions_release_lnk","indexes":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"]},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"]},{"name":"strapi_release_actions_release_lnk_uq","columns":["release_action_id","release_id"],"type":"unique"},{"name":"strapi_release_actions_release_lnk_oifk","columns":["release_action_ord"]}],"foreignKeys":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"],"referencedColumns":["id"],"referencedTable":"strapi_release_actions","onDelete":"CASCADE"},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"],"referencedColumns":["id"],"referencedTable":"strapi_releases","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"release_action_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_action_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stage_required_to_publish_lnk","indexes":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_uq","columns":["workflow_id","workflow_stage_id"],"type":"unique"}],"foreignKeys":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_workflow_lnk","indexes":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"]},{"name":"strapi_workflows_stages_workflow_lnk_uq","columns":["workflow_stage_id","workflow_id"],"type":"unique"},{"name":"strapi_workflows_stages_workflow_lnk_oifk","columns":["workflow_stage_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_permissions_lnk","indexes":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"]},{"name":"strapi_workflows_stages_permissions_lnk_uq","columns":["workflow_stage_id","permission_id"],"type":"unique"},{"name":"strapi_workflows_stages_permissions_lnk_ofk","columns":["permission_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_lnk","indexes":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"up_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_lnk","indexes":[{"name":"up_users_role_lnk_fk","columns":["user_id"]},{"name":"up_users_role_lnk_ifk","columns":["role_id"]},{"name":"up_users_role_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"up_users_role_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"articles_author_lnk","indexes":[{"name":"articles_author_lnk_fk","columns":["article_id"]},{"name":"articles_author_lnk_ifk","columns":["author_id"]},{"name":"articles_author_lnk_uq","columns":["article_id","author_id"],"type":"unique"},{"name":"articles_author_lnk_oifk","columns":["article_ord"]}],"foreignKeys":[{"name":"articles_author_lnk_fk","columns":["article_id"],"referencedColumns":["id"],"referencedTable":"articles","onDelete":"CASCADE"},{"name":"articles_author_lnk_ifk","columns":["author_id"],"referencedColumns":["id"],"referencedTable":"authors","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"article_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"author_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"article_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"articles_category_lnk","indexes":[{"name":"articles_category_lnk_fk","columns":["article_id"]},{"name":"articles_category_lnk_ifk","columns":["category_id"]},{"name":"articles_category_lnk_uq","columns":["article_id","category_id"],"type":"unique"},{"name":"articles_category_lnk_oifk","columns":["article_ord"]}],"foreignKeys":[{"name":"articles_category_lnk_fk","columns":["article_id"],"referencedColumns":["id"],"referencedTable":"articles","onDelete":"CASCADE"},{"name":"articles_category_lnk_ifk","columns":["category_id"],"referencedColumns":["id"],"referencedTable":"categories","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"article_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"category_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"article_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_permissions_role_lnk","indexes":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"admin_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_lnk","indexes":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"]},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"]},{"name":"admin_users_roles_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_lnk_ofk","columns":["role_ord"]},{"name":"admin_users_roles_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_lnk","indexes":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_lnk_uq","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_lnk_oifk","columns":["api_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions_token_lnk","indexes":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_uq","columns":["transfer_token_permission_id","transfer_token_id"],"type":"unique"},{"name":"strapi_transfer_token_permissions_token_lnk_oifk","columns":["transfer_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_token_permissions","onDelete":"CASCADE"},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"transfer_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2025-01-07 01:07:16.616	29713b897c3aef2d34ca604c072fad2a
    \.


            \.


      P      \.


      O   J   1	5.0.0-rename-identifiers-longer-than-max-length	2025-01-05 23:38:33.592
 7   2	5.0.0-02-created-document-id	2025-01-05 23:38:33.667
 2   3	5.0.0-03-created-locale	2025-01-05 23:38:33.742
 8   4	5.0.0-04-created-published-at	2025-01-05 23:38:33.814
 :   5	5.0.0-05-drop-slug-fields-index	2025-01-05 23:38:33.897
 5   6	core::5.0.0-discard-drafts	2025-01-05 23:38:33.984
    \.


      \      \.


            \.


      Z      \.


            \.


      ²      \.


            \.


            \.


      ^      \.


            \.


      `      \.


      ¢      \.


             \.


      b      1	t73maxd3fdgeny0b7awx0pxm	plugin::users-permissions.user.me	2025-01-05 23:38:38.374	2025-01-05 23:38:38.374	2025-01-05 23:38:38.375	\N	\N	\N
    2	lrgoqsfon3ifqrtkzblaqdns	plugin::users-permissions.auth.changePassword	2025-01-05 23:38:38.374	2025-01-05 23:38:38.374	2025-01-05 23:38:38.375	\N	\N	\N
    3	ro3nk44a42xmbv5gzbrktq13	plugin::users-permissions.auth.callback	2025-01-05 23:38:38.429	2025-01-05 23:38:38.429	2025-01-05 23:38:38.429	\N	\N	\N
    4	ij5ua97qvcrc8l4j60wyfuy1	plugin::users-permissions.auth.connect	2025-01-05 23:38:38.429	2025-01-05 23:38:38.429	2025-01-05 23:38:38.429	\N	\N	\N
    5	am737swf4z1xw8hudwx8xx87	plugin::users-permissions.auth.register	2025-01-05 23:38:38.429	2025-01-05 23:38:38.429	2025-01-05 23:38:38.43	\N	\N	\N
    6	hckweexfy96jynunfoz9ccm9	plugin::users-permissions.auth.resetPassword	2025-01-05 23:38:38.429	2025-01-05 23:38:38.429	2025-01-05 23:38:38.43	\N	\N	\N
    7	kaf4qlaao42hwlfngymlg3b5	plugin::users-permissions.auth.forgotPassword	2025-01-05 23:38:38.429	2025-01-05 23:38:38.429	2025-01-05 23:38:38.43	\N	\N	\N
    8	pgyse79x3ddrwawgv1ycszfq	plugin::users-permissions.auth.emailConfirmation	2025-01-05 23:38:38.429	2025-01-05 23:38:38.429	2025-01-05 23:38:38.43	\N	\N	\N
     9	peqno408uqw2i2gbtygtuwez	plugin::users-permissions.auth.sendEmailConfirmation	2025-01-05 23:38:38.429	2025-01-05 23:38:38.429	2025-01-05 23:38:38.43	\N	\N	\N
    10	rcavop35suueewzuqp38dpf4	api::article.article.findOne	2025-01-05 23:38:43.306	2025-01-05 23:38:43.306	2025-01-05 23:38:43.306	\N	\N	\N
    11	witzh2peb5fsnjnwk8fvd9cr	api::article.article.find	2025-01-05 23:38:43.306	2025-01-05 23:38:43.306	2025-01-05 23:38:43.306	\N	\N	\N
    12	vvjmajvxdf4s5u09nn2uiivw	api::category.category.find	2025-01-05 23:38:43.306	2025-01-05 23:38:43.306	2025-01-05 23:38:43.306	\N	\N	\N
    13	aru8865nrvij2fo0ngxp8snt	api::category.category.findOne	2025-01-05 23:38:43.306	2025-01-05 23:38:43.306	2025-01-05 23:38:43.307	\N	\N	\N
    14	gj18mqje7dqk49v1nf04uitz	api::author.author.findOne	2025-01-05 23:38:43.306	2025-01-05 23:38:43.306	2025-01-05 23:38:43.307	\N	\N	\N
    15	t2zq1rhcokm4s6p273k8ada7	api::author.author.find	2025-01-05 23:38:43.306	2025-01-05 23:38:43.306	2025-01-05 23:38:43.307	\N	\N	\N
    16	y3712lh5i3bujn99zfkm6t25	api::global.global.find	2025-01-05 23:38:43.306	2025-01-05 23:38:43.306	2025-01-05 23:38:43.307	\N	\N	\N
    18	j3zxv4muyctaeb8utjrt9yix	api::about.about.find	2025-01-05 23:38:43.306	2025-01-05 23:38:43.306	2025-01-05 23:38:43.308	\N	\N	\N
    \.


      ¤      1	1	1	1
    2	2	1	1
    3	3	2	1
    4	9	2	1
    5	7	2	1
    6	4	2	1
    7	6	2	1
    8	8	2	1
    9	5	2	1
 
   10	10	2	2
 
   12	11	2	2
 
   13	14	2	2
 
   11	15	2	2
 
   14	12	2	2
 
   17	18	2	2
 
   18	13	2	2
 
   19	16	2	2
    \.


      d   ²   1	babge13ozi098dvvzuajramv	Authenticated	Default role given to authenticated user.	authenticated	2025-01-05 23:38:38.337	2025-01-05 23:38:38.337	2025-01-05 23:38:38.337	\N	\N	\N
 ¦   2	ur9r7vyt2efhyftoyakcv5z9	Public	Default role given to unauthenticated user.	public	2025-01-05 23:38:38.354	2025-01-05 23:38:38.354	2025-01-05 23:38:38.354	\N	\N	\N
    \.


      f      \.


      ¦      \.


      V      \.


            \.


     