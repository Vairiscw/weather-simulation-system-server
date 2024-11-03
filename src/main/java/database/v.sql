PGDMP  1    '            
    |            WSS    16.1    16.1 <    )           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            *           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            +           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ,           1262    16513    WSS    DATABASE     y   CREATE DATABASE "WSS" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "WSS";
                postgres    false            �            1259    17021    devices    TABLE     l   CREATE TABLE public.devices (
    id bigint NOT NULL,
    name character varying(255),
    state integer
);
    DROP TABLE public.devices;
       public         heap    postgres    false            �            1259    17020    devices_id_seq    SEQUENCE     �   CREATE SEQUENCE public.devices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.devices_id_seq;
       public          postgres    false    228            -           0    0    devices_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.devices_id_seq OWNED BY public.devices.id;
          public          postgres    false    227            �            1259    16577    scenes    TABLE     _   CREATE TABLE public.scenes (
    id bigint NOT NULL,
    designation character varying(255)
);
    DROP TABLE public.scenes;
       public         heap    postgres    false            �            1259    16576    scenes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.scenes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.scenes_id_seq;
       public          postgres    false    224            .           0    0    scenes_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.scenes_id_seq OWNED BY public.scenes.id;
          public          postgres    false    223            �            1259    16987 	   templates    TABLE     �   CREATE TABLE public.templates (
    id bigint NOT NULL,
    author character varying(255),
    name character varying(255),
    scene bigint,
    "time" bigint,
    video bigint,
    voice bigint,
    weather bigint
);
    DROP TABLE public.templates;
       public         heap    postgres    false            �            1259    16986    templates_id_seq    SEQUENCE     y   CREATE SEQUENCE public.templates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.templates_id_seq;
       public          postgres    false    226            /           0    0    templates_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.templates_id_seq OWNED BY public.templates.id;
          public          postgres    false    225            �            1259    17041    templates_seq    SEQUENCE     w   CREATE SEQUENCE public.templates_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.templates_seq;
       public          postgres    false            �            1259    16524    times    TABLE     ^   CREATE TABLE public.times (
    id bigint NOT NULL,
    designation character varying(255)
);
    DROP TABLE public.times;
       public         heap    postgres    false            �            1259    16523    times_id_seq    SEQUENCE     �   CREATE SEQUENCE public.times_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.times_id_seq;
       public          postgres    false    218            0           0    0    times_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.times_id_seq OWNED BY public.times.id;
          public          postgres    false    217            �            1259    16542    videos    TABLE     _   CREATE TABLE public.videos (
    id bigint NOT NULL,
    designation character varying(255)
);
    DROP TABLE public.videos;
       public         heap    postgres    false            �            1259    16541    videos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.videos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.videos_id_seq;
       public          postgres    false    222            1           0    0    videos_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.videos_id_seq OWNED BY public.videos.id;
          public          postgres    false    221            �            1259    16533    voices    TABLE     _   CREATE TABLE public.voices (
    id bigint NOT NULL,
    designation character varying(255)
);
    DROP TABLE public.voices;
       public         heap    postgres    false            �            1259    16532    voices_id_seq    SEQUENCE     �   CREATE SEQUENCE public.voices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.voices_id_seq;
       public          postgres    false    220            2           0    0    voices_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.voices_id_seq OWNED BY public.voices.id;
          public          postgres    false    219            �            1259    16515    weathers    TABLE     a   CREATE TABLE public.weathers (
    id bigint NOT NULL,
    designation character varying(255)
);
    DROP TABLE public.weathers;
       public         heap    postgres    false            �            1259    16514    wheathers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wheathers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.wheathers_id_seq;
       public          postgres    false    216            3           0    0    wheathers_id_seq    SEQUENCE OWNED BY     D   ALTER SEQUENCE public.wheathers_id_seq OWNED BY public.weathers.id;
          public          postgres    false    215            u           2604    17027 
   devices id    DEFAULT     h   ALTER TABLE ONLY public.devices ALTER COLUMN id SET DEFAULT nextval('public.devices_id_seq'::regclass);
 9   ALTER TABLE public.devices ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228            s           2604    16861 	   scenes id    DEFAULT     f   ALTER TABLE ONLY public.scenes ALTER COLUMN id SET DEFAULT nextval('public.scenes_id_seq'::regclass);
 8   ALTER TABLE public.scenes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            t           2604    16990    templates id    DEFAULT     l   ALTER TABLE ONLY public.templates ALTER COLUMN id SET DEFAULT nextval('public.templates_id_seq'::regclass);
 ;   ALTER TABLE public.templates ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            p           2604    16888    times id    DEFAULT     d   ALTER TABLE ONLY public.times ALTER COLUMN id SET DEFAULT nextval('public.times_id_seq'::regclass);
 7   ALTER TABLE public.times ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            r           2604    16906 	   videos id    DEFAULT     f   ALTER TABLE ONLY public.videos ALTER COLUMN id SET DEFAULT nextval('public.videos_id_seq'::regclass);
 8   ALTER TABLE public.videos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            q           2604    16924 	   voices id    DEFAULT     f   ALTER TABLE ONLY public.voices ALTER COLUMN id SET DEFAULT nextval('public.voices_id_seq'::regclass);
 8   ALTER TABLE public.voices ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            o           2604    16942    weathers id    DEFAULT     k   ALTER TABLE ONLY public.weathers ALTER COLUMN id SET DEFAULT nextval('public.wheathers_id_seq'::regclass);
 :   ALTER TABLE public.weathers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            %          0    17021    devices 
   TABLE DATA           2   COPY public.devices (id, name, state) FROM stdin;
    public          postgres    false    228   �>       !          0    16577    scenes 
   TABLE DATA           1   COPY public.scenes (id, designation) FROM stdin;
    public          postgres    false    224   �>       #          0    16987 	   templates 
   TABLE DATA           [   COPY public.templates (id, author, name, scene, "time", video, voice, weather) FROM stdin;
    public          postgres    false    226   ?                 0    16524    times 
   TABLE DATA           0   COPY public.times (id, designation) FROM stdin;
    public          postgres    false    218   q?                 0    16542    videos 
   TABLE DATA           1   COPY public.videos (id, designation) FROM stdin;
    public          postgres    false    222   �?                 0    16533    voices 
   TABLE DATA           1   COPY public.voices (id, designation) FROM stdin;
    public          postgres    false    220   �?                 0    16515    weathers 
   TABLE DATA           3   COPY public.weathers (id, designation) FROM stdin;
    public          postgres    false    216   @       4           0    0    devices_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.devices_id_seq', 1, false);
          public          postgres    false    227            5           0    0    scenes_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.scenes_id_seq', 1, false);
          public          postgres    false    223            6           0    0    templates_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.templates_id_seq', 4, true);
          public          postgres    false    225            7           0    0    templates_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.templates_seq', 1, false);
          public          postgres    false    229            8           0    0    times_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.times_id_seq', 1, false);
          public          postgres    false    217            9           0    0    videos_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.videos_id_seq', 1, false);
          public          postgres    false    221            :           0    0    voices_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.voices_id_seq', 1, false);
          public          postgres    false    219            ;           0    0    wheathers_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.wheathers_id_seq', 1, false);
          public          postgres    false    215            �           2606    17029    devices devices_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.devices
    ADD CONSTRAINT devices_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.devices DROP CONSTRAINT devices_pkey;
       public            postgres    false    228                       2606    16863    scenes scenes_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.scenes
    ADD CONSTRAINT scenes_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.scenes DROP CONSTRAINT scenes_pkey;
       public            postgres    false    224            �           2606    16994    templates templates_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.templates
    ADD CONSTRAINT templates_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.templates DROP CONSTRAINT templates_pkey;
       public            postgres    false    226            y           2606    16890    times times_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.times
    ADD CONSTRAINT times_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.times DROP CONSTRAINT times_pkey;
       public            postgres    false    218            }           2606    16908    videos videos_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.videos
    ADD CONSTRAINT videos_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.videos DROP CONSTRAINT videos_pkey;
       public            postgres    false    222            {           2606    16926    voices voices_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.voices
    ADD CONSTRAINT voices_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.voices DROP CONSTRAINT voices_pkey;
       public            postgres    false    220            w           2606    16944    weathers wheathers_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.weathers
    ADD CONSTRAINT wheathers_pkey PRIMARY KEY (id);
 A   ALTER TABLE ONLY public.weathers DROP CONSTRAINT wheathers_pkey;
       public            postgres    false    216            �           2606    17010 %   templates fk8dl5u2wreyumy6dkyisf9qlxq    FK CONSTRAINT     �   ALTER TABLE ONLY public.templates
    ADD CONSTRAINT fk8dl5u2wreyumy6dkyisf9qlxq FOREIGN KEY (voice) REFERENCES public.voices(id);
 O   ALTER TABLE ONLY public.templates DROP CONSTRAINT fk8dl5u2wreyumy6dkyisf9qlxq;
       public          postgres    false    226    220    4731            �           2606    17005 %   templates fk9gw1hrm6cogvcydtdcccurd28    FK CONSTRAINT     �   ALTER TABLE ONLY public.templates
    ADD CONSTRAINT fk9gw1hrm6cogvcydtdcccurd28 FOREIGN KEY (video) REFERENCES public.videos(id);
 O   ALTER TABLE ONLY public.templates DROP CONSTRAINT fk9gw1hrm6cogvcydtdcccurd28;
       public          postgres    false    222    4733    226            �           2606    17015 %   templates fk9t3juw85phb7nsr7ktxgvbdbd    FK CONSTRAINT     �   ALTER TABLE ONLY public.templates
    ADD CONSTRAINT fk9t3juw85phb7nsr7ktxgvbdbd FOREIGN KEY (weather) REFERENCES public.weathers(id);
 O   ALTER TABLE ONLY public.templates DROP CONSTRAINT fk9t3juw85phb7nsr7ktxgvbdbd;
       public          postgres    false    226    4727    216            �           2606    16995 %   templates fki6sr7ymjl8e5pnb78vavuuabc    FK CONSTRAINT     �   ALTER TABLE ONLY public.templates
    ADD CONSTRAINT fki6sr7ymjl8e5pnb78vavuuabc FOREIGN KEY (scene) REFERENCES public.scenes(id);
 O   ALTER TABLE ONLY public.templates DROP CONSTRAINT fki6sr7ymjl8e5pnb78vavuuabc;
       public          postgres    false    226    4735    224            �           2606    17000 %   templates fkmua4uo158yj7ck3njfl88txv2    FK CONSTRAINT     �   ALTER TABLE ONLY public.templates
    ADD CONSTRAINT fkmua4uo158yj7ck3njfl88txv2 FOREIGN KEY ("time") REFERENCES public.times(id);
 O   ALTER TABLE ONLY public.templates DROP CONSTRAINT fkmua4uo158yj7ck3njfl88txv2;
       public          postgres    false    226    4729    218            %   7   x�3��(��L�L�L-�4�2�L+J-�H���L8�Js���i�y@�=... �2g      !      x�3�,.��K����� �      #   J   x�3�,I-.�L�4�4b �2�,N,�H��M��3RI�-�I,I�H�r&��g�����0�0!�"F��� �h:            x�3�LI��2���L�(����� 1��            x�3���/�+I������� *�X         F   x�; ��1	Сверчки
2	Вода
3	Птицы
4	Камин
\.


� n         6   x�3�0�¾�.l���e�yaޅ�v_�p������9/���f��qqq {a*     