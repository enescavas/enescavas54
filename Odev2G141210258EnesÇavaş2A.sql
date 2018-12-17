
SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2250 (class 1262 OID 12373)
-- Dependencies: 2249
-- Name: postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- TOC entry 2 (class 3079 OID 12355)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2253 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- TOC entry 1 (class 3079 OID 16384)
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- TOC entry 2254 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 198 (class 1259 OID 16560)
-- Name: Etkinlikler; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Etkinlikler" (
    "etkinlikID" integer NOT NULL,
    "etkinlikAdi" text,
    "etkinlikAciklama" text,
    "etkinlikYeriID" integer,
    "etkinlikFotoID" integer,
    "etkinlikTarihiBas" timestamp with time zone,
    "etkinlikTarihiSon" timestamp with time zone,
    "etkinlikTurID" integer,
    "etkinlikMaxKatilimci" integer,
    "etkinlikUcreti" integer,
    "etkinlikEkleyenID" integer,
    "etkinlikGizliligiID" integer,
    "etkinlikDurumuID" integer,
    "ekGereksinimID" integer,
    "etkinlikKazanimiID" integer,
    "biletSatisIrtibatID" integer,
    "etkinlikAkisiID" integer,
    "etkinlikSorumluID" integer,
    "onemDerecesiID" integer,
    "konaklamaID" integer,
    "hatirlatmaTuruID" integer,
    "ucretsizKazananID" integer,
    "sponsorID" integer
);


ALTER TABLE "Etkinlikler" OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 16566)
-- Name: Etkinlikler_etkinlikID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Etkinlikler_etkinlikID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Etkinlikler_etkinlikID_seq" OWNER TO postgres;

--
-- TOC entry 2255 (class 0 OID 0)
-- Dependencies: 199
-- Name: Etkinlikler_etkinlikID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Etkinlikler_etkinlikID_seq" OWNED BY "Etkinlikler"."etkinlikID";


--
-- TOC entry 191 (class 1259 OID 16480)
-- Name: etkinlikAkisi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "etkinlikAkisi" (
    "etkinlikAkisiID" integer NOT NULL,
    "konusmacilarListesi" text,
    "konusmaciSaati" time with time zone,
    "molaYemekSaatleri" time with time zone
);


ALTER TABLE "etkinlikAkisi" OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 16448)
-- Name: etkinlikDurumu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "etkinlikDurumu" (
    "etkinlikDurumuID" integer NOT NULL,
    "etkinlikDurumuAdi" text
);


ALTER TABLE "etkinlikDurumu" OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 16464)
-- Name: etkinlikEkGereksinimler; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "etkinlikEkGereksinimler" (
    "ekGereksinimID" integer NOT NULL,
    "ekGereksinimListesi" text
);


ALTER TABLE "etkinlikEkGereksinimler" OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 16404)
-- Name: etkinlikEkleyen; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "etkinlikEkleyen" (
    "etkinlikEkleyenID" integer NOT NULL,
    "adiSoyadi" text,
    foto text,
    "dogumTarihi" time with time zone,
    "yasadigiYer" text,
    telefon text,
    "eMail" text
);


ALTER TABLE "etkinlikEkleyen" OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 16427)
-- Name: etkinlikFoto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "etkinlikFoto" (
    "etkinlikFotoID" integer NOT NULL,
    poster text,
    "etkinlikYeriFoto1" text,
    "etkinlikYeriFoto2" text
);


ALTER TABLE "etkinlikFoto" OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 16440)
-- Name: etkinlikGizliligi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "etkinlikGizliligi" (
    "etkinlikGizliliğiID" integer NOT NULL,
    "etkinlikGizliligiTuru" text
);


ALTER TABLE "etkinlikGizliligi" OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 16472)
-- Name: etkinlikKazanimi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "etkinlikKazanimi" (
    "etkinlikKazanimiID" integer NOT NULL,
    "KazanimiTuru" text
);


ALTER TABLE "etkinlikKazanimi" OWNER TO postgres;

--
-- TOC entry 194 (class 1259 OID 16505)
-- Name: etkinlikKonaklama; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "etkinlikKonaklama" (
    "konaklamaID" integer NOT NULL,
    "konaklamaAdi" text,
    "konaklamaAdresi" text,
    "konaklamaTelNo" text,
    "konaklamaUcreti" money,
    "konaklamaFoto" text,
    "konaklamaSuresi" integer
);


ALTER TABLE "etkinlikKonaklama" OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 16435)
-- Name: etkinlikTuru; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "etkinlikTuru" (
    "etkinlikTurID" integer NOT NULL,
    "etkinlikTurAdi" integer
);


ALTER TABLE "etkinlikTuru" OWNER TO postgres;

--
-- TOC entry 192 (class 1259 OID 16488)
-- Name: etkinliktenSorumlular; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "etkinliktenSorumlular" (
    "etkinlikSorumluID" integer NOT NULL,
    "gorevTuru" text,
    "adiSoyadi" text,
    "telNo" text,
    email text
);


ALTER TABLE "etkinliktenSorumlular" OWNER TO postgres;

--
-- TOC entry 195 (class 1259 OID 16513)
-- Name: hatırlatmaTuru; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "hatırlatmaTuru" (
    "hatirlatmaTuruID" integer NOT NULL,
    "hatırlatmaTuruAdi" text
);


ALTER TABLE "hatırlatmaTuru" OWNER TO postgres;

--
-- TOC entry 193 (class 1259 OID 16496)
-- Name: onemDerecesi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "onemDerecesi" (
    "onemDerecesiID" integer NOT NULL,
    "onemDerecesiAdi" text
);


ALTER TABLE "onemDerecesi" OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 16456)
-- Name: satisIrtibat; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "satisIrtibat" (
    "SatisIrtibatID" integer NOT NULL,
    "firmaAdi" text,
    "firmaTel" text,
    "firmaEmail" text,
    "firmaAdres" text,
    "onlineAlimDurumu" text
);


ALTER TABLE "satisIrtibat" OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 16529)
-- Name: sponsor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sponsor (
    "sponsorID" integer NOT NULL,
    "sponsorAdi" text,
    "sponsorFoto" text,
    "sponsorDestegiTuru" text,
    "destekMiktari" money,
    "temsilcisiAdi" text,
    "temsilciTelNo" text,
    "temsilcisiEmail" text
);


ALTER TABLE sponsor OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 16521)
-- Name: ucretsizKazananlar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "ucretsizKazananlar" (
    "kazananID" integer NOT NULL,
    "kazananAdSoyad" text,
    "kazananTelNo" text,
    "kazananEmail" text
);


ALTER TABLE "ucretsizKazananlar" OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 16419)
-- Name: yerler; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE yerler (
    "etkinlikYeriID" integer NOT NULL,
    ulke text,
    il text,
    ilce text,
    "adresDetayi" text
);


ALTER TABLE yerler OWNER TO postgres;

--
-- TOC entry 2062 (class 2604 OID 16568)
-- Name: etkinlikID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Etkinlikler" ALTER COLUMN "etkinlikID" SET DEFAULT nextval('"Etkinlikler_etkinlikID_seq"'::regclass);


--
-- TOC entry 2243 (class 0 OID 16560)
-- Dependencies: 198
-- Data for Name: Etkinlikler; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Etkinlikler" ("etkinlikID", "etkinlikAdi", "etkinlikAciklama", "etkinlikYeriID", "etkinlikFotoID", "etkinlikTarihiBas", "etkinlikTarihiSon", "etkinlikTurID", "etkinlikMaxKatilimci", "etkinlikUcreti", "etkinlikEkleyenID", "etkinlikGizliligiID", "etkinlikDurumuID", "ekGereksinimID", "etkinlikKazanimiID", "biletSatisIrtibatID", "etkinlikAkisiID", "etkinlikSorumluID", "onemDerecesiID", "konaklamaID", "hatirlatmaTuruID", "ucretsizKazananID", "sponsorID") FROM stdin;



--
-- TOC entry 2256 (class 0 OID 0)
-- Dependencies: 199
-- Name: Etkinlikler_etkinlikID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Etkinlikler_etkinlikID_seq"', 1, false);


--
-- TOC entry 2236 (class 0 OID 16480)
-- Dependencies: 191
-- Data for Name: etkinlikAkisi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "etkinlikAkisi" ("etkinlikAkisiID", "konusmacilarListesi", "konusmaciSaati", "molaYemekSaatleri") FROM stdin;



--
-- TOC entry 2232 (class 0 OID 16448)
-- Dependencies: 187
-- Data for Name: etkinlikDurumu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "etkinlikDurumu" ("etkinlikDurumuID", "etkinlikDurumuAdi") FROM stdin;



--
-- TOC entry 2234 (class 0 OID 16464)
-- Dependencies: 189
-- Data for Name: etkinlikEkGereksinimler; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "etkinlikEkGereksinimler" ("ekGereksinimID", "ekGereksinimListesi") FROM stdin;



--
-- TOC entry 2227 (class 0 OID 16404)
-- Dependencies: 182
-- Data for Name: etkinlikEkleyen; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "etkinlikEkleyen" ("etkinlikEkleyenID", "adiSoyadi", foto, "dogumTarihi", "yasadigiYer", telefon, "eMail") FROM stdin;



--
-- TOC entry 2229 (class 0 OID 16427)
-- Dependencies: 184
-- Data for Name: etkinlikFoto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "etkinlikFoto" ("etkinlikFotoID", poster, "etkinlikYeriFoto1", "etkinlikYeriFoto2") FROM stdin;



--
-- TOC entry 2231 (class 0 OID 16440)
-- Dependencies: 186
-- Data for Name: etkinlikGizliligi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "etkinlikGizliligi" ("etkinlikGizliliğiID", "etkinlikGizliligiTuru") FROM stdin;



--
-- TOC entry 2235 (class 0 OID 16472)
-- Dependencies: 190
-- Data for Name: etkinlikKazanimi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "etkinlikKazanimi" ("etkinlikKazanimiID", "KazanimiTuru") FROM stdin;



--
-- TOC entry 2239 (class 0 OID 16505)
-- Dependencies: 194
-- Data for Name: etkinlikKonaklama; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "etkinlikKonaklama" ("konaklamaID", "konaklamaAdi", "konaklamaAdresi", "konaklamaTelNo", "konaklamaUcreti", "konaklamaFoto", "konaklamaSuresi") FROM stdin;



--
-- TOC entry 2230 (class 0 OID 16435)
-- Dependencies: 185
-- Data for Name: etkinlikTuru; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "etkinlikTuru" ("etkinlikTurID", "etkinlikTurAdi") FROM stdin;



--
-- TOC entry 2237 (class 0 OID 16488)
-- Dependencies: 192
-- Data for Name: etkinliktenSorumlular; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "etkinliktenSorumlular" ("etkinlikSorumluID", "gorevTuru", "adiSoyadi", "telNo", email) FROM stdin;



--
-- TOC entry 2240 (class 0 OID 16513)
-- Dependencies: 195
-- Data for Name: hatırlatmaTuru; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "hatırlatmaTuru" ("hatirlatmaTuruID", "hatırlatmaTuruAdi") FROM stdin;



--
-- TOC entry 2238 (class 0 OID 16496)
-- Dependencies: 193
-- Data for Name: onemDerecesi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "onemDerecesi" ("onemDerecesiID", "onemDerecesiAdi") FROM stdin;



--
-- TOC entry 2233 (class 0 OID 16456)
-- Dependencies: 188
-- Data for Name: satisIrtibat; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "satisIrtibat" ("SatisIrtibatID", "firmaAdi", "firmaTel", "firmaEmail", "firmaAdres", "onlineAlimDurumu") FROM stdin;



--
-- TOC entry 2242 (class 0 OID 16529)
-- Dependencies: 197
-- Data for Name: sponsor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sponsor ("sponsorID", "sponsorAdi", "sponsorFoto", "sponsorDestegiTuru", "destekMiktari", "temsilcisiAdi", "temsilciTelNo", "temsilcisiEmail") FROM stdin;



--
-- TOC entry 2241 (class 0 OID 16521)
-- Dependencies: 196
-- Data for Name: ucretsizKazananlar; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "ucretsizKazananlar" ("kazananID", "kazananAdSoyad", "kazananTelNo", "kazananEmail") FROM stdin;



--
-- TOC entry 2228 (class 0 OID 16419)
-- Dependencies: 183
-- Data for Name: yerler; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY yerler ("etkinlikYeriID", ulke, il, ilce, "adresDetayi") FROM stdin;



--
-- TOC entry 2076 (class 2606 OID 16463)
-- Name: SatisIrtibatID; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "satisIrtibat"
    ADD CONSTRAINT "SatisIrtibatID" PRIMARY KEY ("SatisIrtibatID");


--
-- TOC entry 2078 (class 2606 OID 16471)
-- Name: ekGereksinimID; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "etkinlikEkGereksinimler"
    ADD CONSTRAINT "ekGereksinimID" PRIMARY KEY ("ekGereksinimID");


--
-- TOC entry 2082 (class 2606 OID 16487)
-- Name: etkinlikAkisiID; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "etkinlikAkisi"
    ADD CONSTRAINT "etkinlikAkisiID" PRIMARY KEY ("etkinlikAkisiID");


--
-- TOC entry 2074 (class 2606 OID 16455)
-- Name: etkinlikDurumuID; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "etkinlikDurumu"
    ADD CONSTRAINT "etkinlikDurumuID" PRIMARY KEY ("etkinlikDurumuID");


--
-- TOC entry 2064 (class 2606 OID 16411)
-- Name: etkinlikEkleyenID; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "etkinlikEkleyen"
    ADD CONSTRAINT "etkinlikEkleyenID" PRIMARY KEY ("etkinlikEkleyenID");


--
-- TOC entry 2068 (class 2606 OID 16434)
-- Name: etkinlikFotoID; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "etkinlikFoto"
    ADD CONSTRAINT "etkinlikFotoID" PRIMARY KEY ("etkinlikFotoID");


--
-- TOC entry 2072 (class 2606 OID 16447)
-- Name: etkinlikGizliliğiID; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "etkinlikGizliligi"
    ADD CONSTRAINT "etkinlikGizliliğiID" PRIMARY KEY ("etkinlikGizliliğiID");


--
-- TOC entry 2096 (class 2606 OID 16570)
-- Name: etkinlikID; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Etkinlikler"
    ADD CONSTRAINT "etkinlikID" PRIMARY KEY ("etkinlikID");


--
-- TOC entry 2080 (class 2606 OID 16479)
-- Name: etkinlikKazanimiID; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "etkinlikKazanimi"
    ADD CONSTRAINT "etkinlikKazanimiID" PRIMARY KEY ("etkinlikKazanimiID");


--
-- TOC entry 2084 (class 2606 OID 16495)
-- Name: etkinlikSorumluID; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "etkinliktenSorumlular"
    ADD CONSTRAINT "etkinlikSorumluID" PRIMARY KEY ("etkinlikSorumluID");


--
-- TOC entry 2070 (class 2606 OID 16439)
-- Name: etkinlikTurID; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "etkinlikTuru"
    ADD CONSTRAINT "etkinlikTurID" PRIMARY KEY ("etkinlikTurID");


--
-- TOC entry 2066 (class 2606 OID 16426)
-- Name: etkinlikYeriID; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY yerler
    ADD CONSTRAINT "etkinlikYeriID" PRIMARY KEY ("etkinlikYeriID");


--
-- TOC entry 2090 (class 2606 OID 16520)
-- Name: hatirlatmaTuruID; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "hatırlatmaTuru"
    ADD CONSTRAINT "hatirlatmaTuruID" PRIMARY KEY ("hatirlatmaTuruID");


--
-- TOC entry 2092 (class 2606 OID 16528)
-- Name: kazananID; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "ucretsizKazananlar"
    ADD CONSTRAINT "kazananID" PRIMARY KEY ("kazananID");


--
-- TOC entry 2088 (class 2606 OID 16512)
-- Name: konaklamaID; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "etkinlikKonaklama"
    ADD CONSTRAINT "konaklamaID" PRIMARY KEY ("konaklamaID");


--
-- TOC entry 2086 (class 2606 OID 16503)
-- Name: onemDerecesiID; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "onemDerecesi"
    ADD CONSTRAINT "onemDerecesiID" PRIMARY KEY ("onemDerecesiID");


--
-- TOC entry 2094 (class 2606 OID 16536)
-- Name: sponsorID; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sponsor
    ADD CONSTRAINT "sponsorID" PRIMARY KEY ("sponsorID");


--
-- TOC entry 2105 (class 2606 OID 16612)
-- Name: SatisIrtibatID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Etkinlikler"
    ADD CONSTRAINT "SatisIrtibatID" FOREIGN KEY ("biletSatisIrtibatID") REFERENCES "satisIrtibat"("SatisIrtibatID");


--
-- TOC entry 2103 (class 2606 OID 16602)
-- Name: ekGereksinimID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Etkinlikler"
    ADD CONSTRAINT "ekGereksinimID" FOREIGN KEY ("ekGereksinimID") REFERENCES "etkinlikEkGereksinimler"("ekGereksinimID");


--
-- TOC entry 2106 (class 2606 OID 16617)
-- Name: etkinlikAkisiID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Etkinlikler"
    ADD CONSTRAINT "etkinlikAkisiID" FOREIGN KEY ("etkinlikAkisiID") REFERENCES "etkinlikAkisi"("etkinlikAkisiID");


--
-- TOC entry 2102 (class 2606 OID 16597)
-- Name: etkinlikDurumuID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Etkinlikler"
    ADD CONSTRAINT "etkinlikDurumuID" FOREIGN KEY ("etkinlikDurumuID") REFERENCES "etkinlikDurumu"("etkinlikDurumuID");


--
-- TOC entry 2101 (class 2606 OID 16592)
-- Name: etkinlikEkleyenID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Etkinlikler"
    ADD CONSTRAINT "etkinlikEkleyenID" FOREIGN KEY ("etkinlikEkleyenID") REFERENCES "etkinlikEkleyen"("etkinlikEkleyenID");


--
-- TOC entry 2098 (class 2606 OID 16577)
-- Name: etkinlikFotoID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Etkinlikler"
    ADD CONSTRAINT "etkinlikFotoID" FOREIGN KEY ("etkinlikFotoID") REFERENCES "etkinlikFoto"("etkinlikFotoID");


--
-- TOC entry 2100 (class 2606 OID 16587)
-- Name: etkinlikGizliliğiID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Etkinlikler"
    ADD CONSTRAINT "etkinlikGizliliğiID" FOREIGN KEY ("etkinlikGizliligiID") REFERENCES "etkinlikGizliligi"("etkinlikGizliliğiID");


--
-- TOC entry 2104 (class 2606 OID 16607)
-- Name: etkinlikKazanimiID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Etkinlikler"
    ADD CONSTRAINT "etkinlikKazanimiID" FOREIGN KEY ("etkinlikKazanimiID") REFERENCES "etkinlikKazanimi"("etkinlikKazanimiID");


--
-- TOC entry 2107 (class 2606 OID 16622)
-- Name: etkinlikSorumluID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Etkinlikler"
    ADD CONSTRAINT "etkinlikSorumluID" FOREIGN KEY ("etkinlikSorumluID") REFERENCES "etkinliktenSorumlular"("etkinlikSorumluID");


--
-- TOC entry 2099 (class 2606 OID 16582)
-- Name: etkinlikTurID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Etkinlikler"
    ADD CONSTRAINT "etkinlikTurID" FOREIGN KEY ("etkinlikTurID") REFERENCES "etkinlikTuru"("etkinlikTurID");


--
-- TOC entry 2097 (class 2606 OID 16572)
-- Name: etkinlikYeriID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Etkinlikler"
    ADD CONSTRAINT "etkinlikYeriID" FOREIGN KEY ("etkinlikYeriID") REFERENCES yerler("etkinlikYeriID");


--
-- TOC entry 2110 (class 2606 OID 16637)
-- Name: hatirlatmaTuruID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Etkinlikler"
    ADD CONSTRAINT "hatirlatmaTuruID" FOREIGN KEY ("hatirlatmaTuruID") REFERENCES "hatırlatmaTuru"("hatirlatmaTuruID");


--
-- TOC entry 2111 (class 2606 OID 16642)
-- Name: kazananID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Etkinlikler"
    ADD CONSTRAINT "kazananID" FOREIGN KEY ("ucretsizKazananID") REFERENCES "ucretsizKazananlar"("kazananID");


--
-- TOC entry 2109 (class 2606 OID 16632)
-- Name: konaklamaID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Etkinlikler"
    ADD CONSTRAINT "konaklamaID" FOREIGN KEY ("konaklamaID") REFERENCES "etkinlikKonaklama"("konaklamaID");


--
-- TOC entry 2108 (class 2606 OID 16627)
-- Name: onemDerecesiID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Etkinlikler"
    ADD CONSTRAINT "onemDerecesiID" FOREIGN KEY ("onemDerecesiID") REFERENCES "onemDerecesi"("onemDerecesiID");


--
-- TOC entry 2112 (class 2606 OID 16647)
-- Name: sponsorID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Etkinlikler"
    ADD CONSTRAINT "sponsorID" FOREIGN KEY ("sponsorID") REFERENCES sponsor("sponsorID");


--
-- TOC entry 2252 (class 0 OID 0)
-- Dependencies: 7
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


