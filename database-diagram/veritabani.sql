PGDMP         ,                x         
   w3schoolVT    13.1    13.1 M    2           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            3           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            4           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            5           1262    16394 
   w3schoolVT    DATABASE     i   CREATE DATABASE "w3schoolVT" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE "w3schoolVT";
                postgres    false            ?            1259    16445    DilKurs    TABLE     n   CREATE TABLE public."DilKurs" (
    derece integer,
    uyeno integer NOT NULL,
    dilno integer NOT NULL
);
    DROP TABLE public."DilKurs";
       public         heap    postgres    false            ?            1259    16405    Email    TABLE     R   CREATE TABLE public."Email" (
    emailno integer NOT NULL,
    emailisim text
);
    DROP TABLE public."Email";
       public         heap    postgres    false            ?            1259    16440    Fatura    TABLE     Q   CREATE TABLE public."Fatura" (
    faturano integer NOT NULL,
    tarihi date
);
    DROP TABLE public."Fatura";
       public         heap    postgres    false            ?            1259    16400    Il    TABLE     Z   CREATE TABLE public."Il" (
    ilno integer NOT NULL,
    "iladı" text,
    ilce text
);
    DROP TABLE public."Il";
       public         heap    postgres    false            ?            1259    16410    Iletisim    TABLE     ?   CREATE TABLE public."Iletisim" (
    no integer NOT NULL,
    telefon integer,
    adres text NOT NULL,
    uyeno integer NOT NULL
);
    DROP TABLE public."Iletisim";
       public         heap    postgres    false            ?            1259    16415    Kargo    TABLE     T   CREATE TABLE public."Kargo" (
    firmano integer NOT NULL,
    ad text NOT NULL
);
    DROP TABLE public."Kargo";
       public         heap    postgres    false            ?            1259    16465    Katagori    TABLE     Q   CREATE TABLE public."Katagori" (
    ad text,
    katagorino integer NOT NULL
);
    DROP TABLE public."Katagori";
       public         heap    postgres    false            ?            1259    16425 
   Ogrenciler    TABLE        CREATE TABLE public."Ogrenciler" (
    uyeno integer NOT NULL,
    seviye integer,
    dersleri text,
    egzersizleri text
);
     DROP TABLE public."Ogrenciler";
       public         heap    postgres    false            ?            1259    16430    Ogreticiler    TABLE     U   CREATE TABLE public."Ogreticiler" (
    uyeno integer NOT NULL,
    videolar text
);
 !   DROP TABLE public."Ogreticiler";
       public         heap    postgres    false            ?            1259    16450 	   Sertifika    TABLE     ?   CREATE TABLE public."Sertifika" (
    sertifikano integer NOT NULL,
    isim text,
    tarih date,
    uyeno integer NOT NULL
);
    DROP TABLE public."Sertifika";
       public         heap    postgres    false            ?            1259    16455    SiparisUrun    TABLE        CREATE TABLE public."SiparisUrun" (
    no integer NOT NULL,
    siparisno integer,
    urunkodu integer,
    fiyat integer
);
 !   DROP TABLE public."SiparisUrun";
       public         heap    postgres    false            ?            1259    16420 
   Siparisler    TABLE     ?   CREATE TABLE public."Siparisler" (
    siparisno integer NOT NULL,
    siparistarihi date,
    tutar integer,
    musterino integer NOT NULL,
    faturano integer NOT NULL,
    kargofirmano integer NOT NULL
);
     DROP TABLE public."Siparisler";
       public         heap    postgres    false            ?            1259    16435 	   Sınavlar    TABLE     ?   CREATE TABLE public."Sınavlar" (
    "sınavno" integer NOT NULL,
    isim text,
    aded integer,
    uyeno integer NOT NULL
);
    DROP TABLE public."Sınavlar";
       public         heap    postgres    false            ?            1259    16460    Urun    TABLE     v   CREATE TABLE public."Urun" (
    kod integer NOT NULL,
    ad text,
    birimfiyat integer,
    katagorino integer
);
    DROP TABLE public."Urun";
       public         heap    postgres    false            ?            1259    16395    Uyeler    TABLE     ?   CREATE TABLE public."Uyeler" (
    uyeno integer NOT NULL,
    isim text NOT NULL,
    soyisim text NOT NULL,
    dogumyerino integer,
    emailno integer
);
    DROP TABLE public."Uyeler";
       public         heap    postgres    false            +          0    16445    DilKurs 
   TABLE DATA           9   COPY public."DilKurs" (derece, uyeno, dilno) FROM stdin;
    public          postgres    false    210   2U       #          0    16405    Email 
   TABLE DATA           5   COPY public."Email" (emailno, emailisim) FROM stdin;
    public          postgres    false    202   OU       *          0    16440    Fatura 
   TABLE DATA           4   COPY public."Fatura" (faturano, tarihi) FROM stdin;
    public          postgres    false    209   ?U       "          0    16400    Il 
   TABLE DATA           4   COPY public."Il" (ilno, "iladı", ilce) FROM stdin;
    public          postgres    false    201   ?U       $          0    16410    Iletisim 
   TABLE DATA           ?   COPY public."Iletisim" (no, telefon, adres, uyeno) FROM stdin;
    public          postgres    false    203   ?U       %          0    16415    Kargo 
   TABLE DATA           .   COPY public."Kargo" (firmano, ad) FROM stdin;
    public          postgres    false    204   -V       /          0    16465    Katagori 
   TABLE DATA           4   COPY public."Katagori" (ad, katagorino) FROM stdin;
    public          postgres    false    214   \V       '          0    16425 
   Ogrenciler 
   TABLE DATA           M   COPY public."Ogrenciler" (uyeno, seviye, dersleri, egzersizleri) FROM stdin;
    public          postgres    false    206   ?V       (          0    16430    Ogreticiler 
   TABLE DATA           8   COPY public."Ogreticiler" (uyeno, videolar) FROM stdin;
    public          postgres    false    207   ?V       ,          0    16450 	   Sertifika 
   TABLE DATA           F   COPY public."Sertifika" (sertifikano, isim, tarih, uyeno) FROM stdin;
    public          postgres    false    211   ?V       -          0    16455    SiparisUrun 
   TABLE DATA           G   COPY public."SiparisUrun" (no, siparisno, urunkodu, fiyat) FROM stdin;
    public          postgres    false    212   W       &          0    16420 
   Siparisler 
   TABLE DATA           j   COPY public."Siparisler" (siparisno, siparistarihi, tutar, musterino, faturano, kargofirmano) FROM stdin;
    public          postgres    false    205   @W       )          0    16435 	   Sınavlar 
   TABLE DATA           D   COPY public."Sınavlar" ("sınavno", isim, aded, uyeno) FROM stdin;
    public          postgres    false    208   pW       .          0    16460    Urun 
   TABLE DATA           A   COPY public."Urun" (kod, ad, birimfiyat, katagorino) FROM stdin;
    public          postgres    false    213   ?W       !          0    16395    Uyeler 
   TABLE DATA           N   COPY public."Uyeler" (uyeno, isim, soyisim, dogumyerino, emailno) FROM stdin;
    public          postgres    false    200   ?W       ?           2606    16690    DilKurs DilKurs_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public."DilKurs"
    ADD CONSTRAINT "DilKurs_pkey" PRIMARY KEY (dilno);
 B   ALTER TABLE ONLY public."DilKurs" DROP CONSTRAINT "DilKurs_pkey";
       public            postgres    false    210            l           2606    16680    Email Email_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public."Email"
    ADD CONSTRAINT "Email_pkey" PRIMARY KEY (emailno);
 >   ALTER TABLE ONLY public."Email" DROP CONSTRAINT "Email_pkey";
       public            postgres    false    202            ?           2606    16444    Fatura Fatura_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Fatura"
    ADD CONSTRAINT "Fatura_pkey" PRIMARY KEY (faturano);
 @   ALTER TABLE ONLY public."Fatura" DROP CONSTRAINT "Fatura_pkey";
       public            postgres    false    209            q           2606    16419    Kargo Kargo_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public."Kargo"
    ADD CONSTRAINT "Kargo_pkey" PRIMARY KEY (firmano);
 >   ALTER TABLE ONLY public."Kargo" DROP CONSTRAINT "Kargo_pkey";
       public            postgres    false    204            ?           2606    16730    Katagori Katagori_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Katagori"
    ADD CONSTRAINT "Katagori_pkey" PRIMARY KEY (katagorino);
 D   ALTER TABLE ONLY public."Katagori" DROP CONSTRAINT "Katagori_pkey";
       public            postgres    false    214            z           2606    16547    Ogrenciler Ogrenciler_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."Ogrenciler"
    ADD CONSTRAINT "Ogrenciler_pkey" PRIMARY KEY (uyeno);
 H   ALTER TABLE ONLY public."Ogrenciler" DROP CONSTRAINT "Ogrenciler_pkey";
       public            postgres    false    206            |           2606    16564    Ogreticiler Ogreticiler_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public."Ogreticiler"
    ADD CONSTRAINT "Ogreticiler_pkey" PRIMARY KEY (uyeno);
 J   ALTER TABLE ONLY public."Ogreticiler" DROP CONSTRAINT "Ogreticiler_pkey";
       public            postgres    false    207            ?           2606    16454    Sertifika Sertifika_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public."Sertifika"
    ADD CONSTRAINT "Sertifika_pkey" PRIMARY KEY (sertifikano);
 F   ALTER TABLE ONLY public."Sertifika" DROP CONSTRAINT "Sertifika_pkey";
       public            postgres    false    211            ?           2606    16459    SiparisUrun SiparisUrun_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."SiparisUrun"
    ADD CONSTRAINT "SiparisUrun_pkey" PRIMARY KEY (no);
 J   ALTER TABLE ONLY public."SiparisUrun" DROP CONSTRAINT "SiparisUrun_pkey";
       public            postgres    false    212            s           2606    16424    Siparisler Siparisler_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public."Siparisler"
    ADD CONSTRAINT "Siparisler_pkey" PRIMARY KEY (siparisno);
 H   ALTER TABLE ONLY public."Siparisler" DROP CONSTRAINT "Siparisler_pkey";
       public            postgres    false    205            ~           2606    16439    Sınavlar Sınavlar_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Sınavlar"
    ADD CONSTRAINT "Sınavlar_pkey" PRIMARY KEY ("sınavno");
 F   ALTER TABLE ONLY public."Sınavlar" DROP CONSTRAINT "Sınavlar_pkey";
       public            postgres    false    208            ?           2606    16464    Urun Urun_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public."Urun"
    ADD CONSTRAINT "Urun_pkey" PRIMARY KEY (kod);
 <   ALTER TABLE ONLY public."Urun" DROP CONSTRAINT "Urun_pkey";
       public            postgres    false    213            d           2606    16688    Uyeler email_uniq 
   CONSTRAINT     Q   ALTER TABLE ONLY public."Uyeler"
    ADD CONSTRAINT email_uniq UNIQUE (emailno);
 =   ALTER TABLE ONLY public."Uyeler" DROP CONSTRAINT email_uniq;
       public            postgres    false    200            u           2606    16515    Siparisler faturano_uniq 
   CONSTRAINT     Y   ALTER TABLE ONLY public."Siparisler"
    ADD CONSTRAINT faturano_uniq UNIQUE (faturano);
 D   ALTER TABLE ONLY public."Siparisler" DROP CONSTRAINT faturano_uniq;
       public            postgres    false    205            h           2606    16399    Uyeler Üyeler_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Uyeler"
    ADD CONSTRAINT "Üyeler_pkey" PRIMARY KEY (uyeno);
 A   ALTER TABLE ONLY public."Uyeler" DROP CONSTRAINT "Üyeler_pkey";
       public            postgres    false    200            j           2606    16404    Il İl_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public."Il"
    ADD CONSTRAINT "İl_pkey" PRIMARY KEY (ilno);
 9   ALTER TABLE ONLY public."Il" DROP CONSTRAINT "İl_pkey";
       public            postgres    false    201            o           2606    16414    Iletisim İletisim_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public."Iletisim"
    ADD CONSTRAINT "İletisim_pkey" PRIMARY KEY (no);
 E   ALTER TABLE ONLY public."Iletisim" DROP CONSTRAINT "İletisim_pkey";
       public            postgres    false    203            ?           1259    16533    fki_dilkurs_fk    INDEX     E   CREATE INDEX fki_dilkurs_fk ON public."DilKurs" USING btree (uyeno);
 "   DROP INDEX public.fki_dilkurs_fk;
       public            postgres    false    210            e           1259    16489    fki_dogumyeri_fk    INDEX     L   CREATE INDEX fki_dogumyeri_fk ON public."Uyeler" USING btree (dogumyerino);
 $   DROP INDEX public.fki_dogumyeri_fk;
       public            postgres    false    200            f           1259    16686    fki_email_fk    INDEX     D   CREATE INDEX fki_email_fk ON public."Uyeler" USING btree (emailno);
     DROP INDEX public.fki_email_fk;
       public            postgres    false    200            v           1259    16507    fki_faturano_fk    INDEX     L   CREATE INDEX fki_faturano_fk ON public."Siparisler" USING btree (faturano);
 #   DROP INDEX public.fki_faturano_fk;
       public            postgres    false    205            w           1259    16501    fki_kargofirma_fk    INDEX     R   CREATE INDEX fki_kargofirma_fk ON public."Siparisler" USING btree (kargofirmano);
 %   DROP INDEX public.fki_kargofirma_fk;
       public            postgres    false    205            ?           1259    24608    fki_katagori_fk    INDEX     H   CREATE INDEX fki_katagori_fk ON public."Urun" USING btree (katagorino);
 #   DROP INDEX public.fki_katagori_fk;
       public            postgres    false    213            x           1259    16495    fki_musteri_fk    INDEX     L   CREATE INDEX fki_musteri_fk ON public."Siparisler" USING btree (musterino);
 "   DROP INDEX public.fki_musteri_fk;
       public            postgres    false    205            ?           1259    16539    fki_sertifika_fk    INDEX     I   CREATE INDEX fki_sertifika_fk ON public."Sertifika" USING btree (uyeno);
 $   DROP INDEX public.fki_sertifika_fk;
       public            postgres    false    211            ?           1259    16513    fki_siparisno_fk    INDEX     O   CREATE INDEX fki_siparisno_fk ON public."SiparisUrun" USING btree (siparisno);
 $   DROP INDEX public.fki_siparisno_fk;
       public            postgres    false    212                       1259    16545    fki_sınavlar_fk    INDEX     K   CREATE INDEX "fki_sınavlar_fk" ON public."Sınavlar" USING btree (uyeno);
 &   DROP INDEX public."fki_sınavlar_fk";
       public            postgres    false    208            ?           1259    16521    fki_urunkod_fk    INDEX     L   CREATE INDEX fki_urunkod_fk ON public."SiparisUrun" USING btree (urunkodu);
 "   DROP INDEX public.fki_urunkod_fk;
       public            postgres    false    212            m           1259    16483    fki_İletisim_fk    INDEX     J   CREATE INDEX "fki_İletisim_fk" ON public."Iletisim" USING btree (uyeno);
 &   DROP INDEX public."fki_İletisim_fk";
       public            postgres    false    203            ?           2606    16558    DilKurs dilkurs_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public."DilKurs"
    ADD CONSTRAINT dilkurs_fk FOREIGN KEY (uyeno) REFERENCES public."Ogrenciler"(uyeno) NOT VALID;
 >   ALTER TABLE ONLY public."DilKurs" DROP CONSTRAINT dilkurs_fk;
       public          postgres    false    206    210    2938            ?           2606    16484    Uyeler dogumyeri_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Uyeler"
    ADD CONSTRAINT dogumyeri_fk FOREIGN KEY (dogumyerino) REFERENCES public."Il"(ilno) NOT VALID;
 ?   ALTER TABLE ONLY public."Uyeler" DROP CONSTRAINT dogumyeri_fk;
       public          postgres    false    200    201    2922            ?           2606    16681    Uyeler email_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Uyeler"
    ADD CONSTRAINT email_fk FOREIGN KEY (emailno) REFERENCES public."Email"(emailno) NOT VALID;
 ;   ALTER TABLE ONLY public."Uyeler" DROP CONSTRAINT email_fk;
       public          postgres    false    2924    200    202            ?           2606    16502    Siparisler faturano_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Siparisler"
    ADD CONSTRAINT faturano_fk FOREIGN KEY (faturano) REFERENCES public."Fatura"(faturano) NOT VALID;
 B   ALTER TABLE ONLY public."Siparisler" DROP CONSTRAINT faturano_fk;
       public          postgres    false    205    2945    209            ?           2606    16496    Siparisler kargofirma_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Siparisler"
    ADD CONSTRAINT kargofirma_fk FOREIGN KEY (kargofirmano) REFERENCES public."Kargo"(firmano) NOT VALID;
 D   ALTER TABLE ONLY public."Siparisler" DROP CONSTRAINT kargofirma_fk;
       public          postgres    false    205    204    2929            ?           2606    24603    Urun katagori_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Urun"
    ADD CONSTRAINT katagori_fk FOREIGN KEY (katagorino) REFERENCES public."Katagori"(katagorino) NOT VALID;
 <   ALTER TABLE ONLY public."Urun" DROP CONSTRAINT katagori_fk;
       public          postgres    false    2960    213    214            ?           2606    16553    Siparisler musteri_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Siparisler"
    ADD CONSTRAINT musteri_fk FOREIGN KEY (musterino) REFERENCES public."Ogrenciler"(uyeno) NOT VALID;
 A   ALTER TABLE ONLY public."Siparisler" DROP CONSTRAINT musteri_fk;
       public          postgres    false    205    2938    206            ?           2606    16575    Ogreticiler ogreticiler_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Ogreticiler"
    ADD CONSTRAINT ogreticiler_fk FOREIGN KEY (uyeno) REFERENCES public."Uyeler"(uyeno) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 F   ALTER TABLE ONLY public."Ogreticiler" DROP CONSTRAINT ogreticiler_fk;
       public          postgres    false    207    2920    200            ?           2606    16570    Sertifika sertifika_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Sertifika"
    ADD CONSTRAINT sertifika_fk FOREIGN KEY (uyeno) REFERENCES public."Ogreticiler"(uyeno) NOT VALID;
 B   ALTER TABLE ONLY public."Sertifika" DROP CONSTRAINT sertifika_fk;
       public          postgres    false    207    2940    211            ?           2606    16508    SiparisUrun siparisno_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public."SiparisUrun"
    ADD CONSTRAINT siparisno_fk FOREIGN KEY (siparisno) REFERENCES public."Siparisler"(siparisno) NOT VALID;
 D   ALTER TABLE ONLY public."SiparisUrun" DROP CONSTRAINT siparisno_fk;
       public          postgres    false    205    2931    212            ?           2606    16565    Sınavlar sınavlar_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Sınavlar"
    ADD CONSTRAINT "sınavlar_fk" FOREIGN KEY (uyeno) REFERENCES public."Ogreticiler"(uyeno) NOT VALID;
 D   ALTER TABLE ONLY public."Sınavlar" DROP CONSTRAINT "sınavlar_fk";
       public          postgres    false    208    207    2940            ?           2606    16516    SiparisUrun urunkod_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public."SiparisUrun"
    ADD CONSTRAINT urunkod_fk FOREIGN KEY (urunkodu) REFERENCES public."Urun"(kod) NOT VALID;
 B   ALTER TABLE ONLY public."SiparisUrun" DROP CONSTRAINT urunkod_fk;
       public          postgres    false    212    213    2957            ?           2606    16548    Ogrenciler uyeler_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Ogrenciler"
    ADD CONSTRAINT uyeler_fk FOREIGN KEY (uyeno) REFERENCES public."Uyeler"(uyeno) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 @   ALTER TABLE ONLY public."Ogrenciler" DROP CONSTRAINT uyeler_fk;
       public          postgres    false    206    2920    200            ?           2606    16478    Iletisim İletisim_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Iletisim"
    ADD CONSTRAINT "İletisim_fk" FOREIGN KEY (uyeno) REFERENCES public."Uyeler"(uyeno) NOT VALID;
 C   ALTER TABLE ONLY public."Iletisim" DROP CONSTRAINT "İletisim_fk";
       public          postgres    false    200    2920    203            +      x?????? ? ?      #   (   x?3?L?-Ju??/?M???K???2???M-B????? A??      *      x?3?4????50?50?????? B?      "   -   x?3??N,*?L,*HLN??2?LJ?L*-*??M-?N??????? ??]      $   /   x?3?4551313?L,N"NC.#N33S ???$?%rq??qqq ?8
      %      x?3?L,J,?2?L.c?ܼt?=... T?      /      x?KϬ???4?J=:?2?ӈ+F??? NH?      '      x?3?4??(????J,K,I-.?????? N?G      (   #   x?3?,(?O/J??I?MLI-*?I-??????? ?]?      ,   !   x?3?L?-J?4?47?50?50?4?????? Ir?      -      x?3?4BS?=... +?      &       x?3?4200?50?50?46?4A?=... ;??      )   $   x?3?,(?O/J??I?MI-.?4??4?????? ???      .   %   x?3??N?J??45?4?2?,.OM,??4 rb???? yu?      !   ,   x?3?t?-J???J??4?4?2???M-?t/	qq??qqq ?n?     