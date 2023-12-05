--
-- PostgreSQL database dump
--

-- Dumped from database version 13.0 (Debian 13.0-1.pgdg100+1)
-- Dumped by pg_dump version 13.0 (Debian 13.0-1.pgdg100+1)

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
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    action_parameters jsonb,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_permissions OWNER TO postgres;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_permissions_id_seq OWNER TO postgres;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- Name: admin_permissions_role_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);


ALTER TABLE public.admin_permissions_role_links OWNER TO postgres;

--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_permissions_role_links_id_seq OWNER TO postgres;

--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNED BY public.admin_permissions_role_links.id;


--
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_roles OWNER TO postgres;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_roles_id_seq OWNER TO postgres;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_users (
    id integer NOT NULL,
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
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_users OWNER TO postgres;

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_id_seq OWNER TO postgres;

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- Name: admin_users_roles_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_users_roles_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_order double precision,
    user_order double precision
);


ALTER TABLE public.admin_users_roles_links OWNER TO postgres;

--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_users_roles_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_roles_links_id_seq OWNER TO postgres;

--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNED BY public.admin_users_roles_links.id;


--
-- Name: bank_accounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bank_accounts (
    id integer NOT NULL,
    name character varying(255),
    address bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.bank_accounts OWNER TO postgres;

--
-- Name: bank_accounts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bank_accounts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bank_accounts_id_seq OWNER TO postgres;

--
-- Name: bank_accounts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bank_accounts_id_seq OWNED BY public.bank_accounts.id;


--
-- Name: bank_accounts_localizations_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bank_accounts_localizations_links (
    id integer NOT NULL,
    bank_account_id integer,
    inv_bank_account_id integer,
    bank_account_order double precision
);


ALTER TABLE public.bank_accounts_localizations_links OWNER TO postgres;

--
-- Name: bank_accounts_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bank_accounts_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bank_accounts_localizations_links_id_seq OWNER TO postgres;

--
-- Name: bank_accounts_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bank_accounts_localizations_links_id_seq OWNED BY public.bank_accounts_localizations_links.id;


--
-- Name: cards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cards (
    id integer NOT NULL,
    tittle character varying(255),
    description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.cards OWNER TO postgres;

--
-- Name: cards_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cards_id_seq OWNER TO postgres;

--
-- Name: cards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cards_id_seq OWNED BY public.cards.id;


--
-- Name: cards_localizations_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cards_localizations_links (
    id integer NOT NULL,
    card_id integer,
    inv_card_id integer,
    card_order double precision
);


ALTER TABLE public.cards_localizations_links OWNER TO postgres;

--
-- Name: cards_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cards_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cards_localizations_links_id_seq OWNER TO postgres;

--
-- Name: cards_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cards_localizations_links_id_seq OWNED BY public.cards_localizations_links.id;


--
-- Name: eighth_sections; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.eighth_sections (
    id integer NOT NULL,
    tittle character varying(255),
    sub_tittle character varying(255),
    name character varying(255),
    name_placeholder character varying(255),
    phone character varying(255),
    phone_placeholder character varying(255),
    email character varying(255),
    email_placeholder character varying(255),
    question character varying(255),
    question_placeholder character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    btn character varying(255)
);


ALTER TABLE public.eighth_sections OWNER TO postgres;

--
-- Name: eighth_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.eighth_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.eighth_sections_id_seq OWNER TO postgres;

--
-- Name: eighth_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.eighth_sections_id_seq OWNED BY public.eighth_sections.id;


--
-- Name: eighth_sections_localizations_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.eighth_sections_localizations_links (
    id integer NOT NULL,
    eighth_section_id integer,
    inv_eighth_section_id integer,
    eighth_section_order double precision
);


ALTER TABLE public.eighth_sections_localizations_links OWNER TO postgres;

--
-- Name: eighth_sections_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.eighth_sections_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.eighth_sections_localizations_links_id_seq OWNER TO postgres;

--
-- Name: eighth_sections_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.eighth_sections_localizations_links_id_seq OWNED BY public.eighth_sections_localizations_links.id;


--
-- Name: emails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.emails (
    id integer NOT NULL,
    email character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.emails OWNER TO postgres;

--
-- Name: emails_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.emails_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.emails_id_seq OWNER TO postgres;

--
-- Name: emails_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.emails_id_seq OWNED BY public.emails.id;


--
-- Name: emails_localizations_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.emails_localizations_links (
    id integer NOT NULL,
    email_id integer,
    inv_email_id integer,
    email_order double precision
);


ALTER TABLE public.emails_localizations_links OWNER TO postgres;

--
-- Name: emails_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.emails_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.emails_localizations_links_id_seq OWNER TO postgres;

--
-- Name: emails_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.emails_localizations_links_id_seq OWNED BY public.emails_localizations_links.id;


--
-- Name: fifth_sections; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fifth_sections (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    quote text,
    quote_2 text,
    name character varying(255)
);


ALTER TABLE public.fifth_sections OWNER TO postgres;

--
-- Name: fifth_sections_cards_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fifth_sections_cards_links (
    id integer NOT NULL,
    fifth_section_id integer,
    card_id integer,
    card_order double precision
);


ALTER TABLE public.fifth_sections_cards_links OWNER TO postgres;

--
-- Name: fifth_sections_cards_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fifth_sections_cards_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fifth_sections_cards_links_id_seq OWNER TO postgres;

--
-- Name: fifth_sections_cards_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fifth_sections_cards_links_id_seq OWNED BY public.fifth_sections_cards_links.id;


--
-- Name: fifth_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fifth_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fifth_sections_id_seq OWNER TO postgres;

--
-- Name: fifth_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fifth_sections_id_seq OWNED BY public.fifth_sections.id;


--
-- Name: fifth_sections_localizations_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fifth_sections_localizations_links (
    id integer NOT NULL,
    fifth_section_id integer,
    inv_fifth_section_id integer,
    fifth_section_order double precision
);


ALTER TABLE public.fifth_sections_localizations_links OWNER TO postgres;

--
-- Name: fifth_sections_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fifth_sections_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fifth_sections_localizations_links_id_seq OWNER TO postgres;

--
-- Name: fifth_sections_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fifth_sections_localizations_links_id_seq OWNED BY public.fifth_sections_localizations_links.id;


--
-- Name: files; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.files (
    id integer NOT NULL,
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
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.files OWNER TO postgres;

--
-- Name: files_folder_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.files_folder_links (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_order double precision
);


ALTER TABLE public.files_folder_links OWNER TO postgres;

--
-- Name: files_folder_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.files_folder_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_folder_links_id_seq OWNER TO postgres;

--
-- Name: files_folder_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.files_folder_links_id_seq OWNED BY public.files_folder_links.id;


--
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_id_seq OWNER TO postgres;

--
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- Name: files_related_morphs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.files_related_morphs (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.files_related_morphs OWNER TO postgres;

--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.files_related_morphs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_related_morphs_id_seq OWNER TO postgres;

--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.files_related_morphs_id_seq OWNED BY public.files_related_morphs.id;


--
-- Name: first_sections; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.first_sections (
    id integer NOT NULL,
    tittle character varying(255),
    description character varying(255),
    btn_name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.first_sections OWNER TO postgres;

--
-- Name: first_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.first_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.first_sections_id_seq OWNER TO postgres;

--
-- Name: first_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.first_sections_id_seq OWNED BY public.first_sections.id;


--
-- Name: first_sections_localizations_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.first_sections_localizations_links (
    id integer NOT NULL,
    first_section_id integer,
    inv_first_section_id integer,
    first_section_order double precision
);


ALTER TABLE public.first_sections_localizations_links OWNER TO postgres;

--
-- Name: first_sections_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.first_sections_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.first_sections_localizations_links_id_seq OWNER TO postgres;

--
-- Name: first_sections_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.first_sections_localizations_links_id_seq OWNED BY public.first_sections_localizations_links.id;


--
-- Name: footer_sections; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.footer_sections (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    fb_link character varying(255),
    insta_link character varying(255),
    tw_link character varying(255),
    contacts_tittle character varying(255),
    social_tittle character varying(255)
);


ALTER TABLE public.footer_sections OWNER TO postgres;

--
-- Name: footer_sections_email_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.footer_sections_email_links (
    id integer NOT NULL,
    footer_section_id integer,
    email_id integer
);


ALTER TABLE public.footer_sections_email_links OWNER TO postgres;

--
-- Name: footer_sections_email_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.footer_sections_email_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.footer_sections_email_links_id_seq OWNER TO postgres;

--
-- Name: footer_sections_email_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.footer_sections_email_links_id_seq OWNED BY public.footer_sections_email_links.id;


--
-- Name: footer_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.footer_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.footer_sections_id_seq OWNER TO postgres;

--
-- Name: footer_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.footer_sections_id_seq OWNED BY public.footer_sections.id;


--
-- Name: footer_sections_localizations_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.footer_sections_localizations_links (
    id integer NOT NULL,
    footer_section_id integer,
    inv_footer_section_id integer,
    footer_section_order double precision
);


ALTER TABLE public.footer_sections_localizations_links OWNER TO postgres;

--
-- Name: footer_sections_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.footer_sections_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.footer_sections_localizations_links_id_seq OWNER TO postgres;

--
-- Name: footer_sections_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.footer_sections_localizations_links_id_seq OWNED BY public.footer_sections_localizations_links.id;


--
-- Name: footer_sections_menu_items_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.footer_sections_menu_items_links (
    id integer NOT NULL,
    footer_section_id integer,
    menu_id integer,
    menu_order double precision
);


ALTER TABLE public.footer_sections_menu_items_links OWNER TO postgres;

--
-- Name: footer_sections_menu_items_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.footer_sections_menu_items_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.footer_sections_menu_items_links_id_seq OWNER TO postgres;

--
-- Name: footer_sections_menu_items_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.footer_sections_menu_items_links_id_seq OWNED BY public.footer_sections_menu_items_links.id;


--
-- Name: footer_sections_phones_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.footer_sections_phones_links (
    id integer NOT NULL,
    footer_section_id integer,
    phone_id integer,
    phone_order double precision
);


ALTER TABLE public.footer_sections_phones_links OWNER TO postgres;

--
-- Name: footer_sections_phones_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.footer_sections_phones_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.footer_sections_phones_links_id_seq OWNER TO postgres;

--
-- Name: footer_sections_phones_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.footer_sections_phones_links_id_seq OWNED BY public.footer_sections_phones_links.id;


--
-- Name: fourth_sections; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fourth_sections (
    id integer NOT NULL,
    tittle character varying(255),
    description text,
    quote character varying(255),
    img_description character varying(255),
    sub_tittle character varying(255),
    sub_description text,
    name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.fourth_sections OWNER TO postgres;

--
-- Name: fourth_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fourth_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fourth_sections_id_seq OWNER TO postgres;

--
-- Name: fourth_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fourth_sections_id_seq OWNED BY public.fourth_sections.id;


--
-- Name: fourth_sections_localizations_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fourth_sections_localizations_links (
    id integer NOT NULL,
    fourth_section_id integer,
    inv_fourth_section_id integer,
    fourth_section_order double precision
);


ALTER TABLE public.fourth_sections_localizations_links OWNER TO postgres;

--
-- Name: fourth_sections_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fourth_sections_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fourth_sections_localizations_links_id_seq OWNER TO postgres;

--
-- Name: fourth_sections_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fourth_sections_localizations_links_id_seq OWNED BY public.fourth_sections_localizations_links.id;


--
-- Name: heads; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.heads (
    id integer NOT NULL,
    support character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.heads OWNER TO postgres;

--
-- Name: heads_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.heads_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.heads_id_seq OWNER TO postgres;

--
-- Name: heads_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.heads_id_seq OWNED BY public.heads.id;


--
-- Name: heads_localizations_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.heads_localizations_links (
    id integer NOT NULL,
    head_id integer,
    inv_head_id integer,
    head_order double precision
);


ALTER TABLE public.heads_localizations_links OWNER TO postgres;

--
-- Name: heads_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.heads_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.heads_localizations_links_id_seq OWNER TO postgres;

--
-- Name: heads_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.heads_localizations_links_id_seq OWNED BY public.heads_localizations_links.id;


--
-- Name: heads_menu_items_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.heads_menu_items_links (
    id integer NOT NULL,
    head_id integer,
    menu_id integer,
    menu_order double precision
);


ALTER TABLE public.heads_menu_items_links OWNER TO postgres;

--
-- Name: heads_menu_items_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.heads_menu_items_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.heads_menu_items_links_id_seq OWNER TO postgres;

--
-- Name: heads_menu_items_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.heads_menu_items_links_id_seq OWNED BY public.heads_menu_items_links.id;


--
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.i18n_locale OWNER TO postgres;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.i18n_locale_id_seq OWNER TO postgres;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- Name: menu_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.menu_items (
    id integer NOT NULL,
    item character varying(255),
    link character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.menu_items OWNER TO postgres;

--
-- Name: menu_items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.menu_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.menu_items_id_seq OWNER TO postgres;

--
-- Name: menu_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.menu_items_id_seq OWNED BY public.menu_items.id;


--
-- Name: menu_items_localizations_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.menu_items_localizations_links (
    id integer NOT NULL,
    menu_id integer,
    inv_menu_id integer,
    menu_order double precision
);


ALTER TABLE public.menu_items_localizations_links OWNER TO postgres;

--
-- Name: menu_items_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.menu_items_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.menu_items_localizations_links_id_seq OWNER TO postgres;

--
-- Name: menu_items_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.menu_items_localizations_links_id_seq OWNED BY public.menu_items_localizations_links.id;


--
-- Name: partners; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.partners (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.partners OWNER TO postgres;

--
-- Name: partners_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.partners_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.partners_id_seq OWNER TO postgres;

--
-- Name: partners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.partners_id_seq OWNED BY public.partners.id;


--
-- Name: partners_localizations_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.partners_localizations_links (
    id integer NOT NULL,
    partner_id integer,
    inv_partner_id integer,
    partner_order double precision
);


ALTER TABLE public.partners_localizations_links OWNER TO postgres;

--
-- Name: partners_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.partners_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.partners_localizations_links_id_seq OWNER TO postgres;

--
-- Name: partners_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.partners_localizations_links_id_seq OWNED BY public.partners_localizations_links.id;


--
-- Name: phones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.phones (
    id integer NOT NULL,
    phone bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.phones OWNER TO postgres;

--
-- Name: phones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.phones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.phones_id_seq OWNER TO postgres;

--
-- Name: phones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.phones_id_seq OWNED BY public.phones.id;


--
-- Name: phones_localizations_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.phones_localizations_links (
    id integer NOT NULL,
    phone_id integer,
    inv_phone_id integer,
    phone_order double precision
);


ALTER TABLE public.phones_localizations_links OWNER TO postgres;

--
-- Name: phones_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.phones_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.phones_localizations_links_id_seq OWNER TO postgres;

--
-- Name: phones_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.phones_localizations_links_id_seq OWNED BY public.phones_localizations_links.id;


--
-- Name: projects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.projects (
    id integer NOT NULL,
    description text,
    goal numeric(10,2),
    quote text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    btn character varying(255)
);


ALTER TABLE public.projects OWNER TO postgres;

--
-- Name: projects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projects_id_seq OWNER TO postgres;

--
-- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.projects_id_seq OWNED BY public.projects.id;


--
-- Name: projects_localizations_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.projects_localizations_links (
    id integer NOT NULL,
    project_id integer,
    inv_project_id integer,
    project_order double precision
);


ALTER TABLE public.projects_localizations_links OWNER TO postgres;

--
-- Name: projects_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.projects_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projects_localizations_links_id_seq OWNER TO postgres;

--
-- Name: projects_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.projects_localizations_links_id_seq OWNED BY public.projects_localizations_links.id;


--
-- Name: second_sections; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.second_sections (
    id integer NOT NULL,
    tittle character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.second_sections OWNER TO postgres;

--
-- Name: second_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.second_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.second_sections_id_seq OWNER TO postgres;

--
-- Name: second_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.second_sections_id_seq OWNED BY public.second_sections.id;


--
-- Name: second_sections_localizations_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.second_sections_localizations_links (
    id integer NOT NULL,
    second_section_id integer,
    inv_second_section_id integer,
    second_section_order double precision
);


ALTER TABLE public.second_sections_localizations_links OWNER TO postgres;

--
-- Name: second_sections_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.second_sections_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.second_sections_localizations_links_id_seq OWNER TO postgres;

--
-- Name: second_sections_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.second_sections_localizations_links_id_seq OWNED BY public.second_sections_localizations_links.id;


--
-- Name: second_sections_projects_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.second_sections_projects_links (
    id integer NOT NULL,
    second_section_id integer,
    project_id integer,
    project_order double precision
);


ALTER TABLE public.second_sections_projects_links OWNER TO postgres;

--
-- Name: second_sections_projects_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.second_sections_projects_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.second_sections_projects_links_id_seq OWNER TO postgres;

--
-- Name: second_sections_projects_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.second_sections_projects_links_id_seq OWNED BY public.second_sections_projects_links.id;


--
-- Name: seventh_sections; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.seventh_sections (
    id integer NOT NULL,
    tittle character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.seventh_sections OWNER TO postgres;

--
-- Name: seventh_sections_bank_accounts_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.seventh_sections_bank_accounts_links (
    id integer NOT NULL,
    seventh_section_id integer,
    bank_account_id integer,
    bank_account_order double precision
);


ALTER TABLE public.seventh_sections_bank_accounts_links OWNER TO postgres;

--
-- Name: seventh_sections_bank_accounts_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.seventh_sections_bank_accounts_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seventh_sections_bank_accounts_links_id_seq OWNER TO postgres;

--
-- Name: seventh_sections_bank_accounts_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.seventh_sections_bank_accounts_links_id_seq OWNED BY public.seventh_sections_bank_accounts_links.id;


--
-- Name: seventh_sections_email_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.seventh_sections_email_links (
    id integer NOT NULL,
    seventh_section_id integer,
    email_id integer
);


ALTER TABLE public.seventh_sections_email_links OWNER TO postgres;

--
-- Name: seventh_sections_email_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.seventh_sections_email_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seventh_sections_email_links_id_seq OWNER TO postgres;

--
-- Name: seventh_sections_email_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.seventh_sections_email_links_id_seq OWNED BY public.seventh_sections_email_links.id;


--
-- Name: seventh_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.seventh_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seventh_sections_id_seq OWNER TO postgres;

--
-- Name: seventh_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.seventh_sections_id_seq OWNED BY public.seventh_sections.id;


--
-- Name: seventh_sections_localizations_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.seventh_sections_localizations_links (
    id integer NOT NULL,
    seventh_section_id integer,
    inv_seventh_section_id integer,
    seventh_section_order double precision
);


ALTER TABLE public.seventh_sections_localizations_links OWNER TO postgres;

--
-- Name: seventh_sections_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.seventh_sections_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seventh_sections_localizations_links_id_seq OWNER TO postgres;

--
-- Name: seventh_sections_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.seventh_sections_localizations_links_id_seq OWNED BY public.seventh_sections_localizations_links.id;


--
-- Name: seventh_sections_phones_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.seventh_sections_phones_links (
    id integer NOT NULL,
    seventh_section_id integer,
    phone_id integer,
    phone_order double precision
);


ALTER TABLE public.seventh_sections_phones_links OWNER TO postgres;

--
-- Name: seventh_sections_phones_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.seventh_sections_phones_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seventh_sections_phones_links_id_seq OWNER TO postgres;

--
-- Name: seventh_sections_phones_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.seventh_sections_phones_links_id_seq OWNED BY public.seventh_sections_phones_links.id;


--
-- Name: sixth_sections; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sixth_sections (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.sixth_sections OWNER TO postgres;

--
-- Name: sixth_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sixth_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sixth_sections_id_seq OWNER TO postgres;

--
-- Name: sixth_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sixth_sections_id_seq OWNED BY public.sixth_sections.id;


--
-- Name: sixth_sections_localizations_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sixth_sections_localizations_links (
    id integer NOT NULL,
    sixth_section_id integer,
    inv_sixth_section_id integer,
    sixth_section_order double precision
);


ALTER TABLE public.sixth_sections_localizations_links OWNER TO postgres;

--
-- Name: sixth_sections_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sixth_sections_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sixth_sections_localizations_links_id_seq OWNER TO postgres;

--
-- Name: sixth_sections_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sixth_sections_localizations_links_id_seq OWNED BY public.sixth_sections_localizations_links.id;


--
-- Name: sixth_sections_partners_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sixth_sections_partners_links (
    id integer NOT NULL,
    sixth_section_id integer,
    partner_id integer,
    partner_order double precision
);


ALTER TABLE public.sixth_sections_partners_links OWNER TO postgres;

--
-- Name: sixth_sections_partners_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sixth_sections_partners_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sixth_sections_partners_links_id_seq OWNER TO postgres;

--
-- Name: sixth_sections_partners_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sixth_sections_partners_links_id_seq OWNED BY public.sixth_sections_partners_links.id;


--
-- Name: strapi_api_token_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_token_permissions OWNER TO postgres;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_token_permissions_id_seq OWNER TO postgres;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;


--
-- Name: strapi_api_token_permissions_token_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_api_token_permissions_token_links (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_order double precision
);


ALTER TABLE public.strapi_api_token_permissions_token_links OWNER TO postgres;

--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_api_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_token_permissions_token_links_id_seq OWNER TO postgres;

--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNED BY public.strapi_api_token_permissions_token_links.id;


--
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_tokens OWNER TO postgres;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_tokens_id_seq OWNER TO postgres;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.strapi_core_store_settings OWNER TO postgres;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_core_store_settings_id_seq OWNER TO postgres;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE public.strapi_database_schema OWNER TO postgres;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_database_schema_id_seq OWNER TO postgres;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations OWNER TO postgres;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_migrations_id_seq OWNER TO postgres;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- Name: strapi_transfer_token_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_transfer_token_permissions OWNER TO postgres;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_transfer_token_permissions_id_seq OWNER TO postgres;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;


--
-- Name: strapi_transfer_token_permissions_token_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_transfer_token_permissions_token_links (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_order double precision
);


ALTER TABLE public.strapi_transfer_token_permissions_token_links OWNER TO postgres;

--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_transfer_token_permissions_token_links_id_seq OWNER TO postgres;

--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq OWNED BY public.strapi_transfer_token_permissions_token_links.id;


--
-- Name: strapi_transfer_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_transfer_tokens OWNER TO postgres;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_transfer_tokens_id_seq OWNER TO postgres;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO postgres;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_webhooks_id_seq OWNER TO postgres;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: supports; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.supports (
    id integer NOT NULL,
    name character varying(255),
    email character varying(255),
    phone character varying(255),
    message text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.supports OWNER TO postgres;

--
-- Name: supports_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.supports_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supports_id_seq OWNER TO postgres;

--
-- Name: supports_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.supports_id_seq OWNED BY public.supports.id;


--
-- Name: third_sections; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.third_sections (
    id integer NOT NULL,
    tittle character varying(255),
    description character varying(255),
    btn character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.third_sections OWNER TO postgres;

--
-- Name: third_sections_bank_accounts_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.third_sections_bank_accounts_links (
    id integer NOT NULL,
    third_section_id integer,
    bank_account_id integer,
    bank_account_order double precision
);


ALTER TABLE public.third_sections_bank_accounts_links OWNER TO postgres;

--
-- Name: third_sections_bank_accounts_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.third_sections_bank_accounts_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.third_sections_bank_accounts_links_id_seq OWNER TO postgres;

--
-- Name: third_sections_bank_accounts_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.third_sections_bank_accounts_links_id_seq OWNED BY public.third_sections_bank_accounts_links.id;


--
-- Name: third_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.third_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.third_sections_id_seq OWNER TO postgres;

--
-- Name: third_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.third_sections_id_seq OWNED BY public.third_sections.id;


--
-- Name: third_sections_localizations_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.third_sections_localizations_links (
    id integer NOT NULL,
    third_section_id integer,
    inv_third_section_id integer,
    third_section_order double precision
);


ALTER TABLE public.third_sections_localizations_links OWNER TO postgres;

--
-- Name: third_sections_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.third_sections_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.third_sections_localizations_links_id_seq OWNER TO postgres;

--
-- Name: third_sections_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.third_sections_localizations_links_id_seq OWNED BY public.third_sections_localizations_links.id;


--
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_permissions OWNER TO postgres;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_permissions_id_seq OWNER TO postgres;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- Name: up_permissions_role_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);


ALTER TABLE public.up_permissions_role_links OWNER TO postgres;

--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_permissions_role_links_id_seq OWNER TO postgres;

--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNED BY public.up_permissions_role_links.id;


--
-- Name: up_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_roles OWNER TO postgres;

--
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_roles_id_seq OWNER TO postgres;

--
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- Name: up_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_users OWNER TO postgres;

--
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_users_id_seq OWNER TO postgres;

--
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- Name: up_users_role_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_users_role_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_order double precision
);


ALTER TABLE public.up_users_role_links OWNER TO postgres;

--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_users_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_users_role_links_id_seq OWNER TO postgres;

--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_users_role_links_id_seq OWNED BY public.up_users_role_links.id;


--
-- Name: upload_folders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.upload_folders OWNER TO postgres;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_folders_id_seq OWNER TO postgres;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;


--
-- Name: upload_folders_parent_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upload_folders_parent_links (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_order double precision
);


ALTER TABLE public.upload_folders_parent_links OWNER TO postgres;

--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.upload_folders_parent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_folders_parent_links_id_seq OWNER TO postgres;

--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNED BY public.upload_folders_parent_links.id;


--
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- Name: admin_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_links_id_seq'::regclass);


--
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- Name: admin_users_roles_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_links_id_seq'::regclass);


--
-- Name: bank_accounts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bank_accounts ALTER COLUMN id SET DEFAULT nextval('public.bank_accounts_id_seq'::regclass);


--
-- Name: bank_accounts_localizations_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bank_accounts_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.bank_accounts_localizations_links_id_seq'::regclass);


--
-- Name: cards id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cards ALTER COLUMN id SET DEFAULT nextval('public.cards_id_seq'::regclass);


--
-- Name: cards_localizations_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cards_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.cards_localizations_links_id_seq'::regclass);


--
-- Name: eighth_sections id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.eighth_sections ALTER COLUMN id SET DEFAULT nextval('public.eighth_sections_id_seq'::regclass);


--
-- Name: eighth_sections_localizations_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.eighth_sections_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.eighth_sections_localizations_links_id_seq'::regclass);


--
-- Name: emails id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emails ALTER COLUMN id SET DEFAULT nextval('public.emails_id_seq'::regclass);


--
-- Name: emails_localizations_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emails_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.emails_localizations_links_id_seq'::regclass);


--
-- Name: fifth_sections id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fifth_sections ALTER COLUMN id SET DEFAULT nextval('public.fifth_sections_id_seq'::regclass);


--
-- Name: fifth_sections_cards_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fifth_sections_cards_links ALTER COLUMN id SET DEFAULT nextval('public.fifth_sections_cards_links_id_seq'::regclass);


--
-- Name: fifth_sections_localizations_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fifth_sections_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.fifth_sections_localizations_links_id_seq'::regclass);


--
-- Name: files id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- Name: files_folder_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_links ALTER COLUMN id SET DEFAULT nextval('public.files_folder_links_id_seq'::regclass);


--
-- Name: files_related_morphs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('public.files_related_morphs_id_seq'::regclass);


--
-- Name: first_sections id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.first_sections ALTER COLUMN id SET DEFAULT nextval('public.first_sections_id_seq'::regclass);


--
-- Name: first_sections_localizations_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.first_sections_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.first_sections_localizations_links_id_seq'::regclass);


--
-- Name: footer_sections id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer_sections ALTER COLUMN id SET DEFAULT nextval('public.footer_sections_id_seq'::regclass);


--
-- Name: footer_sections_email_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer_sections_email_links ALTER COLUMN id SET DEFAULT nextval('public.footer_sections_email_links_id_seq'::regclass);


--
-- Name: footer_sections_localizations_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer_sections_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.footer_sections_localizations_links_id_seq'::regclass);


--
-- Name: footer_sections_menu_items_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer_sections_menu_items_links ALTER COLUMN id SET DEFAULT nextval('public.footer_sections_menu_items_links_id_seq'::regclass);


--
-- Name: footer_sections_phones_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer_sections_phones_links ALTER COLUMN id SET DEFAULT nextval('public.footer_sections_phones_links_id_seq'::regclass);


--
-- Name: fourth_sections id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fourth_sections ALTER COLUMN id SET DEFAULT nextval('public.fourth_sections_id_seq'::regclass);


--
-- Name: fourth_sections_localizations_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fourth_sections_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.fourth_sections_localizations_links_id_seq'::regclass);


--
-- Name: heads id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.heads ALTER COLUMN id SET DEFAULT nextval('public.heads_id_seq'::regclass);


--
-- Name: heads_localizations_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.heads_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.heads_localizations_links_id_seq'::regclass);


--
-- Name: heads_menu_items_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.heads_menu_items_links ALTER COLUMN id SET DEFAULT nextval('public.heads_menu_items_links_id_seq'::regclass);


--
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- Name: menu_items id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.menu_items ALTER COLUMN id SET DEFAULT nextval('public.menu_items_id_seq'::regclass);


--
-- Name: menu_items_localizations_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.menu_items_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.menu_items_localizations_links_id_seq'::regclass);


--
-- Name: partners id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partners ALTER COLUMN id SET DEFAULT nextval('public.partners_id_seq'::regclass);


--
-- Name: partners_localizations_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partners_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.partners_localizations_links_id_seq'::regclass);


--
-- Name: phones id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.phones ALTER COLUMN id SET DEFAULT nextval('public.phones_id_seq'::regclass);


--
-- Name: phones_localizations_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.phones_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.phones_localizations_links_id_seq'::regclass);


--
-- Name: projects id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects ALTER COLUMN id SET DEFAULT nextval('public.projects_id_seq'::regclass);


--
-- Name: projects_localizations_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.projects_localizations_links_id_seq'::regclass);


--
-- Name: second_sections id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.second_sections ALTER COLUMN id SET DEFAULT nextval('public.second_sections_id_seq'::regclass);


--
-- Name: second_sections_localizations_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.second_sections_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.second_sections_localizations_links_id_seq'::regclass);


--
-- Name: second_sections_projects_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.second_sections_projects_links ALTER COLUMN id SET DEFAULT nextval('public.second_sections_projects_links_id_seq'::regclass);


--
-- Name: seventh_sections id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seventh_sections ALTER COLUMN id SET DEFAULT nextval('public.seventh_sections_id_seq'::regclass);


--
-- Name: seventh_sections_bank_accounts_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seventh_sections_bank_accounts_links ALTER COLUMN id SET DEFAULT nextval('public.seventh_sections_bank_accounts_links_id_seq'::regclass);


--
-- Name: seventh_sections_email_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seventh_sections_email_links ALTER COLUMN id SET DEFAULT nextval('public.seventh_sections_email_links_id_seq'::regclass);


--
-- Name: seventh_sections_localizations_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seventh_sections_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.seventh_sections_localizations_links_id_seq'::regclass);


--
-- Name: seventh_sections_phones_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seventh_sections_phones_links ALTER COLUMN id SET DEFAULT nextval('public.seventh_sections_phones_links_id_seq'::regclass);


--
-- Name: sixth_sections id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sixth_sections ALTER COLUMN id SET DEFAULT nextval('public.sixth_sections_id_seq'::regclass);


--
-- Name: sixth_sections_localizations_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sixth_sections_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.sixth_sections_localizations_links_id_seq'::regclass);


--
-- Name: sixth_sections_partners_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sixth_sections_partners_links ALTER COLUMN id SET DEFAULT nextval('public.sixth_sections_partners_links_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions_token_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_links_id_seq'::regclass);


--
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions_token_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_links_id_seq'::regclass);


--
-- Name: strapi_transfer_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: supports id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supports ALTER COLUMN id SET DEFAULT nextval('public.supports_id_seq'::regclass);


--
-- Name: third_sections id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.third_sections ALTER COLUMN id SET DEFAULT nextval('public.third_sections_id_seq'::regclass);


--
-- Name: third_sections_bank_accounts_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.third_sections_bank_accounts_links ALTER COLUMN id SET DEFAULT nextval('public.third_sections_bank_accounts_links_id_seq'::regclass);


--
-- Name: third_sections_localizations_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.third_sections_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.third_sections_localizations_links_id_seq'::regclass);


--
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- Name: up_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_links_id_seq'::regclass);


--
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- Name: up_users_role_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_links_id_seq'::regclass);


--
-- Name: upload_folders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);


--
-- Name: upload_folders_parent_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_links_id_seq'::regclass);


--
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_permissions (id, action, action_parameters, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
2	plugin::content-manager.explorer.create	{}	api::bank-account.bank-account	{"fields": ["name", "address"]}	[]	2023-10-30 21:32:53.775	2023-10-30 21:32:53.775	\N	\N
3	plugin::content-manager.explorer.create	{}	api::card.card	{"fields": ["tittle", "description", "icon"]}	[]	2023-10-30 21:32:53.785	2023-10-30 21:32:53.785	\N	\N
5	plugin::content-manager.explorer.create	{}	api::email.email	{"fields": ["email"]}	[]	2023-10-30 21:32:53.801	2023-10-30 21:32:53.801	\N	\N
501	plugin::content-manager.explorer.delete	{}	api::eighth-section.eighth-section	{"locales": ["en", "uk", "pl"]}	[]	2023-11-19 11:54:12.882	2023-11-19 11:54:12.882	\N	\N
9	plugin::content-manager.explorer.create	{}	api::menu.menu	{"fields": ["item", "link"]}	[]	2023-10-30 21:32:53.834	2023-10-30 21:32:53.834	\N	\N
502	plugin::content-manager.explorer.publish	{}	api::eighth-section.eighth-section	{"locales": ["en", "uk", "pl"]}	[]	2023-11-19 11:54:12.894	2023-11-19 11:54:12.894	\N	\N
11	plugin::content-manager.explorer.create	{}	api::partner.partner	{"fields": ["icon"]}	[]	2023-10-30 21:32:53.849	2023-10-30 21:32:53.849	\N	\N
13	plugin::content-manager.explorer.create	{}	api::phone.phone	{"fields": ["phone"]}	[]	2023-10-30 21:32:53.864	2023-10-30 21:32:53.864	\N	\N
14	plugin::content-manager.explorer.create	{}	api::project.project	{"fields": ["img", "description", "goal", "quote", "waterMark"]}	[]	2023-10-30 21:32:53.871	2023-10-30 21:32:53.871	\N	\N
16	plugin::content-manager.explorer.create	{}	api::support.support	{"fields": ["name", "email", "phone", "message"]}	[]	2023-10-30 21:32:53.885	2023-10-30 21:32:53.885	\N	\N
19	plugin::content-manager.explorer.read	{}	api::bank-account.bank-account	{"fields": ["name", "address"]}	[]	2023-10-30 21:32:53.907	2023-10-30 21:32:53.907	\N	\N
20	plugin::content-manager.explorer.read	{}	api::card.card	{"fields": ["tittle", "description", "icon"]}	[]	2023-10-30 21:32:53.914	2023-10-30 21:32:53.914	\N	\N
22	plugin::content-manager.explorer.read	{}	api::email.email	{"fields": ["email"]}	[]	2023-10-30 21:32:53.928	2023-10-30 21:32:53.928	\N	\N
26	plugin::content-manager.explorer.read	{}	api::menu.menu	{"fields": ["item", "link"]}	[]	2023-10-30 21:32:53.954	2023-10-30 21:32:53.954	\N	\N
28	plugin::content-manager.explorer.read	{}	api::partner.partner	{"fields": ["icon"]}	[]	2023-10-30 21:32:53.969	2023-10-30 21:32:53.969	\N	\N
30	plugin::content-manager.explorer.read	{}	api::phone.phone	{"fields": ["phone"]}	[]	2023-10-30 21:32:53.982	2023-10-30 21:32:53.982	\N	\N
31	plugin::content-manager.explorer.read	{}	api::project.project	{"fields": ["img", "description", "goal", "quote", "waterMark"]}	[]	2023-10-30 21:32:53.989	2023-10-30 21:32:53.989	\N	\N
33	plugin::content-manager.explorer.read	{}	api::support.support	{"fields": ["name", "email", "phone", "message"]}	[]	2023-10-30 21:32:54.003	2023-10-30 21:32:54.003	\N	\N
36	plugin::content-manager.explorer.update	{}	api::bank-account.bank-account	{"fields": ["name", "address"]}	[]	2023-10-30 21:32:54.026	2023-10-30 21:32:54.026	\N	\N
37	plugin::content-manager.explorer.update	{}	api::card.card	{"fields": ["tittle", "description", "icon"]}	[]	2023-10-30 21:32:54.033	2023-10-30 21:32:54.033	\N	\N
39	plugin::content-manager.explorer.update	{}	api::email.email	{"fields": ["email"]}	[]	2023-10-30 21:32:54.047	2023-10-30 21:32:54.047	\N	\N
220	plugin::content-manager.explorer.delete	{}	plugin::users-permissions.user	{}	[]	2023-10-30 21:32:55.419	2023-10-30 21:32:55.419	\N	\N
442	plugin::content-manager.explorer.create	{}	api::second-section.second-section	{"fields": ["tittle", "projects"], "locales": ["en", "uk", "pl"]}	[]	2023-11-19 10:34:40.213	2023-11-19 10:34:40.213	\N	\N
43	plugin::content-manager.explorer.update	{}	api::menu.menu	{"fields": ["item", "link"]}	[]	2023-10-30 21:32:54.076	2023-10-30 21:32:54.076	\N	\N
503	plugin::content-manager.explorer.create	{}	api::eighth-section.eighth-section	{"fields": ["tittle", "subTittle", "name", "namePlaceholder", "phone", "phonePlaceholder", "email", "emailPlaceholder", "question", "questionPlaceholder", "btn"], "locales": ["en", "uk", "pl"]}	[]	2023-11-19 12:00:33.241	2023-11-19 12:00:33.241	\N	\N
45	plugin::content-manager.explorer.update	{}	api::partner.partner	{"fields": ["icon"]}	[]	2023-10-30 21:32:54.089	2023-10-30 21:32:54.089	\N	\N
504	plugin::content-manager.explorer.read	{}	api::eighth-section.eighth-section	{"fields": ["tittle", "subTittle", "name", "namePlaceholder", "phone", "phonePlaceholder", "email", "emailPlaceholder", "question", "questionPlaceholder", "btn"], "locales": ["en", "uk", "pl"]}	[]	2023-11-19 12:00:33.256	2023-11-19 12:00:33.256	\N	\N
47	plugin::content-manager.explorer.update	{}	api::phone.phone	{"fields": ["phone"]}	[]	2023-10-30 21:32:54.105	2023-10-30 21:32:54.105	\N	\N
48	plugin::content-manager.explorer.update	{}	api::project.project	{"fields": ["img", "description", "goal", "quote", "waterMark"]}	[]	2023-10-30 21:32:54.112	2023-10-30 21:32:54.112	\N	\N
505	plugin::content-manager.explorer.update	{}	api::eighth-section.eighth-section	{"fields": ["tittle", "subTittle", "name", "namePlaceholder", "phone", "phonePlaceholder", "email", "emailPlaceholder", "question", "questionPlaceholder", "btn"], "locales": ["en", "uk", "pl"]}	[]	2023-11-19 12:00:33.268	2023-11-19 12:00:33.268	\N	\N
50	plugin::content-manager.explorer.update	{}	api::support.support	{"fields": ["name", "email", "phone", "message"]}	[]	2023-10-30 21:32:54.127	2023-10-30 21:32:54.127	\N	\N
443	plugin::content-manager.explorer.read	{}	api::second-section.second-section	{"fields": ["tittle", "projects"], "locales": ["en", "uk", "pl"]}	[]	2023-11-19 10:34:40.227	2023-11-19 10:34:40.227	\N	\N
444	plugin::content-manager.explorer.update	{}	api::second-section.second-section	{"fields": ["tittle", "projects"], "locales": ["en", "uk", "pl"]}	[]	2023-11-19 10:34:40.239	2023-11-19 10:34:40.239	\N	\N
445	plugin::content-manager.explorer.delete	{}	api::second-section.second-section	{"locales": ["en", "uk", "pl"]}	[]	2023-11-19 10:34:40.254	2023-11-19 10:34:40.254	\N	\N
446	plugin::content-manager.explorer.publish	{}	api::second-section.second-section	{"locales": ["en", "uk", "pl"]}	[]	2023-11-19 10:34:40.266	2023-11-19 10:34:40.266	\N	\N
480	plugin::content-manager.explorer.create	{}	api::sixth-section.sixth-section	{"fields": ["name", "partners"], "locales": ["en", "uk", "pl"]}	[]	2023-11-19 11:13:54.766	2023-11-19 11:13:54.766	\N	\N
481	plugin::content-manager.explorer.read	{}	api::sixth-section.sixth-section	{"fields": ["name", "partners"], "locales": ["en", "uk", "pl"]}	[]	2023-11-19 11:13:54.781	2023-11-19 11:13:54.781	\N	\N
482	plugin::content-manager.explorer.update	{}	api::sixth-section.sixth-section	{"fields": ["name", "partners"], "locales": ["en", "uk", "pl"]}	[]	2023-11-19 11:13:54.793	2023-11-19 11:13:54.793	\N	\N
483	plugin::content-manager.explorer.delete	{}	api::sixth-section.sixth-section	{"locales": ["en", "uk", "pl"]}	[]	2023-11-19 11:13:54.804	2023-11-19 11:13:54.804	\N	\N
484	plugin::content-manager.explorer.publish	{}	api::sixth-section.sixth-section	{"locales": ["en", "uk", "pl"]}	[]	2023-11-19 11:13:54.815	2023-11-19 11:13:54.815	\N	\N
67	plugin::content-manager.explorer.delete	{}	api::support.support	{}	[]	2023-10-30 21:32:54.251	2023-10-30 21:32:54.251	\N	\N
84	plugin::content-manager.explorer.publish	{}	api::support.support	{}	[]	2023-10-30 21:32:54.379	2023-10-30 21:32:54.379	\N	\N
86	plugin::upload.read	{}	\N	{}	[]	2023-10-30 21:32:54.396	2023-10-30 21:32:54.396	\N	\N
87	plugin::upload.configure-view	{}	\N	{}	[]	2023-10-30 21:32:54.402	2023-10-30 21:32:54.402	\N	\N
88	plugin::upload.assets.create	{}	\N	{}	[]	2023-10-30 21:32:54.409	2023-10-30 21:32:54.409	\N	\N
89	plugin::upload.assets.update	{}	\N	{}	[]	2023-10-30 21:32:54.417	2023-10-30 21:32:54.417	\N	\N
90	plugin::upload.assets.download	{}	\N	{}	[]	2023-10-30 21:32:54.424	2023-10-30 21:32:54.424	\N	\N
91	plugin::upload.assets.copy-link	{}	\N	{}	[]	2023-10-30 21:32:54.441	2023-10-30 21:32:54.441	\N	\N
93	plugin::content-manager.explorer.create	{}	api::bank-account.bank-account	{"fields": ["name", "address"]}	["admin::is-creator"]	2023-10-30 21:32:54.468	2023-10-30 21:32:54.468	\N	\N
94	plugin::content-manager.explorer.create	{}	api::card.card	{"fields": ["tittle", "description", "icon"]}	["admin::is-creator"]	2023-10-30 21:32:54.475	2023-10-30 21:32:54.475	\N	\N
96	plugin::content-manager.explorer.create	{}	api::email.email	{"fields": ["email"]}	["admin::is-creator"]	2023-10-30 21:32:54.489	2023-10-30 21:32:54.489	\N	\N
447	plugin::content-manager.explorer.create	{}	api::third-section.third-section	{"fields": ["coverImage", "tittle", "description", "btn", "bank_accounts"], "locales": ["en", "uk", "pl"]}	[]	2023-11-19 10:40:05.951	2023-11-19 10:40:05.951	\N	\N
448	plugin::content-manager.explorer.read	{}	api::third-section.third-section	{"fields": ["coverImage", "tittle", "description", "btn", "bank_accounts"], "locales": ["en", "uk", "pl"]}	[]	2023-11-19 10:40:05.966	2023-11-19 10:40:05.966	\N	\N
100	plugin::content-manager.explorer.create	{}	api::menu.menu	{"fields": ["item", "link"]}	["admin::is-creator"]	2023-10-30 21:32:54.518	2023-10-30 21:32:54.518	\N	\N
102	plugin::content-manager.explorer.create	{}	api::partner.partner	{"fields": ["icon"]}	["admin::is-creator"]	2023-10-30 21:32:54.533	2023-10-30 21:32:54.533	\N	\N
104	plugin::content-manager.explorer.create	{}	api::phone.phone	{"fields": ["phone"]}	["admin::is-creator"]	2023-10-30 21:32:54.546	2023-10-30 21:32:54.546	\N	\N
105	plugin::content-manager.explorer.create	{}	api::project.project	{"fields": ["img", "description", "goal", "quote", "waterMark"]}	["admin::is-creator"]	2023-10-30 21:32:54.553	2023-10-30 21:32:54.553	\N	\N
107	plugin::content-manager.explorer.create	{}	api::support.support	{"fields": ["name", "email", "phone", "message"]}	["admin::is-creator"]	2023-10-30 21:32:54.566	2023-10-30 21:32:54.566	\N	\N
509	plugin::content-manager.explorer.delete	{}	api::footer-section.footer-section	{"locales": ["en", "uk", "pl"]}	[]	2023-11-19 12:04:42.992	2023-11-19 12:04:42.992	\N	\N
510	plugin::content-manager.explorer.publish	{}	api::footer-section.footer-section	{"locales": ["en", "uk", "pl"]}	[]	2023-11-19 12:04:43.004	2023-11-19 12:04:43.004	\N	\N
110	plugin::content-manager.explorer.read	{}	api::bank-account.bank-account	{"fields": ["name", "address"]}	["admin::is-creator"]	2023-10-30 21:32:54.585	2023-10-30 21:32:54.585	\N	\N
111	plugin::content-manager.explorer.read	{}	api::card.card	{"fields": ["tittle", "description", "icon"]}	["admin::is-creator"]	2023-10-30 21:32:54.593	2023-10-30 21:32:54.593	\N	\N
113	plugin::content-manager.explorer.read	{}	api::email.email	{"fields": ["email"]}	["admin::is-creator"]	2023-10-30 21:32:54.608	2023-10-30 21:32:54.608	\N	\N
449	plugin::content-manager.explorer.update	{}	api::third-section.third-section	{"fields": ["coverImage", "tittle", "description", "btn", "bank_accounts"], "locales": ["en", "uk", "pl"]}	[]	2023-11-19 10:40:05.978	2023-11-19 10:40:05.978	\N	\N
450	plugin::content-manager.explorer.delete	{}	api::third-section.third-section	{"locales": ["en", "uk", "pl"]}	[]	2023-11-19 10:40:05.989	2023-11-19 10:40:05.989	\N	\N
117	plugin::content-manager.explorer.read	{}	api::menu.menu	{"fields": ["item", "link"]}	["admin::is-creator"]	2023-10-30 21:32:54.642	2023-10-30 21:32:54.642	\N	\N
119	plugin::content-manager.explorer.read	{}	api::partner.partner	{"fields": ["icon"]}	["admin::is-creator"]	2023-10-30 21:32:54.656	2023-10-30 21:32:54.656	\N	\N
121	plugin::content-manager.explorer.read	{}	api::phone.phone	{"fields": ["phone"]}	["admin::is-creator"]	2023-10-30 21:32:54.671	2023-10-30 21:32:54.671	\N	\N
122	plugin::content-manager.explorer.read	{}	api::project.project	{"fields": ["img", "description", "goal", "quote", "waterMark"]}	["admin::is-creator"]	2023-10-30 21:32:54.678	2023-10-30 21:32:54.678	\N	\N
124	plugin::content-manager.explorer.read	{}	api::support.support	{"fields": ["name", "email", "phone", "message"]}	["admin::is-creator"]	2023-10-30 21:32:54.692	2023-10-30 21:32:54.692	\N	\N
127	plugin::content-manager.explorer.update	{}	api::bank-account.bank-account	{"fields": ["name", "address"]}	["admin::is-creator"]	2023-10-30 21:32:54.713	2023-10-30 21:32:54.713	\N	\N
128	plugin::content-manager.explorer.update	{}	api::card.card	{"fields": ["tittle", "description", "icon"]}	["admin::is-creator"]	2023-10-30 21:32:54.72	2023-10-30 21:32:54.72	\N	\N
130	plugin::content-manager.explorer.update	{}	api::email.email	{"fields": ["email"]}	["admin::is-creator"]	2023-10-30 21:32:54.734	2023-10-30 21:32:54.734	\N	\N
451	plugin::content-manager.explorer.publish	{}	api::third-section.third-section	{"locales": ["en", "uk", "pl"]}	[]	2023-11-19 10:40:06.002	2023-11-19 10:40:06.002	\N	\N
485	plugin::content-manager.explorer.create	{}	api::fifth-section.fifth-section	{"fields": ["quote", "quote2", "cards", "name"], "locales": ["en", "uk", "pl"]}	[]	2023-11-19 11:27:45.345	2023-11-19 11:27:45.345	\N	\N
486	plugin::content-manager.explorer.read	{}	api::fifth-section.fifth-section	{"fields": ["quote", "quote2", "cards", "name"], "locales": ["en", "uk", "pl"]}	[]	2023-11-19 11:27:45.36	2023-11-19 11:27:45.36	\N	\N
487	plugin::content-manager.explorer.update	{}	api::fifth-section.fifth-section	{"fields": ["quote", "quote2", "cards", "name"], "locales": ["en", "uk", "pl"]}	[]	2023-11-19 11:27:45.373	2023-11-19 11:27:45.373	\N	\N
511	plugin::content-manager.explorer.create	{}	api::footer-section.footer-section	{"fields": ["logo", "background", "fbLink", "instaLink", "twLink", "phones", "email", "menu_items", "contacts_tittle", "social_tittle"], "locales": ["en", "uk", "pl"]}	[]	2023-11-19 12:07:06.889	2023-11-19 12:07:06.889	\N	\N
134	plugin::content-manager.explorer.update	{}	api::menu.menu	{"fields": ["item", "link"]}	["admin::is-creator"]	2023-10-30 21:32:54.761	2023-10-30 21:32:54.761	\N	\N
512	plugin::content-manager.explorer.read	{}	api::footer-section.footer-section	{"fields": ["logo", "background", "fbLink", "instaLink", "twLink", "phones", "email", "menu_items", "contacts_tittle", "social_tittle"], "locales": ["en", "uk", "pl"]}	[]	2023-11-19 12:07:06.907	2023-11-19 12:07:06.907	\N	\N
136	plugin::content-manager.explorer.update	{}	api::partner.partner	{"fields": ["icon"]}	["admin::is-creator"]	2023-10-30 21:32:54.776	2023-10-30 21:32:54.776	\N	\N
513	plugin::content-manager.explorer.update	{}	api::footer-section.footer-section	{"fields": ["logo", "background", "fbLink", "instaLink", "twLink", "phones", "email", "menu_items", "contacts_tittle", "social_tittle"], "locales": ["en", "uk", "pl"]}	[]	2023-11-19 12:07:06.921	2023-11-19 12:07:06.921	\N	\N
138	plugin::content-manager.explorer.update	{}	api::phone.phone	{"fields": ["phone"]}	["admin::is-creator"]	2023-10-30 21:32:54.79	2023-10-30 21:32:54.79	\N	\N
139	plugin::content-manager.explorer.update	{}	api::project.project	{"fields": ["img", "description", "goal", "quote", "waterMark"]}	["admin::is-creator"]	2023-10-30 21:32:54.797	2023-10-30 21:32:54.797	\N	\N
141	plugin::content-manager.explorer.update	{}	api::support.support	{"fields": ["name", "email", "phone", "message"]}	["admin::is-creator"]	2023-10-30 21:32:54.811	2023-10-30 21:32:54.811	\N	\N
366	plugin::content-manager.explorer.create	{}	api::partner.partner	{"fields": ["icon"], "locales": ["en", "uk", "pl"]}	[]	2023-11-05 17:21:10.722	2023-11-05 17:21:10.722	\N	\N
367	plugin::content-manager.explorer.read	{}	api::partner.partner	{"fields": ["icon"], "locales": ["en", "uk", "pl"]}	[]	2023-11-05 17:21:10.74	2023-11-05 17:21:10.74	\N	\N
368	plugin::content-manager.explorer.update	{}	api::partner.partner	{"fields": ["icon"], "locales": ["en", "uk", "pl"]}	[]	2023-11-05 17:21:10.756	2023-11-05 17:21:10.756	\N	\N
369	plugin::content-manager.explorer.delete	{}	api::partner.partner	{"locales": ["en", "uk", "pl"]}	[]	2023-11-05 17:21:10.771	2023-11-05 17:21:10.771	\N	\N
370	plugin::content-manager.explorer.publish	{}	api::partner.partner	{"locales": ["en", "uk", "pl"]}	[]	2023-11-05 17:21:10.785	2023-11-05 17:21:10.785	\N	\N
158	plugin::content-manager.explorer.delete	{}	api::support.support	{}	["admin::is-creator"]	2023-10-30 21:32:54.939	2023-10-30 21:32:54.939	\N	\N
160	plugin::upload.read	{}	\N	{}	["admin::is-creator"]	2023-10-30 21:32:54.953	2023-10-30 21:32:54.953	\N	\N
161	plugin::upload.configure-view	{}	\N	{}	[]	2023-10-30 21:32:54.96	2023-10-30 21:32:54.96	\N	\N
162	plugin::upload.assets.create	{}	\N	{}	[]	2023-10-30 21:32:54.967	2023-10-30 21:32:54.967	\N	\N
163	plugin::upload.assets.update	{}	\N	{}	["admin::is-creator"]	2023-10-30 21:32:54.974	2023-10-30 21:32:54.974	\N	\N
164	plugin::upload.assets.download	{}	\N	{}	[]	2023-10-30 21:32:54.981	2023-10-30 21:32:54.981	\N	\N
165	plugin::upload.assets.copy-link	{}	\N	{}	[]	2023-10-30 21:32:54.988	2023-10-30 21:32:54.988	\N	\N
166	plugin::content-manager.explorer.create	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role", "name"]}	[]	2023-10-30 21:32:55.04	2023-10-30 21:32:55.04	\N	\N
427	plugin::content-manager.explorer.delete	{}	api::head.head	{"locales": ["en", "uk", "pl"]}	[]	2023-11-19 10:03:30.561	2023-11-19 10:03:30.561	\N	\N
428	plugin::content-manager.explorer.publish	{}	api::head.head	{"locales": ["en", "uk", "pl"]}	[]	2023-11-19 10:03:30.572	2023-11-19 10:03:30.572	\N	\N
371	plugin::content-manager.explorer.create	{}	api::email.email	{"fields": ["email"], "locales": ["en", "uk", "pl"]}	[]	2023-11-07 07:53:53.376	2023-11-07 07:53:53.376	\N	\N
372	plugin::content-manager.explorer.read	{}	api::email.email	{"fields": ["email"], "locales": ["en", "uk", "pl"]}	[]	2023-11-07 07:53:53.397	2023-11-07 07:53:53.397	\N	\N
182	plugin::content-manager.explorer.create	{}	api::support.support	{"fields": ["name", "email", "phone", "message"]}	[]	2023-10-30 21:32:55.16	2023-10-30 21:32:55.16	\N	\N
373	plugin::content-manager.explorer.update	{}	api::email.email	{"fields": ["email"], "locales": ["en", "uk", "pl"]}	[]	2023-11-07 07:53:53.411	2023-11-07 07:53:53.411	\N	\N
184	plugin::content-manager.explorer.read	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role", "name"]}	[]	2023-10-30 21:32:55.175	2023-10-30 21:32:55.175	\N	\N
374	plugin::content-manager.explorer.delete	{}	api::email.email	{"locales": ["en", "uk", "pl"]}	[]	2023-11-07 07:53:53.426	2023-11-07 07:53:53.426	\N	\N
375	plugin::content-manager.explorer.publish	{}	api::email.email	{"locales": ["en", "uk", "pl"]}	[]	2023-11-07 07:53:53.441	2023-11-07 07:53:53.441	\N	\N
457	plugin::content-manager.explorer.create	{}	api::fourth-section.fourth-section	{"fields": ["tittle", "description", "quote", "img", "imgDescription", "subTittle", "subDescription", "subImg", "name"], "locales": ["en", "uk", "pl"]}	[]	2023-11-19 10:49:52.452	2023-11-19 10:49:52.452	\N	\N
458	plugin::content-manager.explorer.read	{}	api::fourth-section.fourth-section	{"fields": ["tittle", "description", "quote", "img", "imgDescription", "subTittle", "subDescription", "subImg", "name"], "locales": ["en", "uk", "pl"]}	[]	2023-11-19 10:49:52.467	2023-11-19 10:49:52.467	\N	\N
459	plugin::content-manager.explorer.update	{}	api::fourth-section.fourth-section	{"fields": ["tittle", "description", "quote", "img", "imgDescription", "subTittle", "subDescription", "subImg", "name"], "locales": ["en", "uk", "pl"]}	[]	2023-11-19 10:49:52.479	2023-11-19 10:49:52.479	\N	\N
460	plugin::content-manager.explorer.delete	{}	api::fourth-section.fourth-section	{"locales": ["en", "uk", "pl"]}	[]	2023-11-19 10:49:52.49	2023-11-19 10:49:52.49	\N	\N
461	plugin::content-manager.explorer.publish	{}	api::fourth-section.fourth-section	{"locales": ["en", "uk", "pl"]}	[]	2023-11-19 10:49:52.501	2023-11-19 10:49:52.501	\N	\N
493	plugin::content-manager.explorer.create	{}	api::seventh-section.seventh-section	{"fields": ["logo", "bank_accounts", "phones", "background", "email", "tittle"], "locales": ["en", "uk", "pl"]}	[]	2023-11-19 11:37:24.502	2023-11-19 11:37:24.502	\N	\N
200	plugin::content-manager.explorer.read	{}	api::support.support	{"fields": ["name", "email", "phone", "message"]}	[]	2023-10-30 21:32:55.281	2023-10-30 21:32:55.281	\N	\N
202	plugin::content-manager.explorer.update	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role", "name"]}	[]	2023-10-30 21:32:55.295	2023-10-30 21:32:55.295	\N	\N
429	plugin::content-manager.explorer.create	{}	api::head.head	{"fields": ["logo", "support", "menu_items"], "locales": ["en", "uk", "pl"]}	[]	2023-11-19 10:04:00.633	2023-11-19 10:04:00.633	\N	\N
430	plugin::content-manager.explorer.read	{}	api::head.head	{"fields": ["logo", "support", "menu_items"], "locales": ["en", "uk", "pl"]}	[]	2023-11-19 10:04:00.647	2023-11-19 10:04:00.647	\N	\N
431	plugin::content-manager.explorer.update	{}	api::head.head	{"fields": ["logo", "support", "menu_items"], "locales": ["en", "uk", "pl"]}	[]	2023-11-19 10:04:00.658	2023-11-19 10:04:00.658	\N	\N
494	plugin::content-manager.explorer.read	{}	api::seventh-section.seventh-section	{"fields": ["logo", "bank_accounts", "phones", "background", "email", "tittle"], "locales": ["en", "uk", "pl"]}	[]	2023-11-19 11:37:24.517	2023-11-19 11:37:24.517	\N	\N
495	plugin::content-manager.explorer.update	{}	api::seventh-section.seventh-section	{"fields": ["logo", "bank_accounts", "phones", "background", "email", "tittle"], "locales": ["en", "uk", "pl"]}	[]	2023-11-19 11:37:24.527	2023-11-19 11:37:24.527	\N	\N
496	plugin::content-manager.explorer.delete	{}	api::seventh-section.seventh-section	{"locales": ["en", "uk", "pl"]}	[]	2023-11-19 11:37:24.539	2023-11-19 11:37:24.539	\N	\N
497	plugin::content-manager.explorer.publish	{}	api::seventh-section.seventh-section	{"locales": ["en", "uk", "pl"]}	[]	2023-11-19 11:37:24.55	2023-11-19 11:37:24.55	\N	\N
218	plugin::content-manager.explorer.update	{}	api::support.support	{"fields": ["name", "email", "phone", "message"]}	[]	2023-10-30 21:32:55.406	2023-10-30 21:32:55.406	\N	\N
376	plugin::content-manager.explorer.create	{}	api::phone.phone	{"fields": ["phone"], "locales": ["en", "uk", "pl"]}	[]	2023-11-07 07:54:12.889	2023-11-07 07:54:12.889	\N	\N
377	plugin::content-manager.explorer.read	{}	api::phone.phone	{"fields": ["phone"], "locales": ["en", "uk", "pl"]}	[]	2023-11-07 07:54:12.906	2023-11-07 07:54:12.906	\N	\N
378	plugin::content-manager.explorer.update	{}	api::phone.phone	{"fields": ["phone"], "locales": ["en", "uk", "pl"]}	[]	2023-11-07 07:54:12.92	2023-11-07 07:54:12.92	\N	\N
379	plugin::content-manager.explorer.delete	{}	api::phone.phone	{"locales": ["en", "uk", "pl"]}	[]	2023-11-07 07:54:12.934	2023-11-07 07:54:12.934	\N	\N
380	plugin::content-manager.explorer.publish	{}	api::phone.phone	{"locales": ["en", "uk", "pl"]}	[]	2023-11-07 07:54:12.946	2023-11-07 07:54:12.946	\N	\N
236	plugin::content-manager.explorer.delete	{}	api::support.support	{}	[]	2023-10-30 21:32:55.631	2023-10-30 21:32:55.631	\N	\N
432	plugin::content-manager.explorer.create	{}	api::first-section.first-section	{"fields": ["bgImg", "tittle", "description", "btnName", "img"], "locales": ["en", "uk", "pl"]}	[]	2023-11-19 10:26:31.434	2023-11-19 10:26:31.434	\N	\N
433	plugin::content-manager.explorer.read	{}	api::first-section.first-section	{"fields": ["bgImg", "tittle", "description", "btnName", "img"], "locales": ["en", "uk", "pl"]}	[]	2023-11-19 10:26:31.449	2023-11-19 10:26:31.449	\N	\N
434	plugin::content-manager.explorer.update	{}	api::first-section.first-section	{"fields": ["bgImg", "tittle", "description", "btnName", "img"], "locales": ["en", "uk", "pl"]}	[]	2023-11-19 10:26:31.461	2023-11-19 10:26:31.461	\N	\N
435	plugin::content-manager.explorer.delete	{}	api::first-section.first-section	{"locales": ["en", "uk", "pl"]}	[]	2023-11-19 10:26:31.473	2023-11-19 10:26:31.473	\N	\N
436	plugin::content-manager.explorer.publish	{}	api::first-section.first-section	{"locales": ["en", "uk", "pl"]}	[]	2023-11-19 10:26:31.484	2023-11-19 10:26:31.484	\N	\N
253	plugin::content-manager.explorer.publish	{}	api::support.support	{}	[]	2023-10-30 21:32:55.751	2023-10-30 21:32:55.751	\N	\N
255	plugin::content-manager.single-types.configure-view	{}	\N	{}	[]	2023-10-30 21:32:55.765	2023-10-30 21:32:55.765	\N	\N
256	plugin::content-manager.collection-types.configure-view	{}	\N	{}	[]	2023-10-30 21:32:55.771	2023-10-30 21:32:55.771	\N	\N
257	plugin::content-manager.components.configure-layout	{}	\N	{}	[]	2023-10-30 21:32:55.779	2023-10-30 21:32:55.779	\N	\N
258	plugin::content-type-builder.read	{}	\N	{}	[]	2023-10-30 21:32:55.786	2023-10-30 21:32:55.786	\N	\N
259	plugin::email.settings.read	{}	\N	{}	[]	2023-10-30 21:32:55.793	2023-10-30 21:32:55.793	\N	\N
260	plugin::upload.read	{}	\N	{}	[]	2023-10-30 21:32:55.8	2023-10-30 21:32:55.8	\N	\N
261	plugin::upload.assets.create	{}	\N	{}	[]	2023-10-30 21:32:55.807	2023-10-30 21:32:55.807	\N	\N
262	plugin::upload.assets.update	{}	\N	{}	[]	2023-10-30 21:32:55.814	2023-10-30 21:32:55.814	\N	\N
263	plugin::upload.assets.download	{}	\N	{}	[]	2023-10-30 21:32:55.821	2023-10-30 21:32:55.821	\N	\N
264	plugin::upload.assets.copy-link	{}	\N	{}	[]	2023-10-30 21:32:55.828	2023-10-30 21:32:55.828	\N	\N
265	plugin::upload.configure-view	{}	\N	{}	[]	2023-10-30 21:32:55.834	2023-10-30 21:32:55.834	\N	\N
266	plugin::upload.settings.read	{}	\N	{}	[]	2023-10-30 21:32:55.841	2023-10-30 21:32:55.841	\N	\N
267	plugin::users-permissions.roles.create	{}	\N	{}	[]	2023-10-30 21:32:55.848	2023-10-30 21:32:55.848	\N	\N
268	plugin::users-permissions.roles.read	{}	\N	{}	[]	2023-10-30 21:32:55.858	2023-10-30 21:32:55.858	\N	\N
269	plugin::users-permissions.roles.update	{}	\N	{}	[]	2023-10-30 21:32:55.865	2023-10-30 21:32:55.865	\N	\N
270	plugin::users-permissions.roles.delete	{}	\N	{}	[]	2023-10-30 21:32:55.872	2023-10-30 21:32:55.872	\N	\N
271	plugin::users-permissions.providers.read	{}	\N	{}	[]	2023-10-30 21:32:55.879	2023-10-30 21:32:55.879	\N	\N
272	plugin::users-permissions.providers.update	{}	\N	{}	[]	2023-10-30 21:32:55.885	2023-10-30 21:32:55.885	\N	\N
273	plugin::users-permissions.email-templates.read	{}	\N	{}	[]	2023-10-30 21:32:55.892	2023-10-30 21:32:55.892	\N	\N
274	plugin::users-permissions.email-templates.update	{}	\N	{}	[]	2023-10-30 21:32:55.899	2023-10-30 21:32:55.899	\N	\N
275	plugin::users-permissions.advanced-settings.read	{}	\N	{}	[]	2023-10-30 21:32:55.906	2023-10-30 21:32:55.906	\N	\N
276	plugin::users-permissions.advanced-settings.update	{}	\N	{}	[]	2023-10-30 21:32:55.913	2023-10-30 21:32:55.913	\N	\N
277	plugin::i18n.locale.create	{}	\N	{}	[]	2023-10-30 21:32:55.92	2023-10-30 21:32:55.92	\N	\N
278	plugin::i18n.locale.read	{}	\N	{}	[]	2023-10-30 21:32:55.927	2023-10-30 21:32:55.927	\N	\N
279	plugin::i18n.locale.update	{}	\N	{}	[]	2023-10-30 21:32:55.934	2023-10-30 21:32:55.934	\N	\N
280	plugin::i18n.locale.delete	{}	\N	{}	[]	2023-10-30 21:32:55.94	2023-10-30 21:32:55.94	\N	\N
281	admin::marketplace.read	{}	\N	{}	[]	2023-10-30 21:32:55.947	2023-10-30 21:32:55.947	\N	\N
282	admin::webhooks.create	{}	\N	{}	[]	2023-10-30 21:32:55.954	2023-10-30 21:32:55.954	\N	\N
283	admin::webhooks.read	{}	\N	{}	[]	2023-10-30 21:32:55.961	2023-10-30 21:32:55.961	\N	\N
284	admin::webhooks.update	{}	\N	{}	[]	2023-10-30 21:32:55.968	2023-10-30 21:32:55.968	\N	\N
285	admin::webhooks.delete	{}	\N	{}	[]	2023-10-30 21:32:55.975	2023-10-30 21:32:55.975	\N	\N
286	admin::users.create	{}	\N	{}	[]	2023-10-30 21:32:55.982	2023-10-30 21:32:55.982	\N	\N
287	admin::users.read	{}	\N	{}	[]	2023-10-30 21:32:55.989	2023-10-30 21:32:55.989	\N	\N
288	admin::users.update	{}	\N	{}	[]	2023-10-30 21:32:55.996	2023-10-30 21:32:55.996	\N	\N
289	admin::users.delete	{}	\N	{}	[]	2023-10-30 21:32:56.003	2023-10-30 21:32:56.003	\N	\N
290	admin::roles.create	{}	\N	{}	[]	2023-10-30 21:32:56.01	2023-10-30 21:32:56.01	\N	\N
291	admin::roles.read	{}	\N	{}	[]	2023-10-30 21:32:56.016	2023-10-30 21:32:56.016	\N	\N
292	admin::roles.update	{}	\N	{}	[]	2023-10-30 21:32:56.024	2023-10-30 21:32:56.024	\N	\N
293	admin::roles.delete	{}	\N	{}	[]	2023-10-30 21:32:56.03	2023-10-30 21:32:56.03	\N	\N
294	admin::api-tokens.access	{}	\N	{}	[]	2023-10-30 21:32:56.037	2023-10-30 21:32:56.037	\N	\N
295	admin::api-tokens.create	{}	\N	{}	[]	2023-10-30 21:32:56.044	2023-10-30 21:32:56.044	\N	\N
296	admin::api-tokens.read	{}	\N	{}	[]	2023-10-30 21:32:56.051	2023-10-30 21:32:56.051	\N	\N
297	admin::api-tokens.update	{}	\N	{}	[]	2023-10-30 21:32:56.058	2023-10-30 21:32:56.058	\N	\N
298	admin::api-tokens.regenerate	{}	\N	{}	[]	2023-10-30 21:32:56.064	2023-10-30 21:32:56.064	\N	\N
299	admin::api-tokens.delete	{}	\N	{}	[]	2023-10-30 21:32:56.07	2023-10-30 21:32:56.07	\N	\N
300	admin::project-settings.update	{}	\N	{}	[]	2023-10-30 21:32:56.077	2023-10-30 21:32:56.077	\N	\N
301	admin::project-settings.read	{}	\N	{}	[]	2023-10-30 21:32:56.084	2023-10-30 21:32:56.084	\N	\N
302	admin::transfer.tokens.access	{}	\N	{}	[]	2023-10-30 21:32:56.091	2023-10-30 21:32:56.091	\N	\N
303	admin::transfer.tokens.create	{}	\N	{}	[]	2023-10-30 21:32:56.098	2023-10-30 21:32:56.098	\N	\N
304	admin::transfer.tokens.read	{}	\N	{}	[]	2023-10-30 21:32:56.104	2023-10-30 21:32:56.104	\N	\N
305	admin::transfer.tokens.update	{}	\N	{}	[]	2023-10-30 21:32:56.112	2023-10-30 21:32:56.112	\N	\N
306	admin::transfer.tokens.regenerate	{}	\N	{}	[]	2023-10-30 21:32:56.119	2023-10-30 21:32:56.119	\N	\N
307	admin::transfer.tokens.delete	{}	\N	{}	[]	2023-10-30 21:32:56.126	2023-10-30 21:32:56.126	\N	\N
470	plugin::content-manager.explorer.delete	{}	api::fifth-section.fifth-section	{"locales": ["en", "uk", "pl"]}	[]	2023-11-19 11:01:32.928	2023-11-19 11:01:32.928	\N	\N
471	plugin::content-manager.explorer.publish	{}	api::fifth-section.fifth-section	{"locales": ["en", "uk", "pl"]}	[]	2023-11-19 11:01:32.939	2023-11-19 11:01:32.939	\N	\N
314	plugin::content-manager.explorer.create	{}	api::menu.menu	{"fields": ["item", "link"], "locales": ["en", "uk", "pl"]}	[]	2023-11-02 23:18:04.268	2023-11-02 23:18:04.268	\N	\N
318	plugin::content-manager.explorer.read	{}	api::menu.menu	{"fields": ["item", "link"], "locales": ["en", "uk", "pl"]}	[]	2023-11-02 23:18:04.327	2023-11-02 23:18:04.327	\N	\N
322	plugin::content-manager.explorer.update	{}	api::menu.menu	{"fields": ["item", "link"], "locales": ["en", "uk", "pl"]}	[]	2023-11-02 23:18:04.392	2023-11-02 23:18:04.392	\N	\N
326	plugin::content-manager.explorer.delete	{}	api::menu.menu	{"locales": ["en", "uk", "pl"]}	[]	2023-11-02 23:18:04.452	2023-11-02 23:18:04.452	\N	\N
330	plugin::content-manager.explorer.publish	{}	api::menu.menu	{"locales": ["en", "uk", "pl"]}	[]	2023-11-02 23:18:04.511	2023-11-02 23:18:04.511	\N	\N
339	plugin::content-manager.explorer.delete	{}	api::project.project	{"locales": ["en", "uk", "pl"]}	[]	2023-11-04 21:19:06.096	2023-11-04 21:19:06.096	\N	\N
340	plugin::content-manager.explorer.publish	{}	api::project.project	{"locales": ["en", "uk", "pl"]}	[]	2023-11-04 21:19:06.106	2023-11-04 21:19:06.106	\N	\N
346	plugin::content-manager.explorer.create	{}	api::bank-account.bank-account	{"fields": ["name", "address"], "locales": ["en", "uk", "pl"]}	[]	2023-11-04 21:38:36.29	2023-11-04 21:38:36.29	\N	\N
347	plugin::content-manager.explorer.read	{}	api::bank-account.bank-account	{"fields": ["name", "address"], "locales": ["en", "uk", "pl"]}	[]	2023-11-04 21:38:36.304	2023-11-04 21:38:36.304	\N	\N
348	plugin::content-manager.explorer.update	{}	api::bank-account.bank-account	{"fields": ["name", "address"], "locales": ["en", "uk", "pl"]}	[]	2023-11-04 21:38:36.314	2023-11-04 21:38:36.314	\N	\N
349	plugin::content-manager.explorer.delete	{}	api::bank-account.bank-account	{"locales": ["en", "uk", "pl"]}	[]	2023-11-04 21:38:36.325	2023-11-04 21:38:36.325	\N	\N
350	plugin::content-manager.explorer.publish	{}	api::bank-account.bank-account	{"locales": ["en", "uk", "pl"]}	[]	2023-11-04 21:38:36.335	2023-11-04 21:38:36.335	\N	\N
351	plugin::content-manager.explorer.create	{}	api::card.card	{"fields": ["tittle", "description", "icon"], "locales": ["en", "uk", "pl"]}	[]	2023-11-05 16:57:14.716	2023-11-05 16:57:14.716	\N	\N
352	plugin::content-manager.explorer.read	{}	api::card.card	{"fields": ["tittle", "description", "icon"], "locales": ["en", "uk", "pl"]}	[]	2023-11-05 16:57:14.734	2023-11-05 16:57:14.734	\N	\N
353	plugin::content-manager.explorer.update	{}	api::card.card	{"fields": ["tittle", "description", "icon"], "locales": ["en", "uk", "pl"]}	[]	2023-11-05 16:57:14.749	2023-11-05 16:57:14.749	\N	\N
354	plugin::content-manager.explorer.delete	{}	api::card.card	{"locales": ["en", "uk", "pl"]}	[]	2023-11-05 16:57:14.765	2023-11-05 16:57:14.765	\N	\N
355	plugin::content-manager.explorer.publish	{}	api::card.card	{"locales": ["en", "uk", "pl"]}	[]	2023-11-05 16:57:14.78	2023-11-05 16:57:14.78	\N	\N
400	plugin::content-manager.explorer.create	{}	api::project.project	{"fields": ["img", "description", "goal", "quote", "waterMark", "btn"], "locales": ["en", "uk", "pl"]}	[]	2023-11-07 09:47:13.341	2023-11-07 09:47:13.341	\N	\N
401	plugin::content-manager.explorer.read	{}	api::project.project	{"fields": ["img", "description", "goal", "quote", "waterMark", "btn"], "locales": ["en", "uk", "pl"]}	[]	2023-11-07 09:47:13.354	2023-11-07 09:47:13.354	\N	\N
402	plugin::content-manager.explorer.update	{}	api::project.project	{"fields": ["img", "description", "goal", "quote", "waterMark", "btn"], "locales": ["en", "uk", "pl"]}	[]	2023-11-07 09:47:13.363	2023-11-07 09:47:13.363	\N	\N
\.


--
-- Data for Name: admin_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
533	503	1	297
2	2	2	2
3	3	2	3
534	504	1	298
5	5	2	5
477	447	1	261
478	448	1	262
9	9	2	9
535	505	1	299
11	11	2	11
541	511	1	305
13	13	2	13
14	14	2	14
542	512	1	306
16	16	2	16
543	513	1	307
19	19	2	19
20	20	2	20
22	22	2	22
479	449	1	263
480	450	1	264
26	26	2	26
28	28	2	28
30	30	2	30
31	31	2	31
33	33	2	33
36	36	2	36
37	37	2	37
39	39	2	39
481	451	1	265
487	457	1	266
43	43	2	43
45	45	2	45
47	47	2	47
48	48	2	48
50	50	2	50
488	458	1	267
489	459	1	268
490	460	1	269
401	371	1	203
402	372	1	204
491	461	1	270
403	373	1	205
404	374	1	206
67	67	2	67
405	375	1	207
500	470	1	274
501	471	1	275
515	485	1	284
516	486	1	285
517	487	1	286
523	493	1	287
84	84	2	84
86	86	2	86
87	87	2	87
88	88	2	88
89	89	2	89
90	90	2	90
91	91	2	91
93	93	3	2
94	94	3	3
96	96	3	5
524	494	1	288
525	495	1	289
100	100	3	9
102	102	3	11
104	104	3	13
105	105	3	14
107	107	3	16
110	110	3	19
111	111	3	20
113	113	3	22
526	496	1	290
527	497	1	291
117	117	3	26
119	119	3	28
121	121	3	30
122	122	3	31
124	124	3	33
127	127	3	36
128	128	3	37
130	130	3	39
134	134	3	43
136	136	3	45
138	138	3	47
139	139	3	48
141	141	3	50
459	429	1	248
460	430	1	249
461	431	1	250
158	158	3	67
396	366	1	198
160	160	3	69
161	161	3	70
162	162	3	71
163	163	3	72
164	164	3	73
165	165	3	74
166	166	1	1
397	367	1	199
398	368	1	200
399	369	1	201
400	370	1	202
406	376	1	208
407	377	1	209
408	378	1	210
539	509	1	303
540	510	1	304
409	379	1	211
410	380	1	212
182	182	1	17
184	184	1	19
510	480	1	279
511	481	1	280
430	400	1	229
431	401	1	230
200	200	1	35
432	402	1	231
202	202	1	37
512	482	1	281
513	483	1	282
514	484	1	283
531	501	1	295
532	502	1	296
218	218	1	53
220	220	1	55
457	427	1	246
458	428	1	247
462	432	1	251
463	433	1	252
464	434	1	253
465	435	1	254
466	436	1	255
472	442	1	256
236	236	1	71
473	443	1	257
474	444	1	258
475	445	1	259
476	446	1	260
253	253	1	88
255	255	1	90
256	256	1	91
257	257	1	92
258	258	1	93
259	259	1	94
260	260	1	95
261	261	1	96
262	262	1	97
263	263	1	98
264	264	1	99
265	265	1	100
266	266	1	101
267	267	1	102
268	268	1	103
269	269	1	104
270	270	1	105
271	271	1	106
272	272	1	107
273	273	1	108
274	274	1	109
275	275	1	110
276	276	1	111
277	277	1	112
278	278	1	113
279	279	1	114
280	280	1	115
281	281	1	116
282	282	1	117
283	283	1	118
284	284	1	119
285	285	1	120
286	286	1	121
287	287	1	122
288	288	1	123
289	289	1	124
290	290	1	125
291	291	1	126
292	292	1	127
293	293	1	128
294	294	1	129
295	295	1	130
296	296	1	131
297	297	1	132
298	298	1	133
299	299	1	134
300	300	1	135
301	301	1	136
302	302	1	137
303	303	1	138
304	304	1	139
305	305	1	140
306	306	1	141
307	307	1	142
344	314	1	146
348	318	1	150
352	322	1	154
356	326	1	158
360	330	1	162
369	339	1	171
370	340	1	172
376	346	1	178
377	347	1	179
378	348	1	180
379	349	1	181
380	350	1	182
381	351	1	183
382	352	1	184
383	353	1	185
384	354	1	186
385	355	1	187
\.


--
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2023-10-30 21:32:53.72	2023-10-30 21:32:53.72	\N	\N
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2023-10-30 21:32:53.73	2023-10-30 21:32:53.73	\N	\N
3	Author	strapi-author	Authors can manage the content they have created.	2023-10-30 21:32:53.736	2023-10-30 21:32:53.736	\N	\N
\.


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	test	test	\N	test@test.test	$2a$10$QK1bxzlLHYmh3Rm8UcNWD.SpoQH2B2UmI1rKaM0ARgquBwL35C3cO	\N	\N	t	f	\N	2023-10-30 21:44:32.256	2023-10-30 21:44:32.256	\N	\N
\.


--
-- Data for Name: admin_users_roles_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_users_roles_links (id, user_id, role_id, role_order, user_order) FROM stdin;
1	1	1	1	1
\.


--
-- Data for Name: bank_accounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bank_accounts (id, name, address, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	Euro bank account	1234123412341234	2023-11-04 21:41:04.403	2023-11-04 21:41:07.977	2023-11-04 21:41:07.969	1	1	en
2	Dollar bank account	1234123412341234	2023-11-04 21:44:10.856	2023-11-04 21:44:11.931	2023-11-04 21:44:11.924	1	1	en
3	Hryvnia bank account	1234123412341234	2023-11-04 21:45:07.887	2023-11-04 21:45:09.99	2023-11-04 21:45:09.984	1	1	en
5	Долларовий рахунок	1234123412341234	2023-11-04 21:46:19.079	2023-11-04 21:46:19.792	2023-11-04 21:46:19.785	1	1	uk
4	Евро рахунок	1234123412341234	2023-11-04 21:45:43.833	2023-11-04 21:46:32.023	2023-11-04 21:45:44.601	1	1	uk
6	Гривнєвий рахунок	1234123412341234	2023-11-04 21:47:02.037	2023-11-04 21:47:04.003	2023-11-04 21:47:03.995	1	1	uk
8	Dolarowe konto bankowe	1234123412341234	2023-11-04 21:48:31.43	2023-11-04 21:48:32.249	2023-11-04 21:48:32.242	1	1	pl
7	Euro konto bankowe	1234123412341234	2023-11-04 21:47:48.959	2023-11-04 21:49:05.693	2023-11-04 21:47:51.506	1	1	pl
9	Hrywny konto bankowe	1234123412341234	2023-11-04 21:50:26.393	2023-11-04 21:50:39.824	2023-11-04 21:50:27.12	1	1	pl
\.


--
-- Data for Name: bank_accounts_localizations_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bank_accounts_localizations_links (id, bank_account_id, inv_bank_account_id, bank_account_order) FROM stdin;
\.


--
-- Data for Name: cards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cards (id, tittle, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	Knowalage	The creativiti is \none of main goals	2023-11-05 16:58:32.814	2023-11-05 16:58:33.918	2023-11-05 16:58:33.908	1	1	en
2	Knowalage	The creativiti is \none of main goals	2023-11-05 16:58:41.689	2023-11-05 16:58:56.343	2023-11-05 16:58:56.331	1	1	en
3	 Knowlage	The creativiti is \none of main goals	2023-11-05 16:59:32.932	2023-11-05 16:59:34.346	2023-11-05 16:59:34.337	1	1	en
4	 Knowlage	The creativiti is \none of main goals	2023-11-05 16:59:39.527	2023-11-05 16:59:47.04	2023-11-05 16:59:47.031	1	1	en
5	 Knowlage	The creativiti is \none of main goals	2023-11-05 16:59:52.514	2023-11-05 16:59:58.934	2023-11-05 16:59:58.924	1	1	en
6	 Knowlage	The creativiti is \none of main goals	2023-11-05 17:00:02.618	2023-11-05 17:00:13.857	2023-11-05 17:00:13.847	1	1	en
7	 Knowlage	The creativiti is \none of main goals	2023-11-05 17:00:18.108	2023-11-05 17:00:25.941	2023-11-05 17:00:25.932	1	1	en
8	Знання	Знання, підкріплені досвідом	2023-11-05 17:04:43.759	2023-11-05 17:04:44.557	2023-11-05 17:04:44.548	1	1	uk
9	Знання	Знання, підкріплені досвідом	2023-11-05 17:04:49.57	2023-11-05 17:04:56.726	2023-11-05 17:04:56.718	1	1	uk
10	Знання	Знання, підкріплені досвідом	2023-11-05 17:05:00.948	2023-11-05 17:05:07.095	2023-11-05 17:05:07.087	1	1	uk
11	Знання	Знання, підкріплені досвідом	2023-11-05 17:05:12.726	2023-11-05 17:05:23.499	2023-11-05 17:05:23.489	1	1	uk
12	Знання	Знання, підкріплені досвідом	2023-11-05 17:05:27.948	2023-11-05 17:05:35.855	2023-11-05 17:05:35.844	1	1	uk
13	Знання	Знання, підкріплені досвідом	2023-11-05 17:05:41.411	2023-11-05 17:05:47.759	2023-11-05 17:05:47.75	1	1	uk
14	Знання	Знання, підкріплені досвідом	2023-11-05 17:05:51.277	2023-11-05 17:05:58.134	2023-11-05 17:05:58.125	1	1	uk
15	Wiedza	Wiedza poparta doświadczeniem	2023-11-05 17:16:41.418	2023-11-05 17:16:43.151	2023-11-05 17:16:43.141	1	1	pl
16	Wiedza	Wiedza poparta doświadczeniem	2023-11-05 17:16:59.554	2023-11-05 17:17:10.052	2023-11-05 17:17:10.042	1	1	pl
17	Wiedza	Wiedza poparta doświadczeniem	2023-11-05 17:17:28.915	2023-11-05 17:17:35.751	2023-11-05 17:17:35.741	1	1	pl
18	Wiedza	Wiedza poparta doświadczeniem	2023-11-05 17:17:43.508	2023-11-05 17:17:49.674	2023-11-05 17:17:49.665	1	1	pl
19	Wiedza	Wiedza poparta doświadczeniem	2023-11-05 17:17:53.878	2023-11-05 17:18:01.248	2023-11-05 17:18:01.237	1	1	pl
20	Wiedza	Wiedza poparta doświadczeniem	2023-11-05 17:18:05.291	2023-11-05 17:18:11.552	2023-11-05 17:18:11.544	1	1	pl
\.


--
-- Data for Name: cards_localizations_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cards_localizations_links (id, card_id, inv_card_id, card_order) FROM stdin;
\.


--
-- Data for Name: eighth_sections; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.eighth_sections (id, tittle, sub_tittle, name, name_placeholder, phone, phone_placeholder, email, email_placeholder, question, question_placeholder, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, btn) FROM stdin;
2	Підтримка	У вас є питання?	Твоє ім'я	Iм'я*	Твій телефон	Tелефон*	Ваша електронна адреса	Eлектронна адреса	Ваше повідомлення	Знання, підкріплені досвідом	2023-11-19 11:56:39.9	2023-11-19 12:01:23.634	2023-11-19 11:56:43.319	1	1	uk	Надіслати
3	Wsparcie	Czy masz jakieś pytania?	Twoje imię	Imię*	Twój telefon	Telefon*	Twoja poczta	Poczta*	Twoja wiadomość	Wiedza poparta doświadczeniem	2023-11-19 11:57:43.078	2023-11-19 12:02:42.36	2023-11-19 11:57:44.963	1	1	pl	  Wysłać
1	Support	Do you have any questions?	Your name	Name*	Your phone	Phone*	Your email	Email*	Your message	Knowledge backed by experience	2023-11-19 11:55:36.115	2023-11-19 12:02:48.509	2023-11-19 11:55:38.058	1	1	en	Send
\.


--
-- Data for Name: eighth_sections_localizations_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.eighth_sections_localizations_links (id, eighth_section_id, inv_eighth_section_id, eighth_section_order) FROM stdin;
3	3	1	1
4	3	2	2
5	1	3	1
2	1	2	2
7	2	3	1
1	2	1	2
\.


--
-- Data for Name: emails; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.emails (id, email, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	fundation@gmail.com	2023-11-07 08:07:14.31	2023-11-07 08:07:15.034	2023-11-07 08:07:15.02	1	1	en
2	fundation@gmail.com	2023-11-07 09:24:09.149	2023-11-07 09:24:10.063	2023-11-07 09:24:10.053	1	1	uk
3	fundation@gmail.com	2023-11-07 09:25:06.296	2023-11-07 09:25:07.054	2023-11-07 09:25:07.045	1	1	pl
\.


--
-- Data for Name: emails_localizations_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.emails_localizations_links (id, email_id, inv_email_id, email_order) FROM stdin;
\.


--
-- Data for Name: fifth_sections; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fifth_sections (id, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, quote, quote_2, name) FROM stdin;
1	2023-11-19 11:02:34.514	2023-11-19 11:29:21.788	2023-11-19 11:02:36.244	1	1	en	Some small text why this is important icons for us\n\n	Some small text why this is important icons for us	Work in company name means
2	2023-11-19 11:04:15.938	2023-11-19 11:30:20.156	2023-11-19 11:04:19.971	1	1	uk	Невеликий текст, чому це важливі значки для нас	Невеликий текст, чому це важливі значки для нас	Робота в назві компанії означає
3	2023-11-19 11:04:48.922	2023-11-19 11:31:12.202	2023-11-19 11:09:36.749	1	1	pl	Trochę krótkiego tekstu, dlaczego są to dla nas ważne ikony	Trochę krótkiego tekstu, dlaczego są to dla nas ważne ikony	Praca w nazwie firmy oznacza
\.


--
-- Data for Name: fifth_sections_cards_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fifth_sections_cards_links (id, fifth_section_id, card_id, card_order) FROM stdin;
7	1	1	1
6	1	2	2
5	1	3	3
4	1	4	4
3	1	5	5
2	1	6	6
1	1	7	7
14	2	8	1
13	2	10	2
12	2	9	3
11	2	11	4
10	2	12	5
9	2	13	6
8	2	14	7
20	3	15	1
19	3	16	2
18	3	17	3
17	3	18	4
16	3	19	5
15	3	20	6
\.


--
-- Data for Name: fifth_sections_localizations_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fifth_sections_localizations_links (id, fifth_section_id, inv_fifth_section_id, fifth_section_order) FROM stdin;
3	3	1	1
4	3	2	2
5	1	3	1
2	1	2	2
7	2	3	1
1	2	1	2
\.


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
2	healthcare.svg	\N	\N	60	60	\N	healthcare_8211ad6098	.svg	image/svg+xml	6.26	/uploads/healthcare_8211ad6098.svg	\N	local	\N	/	2023-10-31 15:18:43.167	2023-10-31 15:18:43.167	1	1
5	image 15.svg	\N	\N	208	110	\N	image_15_c90645fa04	.svg	image/svg+xml	203.07	/uploads/image_15_c90645fa04.svg	\N	local	\N	/	2023-10-31 15:18:43.591	2023-10-31 15:18:43.591	1	1
6	Frame.svg	\N	\N	1920	646	\N	Frame_97eb8ae778	.svg	image/svg+xml	16.58	/uploads/Frame_97eb8ae778.svg	\N	local	\N	/	2023-10-31 15:18:43.598	2023-10-31 15:18:43.598	1	1
8	image2.svg	\N	\N	183	88	\N	image2_c8958cd42a	.svg	image/svg+xml	39.70	/uploads/image2_c8958cd42a.svg	\N	local	\N	/	2023-10-31 15:18:43.61	2023-10-31 15:18:43.61	1	1
9	logo dryps foundation svg 1.svg	\N	\N	260	149	\N	logo_dryps_foundation_svg_1_9f0e34f391	.svg	image/svg+xml	19.39	/uploads/logo_dryps_foundation_svg_1_9f0e34f391.svg	\N	local	\N	/	2023-10-31 15:18:43.624	2023-11-02 22:39:14.79	1	1
11	first.png	\N	\N	1920	679	{"large": {"ext": ".png", "url": "/uploads/large_first_acfebf6533.png", "hash": "large_first_acfebf6533", "mime": "image/png", "name": "large_first.png", "path": null, "size": 223.22, "width": 1000, "height": 354}, "small": {"ext": ".png", "url": "/uploads/small_first_acfebf6533.png", "hash": "small_first_acfebf6533", "mime": "image/png", "name": "small_first.png", "path": null, "size": 71.03, "width": 500, "height": 177}, "medium": {"ext": ".png", "url": "/uploads/medium_first_acfebf6533.png", "hash": "medium_first_acfebf6533", "mime": "image/png", "name": "medium_first.png", "path": null, "size": 138.99, "width": 750, "height": 265}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_first_acfebf6533.png", "hash": "thumbnail_first_acfebf6533", "mime": "image/png", "name": "thumbnail_first.png", "path": null, "size": 23.01, "width": 245, "height": 87}}	first_acfebf6533	.png	image/png	172.71	/uploads/first_acfebf6533.png	\N	local	\N	/	2023-11-02 22:57:13.014	2023-11-02 22:57:13.014	1	1
12	Rectangle 37.png	\N	\N	419	288	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Rectangle_37_fa69da38c5.png", "hash": "thumbnail_Rectangle_37_fa69da38c5", "mime": "image/png", "name": "thumbnail_Rectangle 37.png", "path": null, "size": 75.39, "width": 227, "height": 156}}	Rectangle_37_fa69da38c5	.png	image/png	57.77	/uploads/Rectangle_37_fa69da38c5.png	\N	local	\N	/	2023-11-04 21:20:28.332	2023-11-04 21:23:09.492	1	1
3	Group 33.svg	\N	\N	246	247	\N	Group_33_10c0203adb	.svg	image/svg+xml	4.69	/uploads/Group_33_10c0203adb.svg	\N	local	\N	/	2023-10-31 15:18:43.248	2023-11-04 21:23:19.422	1	1
13	healthcare 1.svg	\N	\N	60	60	\N	healthcare_1_8730e9ab3e	.svg	image/svg+xml	6.26	/uploads/healthcare_1_8730e9ab3e.svg	\N	local	\N	/	2023-11-05 16:58:28.761	2023-11-05 16:58:46.361	1	1
1	bg.svg	\N	\N	1920	643	\N	bg_994f3925b5	.svg	image/svg+xml	0.40	/uploads/bg_994f3925b5.svg	\N	local	\N	/	2023-10-31 15:18:43.135	2023-11-07 08:05:54.684	1	1
17	image 6 copy.png	\N	\N	1084	679	{"large": {"ext": ".png", "url": "/uploads/large_image_6_copy_612977ace7.png", "hash": "large_image_6_copy_612977ace7", "mime": "image/png", "name": "large_image 6 copy.png", "path": null, "size": 266, "width": 1000, "height": 626}, "small": {"ext": ".png", "url": "/uploads/small_image_6_copy_612977ace7.png", "hash": "small_image_6_copy_612977ace7", "mime": "image/png", "name": "small_image 6 copy.png", "path": null, "size": 62.38, "width": 500, "height": 313}, "medium": {"ext": ".png", "url": "/uploads/medium_image_6_copy_612977ace7.png", "hash": "medium_image_6_copy_612977ace7", "mime": "image/png", "name": "medium_image 6 copy.png", "path": null, "size": 145.22, "width": 750, "height": 470}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_image_6_copy_612977ace7.png", "hash": "thumbnail_image_6_copy_612977ace7", "mime": "image/png", "name": "thumbnail_image 6 copy.png", "path": null, "size": 18.13, "width": 245, "height": 153}}	image_6_copy_612977ace7	.png	image/png	82.13	/uploads/image_6_copy_612977ace7.png	\N	local	\N	/	2023-11-07 22:30:56.409	2023-11-07 22:30:56.409	1	1
18	img copy.png	\N	\N	1084	679	{"large": {"ext": ".png", "url": "/uploads/large_img_copy_d7bf51d7eb.png", "hash": "large_img_copy_d7bf51d7eb", "mime": "image/png", "name": "large_img copy.png", "path": null, "size": 314.87, "width": 1000, "height": 626}, "small": {"ext": ".png", "url": "/uploads/small_img_copy_d7bf51d7eb.png", "hash": "small_img_copy_d7bf51d7eb", "mime": "image/png", "name": "small_img copy.png", "path": null, "size": 78.61, "width": 500, "height": 313}, "medium": {"ext": ".png", "url": "/uploads/medium_img_copy_d7bf51d7eb.png", "hash": "medium_img_copy_d7bf51d7eb", "mime": "image/png", "name": "medium_img copy.png", "path": null, "size": 179.03, "width": 750, "height": 470}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_img_copy_d7bf51d7eb.png", "hash": "thumbnail_img_copy_d7bf51d7eb", "mime": "image/png", "name": "thumbnail_img copy.png", "path": null, "size": 22.73, "width": 245, "height": 153}}	img_copy_d7bf51d7eb	.png	image/png	89.86	/uploads/img_copy_d7bf51d7eb.png	\N	local	\N	/	2023-11-07 22:33:47.991	2023-11-19 10:29:03.213	1	1
14	svg.svg	\N	\N	1920	646	\N	svg_0b454f18ef	.svg	image/svg+xml	16.25	/uploads/svg_0b454f18ef.svg	\N	local	\N	/	2023-11-07 09:36:52.587	2023-11-19 10:41:54.825	1	1
10	image3.svg	\N	\N	134	134	\N	image3_4639cce2f5	.svg	image/svg+xml	756.42	/uploads/image3_4639cce2f5.svg	\N	local	\N	/	2023-10-31 15:18:43.79	2023-11-19 11:06:51.421	1	1
4	image1.svg	\N	\N	154	61	\N	image1_332b8edf3e	.svg	image/svg+xml	28.35	/uploads/image1_332b8edf3e.svg	\N	local	\N	/	2023-10-31 15:18:43.368	2023-11-19 11:08:44.243	1	1
7	whiteIcon.svg	\N	\N	445	447	\N	white_Icon_2ef8723fa1	.svg	image/svg+xml	4.55	/uploads/white_Icon_2ef8723fa1.svg	\N	local	\N	/	2023-10-31 15:18:43.607	2023-11-19 11:39:59.242	1	1
19	grl.png	\N	\N	832	719	{"small": {"ext": ".png", "url": "/uploads/small_grl_6e1a5b110f.png", "hash": "small_grl_6e1a5b110f", "mime": "image/png", "name": "small_grl.png", "path": null, "size": 185.06, "width": 500, "height": 432}, "medium": {"ext": ".png", "url": "/uploads/medium_grl_6e1a5b110f.png", "hash": "medium_grl_6e1a5b110f", "mime": "image/png", "name": "medium_grl.png", "path": null, "size": 378.58, "width": 750, "height": 648}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_grl_6e1a5b110f.png", "hash": "thumbnail_grl_6e1a5b110f", "mime": "image/png", "name": "thumbnail_grl.png", "path": null, "size": 31.85, "width": 181, "height": 156}}	grl_6e1a5b110f	.png	image/png	113.71	/uploads/grl_6e1a5b110f.png	\N	local	\N	/	2023-11-07 22:47:12.215	2023-11-19 10:28:32.626	1	1
\.


--
-- Data for Name: files_folder_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.files_folder_links (id, file_id, folder_id, file_order) FROM stdin;
\.


--
-- Data for Name: files_related_morphs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.files_related_morphs (id, file_id, related_id, related_type, field, "order") FROM stdin;
4	9	1	api::header.header	logo	1
5	9	2	api::header.header	logo	1
7	9	3	api::header.header	logo	1
10	11	2	api::main-banner.main-banner	coverImage	1
34	12	1	api::about-us.about-us	img	1
35	12	1	api::about-us.about-us	subImg	1
36	12	2	api::about-us.about-us	img	1
37	12	2	api::about-us.about-us	subImg	1
38	12	3	api::about-us.about-us	img	1
39	12	3	api::about-us.about-us	subImg	1
40	11	3	api::main-banner.main-banner	coverImage	1
41	13	1	api::card.card	icon	1
42	13	2	api::card.card	icon	1
43	13	3	api::card.card	icon	1
44	13	4	api::card.card	icon	1
45	13	5	api::card.card	icon	1
46	13	6	api::card.card	icon	1
47	13	7	api::card.card	icon	1
48	13	8	api::card.card	icon	1
49	13	9	api::card.card	icon	1
50	13	10	api::card.card	icon	1
51	13	11	api::card.card	icon	1
52	13	12	api::card.card	icon	1
53	13	13	api::card.card	icon	1
54	13	14	api::card.card	icon	1
55	13	15	api::card.card	icon	1
56	13	16	api::card.card	icon	1
57	13	17	api::card.card	icon	1
58	13	18	api::card.card	icon	1
59	13	19	api::card.card	icon	1
60	13	20	api::card.card	icon	1
61	10	1	api::partner.partner	icon	1
62	4	2	api::partner.partner	icon	1
63	8	3	api::partner.partner	icon	1
64	10	4	api::partner.partner	icon	1
65	4	5	api::partner.partner	icon	1
66	8	6	api::partner.partner	icon	1
77	5	2	api::footer.footer	logo	1
78	1	2	api::footer.footer	background	1
85	5	4	api::footer.footer	logo	1
86	1	4	api::footer.footer	background	1
87	5	3	api::footer.footer	logo	1
88	1	3	api::footer.footer	background	1
89	7	1	api::contact-us.contact-us	logo	1
90	1	1	api::contact-us.contact-us	background	1
97	7	2	api::contact-us.contact-us	logo	1
98	1	2	api::contact-us.contact-us	background	1
99	7	3	api::contact-us.contact-us	logo	1
100	1	3	api::contact-us.contact-us	background	1
101	12	1	api::project.project	img	1
102	3	1	api::project.project	waterMark	1
103	12	2	api::project.project	img	1
104	3	2	api::project.project	waterMark	1
105	12	3	api::project.project	img	1
106	3	3	api::project.project	waterMark	1
107	12	4	api::project.project	img	1
108	3	4	api::project.project	waterMark	1
109	12	5	api::project.project	img	1
110	3	5	api::project.project	waterMark	1
111	12	6	api::project.project	img	1
112	3	6	api::project.project	waterMark	1
117	12	9	api::project.project	img	1
118	3	9	api::project.project	waterMark	1
119	12	8	api::project.project	img	1
120	3	8	api::project.project	waterMark	1
121	12	7	api::project.project	img	1
122	3	7	api::project.project	waterMark	1
123	14	1	api::second-banner.second-banner	coverImage	1
124	14	2	api::second-banner.second-banner	coverImage	1
125	14	3	api::second-banner.second-banner	coverImage	1
135	18	1	api::main-banner.main-banner	bgImg	1
136	19	1	api::main-banner.main-banner	img	1
137	18	2	api::main-banner.main-banner	bgImg	1
138	19	2	api::main-banner.main-banner	img	1
139	18	3	api::main-banner.main-banner	bgImg	1
140	19	3	api::main-banner.main-banner	img	1
141	9	1	api::head.head	logo	1
142	9	2	api::head.head	logo	1
143	9	3	api::head.head	logo	1
144	18	1	api::first-section.first-section	bgImg	1
145	19	1	api::first-section.first-section	img	1
146	18	2	api::first-section.first-section	bgImg	1
147	19	2	api::first-section.first-section	img	1
148	18	3	api::first-section.first-section	bgImg	1
149	19	3	api::first-section.first-section	img	1
150	14	1	api::third-section.third-section	coverImage	1
151	14	2	api::third-section.third-section	coverImage	1
152	14	3	api::third-section.third-section	coverImage	1
153	12	1	api::fourth-section.fourth-section	img	1
154	12	1	api::fourth-section.fourth-section	subImg	1
155	12	2	api::fourth-section.fourth-section	img	1
156	12	2	api::fourth-section.fourth-section	subImg	1
157	12	3	api::fourth-section.fourth-section	img	1
158	12	3	api::fourth-section.fourth-section	subImg	1
159	10	7	api::partner.partner	icon	1
160	8	8	api::partner.partner	icon	1
161	4	9	api::partner.partner	icon	1
162	10	10	api::partner.partner	icon	1
163	8	11	api::partner.partner	icon	1
164	4	12	api::partner.partner	icon	1
166	8	14	api::partner.partner	icon	1
168	10	16	api::partner.partner	icon	1
169	8	17	api::partner.partner	icon	1
165	10	13	api::partner.partner	icon	1
170	4	18	api::partner.partner	icon	1
167	4	15	api::partner.partner	icon	1
171	7	1	api::seventh-section.seventh-section	logo	1
172	1	1	api::seventh-section.seventh-section	background	1
173	7	2	api::seventh-section.seventh-section	logo	1
174	1	2	api::seventh-section.seventh-section	background	1
175	7	3	api::seventh-section.seventh-section	logo	1
176	1	3	api::seventh-section.seventh-section	background	1
177	5	1	api::footer-section.footer-section	logo	1
178	1	1	api::footer-section.footer-section	background	1
180	5	3	api::footer-section.footer-section	logo	1
181	1	3	api::footer-section.footer-section	background	1
182	5	2	api::footer-section.footer-section	logo	1
183	1	2	api::footer-section.footer-section	background	1
\.


--
-- Data for Name: first_sections; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.first_sections (id, tittle, description, btn_name, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
2	Фонд медичної допомоги	Наша місія – допомагати тим, хто допомагає нам	Я хочу допомогти	2023-11-19 10:28:46.78	2023-11-19 10:29:10.532	2023-11-19 10:28:48.906	1	1	uk
1	Medical Aid Fund	Our mission is to help those who help us	I want to help	2023-11-19 10:27:34.707	2023-11-19 10:29:10.532	2023-11-19 10:27:36.518	1	1	en
3	Fundusz Pomocy Medycznej	Naszą misją jest pomaganie tym, którzy nam pomagają	Chcę pomóc	2023-11-19 10:29:10.497	2023-11-19 10:29:12.542	2023-11-19 10:29:12.534	1	1	pl
\.


--
-- Data for Name: first_sections_localizations_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.first_sections_localizations_links (id, first_section_id, inv_first_section_id, first_section_order) FROM stdin;
3	3	1	1
4	3	2	2
5	2	3	1
1	2	1	2
7	1	3	1
2	1	2	2
\.


--
-- Data for Name: footer_sections; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.footer_sections (id, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, fb_link, insta_link, tw_link, contacts_tittle, social_tittle) FROM stdin;
1	2023-11-19 12:09:06.114	2023-11-19 12:11:12.711	2023-11-19 12:09:08.811	1	1	en	#	#	#	Contacts	Social media
3	2023-11-19 12:11:12.656	2023-11-19 12:11:14.569	2023-11-19 12:11:14.56	1	1	pl	#	#	#	Łączność	Media społecznościowe
2	2023-11-19 12:10:11.525	2023-11-19 12:13:10.587	2023-11-19 12:10:13.539	1	1	uk	#	#	#	Контакти	Соціальні мережі
\.


--
-- Data for Name: footer_sections_email_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.footer_sections_email_links (id, footer_section_id, email_id) FROM stdin;
1	1	1
2	2	2
3	3	3
\.


--
-- Data for Name: footer_sections_localizations_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.footer_sections_localizations_links (id, footer_section_id, inv_footer_section_id, footer_section_order) FROM stdin;
3	3	1	1
4	3	2	2
5	1	3	1
2	1	2	2
7	2	3	1
1	2	1	2
\.


--
-- Data for Name: footer_sections_menu_items_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.footer_sections_menu_items_links (id, footer_section_id, menu_id, menu_order) FROM stdin;
1	1	4	3
2	1	3	2
3	1	2	1
4	1	1	0
5	2	16	3
6	2	15	2
7	2	14	1
8	2	13	0
9	3	12	3
10	3	11	2
11	3	10	1
12	3	9	0
\.


--
-- Data for Name: footer_sections_phones_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.footer_sections_phones_links (id, footer_section_id, phone_id, phone_order) FROM stdin;
1	1	2	1
2	1	1	0
3	2	4	1
4	2	3	0
5	3	6	1
6	3	5	0
\.


--
-- Data for Name: fourth_sections; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fourth_sections (id, tittle, description, quote, img_description, sub_tittle, sub_description, name, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	Founder	A charitable foundation is an organization established to help and support those in need and make a positive contribution to society. These foundations play an important role in improving the quality of life and creating better conditions for people suffering from poverty, disease, violations of rights	“Some qoute  of founder” (c) Founder	“COmpany name”	About foundation	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen \nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged	About us	2023-11-19 10:53:13.588	2023-11-19 10:57:27.103	2023-11-19 10:54:49.294	1	1	en
2	Засновник	Благодійний фонд – це організація, створена для допомоги та підтримки тих, хто її потребує, а також для позитивного внеску в суспільство. Ці фонди відіграють важливу роль у покращенні якості життя та створенні кращих умов для людей, які страждають від бідності, хвороб, порушень прав	«Деякі слова про засновника» (c) Засновник	 Назва компанії	Про засновників	Lorem Ipsum — це просто фіктивний текст поліграфічної та набірної промисловості. Lorem Ipsum був стандартним галузевим фіктивним текстом ще з 1500-х років, коли невідомий друкар взяв гарбуз шрифту та зашифрував його, щоб створити зразок шрифту. Lorem Ipsum — це просто фіктивний текст друкарської та набірної промисловості. Lorem Ipsum був стандартним галузевим фіктивним текстом ще з 1500-х років, коли невідомий друкар взяв гарбуз шрифту та зашифрував його, щоб зробити зразок шрифту	Про нас	2023-11-19 10:56:23.617	2023-11-19 10:57:27.103	2023-11-19 10:56:25.523	1	1	uk
3	Założyciel	Fundacja charytatywna to organizacja powołana, aby pomagać i wspierać potrzebujących oraz wnosić pozytywny wkład w społeczeństwo. Fundacje te odgrywają ważną rolę w poprawie jakości życia i tworzeniu lepszych warunków dla osób cierpiących z powodu biedy, chorób, łamania praw	„Jakiś cytat założyciela” (с) Założyciela	"Nazwa firmy"	O fundacji	Lorem Ipsum to po prostu fikcyjny tekst branży poligraficznej i składu. Lorem Ipsum jest standardowym fikcyjnym tekstem w branży od XVI wieku, kiedy nieznany drukarz wziął kuchenkę z czcionką i przemieszał ją, aby wykonać próbkę czcionki\nLorem Ipsum to po prostu fikcyjny tekst branży poligraficznej i składu. Lorem Ipsum jest standardowym fikcyjnym tekstem w branży od XVI wieku, kiedy nieznana drukarka uruchamia kuchenkę z czcionką i przemieszał ją, aby uzyskać próbkę dostępu	O nas	2023-11-19 10:57:27.066	2023-11-19 10:57:28.924	2023-11-19 10:57:28.914	1	1	pl
\.


--
-- Data for Name: fourth_sections_localizations_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fourth_sections_localizations_links (id, fourth_section_id, inv_fourth_section_id, fourth_section_order) FROM stdin;
3	3	1	1
4	3	2	2
5	1	3	1
2	1	2	2
7	2	3	1
1	2	1	2
\.


--
-- Data for Name: heads; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.heads (id, support, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	Support us	2023-11-19 10:06:21.864	2023-11-19 10:20:25.47	2023-11-19 10:20:25.46	1	1	en
2	 Підтримайте нас	2023-11-19 10:06:59.711	2023-11-19 10:23:16.274	2023-11-19 10:23:16.265	1	1	uk
3	 Wesprzyj nas	2023-11-19 10:07:33.277	2023-11-19 10:23:19.316	2023-11-19 10:23:19.307	1	1	pl
\.


--
-- Data for Name: heads_localizations_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.heads_localizations_links (id, head_id, inv_head_id, head_order) FROM stdin;
3	3	2	1
4	3	1	2
5	2	3	1
1	2	1	2
7	1	3	1
2	1	2	2
\.


--
-- Data for Name: heads_menu_items_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.heads_menu_items_links (id, head_id, menu_id, menu_order) FROM stdin;
1	1	4	3
2	1	3	2
3	1	2	1
4	1	1	0
5	2	16	3
6	2	15	2
7	2	14	1
8	2	13	0
9	3	12	3
10	3	11	2
11	3	10	1
12	3	9	0
\.


--
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	English (en)	en	2023-10-30 21:32:53.686	2023-10-30 21:32:53.686	\N	\N
3	Ukrainian (uk)	uk	2023-11-02 22:25:05.495	2023-11-02 22:25:05.495	1	1
2	Polish (pl)	pl	2023-11-02 22:24:52.923	2023-11-02 23:16:05.123	1	1
\.


--
-- Data for Name: menu_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.menu_items (id, item, link, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	Our projects	secondSection	2023-11-02 22:15:43.135	2023-11-02 22:15:45.16	2023-11-02 22:15:45.15	1	1	en
2	About us	fourthSection	2023-11-02 22:17:52.827	2023-11-02 22:17:54.185	2023-11-02 22:17:54.176	1	1	en
3	Partners	sixthSection	2023-11-02 22:18:45.425	2023-11-02 22:18:46.686	2023-11-02 22:18:46.676	1	1	en
9	 Nasz projekt	secondSection	2023-11-02 22:27:10.911	2023-11-02 22:27:11.772	2023-11-02 22:27:11.764	1	1	pl
10	 O nas	fourthSection	2023-11-02 22:27:40.679	2023-11-02 22:27:41.702	2023-11-02 22:27:41.693	1	1	pl
11	 Wzmacniacz	sixthSection	2023-11-02 22:28:49.837	2023-11-02 22:28:51.664	2023-11-02 22:28:51.654	1	1	pl
13	Нащі проекти	secondSection	2023-11-02 22:32:26.503	2023-11-02 22:32:26.991	2023-11-02 22:32:26.982	1	1	uk
14	Про нас	fourthSection	2023-11-02 22:32:38.259	2023-11-02 22:32:38.992	2023-11-02 22:32:38.983	1	1	uk
15	Партнери	sixthSection	2023-11-02 22:33:15.899	2023-11-02 22:33:16.431	2023-11-02 22:33:16.422	1	1	uk
4	Contacts	seventhSection	2023-11-02 22:19:40.928	2023-11-07 09:16:09.631	2023-11-02 22:19:43.674	1	1	en
16	Контакти	seventhSection	2023-11-02 22:33:35.193	2023-11-07 09:16:37.755	2023-11-02 22:33:35.988	1	1	uk
12	 Łączność	seventhSection	2023-11-02 22:29:38.408	2023-11-07 09:16:48.37	2023-11-02 22:30:53.073	1	1	pl
\.


--
-- Data for Name: menu_items_localizations_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.menu_items_localizations_links (id, menu_id, inv_menu_id, menu_order) FROM stdin;
\.


--
-- Data for Name: partners; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.partners (id, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	2023-11-05 17:21:40.191	2023-11-05 17:21:41.017	2023-11-05 17:21:41.006	1	1	en
2	2023-11-05 17:21:57.456	2023-11-05 17:21:58.365	2023-11-05 17:21:58.356	1	1	en
3	2023-11-05 17:22:11.85	2023-11-05 17:22:12.69	2023-11-05 17:22:12.68	1	1	en
4	2023-11-05 17:22:15.637	2023-11-05 17:22:22.326	2023-11-05 17:22:22.316	1	1	en
5	2023-11-05 17:22:39.161	2023-11-05 17:22:39.995	2023-11-05 17:22:39.985	1	1	en
6	2023-11-05 17:22:55.386	2023-11-05 17:22:56.156	2023-11-05 17:22:56.148	1	1	en
7	2023-11-19 11:06:13.722	2023-11-19 11:06:14.383	2023-11-19 11:06:14.376	1	1	uk
8	2023-11-19 11:06:25.198	2023-11-19 11:06:26.005	2023-11-19 11:06:25.998	1	1	uk
9	2023-11-19 11:06:38.266	2023-11-19 11:06:43.453	2023-11-19 11:06:43.445	1	1	uk
10	2023-11-19 11:06:47.697	2023-11-19 11:07:00.742	2023-11-19 11:07:00.735	1	1	uk
11	2023-11-19 11:07:09.527	2023-11-19 11:07:10.232	2023-11-19 11:07:10.225	1	1	uk
12	2023-11-19 11:07:27.441	2023-11-19 11:07:29.281	2023-11-19 11:07:29.272	1	1	uk
13	2023-11-19 11:07:52.727	2023-11-19 11:07:53.472	2023-11-19 11:07:53.464	1	1	pl
14	2023-11-19 11:08:01.838	2023-11-19 11:08:02.682	2023-11-19 11:08:02.674	1	1	pl
15	2023-11-19 11:08:13.527	2023-11-19 11:08:14.753	2023-11-19 11:08:14.745	1	1	pl
16	2023-11-19 11:08:24.117	2023-11-19 11:08:25.093	2023-11-19 11:08:25.086	1	1	pl
17	2023-11-19 11:08:34.145	2023-11-19 11:08:34.818	2023-11-19 11:08:34.811	1	1	pl
18	2023-11-19 11:08:48.015	2023-11-19 11:08:48.68	2023-11-19 11:08:48.672	1	1	pl
\.


--
-- Data for Name: partners_localizations_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.partners_localizations_links (id, partner_id, inv_partner_id, partner_order) FROM stdin;
\.


--
-- Data for Name: phones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.phones (id, phone, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	48777777777	2023-11-07 08:06:44.53	2023-11-07 08:06:46.771	2023-11-07 08:06:46.762	1	1	en
2	48777777777	2023-11-07 08:06:53.902	2023-11-07 08:06:57.509	2023-11-07 08:06:57.5	1	1	en
3	48777777777	2023-11-07 09:24:22.078	2023-11-07 09:24:22.841	2023-11-07 09:24:22.83	1	1	uk
4	48777777777	2023-11-07 09:24:28.316	2023-11-07 09:24:28.956	2023-11-07 09:24:28.946	1	1	uk
5	48777777777	2023-11-07 09:25:19.871	2023-11-07 09:25:20.688	2023-11-07 09:25:20.68	1	1	pl
6	48777777777	2023-11-07 09:25:27.106	2023-11-07 09:25:27.879	2023-11-07 09:25:27.871	1	1	pl
\.


--
-- Data for Name: phones_localizations_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.phones_localizations_links (id, phone_id, inv_phone_id, phone_order) FROM stdin;
\.


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.projects (id, description, goal, quote, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, btn) FROM stdin;
3	A charitable foundation is an organization established to help and support those in need and make a positive contribution to society. These foundations play an 	0.00	A charitable foundation is an organization established to help and support those in need and make a positive contribution to society. These foundations play an 	2023-11-04 21:23:40.705	2023-11-07 09:48:04.912	2023-11-04 21:23:55.569	1	1	en	Donate
4	Благодійний фонд – це організація, створена для допомоги та підтримки тих, хто її потребує, а також для позитивного внеску в суспільство. Ці основи відіграють роль	0.00	Благодійний фонд – це організація, створена для допомоги та підтримки тих, хто її потребує, а також для позитивного внеску в суспільство. Ці основи відіграють роль	2023-11-04 21:30:32.473	2023-11-07 09:49:16.676	2023-11-04 21:30:34.56	1	1	uk	Пожертвувати
9	Fundacja charytatywna to organizacja powołana, aby pomagać i wspierać potrzebujących oraz wnosić pozytywny wkład w społeczeństwo. Podstawy te odgrywają rolę	0.00	Fundacja charytatywna to organizacja powołana, aby pomagać i wspierać potrzebujących oraz wnosić pozytywny wkład w społeczeństwo. Podstawy te odgrywają rolę	2023-11-04 21:32:03.751	2023-11-07 09:50:21.739	2023-11-04 21:32:19.627	1	1	pl	Podarować
8	Fundacja charytatywna to organizacja powołana, aby pomagać i wspierać potrzebujących oraz wnosić pozytywny wkład w społeczeństwo. Podstawy te odgrywają rolę	0.00	Fundacja charytatywna to organizacja powołana, aby pomagać i wspierać potrzebujących oraz wnosić pozytywny wkład w społeczeństwo. Podstawy te odgrywają rolę	2023-11-04 21:31:51.358	2023-11-07 09:50:28.676	2023-11-04 21:32:00.503	1	1	pl	Podarować
7	Fundacja charytatywna to organizacja powołana, aby pomagać i wspierać potrzebujących oraz wnosić pozytywny wkład w społeczeństwo. Podstawy te odgrywają rolę	0.00	Fundacja charytatywna to organizacja powołana, aby pomagać i wspierać potrzebujących oraz wnosić pozytywny wkład w społeczeństwo. Podstawy te odgrywają rolę	2023-11-04 21:31:40.841	2023-11-07 09:50:35.549	2023-11-04 21:31:41.599	1	1	pl	Podarować
5	Благодійний фонд – це організація, створена для допомоги та підтримки тих, хто її потребує, а також для позитивного внеску в суспільство. Ці основи відіграють роль	0.00	Благодійний фонд – це організація, створена для допомоги та підтримки тих, хто її потребує, а також для позитивного внеску в суспільство. Ці основи відіграють роль	2023-11-04 21:30:37.599	2023-11-07 09:49:23.078	2023-11-04 21:30:49.915	1	1	uk	Пожертвувати
6	Благодійний фонд – це організація, створена для допомоги та підтримки тих, хто її потребує, а також для позитивного внеску в суспільство. Ці основи відіграють роль	0.00	Благодійний фонд – це організація, створена для допомоги та підтримки тих, хто її потребує, а також для позитивного внеску в суспільство. Ці основи відіграють роль	2023-11-04 21:31:09.797	2023-11-07 09:49:29.042	2023-11-04 21:31:10.548	1	1	uk	Пожертвувати
1	A charitable foundation is an organization established to help and support those in need and make a positive contribution to society. These foundations play an 	0.00	A charitable foundation is an organization established to help and support those in need and make a positive contribution to society. These foundations play an 	2023-11-04 21:21:55.119	2023-11-07 09:47:49.231	2023-11-04 21:21:56.173	1	1	en	Donate
2	A charitable foundation is an organization established to help and support those in need and make a positive contribution to society. These foundations play an 	0.00	A charitable foundation is an organization established to help and support those in need and make a positive contribution to society. These foundations play an 	2023-11-04 21:23:01.411	2023-11-07 09:47:57.268	2023-11-04 21:23:28.304	1	1	en	Donate
\.


--
-- Data for Name: projects_localizations_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.projects_localizations_links (id, project_id, inv_project_id, project_order) FROM stdin;
\.


--
-- Data for Name: second_sections; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.second_sections (id, tittle, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	Our projects	2023-11-19 10:35:05.47	2023-11-19 10:35:53.287	2023-11-19 10:35:07.23	1	1	en
2	Наші проекти	2023-11-19 10:35:17.979	2023-11-19 10:35:53.287	2023-11-19 10:35:20.556	1	1	uk
3	Nasz projekt	2023-11-19 10:35:53.262	2023-11-19 10:35:54.95	2023-11-19 10:35:54.941	1	1	pl
\.


--
-- Data for Name: second_sections_localizations_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.second_sections_localizations_links (id, second_section_id, inv_second_section_id, second_section_order) FROM stdin;
3	3	1	1
4	3	2	2
5	1	3	1
2	1	2	2
7	2	3	1
1	2	1	2
\.


--
-- Data for Name: second_sections_projects_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.second_sections_projects_links (id, second_section_id, project_id, project_order) FROM stdin;
1	1	2	2
2	1	1	1
3	1	3	0
4	2	6	2
5	2	5	1
6	2	4	0
7	3	7	2
8	3	8	1
9	3	9	0
\.


--
-- Data for Name: seventh_sections; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.seventh_sections (id, tittle, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	Contact us	2023-11-19 11:38:52.225	2023-11-19 11:40:39.454	2023-11-19 11:38:54.71	1	1	en
2	Зв'яжіться з нами	2023-11-19 11:39:43.55	2023-11-19 11:40:39.454	2023-11-19 11:39:45.538	1	1	uk
3	Skontaktuj się z nami	2023-11-19 11:40:39.408	2023-11-19 11:42:56.042	2023-11-19 11:42:56.034	1	1	pl
\.


--
-- Data for Name: seventh_sections_bank_accounts_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.seventh_sections_bank_accounts_links (id, seventh_section_id, bank_account_id, bank_account_order) FROM stdin;
1	1	3	2
2	1	2	1
3	1	1	0
4	2	6	2
5	2	5	1
6	2	4	0
7	3	9	2
8	3	8	1
9	3	7	0
\.


--
-- Data for Name: seventh_sections_email_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.seventh_sections_email_links (id, seventh_section_id, email_id) FROM stdin;
1	1	1
2	2	2
3	3	3
\.


--
-- Data for Name: seventh_sections_localizations_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.seventh_sections_localizations_links (id, seventh_section_id, inv_seventh_section_id, seventh_section_order) FROM stdin;
3	3	1	1
4	3	2	2
5	1	3	1
2	1	2	2
7	2	3	1
1	2	1	2
\.


--
-- Data for Name: seventh_sections_phones_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.seventh_sections_phones_links (id, seventh_section_id, phone_id, phone_order) FROM stdin;
1	1	2	1
2	1	1	0
3	2	4	1
4	2	3	0
5	3	6	1
6	3	5	0
\.


--
-- Data for Name: sixth_sections; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sixth_sections (id, name, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
2	nasi partnerzy	2023-11-19 11:14:33.121	2023-11-19 11:14:51.943	2023-11-19 11:14:34.83	1	1	pl
1	Our parners	2023-11-19 11:13:37.74	2023-11-19 11:14:51.943	2023-11-19 11:13:39.486	1	1	en
3	Нащі партнери	2023-11-19 11:14:51.925	2023-11-19 11:25:49.011	2023-11-19 11:14:54.258	1	1	uk
\.


--
-- Data for Name: sixth_sections_localizations_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sixth_sections_localizations_links (id, sixth_section_id, inv_sixth_section_id, sixth_section_order) FROM stdin;
3	3	1	1
4	3	2	2
5	2	3	1
1	2	1	2
7	1	3	1
2	1	2	2
\.


--
-- Data for Name: sixth_sections_partners_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sixth_sections_partners_links (id, sixth_section_id, partner_id, partner_order) FROM stdin;
1	1	6	5
2	1	5	4
3	1	4	3
4	1	3	2
5	1	2	1
6	1	1	0
7	2	18	5
8	2	17	4
9	2	16	3
10	2	15	2
11	2	14	1
12	2	13	0
18	3	7	1
17	3	9	2
16	3	8	3
15	3	10	4
14	3	11	5
13	3	12	6
\.


--
-- Data for Name: strapi_api_token_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_api_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_api_token_permissions_token_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_api_token_permissions_token_links (id, api_token_permission_id, api_token_id, api_token_permission_order) FROM stdin;
\.


--
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_api_tokens (id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
2	plugin_content_manager_configuration_content_types::admin::permission	{"uid":"admin::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"actionParameters":{"edit":{"label":"actionParameters","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"actionParameters","searchable":false,"sortable":false}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"edit":[[{"name":"action","size":6}],[{"name":"actionParameters","size":12}],[{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}],[{"name":"role","size":6}]]}}	object	\N	\N
3	plugin_content_manager_configuration_content_types::admin::user	{"uid":"admin::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"isActive","size":4}],[{"name":"roles","size":6},{"name":"blocked","size":4}],[{"name":"preferedLanguage","size":6}]]}}	object	\N	\N
4	plugin_content_manager_configuration_content_types::admin::transfer-token-permission	{"uid":"admin::transfer-token-permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]}}	object	\N	\N
5	plugin_content_manager_configuration_content_types::admin::transfer-token	{"uid":"admin::transfer-token","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","accessKey"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"accessKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]}}	object	\N	\N
6	plugin_content_manager_configuration_content_types::admin::role	{"uid":"admin::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6},{"name":"users","size":6}],[{"name":"permissions","size":6}]]}}	object	\N	\N
7	plugin_content_manager_configuration_content_types::admin::api-token	{"uid":"admin::api-token","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}],[{"name":"lastUsedAt","size":6},{"name":"permissions","size":6}],[{"name":"expiresAt","size":6},{"name":"lifespan","size":4}]]}}	object	\N	\N
9	plugin_content_manager_configuration_content_types::admin::api-token-permission	{"uid":"admin::api-token-permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]}}	object	\N	\N
1	strapi_content_types_schema	{"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"admin::permission","plugin":"admin","globalId":"AdminPermission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"registrationToken":{"hidden":true}}},"kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"admin::user","plugin":"admin","globalId":"AdminUser"},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"admin::role","plugin":"admin","globalId":"AdminRole"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token","connection":"default","uid":"admin::api-token","plugin":"admin","globalId":"AdminApiToken"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token-permission","connection":"default","uid":"admin::api-token-permission","plugin":"admin","globalId":"AdminApiTokenPermission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token","connection":"default","uid":"admin::transfer-token","plugin":"admin","globalId":"AdminTransferToken"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token-permission","connection":"default","uid":"admin::transfer-token-permission","plugin":"admin","globalId":"AdminTransferTokenPermission"},"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"file","connection":"default","uid":"plugin::upload.file","plugin":"upload","globalId":"UploadFile"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"folder","connection":"default","uid":"plugin::upload.folder","plugin":"upload","globalId":"UploadFolder"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"plugin::users-permissions.permission","plugin":"users-permissions","globalId":"UsersPermissionsPermission"},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"plugin::users-permissions.role","plugin":"users-permissions","globalId":"UsersPermissionsRole"},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"name":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"kind":"collectionType","__filename__":"schema.json","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"name":{"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"plugin::users-permissions.user","plugin":"users-permissions","globalId":"UsersPermissionsUser"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"locale","connection":"default","uid":"plugin::i18n.locale","plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale"},"api::bank-account.bank-account":{"kind":"collectionType","collectionName":"bank_accounts","info":{"singularName":"bank-account","pluralName":"bank-accounts","displayName":"bankAccount","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"name":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"address":{"type":"biginteger","pluginOptions":{"i18n":{"localized":true}}},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::bank-account.bank-account"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"bank_accounts","info":{"singularName":"bank-account","pluralName":"bank-accounts","displayName":"bankAccount","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"name":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"address":{"type":"biginteger","pluginOptions":{"i18n":{"localized":true}}}},"kind":"collectionType"},"modelType":"contentType","modelName":"bank-account","connection":"default","uid":"api::bank-account.bank-account","apiName":"bank-account","globalId":"BankAccount","actions":{},"lifecycles":{}},"api::card.card":{"kind":"collectionType","collectionName":"cards","info":{"singularName":"card","pluralName":"cards","displayName":"Card","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"tittle":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"description":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"icon":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{"i18n":{"localized":true}}},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::card.card"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"cards","info":{"singularName":"card","pluralName":"cards","displayName":"Card","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"tittle":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"description":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"icon":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{"i18n":{"localized":true}}}},"kind":"collectionType"},"modelType":"contentType","modelName":"card","connection":"default","uid":"api::card.card","apiName":"card","globalId":"Card","actions":{},"lifecycles":{}},"api::eighth-section.eighth-section":{"kind":"singleType","collectionName":"eighth_sections","info":{"singularName":"eighth-section","pluralName":"eighth-sections","displayName":"Eighth-section","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"tittle":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"subTittle":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"name":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"namePlaceholder":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"phone":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"phonePlaceholder":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"email":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"emailPlaceholder":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"question":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"questionPlaceholder":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"btn":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::eighth-section.eighth-section"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"eighth_sections","info":{"singularName":"eighth-section","pluralName":"eighth-sections","displayName":"Eighth-section","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"tittle":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"subTittle":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"name":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"namePlaceholder":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"phone":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"phonePlaceholder":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"email":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"emailPlaceholder":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"question":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"questionPlaceholder":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"btn":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"}},"kind":"singleType"},"modelType":"contentType","modelName":"eighth-section","connection":"default","uid":"api::eighth-section.eighth-section","apiName":"eighth-section","globalId":"EighthSection","actions":{},"lifecycles":{}},"api::email.email":{"kind":"collectionType","collectionName":"emails","info":{"singularName":"email","pluralName":"emails","displayName":"Email","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"email":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::email.email"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"emails","info":{"singularName":"email","pluralName":"emails","displayName":"Email","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"email":{"type":"string","pluginOptions":{"i18n":{"localized":true}}}},"kind":"collectionType"},"modelType":"contentType","modelName":"email","connection":"default","uid":"api::email.email","apiName":"email","globalId":"Email","actions":{},"lifecycles":{}},"api::fifth-section.fifth-section":{"kind":"singleType","collectionName":"fifth_sections","info":{"singularName":"fifth-section","pluralName":"fifth-sections","displayName":"Fifth-section","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"quote":{"pluginOptions":{"i18n":{"localized":true}},"type":"text"},"quote2":{"pluginOptions":{"i18n":{"localized":true}},"type":"text"},"cards":{"type":"relation","relation":"oneToMany","target":"api::card.card"},"name":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::fifth-section.fifth-section"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"fifth_sections","info":{"singularName":"fifth-section","pluralName":"fifth-sections","displayName":"Fifth-section","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"quote":{"pluginOptions":{"i18n":{"localized":true}},"type":"text"},"quote2":{"pluginOptions":{"i18n":{"localized":true}},"type":"text"},"cards":{"type":"relation","relation":"oneToMany","target":"api::card.card"},"name":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"}},"kind":"singleType"},"modelType":"contentType","modelName":"fifth-section","connection":"default","uid":"api::fifth-section.fifth-section","apiName":"fifth-section","globalId":"FifthSection","actions":{},"lifecycles":{}},"api::first-section.first-section":{"kind":"singleType","collectionName":"first_sections","info":{"singularName":"first-section","pluralName":"first-sections","displayName":"First-section"},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"bgImg":{"allowedTypes":["images"],"type":"media","multiple":false,"pluginOptions":{"i18n":{"localized":true}}},"tittle":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"description":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"btnName":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"img":{"allowedTypes":["images"],"type":"media","multiple":false,"pluginOptions":{"i18n":{"localized":true}}},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::first-section.first-section"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"first_sections","info":{"singularName":"first-section","pluralName":"first-sections","displayName":"First-section"},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"bgImg":{"allowedTypes":["images"],"type":"media","multiple":false,"pluginOptions":{"i18n":{"localized":true}}},"tittle":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"description":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"btnName":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"img":{"allowedTypes":["images"],"type":"media","multiple":false,"pluginOptions":{"i18n":{"localized":true}}}},"kind":"singleType"},"modelType":"contentType","modelName":"first-section","connection":"default","uid":"api::first-section.first-section","apiName":"first-section","globalId":"FirstSection","actions":{},"lifecycles":{}},"api::footer-section.footer-section":{"kind":"singleType","collectionName":"footer_sections","info":{"singularName":"footer-section","pluralName":"footer-sections","displayName":"Footer-section","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"logo":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{"i18n":{"localized":true}}},"background":{"allowedTypes":["images"],"type":"media","multiple":false,"pluginOptions":{"i18n":{"localized":true}}},"fbLink":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"instaLink":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"twLink":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"phones":{"type":"relation","relation":"oneToMany","target":"api::phone.phone"},"email":{"type":"relation","relation":"oneToOne","target":"api::email.email"},"menu_items":{"type":"relation","relation":"oneToMany","target":"api::menu.menu"},"contacts_tittle":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"social_tittle":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::footer-section.footer-section"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"footer_sections","info":{"singularName":"footer-section","pluralName":"footer-sections","displayName":"Footer-section","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"logo":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{"i18n":{"localized":true}}},"background":{"allowedTypes":["images"],"type":"media","multiple":false,"pluginOptions":{"i18n":{"localized":true}}},"fbLink":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"instaLink":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"twLink":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"phones":{"type":"relation","relation":"oneToMany","target":"api::phone.phone"},"email":{"type":"relation","relation":"oneToOne","target":"api::email.email"},"menu_items":{"type":"relation","relation":"oneToMany","target":"api::menu.menu"},"contacts_tittle":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"social_tittle":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"}},"kind":"singleType"},"modelType":"contentType","modelName":"footer-section","connection":"default","uid":"api::footer-section.footer-section","apiName":"footer-section","globalId":"FooterSection","actions":{},"lifecycles":{}},"api::fourth-section.fourth-section":{"kind":"singleType","collectionName":"fourth_sections","info":{"singularName":"fourth-section","pluralName":"fourth-sections","displayName":"Fourth-section","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"tittle":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"description":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"quote":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"img":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{"i18n":{"localized":true}}},"imgDescription":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"subTittle":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"subDescription":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"subImg":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{"i18n":{"localized":true}}},"name":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::fourth-section.fourth-section"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"fourth_sections","info":{"singularName":"fourth-section","pluralName":"fourth-sections","displayName":"Fourth-section","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"tittle":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"description":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"quote":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"img":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{"i18n":{"localized":true}}},"imgDescription":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"subTittle":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"subDescription":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"subImg":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{"i18n":{"localized":true}}},"name":{"type":"string","pluginOptions":{"i18n":{"localized":true}}}},"kind":"singleType"},"modelType":"contentType","modelName":"fourth-section","connection":"default","uid":"api::fourth-section.fourth-section","apiName":"fourth-section","globalId":"FourthSection","actions":{},"lifecycles":{}},"api::head.head":{"kind":"singleType","collectionName":"heads","info":{"singularName":"head","pluralName":"heads","displayName":"Head","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"logo":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{"i18n":{"localized":true}}},"support":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"menu_items":{"type":"relation","relation":"oneToMany","target":"api::menu.menu"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::head.head"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"heads","info":{"singularName":"head","pluralName":"heads","displayName":"Head","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"logo":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{"i18n":{"localized":true}}},"support":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"menu_items":{"type":"relation","relation":"oneToMany","target":"api::menu.menu"}},"kind":"singleType"},"modelType":"contentType","modelName":"head","connection":"default","uid":"api::head.head","apiName":"head","globalId":"Head","actions":{},"lifecycles":{}},"api::menu.menu":{"kind":"collectionType","collectionName":"menu_items","info":{"singularName":"menu","pluralName":"menu-items","displayName":"MenuItems","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"item":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"link":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::menu.menu"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"menu_items","info":{"singularName":"menu","pluralName":"menu-items","displayName":"MenuItems","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"item":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"link":{"type":"string","pluginOptions":{"i18n":{"localized":true}}}},"kind":"collectionType"},"modelType":"contentType","modelName":"menu","connection":"default","uid":"api::menu.menu","apiName":"menu","globalId":"Menu","actions":{},"lifecycles":{}},"api::partner.partner":{"kind":"collectionType","collectionName":"partners","info":{"singularName":"partner","pluralName":"partners","displayName":"Partner","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"icon":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{"i18n":{"localized":true}}},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::partner.partner"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"partners","info":{"singularName":"partner","pluralName":"partners","displayName":"Partner","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"icon":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{"i18n":{"localized":true}}}},"kind":"collectionType"},"modelType":"contentType","modelName":"partner","connection":"default","uid":"api::partner.partner","apiName":"partner","globalId":"Partner","actions":{},"lifecycles":{}},"api::phone.phone":{"kind":"collectionType","collectionName":"phones","info":{"singularName":"phone","pluralName":"phones","displayName":"Phone","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"phone":{"type":"biginteger","pluginOptions":{"i18n":{"localized":true}}},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::phone.phone"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"phones","info":{"singularName":"phone","pluralName":"phones","displayName":"Phone","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"phone":{"type":"biginteger","pluginOptions":{"i18n":{"localized":true}}}},"kind":"collectionType"},"modelType":"contentType","modelName":"phone","connection":"default","uid":"api::phone.phone","apiName":"phone","globalId":"Phone","actions":{},"lifecycles":{}},"api::project.project":{"kind":"collectionType","collectionName":"projects","info":{"singularName":"project","pluralName":"projects","displayName":"Project","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"img":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{"i18n":{"localized":true}}},"description":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"goal":{"type":"decimal","pluginOptions":{"i18n":{"localized":true}}},"quote":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"waterMark":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{"i18n":{"localized":true}}},"btn":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::project.project"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"projects","info":{"singularName":"project","pluralName":"projects","displayName":"Project","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"img":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{"i18n":{"localized":true}}},"description":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"goal":{"type":"decimal","pluginOptions":{"i18n":{"localized":true}}},"quote":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"waterMark":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{"i18n":{"localized":true}}},"btn":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"project","connection":"default","uid":"api::project.project","apiName":"project","globalId":"Project","actions":{},"lifecycles":{}},"api::second-section.second-section":{"kind":"singleType","collectionName":"second_sections","info":{"singularName":"second-section","pluralName":"second-sections","displayName":"Second-section","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"tittle":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"projects":{"type":"relation","relation":"oneToMany","target":"api::project.project"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::second-section.second-section"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"second_sections","info":{"singularName":"second-section","pluralName":"second-sections","displayName":"Second-section","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"tittle":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"projects":{"type":"relation","relation":"oneToMany","target":"api::project.project"}},"kind":"singleType"},"modelType":"contentType","modelName":"second-section","connection":"default","uid":"api::second-section.second-section","apiName":"second-section","globalId":"SecondSection","actions":{},"lifecycles":{}},"api::seventh-section.seventh-section":{"kind":"singleType","collectionName":"seventh_sections","info":{"singularName":"seventh-section","pluralName":"seventh-sections","displayName":"Seventh-section","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"logo":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{"i18n":{"localized":true}}},"bank_accounts":{"type":"relation","relation":"oneToMany","target":"api::bank-account.bank-account"},"phones":{"type":"relation","relation":"oneToMany","target":"api::phone.phone"},"background":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{"i18n":{"localized":true}}},"email":{"type":"relation","relation":"oneToOne","target":"api::email.email"},"tittle":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::seventh-section.seventh-section"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"seventh_sections","info":{"singularName":"seventh-section","pluralName":"seventh-sections","displayName":"Seventh-section","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"logo":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{"i18n":{"localized":true}}},"bank_accounts":{"type":"relation","relation":"oneToMany","target":"api::bank-account.bank-account"},"phones":{"type":"relation","relation":"oneToMany","target":"api::phone.phone"},"background":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"],"pluginOptions":{"i18n":{"localized":true}}},"email":{"type":"relation","relation":"oneToOne","target":"api::email.email"},"tittle":{"type":"string","pluginOptions":{"i18n":{"localized":true}}}},"kind":"singleType"},"modelType":"contentType","modelName":"seventh-section","connection":"default","uid":"api::seventh-section.seventh-section","apiName":"seventh-section","globalId":"SeventhSection","actions":{},"lifecycles":{}},"api::sixth-section.sixth-section":{"kind":"singleType","collectionName":"sixth_sections","info":{"singularName":"sixth-section","pluralName":"sixth-sections","displayName":"Sixth-section","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"name":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"partners":{"type":"relation","relation":"oneToMany","target":"api::partner.partner"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::sixth-section.sixth-section"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"sixth_sections","info":{"singularName":"sixth-section","pluralName":"sixth-sections","displayName":"Sixth-section","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"name":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"partners":{"type":"relation","relation":"oneToMany","target":"api::partner.partner"}},"kind":"singleType"},"modelType":"contentType","modelName":"sixth-section","connection":"default","uid":"api::sixth-section.sixth-section","apiName":"sixth-section","globalId":"SixthSection","actions":{},"lifecycles":{}},"api::support.support":{"kind":"collectionType","collectionName":"supports","info":{"singularName":"support","pluralName":"supports","displayName":"Support"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"email":{"type":"string"},"phone":{"type":"string"},"message":{"type":"text"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"supports","info":{"singularName":"support","pluralName":"supports","displayName":"Support"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"email":{"type":"string"},"phone":{"type":"string"},"message":{"type":"text"}},"kind":"collectionType"},"modelType":"contentType","modelName":"support","connection":"default","uid":"api::support.support","apiName":"support","globalId":"Support","actions":{},"lifecycles":{}},"api::third-section.third-section":{"kind":"singleType","collectionName":"third_sections","info":{"singularName":"third-section","pluralName":"third-sections","displayName":"Third-section"},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"coverImage":{"allowedTypes":["images"],"type":"media","multiple":false,"pluginOptions":{"i18n":{"localized":true}}},"tittle":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"description":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"btn":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"bank_accounts":{"type":"relation","relation":"oneToMany","target":"api::bank-account.bank-account"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::third-section.third-section"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"third_sections","info":{"singularName":"third-section","pluralName":"third-sections","displayName":"Third-section"},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"coverImage":{"allowedTypes":["images"],"type":"media","multiple":false,"pluginOptions":{"i18n":{"localized":true}}},"tittle":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"description":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"btn":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"bank_accounts":{"type":"relation","relation":"oneToMany","target":"api::bank-account.bank-account"}},"kind":"singleType"},"modelType":"contentType","modelName":"third-section","connection":"default","uid":"api::third-section.third-section","apiName":"third-section","globalId":"ThirdSection","actions":{},"lifecycles":{}}}	object	\N	\N
14	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"uid":"plugin::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]}}	object	\N	\N
15	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"uid":"plugin::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"permissions","size":6}],[{"name":"users","size":6}]]}}	object	\N	\N
11	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"uid":"plugin::i18n.locale","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]}}	object	\N	\N
27	plugin_content_manager_configuration_content_types::api::partner.partner	{"uid":"api::partner.partner","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"icon":{"edit":{"label":"icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"icon","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","icon","createdAt","updatedAt"],"edit":[[{"name":"icon","size":6}]]}}	object	\N	\N
38	plugin_i18n_default_locale	"en"	string	\N	\N
25	plugin_content_manager_configuration_content_types::api::project.project	{"uid":"api::project.project","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"img":{"edit":{"label":"img","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"img","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"goal":{"edit":{"label":"goal","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"goal","searchable":true,"sortable":true}},"quote":{"edit":{"label":"quote","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"quote","searchable":true,"sortable":true}},"waterMark":{"edit":{"label":"waterMark","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"waterMark","searchable":false,"sortable":false}},"btn":{"edit":{"label":"btn","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"btn","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","img","description","goal"],"edit":[[{"name":"img","size":6},{"name":"description","size":6}],[{"name":"goal","size":4},{"name":"quote","size":6}],[{"name":"waterMark","size":6},{"name":"btn","size":6}]]}}	object	\N	\N
39	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null,"ssoLockedRoles":null}}	object	\N	\N
13	plugin_content_manager_configuration_content_types::plugin::upload.folder	{"uid":"plugin::upload.folder","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]}}	object	\N	\N
26	plugin_content_manager_configuration_content_types::api::phone.phone	{"uid":"api::phone.phone","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"phone":{"edit":{"label":"phone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"phone","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","phone","createdAt","updatedAt"],"edit":[[{"name":"phone","size":4}]]}}	object	\N	\N
16	plugin_content_manager_configuration_content_types::plugin::upload.file	{"uid":"plugin::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folder","size":6},{"name":"folderPath","size":6}]]}}	object	\N	\N
31	plugin_content_manager_configuration_content_types::api::support.support	{"uid":"api::support.support","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"phone":{"edit":{"label":"phone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"phone","searchable":true,"sortable":true}},"message":{"edit":{"label":"message","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"message","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","email","phone"],"edit":[[{"name":"name","size":6},{"name":"email","size":6}],[{"name":"phone","size":6},{"name":"message","size":6}]]}}	object	\N	\N
17	plugin_content_manager_configuration_content_types::api::card.card	{"uid":"api::card.card","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"tittle","defaultSortBy":"tittle","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"tittle":{"edit":{"label":"tittle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"tittle","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"icon":{"edit":{"label":"icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"icon","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","tittle","description","icon"],"edit":[[{"name":"tittle","size":6},{"name":"description","size":6}],[{"name":"icon","size":6}]]}}	object	\N	\N
30	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"uid":"plugin::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"role","size":6}],[{"name":"name","size":6}]]}}	object	\N	\N
32	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false}	object	\N	\N
33	plugin_upload_view_configuration	{"pageSize":10,"sort":"createdAt:DESC"}	object	\N	\N
35	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"api/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"api/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"api/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"api/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"},"patreon":{"enabled":false,"icon":"","key":"","secret":"","callback":"api/auth/patreon/callback","scope":["identity","identity[email]"]}}	object	\N	\N
36	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
37	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":"","default_role":"public"}	object	\N	\N
40	core_admin_project-settings	{"menuLogo":{},"authLogo":{}}	object	\N	\N
34	plugin_upload_metrics	{"weeklySchedule":"1 26 13 * * 0","lastWeeklyUpdate":1701001561027}	object	\N	\N
42	plugin_content_manager_configuration_content_types::api::head.head	{"uid":"api::head.head","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"support","defaultSortBy":"support","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"logo":{"edit":{"label":"logo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"logo","searchable":false,"sortable":false}},"support":{"edit":{"label":"support","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"support","searchable":true,"sortable":true}},"menu_items":{"edit":{"label":"menu_items","description":"","placeholder":"","visible":true,"editable":true,"mainField":"item"},"list":{"label":"menu_items","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","logo","support","createdAt"],"edit":[[{"name":"logo","size":6},{"name":"support","size":6}],[{"name":"menu_items","size":6}]]}}	object	\N	\N
43	plugin_content_manager_configuration_content_types::api::first-section.first-section	{"uid":"api::first-section.first-section","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"tittle","defaultSortBy":"tittle","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"bgImg":{"edit":{"label":"bgImg","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"bgImg","searchable":false,"sortable":false}},"tittle":{"edit":{"label":"tittle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"tittle","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"btnName":{"edit":{"label":"btnName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"btnName","searchable":true,"sortable":true}},"img":{"edit":{"label":"img","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"img","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"tittle","size":6}],[{"name":"description","size":6},{"name":"btnName","size":6}],[{"name":"bgImg","size":6},{"name":"img","size":6}]],"list":["id","bgImg","tittle","description"]}}	object	\N	\N
44	plugin_content_manager_configuration_content_types::api::second-section.second-section	{"uid":"api::second-section.second-section","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"tittle","defaultSortBy":"tittle","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"tittle":{"edit":{"label":"tittle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"tittle","searchable":true,"sortable":true}},"projects":{"edit":{"label":"projects","description":"","placeholder":"","visible":true,"editable":true,"mainField":"btn"},"list":{"label":"projects","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","tittle","projects","createdAt"],"edit":[[{"name":"tittle","size":6},{"name":"projects","size":6}]]}}	object	\N	\N
45	plugin_content_manager_configuration_content_types::api::third-section.third-section	{"uid":"api::third-section.third-section","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"tittle","defaultSortBy":"tittle","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"coverImage":{"edit":{"label":"coverImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"coverImage","searchable":false,"sortable":false}},"tittle":{"edit":{"label":"tittle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"tittle","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"btn":{"edit":{"label":"btn","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"btn","searchable":true,"sortable":true}},"bank_accounts":{"edit":{"label":"bank_accounts","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"bank_accounts","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","coverImage","tittle","description"],"edit":[[{"name":"coverImage","size":6},{"name":"tittle","size":6}],[{"name":"description","size":6},{"name":"btn","size":6}],[{"name":"bank_accounts","size":6}]]}}	object	\N	\N
46	plugin_content_manager_configuration_content_types::api::fourth-section.fourth-section	{"uid":"api::fourth-section.fourth-section","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"tittle","defaultSortBy":"tittle","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"tittle":{"edit":{"label":"tittle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"tittle","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"quote":{"edit":{"label":"quote","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"quote","searchable":true,"sortable":true}},"img":{"edit":{"label":"img","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"img","searchable":false,"sortable":false}},"imgDescription":{"edit":{"label":"imgDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"imgDescription","searchable":true,"sortable":true}},"subTittle":{"edit":{"label":"subTittle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subTittle","searchable":true,"sortable":true}},"subDescription":{"edit":{"label":"subDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subDescription","searchable":true,"sortable":true}},"subImg":{"edit":{"label":"subImg","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subImg","searchable":false,"sortable":false}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"name","size":6}],[{"name":"tittle","size":6},{"name":"description","size":6}],[{"name":"quote","size":6},{"name":"img","size":6}],[{"name":"imgDescription","size":6},{"name":"subTittle","size":6}],[{"name":"subDescription","size":6},{"name":"subImg","size":6}]],"list":["id","tittle","description","quote"]}}	object	\N	\N
47	plugin_content_manager_configuration_content_types::api::fifth-section.fifth-section	{"uid":"api::fifth-section.fifth-section","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"quote":{"edit":{"label":"quote","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"quote","searchable":true,"sortable":true}},"quote2":{"edit":{"label":"quote2","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"quote2","searchable":true,"sortable":true}},"cards":{"edit":{"label":"cards","description":"","placeholder":"","visible":true,"editable":true,"mainField":"tittle"},"list":{"label":"cards","searchable":false,"sortable":false}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","createdAt","quote","quote2"],"edit":[[{"name":"quote","size":6},{"name":"quote2","size":6}],[{"name":"cards","size":6},{"name":"name","size":6}]]}}	object	\N	\N
48	plugin_content_manager_configuration_content_types::api::sixth-section.sixth-section	{"uid":"api::sixth-section.sixth-section","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"partners":{"edit":{"label":"partners","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"partners","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","partners","createdAt"],"edit":[[{"name":"name","size":6},{"name":"partners","size":6}]]}}	object	\N	\N
49	plugin_content_manager_configuration_content_types::api::seventh-section.seventh-section	{"uid":"api::seventh-section.seventh-section","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"tittle","defaultSortBy":"tittle","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"logo":{"edit":{"label":"logo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"logo","searchable":false,"sortable":false}},"bank_accounts":{"edit":{"label":"bank_accounts","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"bank_accounts","searchable":false,"sortable":false}},"phones":{"edit":{"label":"phones","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"phones","searchable":false,"sortable":false}},"background":{"edit":{"label":"background","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"background","searchable":false,"sortable":false}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true,"mainField":"email"},"list":{"label":"email","searchable":true,"sortable":true}},"tittle":{"edit":{"label":"tittle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"tittle","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","logo","bank_accounts","phones"],"edit":[[{"name":"logo","size":6},{"name":"bank_accounts","size":6}],[{"name":"phones","size":6},{"name":"background","size":6}],[{"name":"email","size":6},{"name":"tittle","size":6}]]}}	object	\N	\N
50	plugin_content_manager_configuration_content_types::api::eighth-section.eighth-section	{"uid":"api::eighth-section.eighth-section","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"tittle","defaultSortBy":"tittle","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"tittle":{"edit":{"label":"tittle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"tittle","searchable":true,"sortable":true}},"subTittle":{"edit":{"label":"subTittle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subTittle","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"namePlaceholder":{"edit":{"label":"namePlaceholder","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"namePlaceholder","searchable":true,"sortable":true}},"phone":{"edit":{"label":"phone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"phone","searchable":true,"sortable":true}},"phonePlaceholder":{"edit":{"label":"phonePlaceholder","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"phonePlaceholder","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"emailPlaceholder":{"edit":{"label":"emailPlaceholder","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"emailPlaceholder","searchable":true,"sortable":true}},"question":{"edit":{"label":"question","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"question","searchable":true,"sortable":true}},"questionPlaceholder":{"edit":{"label":"questionPlaceholder","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"questionPlaceholder","searchable":true,"sortable":true}},"btn":{"edit":{"label":"btn","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"btn","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","tittle","subTittle","name"],"edit":[[{"name":"tittle","size":6},{"name":"subTittle","size":6}],[{"name":"name","size":6},{"name":"namePlaceholder","size":6}],[{"name":"phone","size":6},{"name":"phonePlaceholder","size":6}],[{"name":"email","size":6},{"name":"emailPlaceholder","size":6}],[{"name":"question","size":6},{"name":"questionPlaceholder","size":6}],[{"name":"btn","size":6}]]}}	object	\N	\N
51	plugin_content_manager_configuration_content_types::api::footer-section.footer-section	{"uid":"api::footer-section.footer-section","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"logo":{"edit":{"label":"logo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"logo","searchable":false,"sortable":false}},"background":{"edit":{"label":"background","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"background","searchable":false,"sortable":false}},"fbLink":{"edit":{"label":"fbLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"fbLink","searchable":true,"sortable":true}},"instaLink":{"edit":{"label":"instaLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"instaLink","searchable":true,"sortable":true}},"twLink":{"edit":{"label":"twLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"twLink","searchable":true,"sortable":true}},"phones":{"edit":{"label":"phones","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"phones","searchable":false,"sortable":false}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true,"mainField":"email"},"list":{"label":"email","searchable":true,"sortable":true}},"menu_items":{"edit":{"label":"menu_items","description":"","placeholder":"","visible":true,"editable":true,"mainField":"item"},"list":{"label":"menu_items","searchable":false,"sortable":false}},"contacts_tittle":{"edit":{"label":"contacts_tittle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contacts_tittle","searchable":true,"sortable":true}},"social_tittle":{"edit":{"label":"social_tittle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"social_tittle","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","logo","createdAt","updatedAt"],"edit":[[{"name":"logo","size":6},{"name":"background","size":6}],[{"name":"fbLink","size":6},{"name":"instaLink","size":6}],[{"name":"twLink","size":6},{"name":"phones","size":6}],[{"name":"email","size":6},{"name":"menu_items","size":6}],[{"name":"contacts_tittle","size":6},{"name":"social_tittle","size":6}]]}}	object	\N	\N
10	plugin_content_manager_configuration_content_types::api::email.email	{"uid":"api::email.email","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"email","defaultSortBy":"email","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","email","createdAt","updatedAt"],"edit":[[{"name":"email","size":6}]]}}	object	\N	\N
21	plugin_content_manager_configuration_content_types::api::bank-account.bank-account	{"uid":"api::bank-account.bank-account","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"address":{"edit":{"label":"address","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"address","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","address","createdAt"],"edit":[[{"name":"name","size":6},{"name":"address","size":4}]]}}	object	\N	\N
28	plugin_content_manager_configuration_content_types::api::menu.menu	{"uid":"api::menu.menu","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"item","defaultSortBy":"item","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"item":{"edit":{"label":"item","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"item","searchable":true,"sortable":true}},"link":{"edit":{"label":"link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"link","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","item","link","createdAt"],"edit":[[{"name":"item","size":6},{"name":"link","size":6}]]}}	object	\N	\N
\.


--
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
56	{"tables":[{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action_parameters","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users","indexes":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_tokens","indexes":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions","indexes":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_roles","indexes":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users","indexes":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"bank_accounts","indexes":[{"name":"bank_accounts_created_by_id_fk","columns":["created_by_id"]},{"name":"bank_accounts_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"bank_accounts_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"bank_accounts_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"address","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"cards","indexes":[{"name":"cards_created_by_id_fk","columns":["created_by_id"]},{"name":"cards_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"cards_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"cards_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"tittle","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"eighth_sections","indexes":[{"name":"eighth_sections_created_by_id_fk","columns":["created_by_id"]},{"name":"eighth_sections_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"eighth_sections_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"eighth_sections_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"tittle","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"sub_tittle","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name_placeholder","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"phone","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"phone_placeholder","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email_placeholder","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"question","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"question_placeholder","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"btn","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"emails","indexes":[{"name":"emails_created_by_id_fk","columns":["created_by_id"]},{"name":"emails_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"emails_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"emails_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"fifth_sections","indexes":[{"name":"fifth_sections_created_by_id_fk","columns":["created_by_id"]},{"name":"fifth_sections_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"fifth_sections_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"fifth_sections_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"quote","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"quote_2","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"first_sections","indexes":[{"name":"first_sections_created_by_id_fk","columns":["created_by_id"]},{"name":"first_sections_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"first_sections_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"first_sections_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"tittle","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"btn_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"footer_sections","indexes":[{"name":"footer_sections_created_by_id_fk","columns":["created_by_id"]},{"name":"footer_sections_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"footer_sections_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"footer_sections_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"fb_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"insta_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tw_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"contacts_tittle","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"social_tittle","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"fourth_sections","indexes":[{"name":"fourth_sections_created_by_id_fk","columns":["created_by_id"]},{"name":"fourth_sections_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"fourth_sections_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"fourth_sections_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"tittle","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"quote","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"img_description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"sub_tittle","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"sub_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"heads","indexes":[{"name":"heads_created_by_id_fk","columns":["created_by_id"]},{"name":"heads_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"heads_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"heads_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"support","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"menu_items","indexes":[{"name":"menu_items_created_by_id_fk","columns":["created_by_id"]},{"name":"menu_items_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"menu_items_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"menu_items_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"item","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"partners","indexes":[{"name":"partners_created_by_id_fk","columns":["created_by_id"]},{"name":"partners_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"partners_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"partners_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"phones","indexes":[{"name":"phones_created_by_id_fk","columns":["created_by_id"]},{"name":"phones_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"phones_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"phones_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"phone","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"projects","indexes":[{"name":"projects_created_by_id_fk","columns":["created_by_id"]},{"name":"projects_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"projects_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"projects_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"goal","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"quote","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"btn","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"second_sections","indexes":[{"name":"second_sections_created_by_id_fk","columns":["created_by_id"]},{"name":"second_sections_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"second_sections_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"second_sections_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"tittle","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"seventh_sections","indexes":[{"name":"seventh_sections_created_by_id_fk","columns":["created_by_id"]},{"name":"seventh_sections_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"seventh_sections_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"seventh_sections_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"tittle","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"sixth_sections","indexes":[{"name":"sixth_sections_created_by_id_fk","columns":["created_by_id"]},{"name":"sixth_sections_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"sixth_sections_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"sixth_sections_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"supports","indexes":[{"name":"supports_created_by_id_fk","columns":["created_by_id"]},{"name":"supports_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"supports_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"supports_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"phone","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"message","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"third_sections","indexes":[{"name":"third_sections_created_by_id_fk","columns":["created_by_id"]},{"name":"third_sections_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"third_sections_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"third_sections_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"tittle","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"btn","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions_role_links","indexes":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"]},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"admin_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_links","indexes":[{"name":"admin_users_roles_links_fk","columns":["user_id"]},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"]},{"name":"admin_users_roles_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_links_order_fk","columns":["role_order"]},{"name":"admin_users_roles_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"admin_users_roles_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_links","indexes":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_links_unique","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_links_order_inv_fk","columns":["api_token_permission_order"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions_token_links","indexes":[{"name":"strapi_transfer_token_permissions_token_links_fk","columns":["transfer_token_permission_id"]},{"name":"strapi_transfer_token_permissions_token_links_inv_fk","columns":["transfer_token_id"]},{"name":"strapi_transfer_token_permissions_token_links_unique","columns":["transfer_token_permission_id","transfer_token_id"],"type":"unique"},{"name":"strapi_transfer_token_permissions_token_links_order_inv_fk","columns":["transfer_token_permission_order"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_token_links_fk","columns":["transfer_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_token_permissions","onDelete":"CASCADE"},{"name":"strapi_transfer_token_permissions_token_links_inv_fk","columns":["transfer_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"transfer_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_morphs","indexes":[{"name":"files_related_morphs_fk","columns":["file_id"]},{"name":"files_related_morphs_order_index","columns":["order"],"type":null},{"name":"files_related_morphs_id_column_index","columns":["related_id"],"type":null}],"foreignKeys":[{"name":"files_related_morphs_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_links","indexes":[{"name":"files_folder_links_fk","columns":["file_id"]},{"name":"files_folder_links_inv_fk","columns":["folder_id"]},{"name":"files_folder_links_unique","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_links_order_inv_fk","columns":["file_order"]}],"foreignKeys":[{"name":"files_folder_links_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_links_inv_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_links","indexes":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"]},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_links_unique","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_links_order_inv_fk","columns":["folder_order"]}],"foreignKeys":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_links","indexes":[{"name":"up_permissions_role_links_fk","columns":["permission_id"]},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"up_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"up_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_links","indexes":[{"name":"up_users_role_links_fk","columns":["user_id"]},{"name":"up_users_role_links_inv_fk","columns":["role_id"]},{"name":"up_users_role_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"up_users_role_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"bank_accounts_localizations_links","indexes":[{"name":"bank_accounts_localizations_links_fk","columns":["bank_account_id"]},{"name":"bank_accounts_localizations_links_inv_fk","columns":["inv_bank_account_id"]},{"name":"bank_accounts_localizations_links_unique","columns":["bank_account_id","inv_bank_account_id"],"type":"unique"},{"name":"bank_accounts_localizations_links_order_fk","columns":["bank_account_order"]}],"foreignKeys":[{"name":"bank_accounts_localizations_links_fk","columns":["bank_account_id"],"referencedColumns":["id"],"referencedTable":"bank_accounts","onDelete":"CASCADE"},{"name":"bank_accounts_localizations_links_inv_fk","columns":["inv_bank_account_id"],"referencedColumns":["id"],"referencedTable":"bank_accounts","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"bank_account_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_bank_account_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"bank_account_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"cards_localizations_links","indexes":[{"name":"cards_localizations_links_fk","columns":["card_id"]},{"name":"cards_localizations_links_inv_fk","columns":["inv_card_id"]},{"name":"cards_localizations_links_unique","columns":["card_id","inv_card_id"],"type":"unique"},{"name":"cards_localizations_links_order_fk","columns":["card_order"]}],"foreignKeys":[{"name":"cards_localizations_links_fk","columns":["card_id"],"referencedColumns":["id"],"referencedTable":"cards","onDelete":"CASCADE"},{"name":"cards_localizations_links_inv_fk","columns":["inv_card_id"],"referencedColumns":["id"],"referencedTable":"cards","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"card_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_card_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"card_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"eighth_sections_localizations_links","indexes":[{"name":"eighth_sections_localizations_links_fk","columns":["eighth_section_id"]},{"name":"eighth_sections_localizations_links_inv_fk","columns":["inv_eighth_section_id"]},{"name":"eighth_sections_localizations_links_unique","columns":["eighth_section_id","inv_eighth_section_id"],"type":"unique"},{"name":"eighth_sections_localizations_links_order_fk","columns":["eighth_section_order"]}],"foreignKeys":[{"name":"eighth_sections_localizations_links_fk","columns":["eighth_section_id"],"referencedColumns":["id"],"referencedTable":"eighth_sections","onDelete":"CASCADE"},{"name":"eighth_sections_localizations_links_inv_fk","columns":["inv_eighth_section_id"],"referencedColumns":["id"],"referencedTable":"eighth_sections","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"eighth_section_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_eighth_section_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"eighth_section_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"emails_localizations_links","indexes":[{"name":"emails_localizations_links_fk","columns":["email_id"]},{"name":"emails_localizations_links_inv_fk","columns":["inv_email_id"]},{"name":"emails_localizations_links_unique","columns":["email_id","inv_email_id"],"type":"unique"},{"name":"emails_localizations_links_order_fk","columns":["email_order"]}],"foreignKeys":[{"name":"emails_localizations_links_fk","columns":["email_id"],"referencedColumns":["id"],"referencedTable":"emails","onDelete":"CASCADE"},{"name":"emails_localizations_links_inv_fk","columns":["inv_email_id"],"referencedColumns":["id"],"referencedTable":"emails","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"email_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_email_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"email_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"fifth_sections_cards_links","indexes":[{"name":"fifth_sections_cards_links_fk","columns":["fifth_section_id"]},{"name":"fifth_sections_cards_links_inv_fk","columns":["card_id"]},{"name":"fifth_sections_cards_links_unique","columns":["fifth_section_id","card_id"],"type":"unique"},{"name":"fifth_sections_cards_links_order_fk","columns":["card_order"]}],"foreignKeys":[{"name":"fifth_sections_cards_links_fk","columns":["fifth_section_id"],"referencedColumns":["id"],"referencedTable":"fifth_sections","onDelete":"CASCADE"},{"name":"fifth_sections_cards_links_inv_fk","columns":["card_id"],"referencedColumns":["id"],"referencedTable":"cards","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"fifth_section_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"card_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"card_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"fifth_sections_localizations_links","indexes":[{"name":"fifth_sections_localizations_links_fk","columns":["fifth_section_id"]},{"name":"fifth_sections_localizations_links_inv_fk","columns":["inv_fifth_section_id"]},{"name":"fifth_sections_localizations_links_unique","columns":["fifth_section_id","inv_fifth_section_id"],"type":"unique"},{"name":"fifth_sections_localizations_links_order_fk","columns":["fifth_section_order"]}],"foreignKeys":[{"name":"fifth_sections_localizations_links_fk","columns":["fifth_section_id"],"referencedColumns":["id"],"referencedTable":"fifth_sections","onDelete":"CASCADE"},{"name":"fifth_sections_localizations_links_inv_fk","columns":["inv_fifth_section_id"],"referencedColumns":["id"],"referencedTable":"fifth_sections","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"fifth_section_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_fifth_section_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"fifth_section_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"first_sections_localizations_links","indexes":[{"name":"first_sections_localizations_links_fk","columns":["first_section_id"]},{"name":"first_sections_localizations_links_inv_fk","columns":["inv_first_section_id"]},{"name":"first_sections_localizations_links_unique","columns":["first_section_id","inv_first_section_id"],"type":"unique"},{"name":"first_sections_localizations_links_order_fk","columns":["first_section_order"]}],"foreignKeys":[{"name":"first_sections_localizations_links_fk","columns":["first_section_id"],"referencedColumns":["id"],"referencedTable":"first_sections","onDelete":"CASCADE"},{"name":"first_sections_localizations_links_inv_fk","columns":["inv_first_section_id"],"referencedColumns":["id"],"referencedTable":"first_sections","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"first_section_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_first_section_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"first_section_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"footer_sections_phones_links","indexes":[{"name":"footer_sections_phones_links_fk","columns":["footer_section_id"]},{"name":"footer_sections_phones_links_inv_fk","columns":["phone_id"]},{"name":"footer_sections_phones_links_unique","columns":["footer_section_id","phone_id"],"type":"unique"},{"name":"footer_sections_phones_links_order_fk","columns":["phone_order"]}],"foreignKeys":[{"name":"footer_sections_phones_links_fk","columns":["footer_section_id"],"referencedColumns":["id"],"referencedTable":"footer_sections","onDelete":"CASCADE"},{"name":"footer_sections_phones_links_inv_fk","columns":["phone_id"],"referencedColumns":["id"],"referencedTable":"phones","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"footer_section_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"phone_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"phone_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"footer_sections_email_links","indexes":[{"name":"footer_sections_email_links_fk","columns":["footer_section_id"]},{"name":"footer_sections_email_links_inv_fk","columns":["email_id"]},{"name":"footer_sections_email_links_unique","columns":["footer_section_id","email_id"],"type":"unique"}],"foreignKeys":[{"name":"footer_sections_email_links_fk","columns":["footer_section_id"],"referencedColumns":["id"],"referencedTable":"footer_sections","onDelete":"CASCADE"},{"name":"footer_sections_email_links_inv_fk","columns":["email_id"],"referencedColumns":["id"],"referencedTable":"emails","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"footer_section_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"email_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"footer_sections_menu_items_links","indexes":[{"name":"footer_sections_menu_items_links_fk","columns":["footer_section_id"]},{"name":"footer_sections_menu_items_links_inv_fk","columns":["menu_id"]},{"name":"footer_sections_menu_items_links_unique","columns":["footer_section_id","menu_id"],"type":"unique"},{"name":"footer_sections_menu_items_links_order_fk","columns":["menu_order"]}],"foreignKeys":[{"name":"footer_sections_menu_items_links_fk","columns":["footer_section_id"],"referencedColumns":["id"],"referencedTable":"footer_sections","onDelete":"CASCADE"},{"name":"footer_sections_menu_items_links_inv_fk","columns":["menu_id"],"referencedColumns":["id"],"referencedTable":"menu_items","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"footer_section_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"menu_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"menu_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"footer_sections_localizations_links","indexes":[{"name":"footer_sections_localizations_links_fk","columns":["footer_section_id"]},{"name":"footer_sections_localizations_links_inv_fk","columns":["inv_footer_section_id"]},{"name":"footer_sections_localizations_links_unique","columns":["footer_section_id","inv_footer_section_id"],"type":"unique"},{"name":"footer_sections_localizations_links_order_fk","columns":["footer_section_order"]}],"foreignKeys":[{"name":"footer_sections_localizations_links_fk","columns":["footer_section_id"],"referencedColumns":["id"],"referencedTable":"footer_sections","onDelete":"CASCADE"},{"name":"footer_sections_localizations_links_inv_fk","columns":["inv_footer_section_id"],"referencedColumns":["id"],"referencedTable":"footer_sections","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"footer_section_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_footer_section_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"footer_section_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"fourth_sections_localizations_links","indexes":[{"name":"fourth_sections_localizations_links_fk","columns":["fourth_section_id"]},{"name":"fourth_sections_localizations_links_inv_fk","columns":["inv_fourth_section_id"]},{"name":"fourth_sections_localizations_links_unique","columns":["fourth_section_id","inv_fourth_section_id"],"type":"unique"},{"name":"fourth_sections_localizations_links_order_fk","columns":["fourth_section_order"]}],"foreignKeys":[{"name":"fourth_sections_localizations_links_fk","columns":["fourth_section_id"],"referencedColumns":["id"],"referencedTable":"fourth_sections","onDelete":"CASCADE"},{"name":"fourth_sections_localizations_links_inv_fk","columns":["inv_fourth_section_id"],"referencedColumns":["id"],"referencedTable":"fourth_sections","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"fourth_section_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_fourth_section_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"fourth_section_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"heads_menu_items_links","indexes":[{"name":"heads_menu_items_links_fk","columns":["head_id"]},{"name":"heads_menu_items_links_inv_fk","columns":["menu_id"]},{"name":"heads_menu_items_links_unique","columns":["head_id","menu_id"],"type":"unique"},{"name":"heads_menu_items_links_order_fk","columns":["menu_order"]}],"foreignKeys":[{"name":"heads_menu_items_links_fk","columns":["head_id"],"referencedColumns":["id"],"referencedTable":"heads","onDelete":"CASCADE"},{"name":"heads_menu_items_links_inv_fk","columns":["menu_id"],"referencedColumns":["id"],"referencedTable":"menu_items","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"head_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"menu_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"menu_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"heads_localizations_links","indexes":[{"name":"heads_localizations_links_fk","columns":["head_id"]},{"name":"heads_localizations_links_inv_fk","columns":["inv_head_id"]},{"name":"heads_localizations_links_unique","columns":["head_id","inv_head_id"],"type":"unique"},{"name":"heads_localizations_links_order_fk","columns":["head_order"]}],"foreignKeys":[{"name":"heads_localizations_links_fk","columns":["head_id"],"referencedColumns":["id"],"referencedTable":"heads","onDelete":"CASCADE"},{"name":"heads_localizations_links_inv_fk","columns":["inv_head_id"],"referencedColumns":["id"],"referencedTable":"heads","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"head_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_head_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"head_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"menu_items_localizations_links","indexes":[{"name":"menu_items_localizations_links_fk","columns":["menu_id"]},{"name":"menu_items_localizations_links_inv_fk","columns":["inv_menu_id"]},{"name":"menu_items_localizations_links_unique","columns":["menu_id","inv_menu_id"],"type":"unique"},{"name":"menu_items_localizations_links_order_fk","columns":["menu_order"]}],"foreignKeys":[{"name":"menu_items_localizations_links_fk","columns":["menu_id"],"referencedColumns":["id"],"referencedTable":"menu_items","onDelete":"CASCADE"},{"name":"menu_items_localizations_links_inv_fk","columns":["inv_menu_id"],"referencedColumns":["id"],"referencedTable":"menu_items","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"menu_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_menu_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"menu_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"partners_localizations_links","indexes":[{"name":"partners_localizations_links_fk","columns":["partner_id"]},{"name":"partners_localizations_links_inv_fk","columns":["inv_partner_id"]},{"name":"partners_localizations_links_unique","columns":["partner_id","inv_partner_id"],"type":"unique"},{"name":"partners_localizations_links_order_fk","columns":["partner_order"]}],"foreignKeys":[{"name":"partners_localizations_links_fk","columns":["partner_id"],"referencedColumns":["id"],"referencedTable":"partners","onDelete":"CASCADE"},{"name":"partners_localizations_links_inv_fk","columns":["inv_partner_id"],"referencedColumns":["id"],"referencedTable":"partners","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"partner_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_partner_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"partner_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"phones_localizations_links","indexes":[{"name":"phones_localizations_links_fk","columns":["phone_id"]},{"name":"phones_localizations_links_inv_fk","columns":["inv_phone_id"]},{"name":"phones_localizations_links_unique","columns":["phone_id","inv_phone_id"],"type":"unique"},{"name":"phones_localizations_links_order_fk","columns":["phone_order"]}],"foreignKeys":[{"name":"phones_localizations_links_fk","columns":["phone_id"],"referencedColumns":["id"],"referencedTable":"phones","onDelete":"CASCADE"},{"name":"phones_localizations_links_inv_fk","columns":["inv_phone_id"],"referencedColumns":["id"],"referencedTable":"phones","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"phone_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_phone_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"phone_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"projects_localizations_links","indexes":[{"name":"projects_localizations_links_fk","columns":["project_id"]},{"name":"projects_localizations_links_inv_fk","columns":["inv_project_id"]},{"name":"projects_localizations_links_unique","columns":["project_id","inv_project_id"],"type":"unique"},{"name":"projects_localizations_links_order_fk","columns":["project_order"]}],"foreignKeys":[{"name":"projects_localizations_links_fk","columns":["project_id"],"referencedColumns":["id"],"referencedTable":"projects","onDelete":"CASCADE"},{"name":"projects_localizations_links_inv_fk","columns":["inv_project_id"],"referencedColumns":["id"],"referencedTable":"projects","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"project_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_project_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"project_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"second_sections_projects_links","indexes":[{"name":"second_sections_projects_links_fk","columns":["second_section_id"]},{"name":"second_sections_projects_links_inv_fk","columns":["project_id"]},{"name":"second_sections_projects_links_unique","columns":["second_section_id","project_id"],"type":"unique"},{"name":"second_sections_projects_links_order_fk","columns":["project_order"]}],"foreignKeys":[{"name":"second_sections_projects_links_fk","columns":["second_section_id"],"referencedColumns":["id"],"referencedTable":"second_sections","onDelete":"CASCADE"},{"name":"second_sections_projects_links_inv_fk","columns":["project_id"],"referencedColumns":["id"],"referencedTable":"projects","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"second_section_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"project_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"project_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"second_sections_localizations_links","indexes":[{"name":"second_sections_localizations_links_fk","columns":["second_section_id"]},{"name":"second_sections_localizations_links_inv_fk","columns":["inv_second_section_id"]},{"name":"second_sections_localizations_links_unique","columns":["second_section_id","inv_second_section_id"],"type":"unique"},{"name":"second_sections_localizations_links_order_fk","columns":["second_section_order"]}],"foreignKeys":[{"name":"second_sections_localizations_links_fk","columns":["second_section_id"],"referencedColumns":["id"],"referencedTable":"second_sections","onDelete":"CASCADE"},{"name":"second_sections_localizations_links_inv_fk","columns":["inv_second_section_id"],"referencedColumns":["id"],"referencedTable":"second_sections","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"second_section_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_second_section_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"second_section_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"seventh_sections_bank_accounts_links","indexes":[{"name":"seventh_sections_bank_accounts_links_fk","columns":["seventh_section_id"]},{"name":"seventh_sections_bank_accounts_links_inv_fk","columns":["bank_account_id"]},{"name":"seventh_sections_bank_accounts_links_unique","columns":["seventh_section_id","bank_account_id"],"type":"unique"},{"name":"seventh_sections_bank_accounts_links_order_fk","columns":["bank_account_order"]}],"foreignKeys":[{"name":"seventh_sections_bank_accounts_links_fk","columns":["seventh_section_id"],"referencedColumns":["id"],"referencedTable":"seventh_sections","onDelete":"CASCADE"},{"name":"seventh_sections_bank_accounts_links_inv_fk","columns":["bank_account_id"],"referencedColumns":["id"],"referencedTable":"bank_accounts","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"seventh_section_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"bank_account_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"bank_account_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"seventh_sections_phones_links","indexes":[{"name":"seventh_sections_phones_links_fk","columns":["seventh_section_id"]},{"name":"seventh_sections_phones_links_inv_fk","columns":["phone_id"]},{"name":"seventh_sections_phones_links_unique","columns":["seventh_section_id","phone_id"],"type":"unique"},{"name":"seventh_sections_phones_links_order_fk","columns":["phone_order"]}],"foreignKeys":[{"name":"seventh_sections_phones_links_fk","columns":["seventh_section_id"],"referencedColumns":["id"],"referencedTable":"seventh_sections","onDelete":"CASCADE"},{"name":"seventh_sections_phones_links_inv_fk","columns":["phone_id"],"referencedColumns":["id"],"referencedTable":"phones","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"seventh_section_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"phone_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"phone_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"seventh_sections_email_links","indexes":[{"name":"seventh_sections_email_links_fk","columns":["seventh_section_id"]},{"name":"seventh_sections_email_links_inv_fk","columns":["email_id"]},{"name":"seventh_sections_email_links_unique","columns":["seventh_section_id","email_id"],"type":"unique"}],"foreignKeys":[{"name":"seventh_sections_email_links_fk","columns":["seventh_section_id"],"referencedColumns":["id"],"referencedTable":"seventh_sections","onDelete":"CASCADE"},{"name":"seventh_sections_email_links_inv_fk","columns":["email_id"],"referencedColumns":["id"],"referencedTable":"emails","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"seventh_section_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"email_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"seventh_sections_localizations_links","indexes":[{"name":"seventh_sections_localizations_links_fk","columns":["seventh_section_id"]},{"name":"seventh_sections_localizations_links_inv_fk","columns":["inv_seventh_section_id"]},{"name":"seventh_sections_localizations_links_unique","columns":["seventh_section_id","inv_seventh_section_id"],"type":"unique"},{"name":"seventh_sections_localizations_links_order_fk","columns":["seventh_section_order"]}],"foreignKeys":[{"name":"seventh_sections_localizations_links_fk","columns":["seventh_section_id"],"referencedColumns":["id"],"referencedTable":"seventh_sections","onDelete":"CASCADE"},{"name":"seventh_sections_localizations_links_inv_fk","columns":["inv_seventh_section_id"],"referencedColumns":["id"],"referencedTable":"seventh_sections","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"seventh_section_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_seventh_section_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"seventh_section_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"sixth_sections_partners_links","indexes":[{"name":"sixth_sections_partners_links_fk","columns":["sixth_section_id"]},{"name":"sixth_sections_partners_links_inv_fk","columns":["partner_id"]},{"name":"sixth_sections_partners_links_unique","columns":["sixth_section_id","partner_id"],"type":"unique"},{"name":"sixth_sections_partners_links_order_fk","columns":["partner_order"]}],"foreignKeys":[{"name":"sixth_sections_partners_links_fk","columns":["sixth_section_id"],"referencedColumns":["id"],"referencedTable":"sixth_sections","onDelete":"CASCADE"},{"name":"sixth_sections_partners_links_inv_fk","columns":["partner_id"],"referencedColumns":["id"],"referencedTable":"partners","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"sixth_section_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"partner_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"partner_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"sixth_sections_localizations_links","indexes":[{"name":"sixth_sections_localizations_links_fk","columns":["sixth_section_id"]},{"name":"sixth_sections_localizations_links_inv_fk","columns":["inv_sixth_section_id"]},{"name":"sixth_sections_localizations_links_unique","columns":["sixth_section_id","inv_sixth_section_id"],"type":"unique"},{"name":"sixth_sections_localizations_links_order_fk","columns":["sixth_section_order"]}],"foreignKeys":[{"name":"sixth_sections_localizations_links_fk","columns":["sixth_section_id"],"referencedColumns":["id"],"referencedTable":"sixth_sections","onDelete":"CASCADE"},{"name":"sixth_sections_localizations_links_inv_fk","columns":["inv_sixth_section_id"],"referencedColumns":["id"],"referencedTable":"sixth_sections","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"sixth_section_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_sixth_section_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"sixth_section_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"third_sections_bank_accounts_links","indexes":[{"name":"third_sections_bank_accounts_links_fk","columns":["third_section_id"]},{"name":"third_sections_bank_accounts_links_inv_fk","columns":["bank_account_id"]},{"name":"third_sections_bank_accounts_links_unique","columns":["third_section_id","bank_account_id"],"type":"unique"},{"name":"third_sections_bank_accounts_links_order_fk","columns":["bank_account_order"]}],"foreignKeys":[{"name":"third_sections_bank_accounts_links_fk","columns":["third_section_id"],"referencedColumns":["id"],"referencedTable":"third_sections","onDelete":"CASCADE"},{"name":"third_sections_bank_accounts_links_inv_fk","columns":["bank_account_id"],"referencedColumns":["id"],"referencedTable":"bank_accounts","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"third_section_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"bank_account_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"bank_account_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"third_sections_localizations_links","indexes":[{"name":"third_sections_localizations_links_fk","columns":["third_section_id"]},{"name":"third_sections_localizations_links_inv_fk","columns":["inv_third_section_id"]},{"name":"third_sections_localizations_links_unique","columns":["third_section_id","inv_third_section_id"],"type":"unique"},{"name":"third_sections_localizations_links_order_fk","columns":["third_section_order"]}],"foreignKeys":[{"name":"third_sections_localizations_links_fk","columns":["third_section_id"],"referencedColumns":["id"],"referencedTable":"third_sections","onDelete":"CASCADE"},{"name":"third_sections_localizations_links_inv_fk","columns":["inv_third_section_id"],"referencedColumns":["id"],"referencedTable":"third_sections","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"third_section_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_third_section_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"third_section_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2023-11-19 12:14:29.31	1985e1fe563ed0c14b244bb4344851bd
\.


--
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- Data for Name: strapi_transfer_token_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_transfer_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_token_permissions_token_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_transfer_token_permissions_token_links (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_order) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_transfer_tokens (id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: supports; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.supports (id, name, email, phone, message, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
20	asd	any@any.any	0123123123	any any any any any any any any any any any any any any any any any any 	2023-11-10 19:45:06.982	2023-11-10 19:45:06.982	2023-11-10 19:45:06.98	\N	\N
21	anyany	anyany@any.any	0321321321	any2 any2 any2 any2 any2 any2 any2 any2 any2 any2 any2 any2 any2 any2 any2 	2023-11-10 19:47:42.473	2023-11-10 19:47:42.473	2023-11-10 19:47:42.471	\N	\N
22	aff	v1taxa131290@gmail.com	0123123123	any any any any any any any any any any 	2023-11-10 20:05:09.032	2023-11-10 20:05:09.032	2023-11-10 20:05:09.028	\N	\N
\.


--
-- Data for Name: third_sections; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.third_sections (id, tittle, description, btn, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
2	Фонд медичної допомоги	Наша місія – допомагати тим, хто допомагає нам	Пожертвувати	2023-11-19 10:42:14.695	2023-11-19 10:42:38.459	2023-11-19 10:42:17.61	1	1	uk
1	Medical Aid Fund	Our mission is to help those who help us	Donate	2023-11-19 10:41:46.743	2023-11-19 10:42:38.459	2023-11-19 10:41:48.542	1	1	en
3	Fundusz Pomocy Medycznej	Naszą misją jest pomaganie tym, którzy nam pomagają	Podarować	2023-11-19 10:42:38.425	2023-11-19 10:42:40.263	2023-11-19 10:42:40.253	1	1	pl
\.


--
-- Data for Name: third_sections_bank_accounts_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.third_sections_bank_accounts_links (id, third_section_id, bank_account_id, bank_account_order) FROM stdin;
1	1	3	2
2	1	2	1
3	1	1	0
4	2	6	2
5	2	5	1
6	2	4	0
7	3	9	2
8	3	8	1
9	3	7	0
\.


--
-- Data for Name: third_sections_localizations_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.third_sections_localizations_links (id, third_section_id, inv_third_section_id, third_section_order) FROM stdin;
3	3	1	1
4	3	2	2
5	2	3	1
1	2	1	2
7	1	3	1
2	1	2	2
\.


--
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::users-permissions.user.me	2023-10-30 21:32:53.656	2023-10-30 21:32:53.656	\N	\N
2	plugin::users-permissions.auth.changePassword	2023-10-30 21:32:53.656	2023-10-30 21:32:53.656	\N	\N
3	plugin::users-permissions.auth.callback	2023-10-30 21:32:53.666	2023-10-30 21:32:53.666	\N	\N
4	plugin::users-permissions.auth.resetPassword	2023-10-30 21:32:53.666	2023-10-30 21:32:53.666	\N	\N
5	plugin::users-permissions.auth.sendEmailConfirmation	2023-10-30 21:32:53.666	2023-10-30 21:32:53.666	\N	\N
6	plugin::users-permissions.auth.connect	2023-10-30 21:32:53.666	2023-10-30 21:32:53.666	\N	\N
7	plugin::users-permissions.auth.emailConfirmation	2023-10-30 21:32:53.666	2023-10-30 21:32:53.666	\N	\N
8	plugin::users-permissions.auth.forgotPassword	2023-10-30 21:32:53.666	2023-10-30 21:32:53.666	\N	\N
9	plugin::users-permissions.auth.register	2023-10-30 21:32:53.666	2023-10-30 21:32:53.666	\N	\N
16	api::bank-account.bank-account.update	2023-11-02 22:17:05.285	2023-11-02 22:17:05.285	\N	\N
15	api::bank-account.bank-account.create	2023-11-02 22:17:05.285	2023-11-02 22:17:05.285	\N	\N
17	api::bank-account.bank-account.find	2023-11-02 22:17:05.285	2023-11-02 22:17:05.285	\N	\N
19	api::bank-account.bank-account.delete	2023-11-02 22:17:05.285	2023-11-02 22:17:05.285	\N	\N
20	api::card.card.find	2023-11-02 22:17:05.285	2023-11-02 22:17:05.285	\N	\N
21	api::card.card.findOne	2023-11-02 22:17:05.285	2023-11-02 22:17:05.285	\N	\N
22	api::card.card.create	2023-11-02 22:17:05.285	2023-11-02 22:17:05.285	\N	\N
23	api::card.card.delete	2023-11-02 22:17:05.285	2023-11-02 22:17:05.285	\N	\N
24	api::card.card.update	2023-11-02 22:17:05.285	2023-11-02 22:17:05.285	\N	\N
30	api::email.email.findOne	2023-11-02 22:17:05.285	2023-11-02 22:17:05.285	\N	\N
31	api::email.email.create	2023-11-02 22:17:05.285	2023-11-02 22:17:05.285	\N	\N
32	api::email.email.update	2023-11-02 22:17:05.285	2023-11-02 22:17:05.285	\N	\N
33	api::email.email.delete	2023-11-02 22:17:05.285	2023-11-02 22:17:05.285	\N	\N
34	api::email.email.find	2023-11-02 22:17:05.285	2023-11-02 22:17:05.285	\N	\N
40	api::bank-account.bank-account.findOne	2023-11-02 22:17:05.285	2023-11-02 22:17:05.285	\N	\N
51	api::menu.menu.findOne	2023-11-02 22:17:05.286	2023-11-02 22:17:05.286	\N	\N
52	api::menu.menu.create	2023-11-02 22:17:05.286	2023-11-02 22:17:05.286	\N	\N
53	api::menu.menu.update	2023-11-02 22:17:05.286	2023-11-02 22:17:05.286	\N	\N
54	api::menu.menu.delete	2023-11-02 22:17:05.286	2023-11-02 22:17:05.286	\N	\N
56	api::menu.menu.find	2023-11-02 22:17:05.286	2023-11-02 22:17:05.286	\N	\N
61	api::menu.menu.createLocalization	2023-11-02 22:17:05.286	2023-11-02 22:17:05.286	\N	\N
62	api::partner.partner.find	2023-11-02 22:17:05.286	2023-11-02 22:17:05.286	\N	\N
63	api::partner.partner.findOne	2023-11-02 22:17:05.286	2023-11-02 22:17:05.286	\N	\N
64	api::partner.partner.create	2023-11-02 22:17:05.286	2023-11-02 22:17:05.286	\N	\N
65	api::partner.partner.update	2023-11-02 22:17:05.286	2023-11-02 22:17:05.286	\N	\N
67	api::partner.partner.delete	2023-11-02 22:17:05.286	2023-11-02 22:17:05.286	\N	\N
71	api::phone.phone.find	2023-11-02 22:17:05.286	2023-11-02 22:17:05.286	\N	\N
72	api::phone.phone.findOne	2023-11-02 22:17:05.286	2023-11-02 22:17:05.286	\N	\N
74	api::phone.phone.create	2023-11-02 22:17:05.286	2023-11-02 22:17:05.286	\N	\N
75	api::phone.phone.update	2023-11-02 22:17:05.286	2023-11-02 22:17:05.286	\N	\N
76	api::phone.phone.delete	2023-11-02 22:17:05.286	2023-11-02 22:17:05.286	\N	\N
77	api::project.project.find	2023-11-02 22:17:05.286	2023-11-02 22:17:05.286	\N	\N
79	api::project.project.findOne	2023-11-02 22:17:05.286	2023-11-02 22:17:05.286	\N	\N
80	api::project.project.create	2023-11-02 22:17:05.286	2023-11-02 22:17:05.286	\N	\N
81	api::project.project.update	2023-11-02 22:17:05.286	2023-11-02 22:17:05.286	\N	\N
82	api::project.project.delete	2023-11-02 22:17:05.286	2023-11-02 22:17:05.286	\N	\N
88	api::support.support.findOne	2023-11-02 22:17:05.286	2023-11-02 22:17:05.286	\N	\N
89	api::support.support.delete	2023-11-02 22:17:05.286	2023-11-02 22:17:05.286	\N	\N
90	api::support.support.create	2023-11-02 22:17:05.286	2023-11-02 22:17:05.286	\N	\N
91	api::support.support.update	2023-11-02 22:17:05.286	2023-11-02 22:17:05.286	\N	\N
96	api::support.support.find	2023-11-02 22:17:05.286	2023-11-02 22:17:05.286	\N	\N
105	plugin::users-permissions.user.create	2023-11-09 13:08:49.053	2023-11-09 13:08:49.053	\N	\N
106	plugin::users-permissions.user.find	2023-11-09 13:09:20.848	2023-11-09 13:09:20.848	\N	\N
107	plugin::users-permissions.user.update	2023-11-09 13:09:20.848	2023-11-09 13:09:20.848	\N	\N
108	plugin::users-permissions.user.findOne	2023-11-09 13:09:20.848	2023-11-09 13:09:20.848	\N	\N
109	plugin::users-permissions.user.count	2023-11-09 13:09:20.848	2023-11-09 13:09:20.848	\N	\N
110	plugin::users-permissions.user.destroy	2023-11-09 13:09:20.848	2023-11-09 13:09:20.848	\N	\N
111	plugin::users-permissions.user.me	2023-11-09 13:09:20.848	2023-11-09 13:09:20.848	\N	\N
112	api::head.head.update	2023-11-19 10:03:04.706	2023-11-19 10:03:04.706	\N	\N
113	api::head.head.delete	2023-11-19 10:03:04.706	2023-11-19 10:03:04.706	\N	\N
114	api::head.head.find	2023-11-19 10:03:04.706	2023-11-19 10:03:04.706	\N	\N
115	api::head.head.createLocalization	2023-11-19 10:12:55.123	2023-11-19 10:12:55.123	\N	\N
116	api::first-section.first-section.find	2023-11-19 10:30:01.045	2023-11-19 10:30:01.045	\N	\N
117	api::first-section.first-section.update	2023-11-19 10:30:01.045	2023-11-19 10:30:01.045	\N	\N
118	api::first-section.first-section.delete	2023-11-19 10:30:01.045	2023-11-19 10:30:01.045	\N	\N
119	api::first-section.first-section.createLocalization	2023-11-19 10:30:01.045	2023-11-19 10:30:01.045	\N	\N
120	api::second-section.second-section.find	2023-11-19 10:36:09.662	2023-11-19 10:36:09.662	\N	\N
121	api::second-section.second-section.update	2023-11-19 10:36:09.662	2023-11-19 10:36:09.662	\N	\N
122	api::second-section.second-section.createLocalization	2023-11-19 10:36:09.662	2023-11-19 10:36:09.662	\N	\N
123	api::second-section.second-section.delete	2023-11-19 10:36:09.662	2023-11-19 10:36:09.662	\N	\N
124	api::second-section.second-section.find	2023-11-19 10:36:46.541	2023-11-19 10:36:46.541	\N	\N
125	api::second-section.second-section.update	2023-11-19 10:36:46.541	2023-11-19 10:36:46.541	\N	\N
126	api::second-section.second-section.delete	2023-11-19 10:36:46.541	2023-11-19 10:36:46.541	\N	\N
127	api::second-section.second-section.createLocalization	2023-11-19 10:36:46.541	2023-11-19 10:36:46.541	\N	\N
128	api::third-section.third-section.find	2023-11-19 10:43:15.223	2023-11-19 10:43:15.223	\N	\N
130	api::third-section.third-section.delete	2023-11-19 10:43:15.223	2023-11-19 10:43:15.223	\N	\N
129	api::third-section.third-section.update	2023-11-19 10:43:15.223	2023-11-19 10:43:15.223	\N	\N
131	api::third-section.third-section.createLocalization	2023-11-19 10:43:15.223	2023-11-19 10:43:15.223	\N	\N
132	api::fourth-section.fourth-section.find	2023-11-19 10:58:34.242	2023-11-19 10:58:34.242	\N	\N
133	api::fourth-section.fourth-section.update	2023-11-19 10:58:34.242	2023-11-19 10:58:34.242	\N	\N
134	api::fourth-section.fourth-section.createLocalization	2023-11-19 10:58:34.242	2023-11-19 10:58:34.242	\N	\N
135	api::fourth-section.fourth-section.delete	2023-11-19 10:58:34.242	2023-11-19 10:58:34.242	\N	\N
136	api::sixth-section.sixth-section.find	2023-11-19 11:15:16.396	2023-11-19 11:15:16.396	\N	\N
137	api::sixth-section.sixth-section.delete	2023-11-19 11:15:16.396	2023-11-19 11:15:16.396	\N	\N
138	api::sixth-section.sixth-section.update	2023-11-19 11:15:16.396	2023-11-19 11:15:16.396	\N	\N
139	api::sixth-section.sixth-section.createLocalization	2023-11-19 11:15:16.396	2023-11-19 11:15:16.396	\N	\N
140	api::fifth-section.fifth-section.createLocalization	2023-11-19 11:32:49.427	2023-11-19 11:32:49.427	\N	\N
141	api::fifth-section.fifth-section.delete	2023-11-19 11:32:49.427	2023-11-19 11:32:49.427	\N	\N
142	api::fifth-section.fifth-section.update	2023-11-19 11:32:49.427	2023-11-19 11:32:49.427	\N	\N
143	api::fifth-section.fifth-section.find	2023-11-19 11:32:49.427	2023-11-19 11:32:49.427	\N	\N
144	api::seventh-section.seventh-section.find	2023-11-19 11:41:05.977	2023-11-19 11:41:05.977	\N	\N
145	api::seventh-section.seventh-section.createLocalization	2023-11-19 11:41:05.977	2023-11-19 11:41:05.977	\N	\N
146	api::seventh-section.seventh-section.delete	2023-11-19 11:41:05.977	2023-11-19 11:41:05.977	\N	\N
147	api::seventh-section.seventh-section.update	2023-11-19 11:41:05.977	2023-11-19 11:41:05.977	\N	\N
148	api::eighth-section.eighth-section.delete	2023-11-19 11:58:07.743	2023-11-19 11:58:07.743	\N	\N
149	api::eighth-section.eighth-section.update	2023-11-19 11:58:07.743	2023-11-19 11:58:07.743	\N	\N
151	api::eighth-section.eighth-section.createLocalization	2023-11-19 11:58:07.743	2023-11-19 11:58:07.743	\N	\N
150	api::eighth-section.eighth-section.find	2023-11-19 11:58:07.743	2023-11-19 11:58:07.743	\N	\N
152	api::footer-section.footer-section.find	2023-11-19 12:12:05.726	2023-11-19 12:12:05.726	\N	\N
153	api::footer-section.footer-section.update	2023-11-19 12:12:05.726	2023-11-19 12:12:05.726	\N	\N
154	api::footer-section.footer-section.delete	2023-11-19 12:12:05.726	2023-11-19 12:12:05.726	\N	\N
155	api::footer-section.footer-section.createLocalization	2023-11-19 12:12:05.726	2023-11-19 12:12:05.726	\N	\N
\.


--
-- Data for Name: up_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
1	2	1	1
2	1	1	1
3	3	2	1
4	6	2	1
5	4	2	1
6	5	2	1
7	8	2	2
8	7	2	2
9	9	2	2
11	16	2	3
12	17	2	3
14	20	2	3
15	15	2	3
19	19	2	4
20	24	2	4
21	22	2	4
22	21	2	4
24	23	2	4
29	30	2	5
31	32	2	6
32	33	2	6
35	34	2	6
38	31	2	6
40	40	2	8
50	52	2	9
51	51	2	9
54	56	2	10
55	54	2	10
57	64	2	11
58	53	2	10
59	61	2	11
61	65	2	11
62	62	2	11
63	63	2	11
67	67	2	12
68	72	2	12
72	76	2	13
73	71	2	12
74	74	2	13
75	82	2	13
76	75	2	13
78	80	2	13
79	77	2	13
80	81	2	14
81	89	2	14
85	79	2	14
88	88	2	14
90	90	2	15
91	96	2	15
92	91	2	15
105	105	2	20
106	107	2	21
107	108	2	21
108	106	2	21
109	109	2	21
110	110	2	22
111	111	2	22
112	113	2	23
113	112	2	23
114	114	2	23
115	115	2	24
116	117	2	25
117	116	2	25
118	118	2	25
119	119	2	26
120	121	1	2
121	120	1	2
122	122	1	2
123	123	1	2
124	124	2	27
125	125	2	27
126	126	2	28
127	127	2	28
128	128	2	29
129	130	2	29
130	129	2	29
131	131	2	30
132	132	2	31
133	133	2	31
134	135	2	31
135	134	2	31
136	136	2	32
137	137	2	32
138	138	2	32
139	139	2	33
140	140	2	34
141	142	2	34
142	141	2	34
143	143	2	34
144	144	2	35
145	145	2	35
146	147	2	36
147	146	2	35
148	149	2	37
149	148	2	37
150	151	2	37
151	150	2	38
152	154	2	39
153	152	2	39
154	153	2	39
155	155	2	39
\.


--
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Authenticated	Default role given to authenticated user.	authenticated	2023-10-30 21:32:53.641	2023-11-19 10:36:09.649	\N	\N
2	Public	Default role given to unauthenticated user.	public	2023-10-30 21:32:53.647	2023-11-19 12:12:05.715	\N	\N
\.


--
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, name, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: up_users_role_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_users_role_links (id, user_id, role_id, user_order) FROM stdin;
\.


--
-- Data for Name: upload_folders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.upload_folders (id, name, path_id, path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: upload_folders_parent_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.upload_folders_parent_links (id, folder_id, inv_folder_id, folder_order) FROM stdin;
\.


--
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 513, true);


--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_permissions_role_links_id_seq', 543, true);


--
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);


--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_users_roles_links_id_seq', 1, true);


--
-- Name: bank_accounts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bank_accounts_id_seq', 9, true);


--
-- Name: bank_accounts_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bank_accounts_localizations_links_id_seq', 1, false);


--
-- Name: cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cards_id_seq', 20, true);


--
-- Name: cards_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cards_localizations_links_id_seq', 1, false);


--
-- Name: eighth_sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.eighth_sections_id_seq', 3, true);


--
-- Name: eighth_sections_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.eighth_sections_localizations_links_id_seq', 8, true);


--
-- Name: emails_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.emails_id_seq', 3, true);


--
-- Name: emails_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.emails_localizations_links_id_seq', 1, false);


--
-- Name: fifth_sections_cards_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.fifth_sections_cards_links_id_seq', 20, true);


--
-- Name: fifth_sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.fifth_sections_id_seq', 3, true);


--
-- Name: fifth_sections_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.fifth_sections_localizations_links_id_seq', 8, true);


--
-- Name: files_folder_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.files_folder_links_id_seq', 1, false);


--
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.files_id_seq', 19, true);


--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.files_related_morphs_id_seq', 183, true);


--
-- Name: first_sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.first_sections_id_seq', 3, true);


--
-- Name: first_sections_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.first_sections_localizations_links_id_seq', 8, true);


--
-- Name: footer_sections_email_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.footer_sections_email_links_id_seq', 3, true);


--
-- Name: footer_sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.footer_sections_id_seq', 3, true);


--
-- Name: footer_sections_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.footer_sections_localizations_links_id_seq', 8, true);


--
-- Name: footer_sections_menu_items_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.footer_sections_menu_items_links_id_seq', 12, true);


--
-- Name: footer_sections_phones_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.footer_sections_phones_links_id_seq', 6, true);


--
-- Name: fourth_sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.fourth_sections_id_seq', 3, true);


--
-- Name: fourth_sections_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.fourth_sections_localizations_links_id_seq', 8, true);


--
-- Name: heads_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.heads_id_seq', 3, true);


--
-- Name: heads_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.heads_localizations_links_id_seq', 8, true);


--
-- Name: heads_menu_items_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.heads_menu_items_links_id_seq', 12, true);


--
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 3, true);


--
-- Name: menu_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.menu_items_id_seq', 16, true);


--
-- Name: menu_items_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.menu_items_localizations_links_id_seq', 1, false);


--
-- Name: partners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.partners_id_seq', 18, true);


--
-- Name: partners_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.partners_localizations_links_id_seq', 1, false);


--
-- Name: phones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.phones_id_seq', 6, true);


--
-- Name: phones_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.phones_localizations_links_id_seq', 1, false);


--
-- Name: projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.projects_id_seq', 9, true);


--
-- Name: projects_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.projects_localizations_links_id_seq', 1, false);


--
-- Name: second_sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.second_sections_id_seq', 3, true);


--
-- Name: second_sections_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.second_sections_localizations_links_id_seq', 8, true);


--
-- Name: second_sections_projects_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.second_sections_projects_links_id_seq', 9, true);


--
-- Name: seventh_sections_bank_accounts_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.seventh_sections_bank_accounts_links_id_seq', 9, true);


--
-- Name: seventh_sections_email_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.seventh_sections_email_links_id_seq', 3, true);


--
-- Name: seventh_sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.seventh_sections_id_seq', 3, true);


--
-- Name: seventh_sections_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.seventh_sections_localizations_links_id_seq', 8, true);


--
-- Name: seventh_sections_phones_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.seventh_sections_phones_links_id_seq', 6, true);


--
-- Name: sixth_sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sixth_sections_id_seq', 3, true);


--
-- Name: sixth_sections_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sixth_sections_localizations_links_id_seq', 8, true);


--
-- Name: sixth_sections_partners_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sixth_sections_partners_links_id_seq', 18, true);


--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);


--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_links_id_seq', 1, false);


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, false);


--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 51, true);


--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 56, true);


--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_links_id_seq', 1, false);


--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: supports_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.supports_id_seq', 22, true);


--
-- Name: third_sections_bank_accounts_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.third_sections_bank_accounts_links_id_seq', 9, true);


--
-- Name: third_sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.third_sections_id_seq', 3, true);


--
-- Name: third_sections_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.third_sections_localizations_links_id_seq', 8, true);


--
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 155, true);


--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_permissions_role_links_id_seq', 155, true);


--
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);


--
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);


--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_users_role_links_id_seq', 1, false);


--
-- Name: upload_folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);


--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.upload_folders_parent_links_id_seq', 1, false);


--
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_links admin_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_links admin_permissions_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_unique UNIQUE (permission_id, role_id);


--
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_links admin_users_roles_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_links admin_users_roles_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_unique UNIQUE (user_id, role_id);


--
-- Name: bank_accounts_localizations_links bank_accounts_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bank_accounts_localizations_links
    ADD CONSTRAINT bank_accounts_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: bank_accounts_localizations_links bank_accounts_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bank_accounts_localizations_links
    ADD CONSTRAINT bank_accounts_localizations_links_unique UNIQUE (bank_account_id, inv_bank_account_id);


--
-- Name: bank_accounts bank_accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bank_accounts
    ADD CONSTRAINT bank_accounts_pkey PRIMARY KEY (id);


--
-- Name: cards_localizations_links cards_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cards_localizations_links
    ADD CONSTRAINT cards_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: cards_localizations_links cards_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cards_localizations_links
    ADD CONSTRAINT cards_localizations_links_unique UNIQUE (card_id, inv_card_id);


--
-- Name: cards cards_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cards
    ADD CONSTRAINT cards_pkey PRIMARY KEY (id);


--
-- Name: eighth_sections_localizations_links eighth_sections_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.eighth_sections_localizations_links
    ADD CONSTRAINT eighth_sections_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: eighth_sections_localizations_links eighth_sections_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.eighth_sections_localizations_links
    ADD CONSTRAINT eighth_sections_localizations_links_unique UNIQUE (eighth_section_id, inv_eighth_section_id);


--
-- Name: eighth_sections eighth_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.eighth_sections
    ADD CONSTRAINT eighth_sections_pkey PRIMARY KEY (id);


--
-- Name: emails_localizations_links emails_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emails_localizations_links
    ADD CONSTRAINT emails_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: emails_localizations_links emails_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emails_localizations_links
    ADD CONSTRAINT emails_localizations_links_unique UNIQUE (email_id, inv_email_id);


--
-- Name: emails emails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emails
    ADD CONSTRAINT emails_pkey PRIMARY KEY (id);


--
-- Name: fifth_sections_cards_links fifth_sections_cards_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fifth_sections_cards_links
    ADD CONSTRAINT fifth_sections_cards_links_pkey PRIMARY KEY (id);


--
-- Name: fifth_sections_cards_links fifth_sections_cards_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fifth_sections_cards_links
    ADD CONSTRAINT fifth_sections_cards_links_unique UNIQUE (fifth_section_id, card_id);


--
-- Name: fifth_sections_localizations_links fifth_sections_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fifth_sections_localizations_links
    ADD CONSTRAINT fifth_sections_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: fifth_sections_localizations_links fifth_sections_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fifth_sections_localizations_links
    ADD CONSTRAINT fifth_sections_localizations_links_unique UNIQUE (fifth_section_id, inv_fifth_section_id);


--
-- Name: fifth_sections fifth_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fifth_sections
    ADD CONSTRAINT fifth_sections_pkey PRIMARY KEY (id);


--
-- Name: files_folder_links files_folder_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_pkey PRIMARY KEY (id);


--
-- Name: files_folder_links files_folder_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_unique UNIQUE (file_id, folder_id);


--
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- Name: files_related_morphs files_related_morphs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_pkey PRIMARY KEY (id);


--
-- Name: first_sections_localizations_links first_sections_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.first_sections_localizations_links
    ADD CONSTRAINT first_sections_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: first_sections_localizations_links first_sections_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.first_sections_localizations_links
    ADD CONSTRAINT first_sections_localizations_links_unique UNIQUE (first_section_id, inv_first_section_id);


--
-- Name: first_sections first_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.first_sections
    ADD CONSTRAINT first_sections_pkey PRIMARY KEY (id);


--
-- Name: footer_sections_email_links footer_sections_email_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer_sections_email_links
    ADD CONSTRAINT footer_sections_email_links_pkey PRIMARY KEY (id);


--
-- Name: footer_sections_email_links footer_sections_email_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer_sections_email_links
    ADD CONSTRAINT footer_sections_email_links_unique UNIQUE (footer_section_id, email_id);


--
-- Name: footer_sections_localizations_links footer_sections_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer_sections_localizations_links
    ADD CONSTRAINT footer_sections_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: footer_sections_localizations_links footer_sections_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer_sections_localizations_links
    ADD CONSTRAINT footer_sections_localizations_links_unique UNIQUE (footer_section_id, inv_footer_section_id);


--
-- Name: footer_sections_menu_items_links footer_sections_menu_items_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer_sections_menu_items_links
    ADD CONSTRAINT footer_sections_menu_items_links_pkey PRIMARY KEY (id);


--
-- Name: footer_sections_menu_items_links footer_sections_menu_items_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer_sections_menu_items_links
    ADD CONSTRAINT footer_sections_menu_items_links_unique UNIQUE (footer_section_id, menu_id);


--
-- Name: footer_sections_phones_links footer_sections_phones_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer_sections_phones_links
    ADD CONSTRAINT footer_sections_phones_links_pkey PRIMARY KEY (id);


--
-- Name: footer_sections_phones_links footer_sections_phones_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer_sections_phones_links
    ADD CONSTRAINT footer_sections_phones_links_unique UNIQUE (footer_section_id, phone_id);


--
-- Name: footer_sections footer_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer_sections
    ADD CONSTRAINT footer_sections_pkey PRIMARY KEY (id);


--
-- Name: fourth_sections_localizations_links fourth_sections_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fourth_sections_localizations_links
    ADD CONSTRAINT fourth_sections_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: fourth_sections_localizations_links fourth_sections_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fourth_sections_localizations_links
    ADD CONSTRAINT fourth_sections_localizations_links_unique UNIQUE (fourth_section_id, inv_fourth_section_id);


--
-- Name: fourth_sections fourth_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fourth_sections
    ADD CONSTRAINT fourth_sections_pkey PRIMARY KEY (id);


--
-- Name: heads_localizations_links heads_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.heads_localizations_links
    ADD CONSTRAINT heads_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: heads_localizations_links heads_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.heads_localizations_links
    ADD CONSTRAINT heads_localizations_links_unique UNIQUE (head_id, inv_head_id);


--
-- Name: heads_menu_items_links heads_menu_items_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.heads_menu_items_links
    ADD CONSTRAINT heads_menu_items_links_pkey PRIMARY KEY (id);


--
-- Name: heads_menu_items_links heads_menu_items_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.heads_menu_items_links
    ADD CONSTRAINT heads_menu_items_links_unique UNIQUE (head_id, menu_id);


--
-- Name: heads heads_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.heads
    ADD CONSTRAINT heads_pkey PRIMARY KEY (id);


--
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- Name: menu_items_localizations_links menu_items_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.menu_items_localizations_links
    ADD CONSTRAINT menu_items_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: menu_items_localizations_links menu_items_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.menu_items_localizations_links
    ADD CONSTRAINT menu_items_localizations_links_unique UNIQUE (menu_id, inv_menu_id);


--
-- Name: menu_items menu_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.menu_items
    ADD CONSTRAINT menu_items_pkey PRIMARY KEY (id);


--
-- Name: partners_localizations_links partners_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partners_localizations_links
    ADD CONSTRAINT partners_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: partners_localizations_links partners_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partners_localizations_links
    ADD CONSTRAINT partners_localizations_links_unique UNIQUE (partner_id, inv_partner_id);


--
-- Name: partners partners_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partners
    ADD CONSTRAINT partners_pkey PRIMARY KEY (id);


--
-- Name: phones_localizations_links phones_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.phones_localizations_links
    ADD CONSTRAINT phones_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: phones_localizations_links phones_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.phones_localizations_links
    ADD CONSTRAINT phones_localizations_links_unique UNIQUE (phone_id, inv_phone_id);


--
-- Name: phones phones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.phones
    ADD CONSTRAINT phones_pkey PRIMARY KEY (id);


--
-- Name: projects_localizations_links projects_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects_localizations_links
    ADD CONSTRAINT projects_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: projects_localizations_links projects_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects_localizations_links
    ADD CONSTRAINT projects_localizations_links_unique UNIQUE (project_id, inv_project_id);


--
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);


--
-- Name: second_sections_localizations_links second_sections_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.second_sections_localizations_links
    ADD CONSTRAINT second_sections_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: second_sections_localizations_links second_sections_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.second_sections_localizations_links
    ADD CONSTRAINT second_sections_localizations_links_unique UNIQUE (second_section_id, inv_second_section_id);


--
-- Name: second_sections second_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.second_sections
    ADD CONSTRAINT second_sections_pkey PRIMARY KEY (id);


--
-- Name: second_sections_projects_links second_sections_projects_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.second_sections_projects_links
    ADD CONSTRAINT second_sections_projects_links_pkey PRIMARY KEY (id);


--
-- Name: second_sections_projects_links second_sections_projects_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.second_sections_projects_links
    ADD CONSTRAINT second_sections_projects_links_unique UNIQUE (second_section_id, project_id);


--
-- Name: seventh_sections_bank_accounts_links seventh_sections_bank_accounts_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seventh_sections_bank_accounts_links
    ADD CONSTRAINT seventh_sections_bank_accounts_links_pkey PRIMARY KEY (id);


--
-- Name: seventh_sections_bank_accounts_links seventh_sections_bank_accounts_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seventh_sections_bank_accounts_links
    ADD CONSTRAINT seventh_sections_bank_accounts_links_unique UNIQUE (seventh_section_id, bank_account_id);


--
-- Name: seventh_sections_email_links seventh_sections_email_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seventh_sections_email_links
    ADD CONSTRAINT seventh_sections_email_links_pkey PRIMARY KEY (id);


--
-- Name: seventh_sections_email_links seventh_sections_email_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seventh_sections_email_links
    ADD CONSTRAINT seventh_sections_email_links_unique UNIQUE (seventh_section_id, email_id);


--
-- Name: seventh_sections_localizations_links seventh_sections_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seventh_sections_localizations_links
    ADD CONSTRAINT seventh_sections_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: seventh_sections_localizations_links seventh_sections_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seventh_sections_localizations_links
    ADD CONSTRAINT seventh_sections_localizations_links_unique UNIQUE (seventh_section_id, inv_seventh_section_id);


--
-- Name: seventh_sections_phones_links seventh_sections_phones_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seventh_sections_phones_links
    ADD CONSTRAINT seventh_sections_phones_links_pkey PRIMARY KEY (id);


--
-- Name: seventh_sections_phones_links seventh_sections_phones_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seventh_sections_phones_links
    ADD CONSTRAINT seventh_sections_phones_links_unique UNIQUE (seventh_section_id, phone_id);


--
-- Name: seventh_sections seventh_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seventh_sections
    ADD CONSTRAINT seventh_sections_pkey PRIMARY KEY (id);


--
-- Name: sixth_sections_localizations_links sixth_sections_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sixth_sections_localizations_links
    ADD CONSTRAINT sixth_sections_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: sixth_sections_localizations_links sixth_sections_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sixth_sections_localizations_links
    ADD CONSTRAINT sixth_sections_localizations_links_unique UNIQUE (sixth_section_id, inv_sixth_section_id);


--
-- Name: sixth_sections_partners_links sixth_sections_partners_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sixth_sections_partners_links
    ADD CONSTRAINT sixth_sections_partners_links_pkey PRIMARY KEY (id);


--
-- Name: sixth_sections_partners_links sixth_sections_partners_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sixth_sections_partners_links
    ADD CONSTRAINT sixth_sections_partners_links_unique UNIQUE (sixth_section_id, partner_id);


--
-- Name: sixth_sections sixth_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sixth_sections
    ADD CONSTRAINT sixth_sections_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_unique UNIQUE (api_token_permission_id, api_token_id);


--
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_unique UNIQUE (transfer_token_permission_id, transfer_token_id);


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: supports supports_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supports
    ADD CONSTRAINT supports_pkey PRIMARY KEY (id);


--
-- Name: third_sections_bank_accounts_links third_sections_bank_accounts_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.third_sections_bank_accounts_links
    ADD CONSTRAINT third_sections_bank_accounts_links_pkey PRIMARY KEY (id);


--
-- Name: third_sections_bank_accounts_links third_sections_bank_accounts_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.third_sections_bank_accounts_links
    ADD CONSTRAINT third_sections_bank_accounts_links_unique UNIQUE (third_section_id, bank_account_id);


--
-- Name: third_sections_localizations_links third_sections_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.third_sections_localizations_links
    ADD CONSTRAINT third_sections_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: third_sections_localizations_links third_sections_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.third_sections_localizations_links
    ADD CONSTRAINT third_sections_localizations_links_unique UNIQUE (third_section_id, inv_third_section_id);


--
-- Name: third_sections third_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.third_sections
    ADD CONSTRAINT third_sections_pkey PRIMARY KEY (id);


--
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_links up_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_links up_permissions_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_unique UNIQUE (permission_id, role_id);


--
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_links up_users_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_links up_users_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_unique UNIQUE (user_id, role_id);


--
-- Name: upload_folders_parent_links upload_folders_parent_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_pkey PRIMARY KEY (id);


--
-- Name: upload_folders_parent_links upload_folders_parent_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_unique UNIQUE (folder_id, inv_folder_id);


--
-- Name: upload_folders upload_folders_path_id_index; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);


--
-- Name: upload_folders upload_folders_path_index; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);


--
-- Name: upload_folders upload_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- Name: admin_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);


--
-- Name: admin_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);


--
-- Name: admin_permissions_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_role_links_order_inv_fk ON public.admin_permissions_role_links USING btree (permission_order);


--
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- Name: admin_users_roles_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);


--
-- Name: admin_users_roles_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);


--
-- Name: admin_users_roles_links_order_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_roles_links_order_fk ON public.admin_users_roles_links USING btree (role_order);


--
-- Name: admin_users_roles_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_roles_links_order_inv_fk ON public.admin_users_roles_links USING btree (user_order);


--
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- Name: bank_accounts_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX bank_accounts_created_by_id_fk ON public.bank_accounts USING btree (created_by_id);


--
-- Name: bank_accounts_localizations_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX bank_accounts_localizations_links_fk ON public.bank_accounts_localizations_links USING btree (bank_account_id);


--
-- Name: bank_accounts_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX bank_accounts_localizations_links_inv_fk ON public.bank_accounts_localizations_links USING btree (inv_bank_account_id);


--
-- Name: bank_accounts_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX bank_accounts_localizations_links_order_fk ON public.bank_accounts_localizations_links USING btree (bank_account_order);


--
-- Name: bank_accounts_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX bank_accounts_updated_by_id_fk ON public.bank_accounts USING btree (updated_by_id);


--
-- Name: cards_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cards_created_by_id_fk ON public.cards USING btree (created_by_id);


--
-- Name: cards_localizations_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cards_localizations_links_fk ON public.cards_localizations_links USING btree (card_id);


--
-- Name: cards_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cards_localizations_links_inv_fk ON public.cards_localizations_links USING btree (inv_card_id);


--
-- Name: cards_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cards_localizations_links_order_fk ON public.cards_localizations_links USING btree (card_order);


--
-- Name: cards_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cards_updated_by_id_fk ON public.cards USING btree (updated_by_id);


--
-- Name: eighth_sections_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX eighth_sections_created_by_id_fk ON public.eighth_sections USING btree (created_by_id);


--
-- Name: eighth_sections_localizations_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX eighth_sections_localizations_links_fk ON public.eighth_sections_localizations_links USING btree (eighth_section_id);


--
-- Name: eighth_sections_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX eighth_sections_localizations_links_inv_fk ON public.eighth_sections_localizations_links USING btree (inv_eighth_section_id);


--
-- Name: eighth_sections_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX eighth_sections_localizations_links_order_fk ON public.eighth_sections_localizations_links USING btree (eighth_section_order);


--
-- Name: eighth_sections_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX eighth_sections_updated_by_id_fk ON public.eighth_sections USING btree (updated_by_id);


--
-- Name: emails_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX emails_created_by_id_fk ON public.emails USING btree (created_by_id);


--
-- Name: emails_localizations_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX emails_localizations_links_fk ON public.emails_localizations_links USING btree (email_id);


--
-- Name: emails_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX emails_localizations_links_inv_fk ON public.emails_localizations_links USING btree (inv_email_id);


--
-- Name: emails_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX emails_localizations_links_order_fk ON public.emails_localizations_links USING btree (email_order);


--
-- Name: emails_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX emails_updated_by_id_fk ON public.emails USING btree (updated_by_id);


--
-- Name: fifth_sections_cards_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fifth_sections_cards_links_fk ON public.fifth_sections_cards_links USING btree (fifth_section_id);


--
-- Name: fifth_sections_cards_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fifth_sections_cards_links_inv_fk ON public.fifth_sections_cards_links USING btree (card_id);


--
-- Name: fifth_sections_cards_links_order_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fifth_sections_cards_links_order_fk ON public.fifth_sections_cards_links USING btree (card_order);


--
-- Name: fifth_sections_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fifth_sections_created_by_id_fk ON public.fifth_sections USING btree (created_by_id);


--
-- Name: fifth_sections_localizations_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fifth_sections_localizations_links_fk ON public.fifth_sections_localizations_links USING btree (fifth_section_id);


--
-- Name: fifth_sections_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fifth_sections_localizations_links_inv_fk ON public.fifth_sections_localizations_links USING btree (inv_fifth_section_id);


--
-- Name: fifth_sections_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fifth_sections_localizations_links_order_fk ON public.fifth_sections_localizations_links USING btree (fifth_section_order);


--
-- Name: fifth_sections_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fifth_sections_updated_by_id_fk ON public.fifth_sections USING btree (updated_by_id);


--
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- Name: files_folder_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_folder_links_fk ON public.files_folder_links USING btree (file_id);


--
-- Name: files_folder_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_folder_links_inv_fk ON public.files_folder_links USING btree (folder_id);


--
-- Name: files_folder_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_folder_links_order_inv_fk ON public.files_folder_links USING btree (file_order);


--
-- Name: files_related_morphs_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);


--
-- Name: files_related_morphs_id_column_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_related_morphs_id_column_index ON public.files_related_morphs USING btree (related_id);


--
-- Name: files_related_morphs_order_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_related_morphs_order_index ON public.files_related_morphs USING btree ("order");


--
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- Name: first_sections_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX first_sections_created_by_id_fk ON public.first_sections USING btree (created_by_id);


--
-- Name: first_sections_localizations_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX first_sections_localizations_links_fk ON public.first_sections_localizations_links USING btree (first_section_id);


--
-- Name: first_sections_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX first_sections_localizations_links_inv_fk ON public.first_sections_localizations_links USING btree (inv_first_section_id);


--
-- Name: first_sections_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX first_sections_localizations_links_order_fk ON public.first_sections_localizations_links USING btree (first_section_order);


--
-- Name: first_sections_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX first_sections_updated_by_id_fk ON public.first_sections USING btree (updated_by_id);


--
-- Name: footer_sections_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX footer_sections_created_by_id_fk ON public.footer_sections USING btree (created_by_id);


--
-- Name: footer_sections_email_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX footer_sections_email_links_fk ON public.footer_sections_email_links USING btree (footer_section_id);


--
-- Name: footer_sections_email_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX footer_sections_email_links_inv_fk ON public.footer_sections_email_links USING btree (email_id);


--
-- Name: footer_sections_localizations_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX footer_sections_localizations_links_fk ON public.footer_sections_localizations_links USING btree (footer_section_id);


--
-- Name: footer_sections_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX footer_sections_localizations_links_inv_fk ON public.footer_sections_localizations_links USING btree (inv_footer_section_id);


--
-- Name: footer_sections_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX footer_sections_localizations_links_order_fk ON public.footer_sections_localizations_links USING btree (footer_section_order);


--
-- Name: footer_sections_menu_items_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX footer_sections_menu_items_links_fk ON public.footer_sections_menu_items_links USING btree (footer_section_id);


--
-- Name: footer_sections_menu_items_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX footer_sections_menu_items_links_inv_fk ON public.footer_sections_menu_items_links USING btree (menu_id);


--
-- Name: footer_sections_menu_items_links_order_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX footer_sections_menu_items_links_order_fk ON public.footer_sections_menu_items_links USING btree (menu_order);


--
-- Name: footer_sections_phones_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX footer_sections_phones_links_fk ON public.footer_sections_phones_links USING btree (footer_section_id);


--
-- Name: footer_sections_phones_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX footer_sections_phones_links_inv_fk ON public.footer_sections_phones_links USING btree (phone_id);


--
-- Name: footer_sections_phones_links_order_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX footer_sections_phones_links_order_fk ON public.footer_sections_phones_links USING btree (phone_order);


--
-- Name: footer_sections_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX footer_sections_updated_by_id_fk ON public.footer_sections USING btree (updated_by_id);


--
-- Name: fourth_sections_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fourth_sections_created_by_id_fk ON public.fourth_sections USING btree (created_by_id);


--
-- Name: fourth_sections_localizations_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fourth_sections_localizations_links_fk ON public.fourth_sections_localizations_links USING btree (fourth_section_id);


--
-- Name: fourth_sections_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fourth_sections_localizations_links_inv_fk ON public.fourth_sections_localizations_links USING btree (inv_fourth_section_id);


--
-- Name: fourth_sections_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fourth_sections_localizations_links_order_fk ON public.fourth_sections_localizations_links USING btree (fourth_section_order);


--
-- Name: fourth_sections_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fourth_sections_updated_by_id_fk ON public.fourth_sections USING btree (updated_by_id);


--
-- Name: heads_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX heads_created_by_id_fk ON public.heads USING btree (created_by_id);


--
-- Name: heads_localizations_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX heads_localizations_links_fk ON public.heads_localizations_links USING btree (head_id);


--
-- Name: heads_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX heads_localizations_links_inv_fk ON public.heads_localizations_links USING btree (inv_head_id);


--
-- Name: heads_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX heads_localizations_links_order_fk ON public.heads_localizations_links USING btree (head_order);


--
-- Name: heads_menu_items_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX heads_menu_items_links_fk ON public.heads_menu_items_links USING btree (head_id);


--
-- Name: heads_menu_items_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX heads_menu_items_links_inv_fk ON public.heads_menu_items_links USING btree (menu_id);


--
-- Name: heads_menu_items_links_order_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX heads_menu_items_links_order_fk ON public.heads_menu_items_links USING btree (menu_order);


--
-- Name: heads_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX heads_updated_by_id_fk ON public.heads USING btree (updated_by_id);


--
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- Name: menu_items_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX menu_items_created_by_id_fk ON public.menu_items USING btree (created_by_id);


--
-- Name: menu_items_localizations_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX menu_items_localizations_links_fk ON public.menu_items_localizations_links USING btree (menu_id);


--
-- Name: menu_items_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX menu_items_localizations_links_inv_fk ON public.menu_items_localizations_links USING btree (inv_menu_id);


--
-- Name: menu_items_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX menu_items_localizations_links_order_fk ON public.menu_items_localizations_links USING btree (menu_order);


--
-- Name: menu_items_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX menu_items_updated_by_id_fk ON public.menu_items USING btree (updated_by_id);


--
-- Name: partners_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX partners_created_by_id_fk ON public.partners USING btree (created_by_id);


--
-- Name: partners_localizations_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX partners_localizations_links_fk ON public.partners_localizations_links USING btree (partner_id);


--
-- Name: partners_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX partners_localizations_links_inv_fk ON public.partners_localizations_links USING btree (inv_partner_id);


--
-- Name: partners_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX partners_localizations_links_order_fk ON public.partners_localizations_links USING btree (partner_order);


--
-- Name: partners_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX partners_updated_by_id_fk ON public.partners USING btree (updated_by_id);


--
-- Name: phones_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX phones_created_by_id_fk ON public.phones USING btree (created_by_id);


--
-- Name: phones_localizations_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX phones_localizations_links_fk ON public.phones_localizations_links USING btree (phone_id);


--
-- Name: phones_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX phones_localizations_links_inv_fk ON public.phones_localizations_links USING btree (inv_phone_id);


--
-- Name: phones_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX phones_localizations_links_order_fk ON public.phones_localizations_links USING btree (phone_order);


--
-- Name: phones_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX phones_updated_by_id_fk ON public.phones USING btree (updated_by_id);


--
-- Name: projects_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX projects_created_by_id_fk ON public.projects USING btree (created_by_id);


--
-- Name: projects_localizations_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX projects_localizations_links_fk ON public.projects_localizations_links USING btree (project_id);


--
-- Name: projects_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX projects_localizations_links_inv_fk ON public.projects_localizations_links USING btree (inv_project_id);


--
-- Name: projects_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX projects_localizations_links_order_fk ON public.projects_localizations_links USING btree (project_order);


--
-- Name: projects_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX projects_updated_by_id_fk ON public.projects USING btree (updated_by_id);


--
-- Name: second_sections_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX second_sections_created_by_id_fk ON public.second_sections USING btree (created_by_id);


--
-- Name: second_sections_localizations_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX second_sections_localizations_links_fk ON public.second_sections_localizations_links USING btree (second_section_id);


--
-- Name: second_sections_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX second_sections_localizations_links_inv_fk ON public.second_sections_localizations_links USING btree (inv_second_section_id);


--
-- Name: second_sections_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX second_sections_localizations_links_order_fk ON public.second_sections_localizations_links USING btree (second_section_order);


--
-- Name: second_sections_projects_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX second_sections_projects_links_fk ON public.second_sections_projects_links USING btree (second_section_id);


--
-- Name: second_sections_projects_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX second_sections_projects_links_inv_fk ON public.second_sections_projects_links USING btree (project_id);


--
-- Name: second_sections_projects_links_order_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX second_sections_projects_links_order_fk ON public.second_sections_projects_links USING btree (project_order);


--
-- Name: second_sections_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX second_sections_updated_by_id_fk ON public.second_sections USING btree (updated_by_id);


--
-- Name: seventh_sections_bank_accounts_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX seventh_sections_bank_accounts_links_fk ON public.seventh_sections_bank_accounts_links USING btree (seventh_section_id);


--
-- Name: seventh_sections_bank_accounts_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX seventh_sections_bank_accounts_links_inv_fk ON public.seventh_sections_bank_accounts_links USING btree (bank_account_id);


--
-- Name: seventh_sections_bank_accounts_links_order_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX seventh_sections_bank_accounts_links_order_fk ON public.seventh_sections_bank_accounts_links USING btree (bank_account_order);


--
-- Name: seventh_sections_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX seventh_sections_created_by_id_fk ON public.seventh_sections USING btree (created_by_id);


--
-- Name: seventh_sections_email_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX seventh_sections_email_links_fk ON public.seventh_sections_email_links USING btree (seventh_section_id);


--
-- Name: seventh_sections_email_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX seventh_sections_email_links_inv_fk ON public.seventh_sections_email_links USING btree (email_id);


--
-- Name: seventh_sections_localizations_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX seventh_sections_localizations_links_fk ON public.seventh_sections_localizations_links USING btree (seventh_section_id);


--
-- Name: seventh_sections_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX seventh_sections_localizations_links_inv_fk ON public.seventh_sections_localizations_links USING btree (inv_seventh_section_id);


--
-- Name: seventh_sections_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX seventh_sections_localizations_links_order_fk ON public.seventh_sections_localizations_links USING btree (seventh_section_order);


--
-- Name: seventh_sections_phones_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX seventh_sections_phones_links_fk ON public.seventh_sections_phones_links USING btree (seventh_section_id);


--
-- Name: seventh_sections_phones_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX seventh_sections_phones_links_inv_fk ON public.seventh_sections_phones_links USING btree (phone_id);


--
-- Name: seventh_sections_phones_links_order_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX seventh_sections_phones_links_order_fk ON public.seventh_sections_phones_links USING btree (phone_order);


--
-- Name: seventh_sections_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX seventh_sections_updated_by_id_fk ON public.seventh_sections USING btree (updated_by_id);


--
-- Name: sixth_sections_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sixth_sections_created_by_id_fk ON public.sixth_sections USING btree (created_by_id);


--
-- Name: sixth_sections_localizations_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sixth_sections_localizations_links_fk ON public.sixth_sections_localizations_links USING btree (sixth_section_id);


--
-- Name: sixth_sections_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sixth_sections_localizations_links_inv_fk ON public.sixth_sections_localizations_links USING btree (inv_sixth_section_id);


--
-- Name: sixth_sections_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sixth_sections_localizations_links_order_fk ON public.sixth_sections_localizations_links USING btree (sixth_section_order);


--
-- Name: sixth_sections_partners_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sixth_sections_partners_links_fk ON public.sixth_sections_partners_links USING btree (sixth_section_id);


--
-- Name: sixth_sections_partners_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sixth_sections_partners_links_inv_fk ON public.sixth_sections_partners_links USING btree (partner_id);


--
-- Name: sixth_sections_partners_links_order_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sixth_sections_partners_links_order_fk ON public.sixth_sections_partners_links USING btree (partner_order);


--
-- Name: sixth_sections_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sixth_sections_updated_by_id_fk ON public.sixth_sections USING btree (updated_by_id);


--
-- Name: strapi_api_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);


--
-- Name: strapi_api_token_permissions_token_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_token_links_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_id);


--
-- Name: strapi_api_token_permissions_token_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_token_links_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_id);


--
-- Name: strapi_api_token_permissions_token_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_token_links_order_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_order);


--
-- Name: strapi_api_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- Name: strapi_transfer_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);


--
-- Name: strapi_transfer_token_permissions_token_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_token_links_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_id);


--
-- Name: strapi_transfer_token_permissions_token_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_token_links_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_id);


--
-- Name: strapi_transfer_token_permissions_token_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_token_links_order_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_order);


--
-- Name: strapi_transfer_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_transfer_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);


--
-- Name: strapi_transfer_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);


--
-- Name: supports_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX supports_created_by_id_fk ON public.supports USING btree (created_by_id);


--
-- Name: supports_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX supports_updated_by_id_fk ON public.supports USING btree (updated_by_id);


--
-- Name: third_sections_bank_accounts_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX third_sections_bank_accounts_links_fk ON public.third_sections_bank_accounts_links USING btree (third_section_id);


--
-- Name: third_sections_bank_accounts_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX third_sections_bank_accounts_links_inv_fk ON public.third_sections_bank_accounts_links USING btree (bank_account_id);


--
-- Name: third_sections_bank_accounts_links_order_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX third_sections_bank_accounts_links_order_fk ON public.third_sections_bank_accounts_links USING btree (bank_account_order);


--
-- Name: third_sections_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX third_sections_created_by_id_fk ON public.third_sections USING btree (created_by_id);


--
-- Name: third_sections_localizations_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX third_sections_localizations_links_fk ON public.third_sections_localizations_links USING btree (third_section_id);


--
-- Name: third_sections_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX third_sections_localizations_links_inv_fk ON public.third_sections_localizations_links USING btree (inv_third_section_id);


--
-- Name: third_sections_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX third_sections_localizations_links_order_fk ON public.third_sections_localizations_links USING btree (third_section_order);


--
-- Name: third_sections_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX third_sections_updated_by_id_fk ON public.third_sections USING btree (updated_by_id);


--
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- Name: up_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);


--
-- Name: up_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);


--
-- Name: up_permissions_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_role_links_order_inv_fk ON public.up_permissions_role_links USING btree (permission_order);


--
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- Name: up_users_role_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);


--
-- Name: up_users_role_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);


--
-- Name: up_users_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_role_links_order_inv_fk ON public.up_users_role_links USING btree (user_order);


--
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- Name: upload_files_created_at_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);


--
-- Name: upload_files_ext_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);


--
-- Name: upload_files_folder_path_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);


--
-- Name: upload_files_name_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_name_index ON public.files USING btree (name);


--
-- Name: upload_files_size_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_size_index ON public.files USING btree (size);


--
-- Name: upload_files_updated_at_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);


--
-- Name: upload_folders_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);


--
-- Name: upload_folders_parent_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_parent_links_fk ON public.upload_folders_parent_links USING btree (folder_id);


--
-- Name: upload_folders_parent_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_parent_links_inv_fk ON public.upload_folders_parent_links USING btree (inv_folder_id);


--
-- Name: upload_folders_parent_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_parent_links_order_inv_fk ON public.upload_folders_parent_links USING btree (folder_order);


--
-- Name: upload_folders_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);


--
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users_roles_links admin_users_roles_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- Name: admin_users_roles_links admin_users_roles_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: bank_accounts bank_accounts_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bank_accounts
    ADD CONSTRAINT bank_accounts_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: bank_accounts_localizations_links bank_accounts_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bank_accounts_localizations_links
    ADD CONSTRAINT bank_accounts_localizations_links_fk FOREIGN KEY (bank_account_id) REFERENCES public.bank_accounts(id) ON DELETE CASCADE;


--
-- Name: bank_accounts_localizations_links bank_accounts_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bank_accounts_localizations_links
    ADD CONSTRAINT bank_accounts_localizations_links_inv_fk FOREIGN KEY (inv_bank_account_id) REFERENCES public.bank_accounts(id) ON DELETE CASCADE;


--
-- Name: bank_accounts bank_accounts_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bank_accounts
    ADD CONSTRAINT bank_accounts_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: cards cards_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cards
    ADD CONSTRAINT cards_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: cards_localizations_links cards_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cards_localizations_links
    ADD CONSTRAINT cards_localizations_links_fk FOREIGN KEY (card_id) REFERENCES public.cards(id) ON DELETE CASCADE;


--
-- Name: cards_localizations_links cards_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cards_localizations_links
    ADD CONSTRAINT cards_localizations_links_inv_fk FOREIGN KEY (inv_card_id) REFERENCES public.cards(id) ON DELETE CASCADE;


--
-- Name: cards cards_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cards
    ADD CONSTRAINT cards_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: eighth_sections eighth_sections_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.eighth_sections
    ADD CONSTRAINT eighth_sections_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: eighth_sections_localizations_links eighth_sections_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.eighth_sections_localizations_links
    ADD CONSTRAINT eighth_sections_localizations_links_fk FOREIGN KEY (eighth_section_id) REFERENCES public.eighth_sections(id) ON DELETE CASCADE;


--
-- Name: eighth_sections_localizations_links eighth_sections_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.eighth_sections_localizations_links
    ADD CONSTRAINT eighth_sections_localizations_links_inv_fk FOREIGN KEY (inv_eighth_section_id) REFERENCES public.eighth_sections(id) ON DELETE CASCADE;


--
-- Name: eighth_sections eighth_sections_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.eighth_sections
    ADD CONSTRAINT eighth_sections_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: emails emails_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emails
    ADD CONSTRAINT emails_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: emails_localizations_links emails_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emails_localizations_links
    ADD CONSTRAINT emails_localizations_links_fk FOREIGN KEY (email_id) REFERENCES public.emails(id) ON DELETE CASCADE;


--
-- Name: emails_localizations_links emails_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emails_localizations_links
    ADD CONSTRAINT emails_localizations_links_inv_fk FOREIGN KEY (inv_email_id) REFERENCES public.emails(id) ON DELETE CASCADE;


--
-- Name: emails emails_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emails
    ADD CONSTRAINT emails_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: fifth_sections_cards_links fifth_sections_cards_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fifth_sections_cards_links
    ADD CONSTRAINT fifth_sections_cards_links_fk FOREIGN KEY (fifth_section_id) REFERENCES public.fifth_sections(id) ON DELETE CASCADE;


--
-- Name: fifth_sections_cards_links fifth_sections_cards_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fifth_sections_cards_links
    ADD CONSTRAINT fifth_sections_cards_links_inv_fk FOREIGN KEY (card_id) REFERENCES public.cards(id) ON DELETE CASCADE;


--
-- Name: fifth_sections fifth_sections_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fifth_sections
    ADD CONSTRAINT fifth_sections_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: fifth_sections_localizations_links fifth_sections_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fifth_sections_localizations_links
    ADD CONSTRAINT fifth_sections_localizations_links_fk FOREIGN KEY (fifth_section_id) REFERENCES public.fifth_sections(id) ON DELETE CASCADE;


--
-- Name: fifth_sections_localizations_links fifth_sections_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fifth_sections_localizations_links
    ADD CONSTRAINT fifth_sections_localizations_links_inv_fk FOREIGN KEY (inv_fifth_section_id) REFERENCES public.fifth_sections(id) ON DELETE CASCADE;


--
-- Name: fifth_sections fifth_sections_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fifth_sections
    ADD CONSTRAINT fifth_sections_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files_folder_links files_folder_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files_folder_links files_folder_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: files_related_morphs files_related_morphs_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: first_sections first_sections_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.first_sections
    ADD CONSTRAINT first_sections_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: first_sections_localizations_links first_sections_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.first_sections_localizations_links
    ADD CONSTRAINT first_sections_localizations_links_fk FOREIGN KEY (first_section_id) REFERENCES public.first_sections(id) ON DELETE CASCADE;


--
-- Name: first_sections_localizations_links first_sections_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.first_sections_localizations_links
    ADD CONSTRAINT first_sections_localizations_links_inv_fk FOREIGN KEY (inv_first_section_id) REFERENCES public.first_sections(id) ON DELETE CASCADE;


--
-- Name: first_sections first_sections_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.first_sections
    ADD CONSTRAINT first_sections_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: footer_sections footer_sections_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer_sections
    ADD CONSTRAINT footer_sections_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: footer_sections_email_links footer_sections_email_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer_sections_email_links
    ADD CONSTRAINT footer_sections_email_links_fk FOREIGN KEY (footer_section_id) REFERENCES public.footer_sections(id) ON DELETE CASCADE;


--
-- Name: footer_sections_email_links footer_sections_email_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer_sections_email_links
    ADD CONSTRAINT footer_sections_email_links_inv_fk FOREIGN KEY (email_id) REFERENCES public.emails(id) ON DELETE CASCADE;


--
-- Name: footer_sections_localizations_links footer_sections_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer_sections_localizations_links
    ADD CONSTRAINT footer_sections_localizations_links_fk FOREIGN KEY (footer_section_id) REFERENCES public.footer_sections(id) ON DELETE CASCADE;


--
-- Name: footer_sections_localizations_links footer_sections_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer_sections_localizations_links
    ADD CONSTRAINT footer_sections_localizations_links_inv_fk FOREIGN KEY (inv_footer_section_id) REFERENCES public.footer_sections(id) ON DELETE CASCADE;


--
-- Name: footer_sections_menu_items_links footer_sections_menu_items_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer_sections_menu_items_links
    ADD CONSTRAINT footer_sections_menu_items_links_fk FOREIGN KEY (footer_section_id) REFERENCES public.footer_sections(id) ON DELETE CASCADE;


--
-- Name: footer_sections_menu_items_links footer_sections_menu_items_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer_sections_menu_items_links
    ADD CONSTRAINT footer_sections_menu_items_links_inv_fk FOREIGN KEY (menu_id) REFERENCES public.menu_items(id) ON DELETE CASCADE;


--
-- Name: footer_sections_phones_links footer_sections_phones_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer_sections_phones_links
    ADD CONSTRAINT footer_sections_phones_links_fk FOREIGN KEY (footer_section_id) REFERENCES public.footer_sections(id) ON DELETE CASCADE;


--
-- Name: footer_sections_phones_links footer_sections_phones_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer_sections_phones_links
    ADD CONSTRAINT footer_sections_phones_links_inv_fk FOREIGN KEY (phone_id) REFERENCES public.phones(id) ON DELETE CASCADE;


--
-- Name: footer_sections footer_sections_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer_sections
    ADD CONSTRAINT footer_sections_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: fourth_sections fourth_sections_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fourth_sections
    ADD CONSTRAINT fourth_sections_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: fourth_sections_localizations_links fourth_sections_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fourth_sections_localizations_links
    ADD CONSTRAINT fourth_sections_localizations_links_fk FOREIGN KEY (fourth_section_id) REFERENCES public.fourth_sections(id) ON DELETE CASCADE;


--
-- Name: fourth_sections_localizations_links fourth_sections_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fourth_sections_localizations_links
    ADD CONSTRAINT fourth_sections_localizations_links_inv_fk FOREIGN KEY (inv_fourth_section_id) REFERENCES public.fourth_sections(id) ON DELETE CASCADE;


--
-- Name: fourth_sections fourth_sections_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fourth_sections
    ADD CONSTRAINT fourth_sections_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: heads heads_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.heads
    ADD CONSTRAINT heads_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: heads_localizations_links heads_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.heads_localizations_links
    ADD CONSTRAINT heads_localizations_links_fk FOREIGN KEY (head_id) REFERENCES public.heads(id) ON DELETE CASCADE;


--
-- Name: heads_localizations_links heads_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.heads_localizations_links
    ADD CONSTRAINT heads_localizations_links_inv_fk FOREIGN KEY (inv_head_id) REFERENCES public.heads(id) ON DELETE CASCADE;


--
-- Name: heads_menu_items_links heads_menu_items_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.heads_menu_items_links
    ADD CONSTRAINT heads_menu_items_links_fk FOREIGN KEY (head_id) REFERENCES public.heads(id) ON DELETE CASCADE;


--
-- Name: heads_menu_items_links heads_menu_items_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.heads_menu_items_links
    ADD CONSTRAINT heads_menu_items_links_inv_fk FOREIGN KEY (menu_id) REFERENCES public.menu_items(id) ON DELETE CASCADE;


--
-- Name: heads heads_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.heads
    ADD CONSTRAINT heads_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: menu_items menu_items_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.menu_items
    ADD CONSTRAINT menu_items_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: menu_items_localizations_links menu_items_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.menu_items_localizations_links
    ADD CONSTRAINT menu_items_localizations_links_fk FOREIGN KEY (menu_id) REFERENCES public.menu_items(id) ON DELETE CASCADE;


--
-- Name: menu_items_localizations_links menu_items_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.menu_items_localizations_links
    ADD CONSTRAINT menu_items_localizations_links_inv_fk FOREIGN KEY (inv_menu_id) REFERENCES public.menu_items(id) ON DELETE CASCADE;


--
-- Name: menu_items menu_items_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.menu_items
    ADD CONSTRAINT menu_items_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: partners partners_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partners
    ADD CONSTRAINT partners_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: partners_localizations_links partners_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partners_localizations_links
    ADD CONSTRAINT partners_localizations_links_fk FOREIGN KEY (partner_id) REFERENCES public.partners(id) ON DELETE CASCADE;


--
-- Name: partners_localizations_links partners_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partners_localizations_links
    ADD CONSTRAINT partners_localizations_links_inv_fk FOREIGN KEY (inv_partner_id) REFERENCES public.partners(id) ON DELETE CASCADE;


--
-- Name: partners partners_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partners
    ADD CONSTRAINT partners_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: phones phones_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.phones
    ADD CONSTRAINT phones_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: phones_localizations_links phones_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.phones_localizations_links
    ADD CONSTRAINT phones_localizations_links_fk FOREIGN KEY (phone_id) REFERENCES public.phones(id) ON DELETE CASCADE;


--
-- Name: phones_localizations_links phones_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.phones_localizations_links
    ADD CONSTRAINT phones_localizations_links_inv_fk FOREIGN KEY (inv_phone_id) REFERENCES public.phones(id) ON DELETE CASCADE;


--
-- Name: phones phones_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.phones
    ADD CONSTRAINT phones_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: projects projects_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: projects_localizations_links projects_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects_localizations_links
    ADD CONSTRAINT projects_localizations_links_fk FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: projects_localizations_links projects_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects_localizations_links
    ADD CONSTRAINT projects_localizations_links_inv_fk FOREIGN KEY (inv_project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: projects projects_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: second_sections second_sections_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.second_sections
    ADD CONSTRAINT second_sections_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: second_sections_localizations_links second_sections_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.second_sections_localizations_links
    ADD CONSTRAINT second_sections_localizations_links_fk FOREIGN KEY (second_section_id) REFERENCES public.second_sections(id) ON DELETE CASCADE;


--
-- Name: second_sections_localizations_links second_sections_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.second_sections_localizations_links
    ADD CONSTRAINT second_sections_localizations_links_inv_fk FOREIGN KEY (inv_second_section_id) REFERENCES public.second_sections(id) ON DELETE CASCADE;


--
-- Name: second_sections_projects_links second_sections_projects_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.second_sections_projects_links
    ADD CONSTRAINT second_sections_projects_links_fk FOREIGN KEY (second_section_id) REFERENCES public.second_sections(id) ON DELETE CASCADE;


--
-- Name: second_sections_projects_links second_sections_projects_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.second_sections_projects_links
    ADD CONSTRAINT second_sections_projects_links_inv_fk FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: second_sections second_sections_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.second_sections
    ADD CONSTRAINT second_sections_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: seventh_sections_bank_accounts_links seventh_sections_bank_accounts_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seventh_sections_bank_accounts_links
    ADD CONSTRAINT seventh_sections_bank_accounts_links_fk FOREIGN KEY (seventh_section_id) REFERENCES public.seventh_sections(id) ON DELETE CASCADE;


--
-- Name: seventh_sections_bank_accounts_links seventh_sections_bank_accounts_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seventh_sections_bank_accounts_links
    ADD CONSTRAINT seventh_sections_bank_accounts_links_inv_fk FOREIGN KEY (bank_account_id) REFERENCES public.bank_accounts(id) ON DELETE CASCADE;


--
-- Name: seventh_sections seventh_sections_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seventh_sections
    ADD CONSTRAINT seventh_sections_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: seventh_sections_email_links seventh_sections_email_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seventh_sections_email_links
    ADD CONSTRAINT seventh_sections_email_links_fk FOREIGN KEY (seventh_section_id) REFERENCES public.seventh_sections(id) ON DELETE CASCADE;


--
-- Name: seventh_sections_email_links seventh_sections_email_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seventh_sections_email_links
    ADD CONSTRAINT seventh_sections_email_links_inv_fk FOREIGN KEY (email_id) REFERENCES public.emails(id) ON DELETE CASCADE;


--
-- Name: seventh_sections_localizations_links seventh_sections_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seventh_sections_localizations_links
    ADD CONSTRAINT seventh_sections_localizations_links_fk FOREIGN KEY (seventh_section_id) REFERENCES public.seventh_sections(id) ON DELETE CASCADE;


--
-- Name: seventh_sections_localizations_links seventh_sections_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seventh_sections_localizations_links
    ADD CONSTRAINT seventh_sections_localizations_links_inv_fk FOREIGN KEY (inv_seventh_section_id) REFERENCES public.seventh_sections(id) ON DELETE CASCADE;


--
-- Name: seventh_sections_phones_links seventh_sections_phones_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seventh_sections_phones_links
    ADD CONSTRAINT seventh_sections_phones_links_fk FOREIGN KEY (seventh_section_id) REFERENCES public.seventh_sections(id) ON DELETE CASCADE;


--
-- Name: seventh_sections_phones_links seventh_sections_phones_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seventh_sections_phones_links
    ADD CONSTRAINT seventh_sections_phones_links_inv_fk FOREIGN KEY (phone_id) REFERENCES public.phones(id) ON DELETE CASCADE;


--
-- Name: seventh_sections seventh_sections_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seventh_sections
    ADD CONSTRAINT seventh_sections_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: sixth_sections sixth_sections_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sixth_sections
    ADD CONSTRAINT sixth_sections_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: sixth_sections_localizations_links sixth_sections_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sixth_sections_localizations_links
    ADD CONSTRAINT sixth_sections_localizations_links_fk FOREIGN KEY (sixth_section_id) REFERENCES public.sixth_sections(id) ON DELETE CASCADE;


--
-- Name: sixth_sections_localizations_links sixth_sections_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sixth_sections_localizations_links
    ADD CONSTRAINT sixth_sections_localizations_links_inv_fk FOREIGN KEY (inv_sixth_section_id) REFERENCES public.sixth_sections(id) ON DELETE CASCADE;


--
-- Name: sixth_sections_partners_links sixth_sections_partners_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sixth_sections_partners_links
    ADD CONSTRAINT sixth_sections_partners_links_fk FOREIGN KEY (sixth_section_id) REFERENCES public.sixth_sections(id) ON DELETE CASCADE;


--
-- Name: sixth_sections_partners_links sixth_sections_partners_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sixth_sections_partners_links
    ADD CONSTRAINT sixth_sections_partners_links_inv_fk FOREIGN KEY (partner_id) REFERENCES public.partners(id) ON DELETE CASCADE;


--
-- Name: sixth_sections sixth_sections_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sixth_sections
    ADD CONSTRAINT sixth_sections_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: supports supports_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supports
    ADD CONSTRAINT supports_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: supports supports_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supports
    ADD CONSTRAINT supports_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: third_sections_bank_accounts_links third_sections_bank_accounts_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.third_sections_bank_accounts_links
    ADD CONSTRAINT third_sections_bank_accounts_links_fk FOREIGN KEY (third_section_id) REFERENCES public.third_sections(id) ON DELETE CASCADE;


--
-- Name: third_sections_bank_accounts_links third_sections_bank_accounts_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.third_sections_bank_accounts_links
    ADD CONSTRAINT third_sections_bank_accounts_links_inv_fk FOREIGN KEY (bank_account_id) REFERENCES public.bank_accounts(id) ON DELETE CASCADE;


--
-- Name: third_sections third_sections_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.third_sections
    ADD CONSTRAINT third_sections_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: third_sections_localizations_links third_sections_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.third_sections_localizations_links
    ADD CONSTRAINT third_sections_localizations_links_fk FOREIGN KEY (third_section_id) REFERENCES public.third_sections(id) ON DELETE CASCADE;


--
-- Name: third_sections_localizations_links third_sections_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.third_sections_localizations_links
    ADD CONSTRAINT third_sections_localizations_links_inv_fk FOREIGN KEY (inv_third_section_id) REFERENCES public.third_sections(id) ON DELETE CASCADE;


--
-- Name: third_sections third_sections_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.third_sections
    ADD CONSTRAINT third_sections_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions_role_links up_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- Name: up_permissions_role_links up_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users_role_links up_users_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: up_users_role_links up_users_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders upload_folders_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders_parent_links upload_folders_parent_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders_parent_links upload_folders_parent_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders upload_folders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

