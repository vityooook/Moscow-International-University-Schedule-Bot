PGDMP  !    *                 |            mmu    16.1    16.1 3    A           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            B           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            C           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            D           1262    16398    mmu    DATABASE     e   CREATE DATABASE mmu WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE mmu;
                postgres    false            �            1259    16402    groups    TABLE     �   CREATE TABLE public.groups (
    group_id integer NOT NULL,
    title character varying NOT NULL,
    course character varying NOT NULL
);
    DROP TABLE public.groups;
       public         heap    postgres    false            �            1259    16407    groups_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.groups_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.groups_group_id_seq;
       public          postgres    false    215            E           0    0    groups_group_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.groups_group_id_seq OWNED BY public.groups.group_id;
          public          postgres    false    216            �            1259    16408    quality    TABLE     i   CREATE TABLE public.quality (
    quality_id integer NOT NULL,
    quality character varying NOT NULL
);
    DROP TABLE public.quality;
       public         heap    postgres    false            �            1259    16413    quality_quality_id_seq    SEQUENCE     �   CREATE SEQUENCE public.quality_quality_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.quality_quality_id_seq;
       public          postgres    false    217            F           0    0    quality_quality_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.quality_quality_id_seq OWNED BY public.quality.quality_id;
          public          postgres    false    218            �            1259    16414    rating    TABLE     �   CREATE TABLE public.rating (
    rating_id integer NOT NULL,
    teacher_id integer NOT NULL,
    user_id bigint NOT NULL,
    quality_id integer NOT NULL,
    mark integer NOT NULL
);
    DROP TABLE public.rating;
       public         heap    postgres    false            �            1259    16417    rating_rating_id_seq    SEQUENCE     �   CREATE SEQUENCE public.rating_rating_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.rating_rating_id_seq;
       public          postgres    false    219            G           0    0    rating_rating_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.rating_rating_id_seq OWNED BY public.rating.rating_id;
          public          postgres    false    220            �            1259    16418    squads    TABLE     b   CREATE TABLE public.squads (
    chat_id bigint NOT NULL,
    title character varying NOT NULL
);
    DROP TABLE public.squads;
       public         heap    postgres    false            �            1259    16423    squads_chat_id_seq    SEQUENCE     �   CREATE SEQUENCE public.squads_chat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.squads_chat_id_seq;
       public          postgres    false    221            H           0    0    squads_chat_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.squads_chat_id_seq OWNED BY public.squads.chat_id;
          public          postgres    false    222            �            1259    16424    teachers    TABLE     �   CREATE TABLE public.teachers (
    teacher_id integer NOT NULL,
    name character varying NOT NULL,
    subject character varying NOT NULL
);
    DROP TABLE public.teachers;
       public         heap    postgres    false            �            1259    16429    teachers_teacher_id_seq    SEQUENCE     �   CREATE SEQUENCE public.teachers_teacher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.teachers_teacher_id_seq;
       public          postgres    false    223            I           0    0    teachers_teacher_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.teachers_teacher_id_seq OWNED BY public.teachers.teacher_id;
          public          postgres    false    224            �            1259    16430    users    TABLE     �   CREATE TABLE public.users (
    user_id bigint NOT NULL,
    group_id integer NOT NULL,
    first_name character varying,
    last_name character varying,
    username character varying NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16435    users_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public          postgres    false    225            J           0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;
          public          postgres    false    226            �           2604    16790    groups group_id    DEFAULT     r   ALTER TABLE ONLY public.groups ALTER COLUMN group_id SET DEFAULT nextval('public.groups_group_id_seq'::regclass);
 >   ALTER TABLE public.groups ALTER COLUMN group_id DROP DEFAULT;
       public          postgres    false    216    215            �           2604    16791    quality quality_id    DEFAULT     x   ALTER TABLE ONLY public.quality ALTER COLUMN quality_id SET DEFAULT nextval('public.quality_quality_id_seq'::regclass);
 A   ALTER TABLE public.quality ALTER COLUMN quality_id DROP DEFAULT;
       public          postgres    false    218    217            �           2604    16792    rating rating_id    DEFAULT     t   ALTER TABLE ONLY public.rating ALTER COLUMN rating_id SET DEFAULT nextval('public.rating_rating_id_seq'::regclass);
 ?   ALTER TABLE public.rating ALTER COLUMN rating_id DROP DEFAULT;
       public          postgres    false    220    219            �           2604    16810    squads chat_id    DEFAULT     p   ALTER TABLE ONLY public.squads ALTER COLUMN chat_id SET DEFAULT nextval('public.squads_chat_id_seq'::regclass);
 =   ALTER TABLE public.squads ALTER COLUMN chat_id DROP DEFAULT;
       public          postgres    false    222    221            �           2604    16794    teachers teacher_id    DEFAULT     z   ALTER TABLE ONLY public.teachers ALTER COLUMN teacher_id SET DEFAULT nextval('public.teachers_teacher_id_seq'::regclass);
 B   ALTER TABLE public.teachers ALTER COLUMN teacher_id DROP DEFAULT;
       public          postgres    false    224    223            �           2604    16796    users user_id    DEFAULT     n   ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    226    225            3          0    16402    groups 
   TABLE DATA           9   COPY public.groups (group_id, title, course) FROM stdin;
    public          postgres    false    215   u7       5          0    16408    quality 
   TABLE DATA           6   COPY public.quality (quality_id, quality) FROM stdin;
    public          postgres    false    217   y>       7          0    16414    rating 
   TABLE DATA           R   COPY public.rating (rating_id, teacher_id, user_id, quality_id, mark) FROM stdin;
    public          postgres    false    219   
?       9          0    16418    squads 
   TABLE DATA           0   COPY public.squads (chat_id, title) FROM stdin;
    public          postgres    false    221   '?       ;          0    16424    teachers 
   TABLE DATA           =   COPY public.teachers (teacher_id, name, subject) FROM stdin;
    public          postgres    false    223   D?       =          0    16430    users 
   TABLE DATA           S   COPY public.users (user_id, group_id, first_name, last_name, username) FROM stdin;
    public          postgres    false    225   `Y       K           0    0    groups_group_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.groups_group_id_seq', 1, false);
          public          postgres    false    216            L           0    0    quality_quality_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.quality_quality_id_seq', 1, false);
          public          postgres    false    218            M           0    0    rating_rating_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.rating_rating_id_seq', 35, true);
          public          postgres    false    220            N           0    0    squads_chat_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.squads_chat_id_seq', 1, false);
          public          postgres    false    222            O           0    0    teachers_teacher_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.teachers_teacher_id_seq', 1, false);
          public          postgres    false    224            P           0    0    users_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.users_user_id_seq', 1, false);
          public          postgres    false    226            �           2606    16445    groups groups_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (group_id);
 <   ALTER TABLE ONLY public.groups DROP CONSTRAINT groups_pkey;
       public            postgres    false    215            �           2606    16447    quality quality_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.quality
    ADD CONSTRAINT quality_pkey PRIMARY KEY (quality_id);
 >   ALTER TABLE ONLY public.quality DROP CONSTRAINT quality_pkey;
       public            postgres    false    217            �           2606    16449    quality quality_quality_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.quality
    ADD CONSTRAINT quality_quality_key UNIQUE (quality);
 E   ALTER TABLE ONLY public.quality DROP CONSTRAINT quality_quality_key;
       public            postgres    false    217            �           2606    16451    rating rating_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.rating
    ADD CONSTRAINT rating_pkey PRIMARY KEY (rating_id);
 <   ALTER TABLE ONLY public.rating DROP CONSTRAINT rating_pkey;
       public            postgres    false    219            �           2606    16812    squads squads_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.squads
    ADD CONSTRAINT squads_pkey PRIMARY KEY (chat_id);
 <   ALTER TABLE ONLY public.squads DROP CONSTRAINT squads_pkey;
       public            postgres    false    221            �           2606    16455    teachers teachers_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT teachers_pkey PRIMARY KEY (teacher_id);
 @   ALTER TABLE ONLY public.teachers DROP CONSTRAINT teachers_pkey;
       public            postgres    false    223            �           2606    16798    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    225            �           2606    16458    rating rating_quality_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rating
    ADD CONSTRAINT rating_quality_id_fkey FOREIGN KEY (quality_id) REFERENCES public.quality(quality_id);
 G   ALTER TABLE ONLY public.rating DROP CONSTRAINT rating_quality_id_fkey;
       public          postgres    false    3477    217    219            �           2606    16463    rating rating_teacher_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rating
    ADD CONSTRAINT rating_teacher_id_fkey FOREIGN KEY (teacher_id) REFERENCES public.teachers(teacher_id);
 G   ALTER TABLE ONLY public.rating DROP CONSTRAINT rating_teacher_id_fkey;
       public          postgres    false    223    219    3485            �           2606    16826    rating rating_user_id_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY public.rating
    ADD CONSTRAINT rating_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 D   ALTER TABLE ONLY public.rating DROP CONSTRAINT rating_user_id_fkey;
       public          postgres    false    219    225    3487            �           2606    16473    users users_group_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.groups(group_id);
 C   ALTER TABLE ONLY public.users DROP CONSTRAINT users_group_id_fkey;
       public          postgres    false    225    215    3475            3   �  x��\Kn7]K��eDY�_�%G�Yd�a��c��Pbq�Q���Q�nV�`D���rfoɪb�+65���U\���A<�_6�6����x�xs��<��nƛ�W���/�_W���a�!=�K�?���x�����ғ��W���!����yoV�¹Y��J���~�=J�ܔ7	�����-��`��f�6����!���<^��2K'�o>�G���G��O�����#M��H����-�ݚ�א�h��2����wz����	����l5�C�s�;�_"r���
 ���� �@t�^g�����d4��̸���Tyވ20�E1���jM(�Ô�nKd�XbR(}O��"�0��T��Ifq/⹬�b����d��qO�Erk���9wDKD$�����nt�')��e4^g��^4<��w�e��� =.�l�:ۉX��G2��v��thN��TЈ���hy��4^���wG?(�{P,|�vˁ)�X����is`!f�]��Œ��7��y6w�!����V��\��l$l���)���a�m�/�(Yֽ2����ĘS���x�E�Z��x��zI���L{�Z�L��~�Y��a�u��T;H�jU``�l55T���h��aHN_�L��X��.�(F���@�\�P�%�0Y���+=��a5�a�ľ˿,�����cEKe�2�6���$@��`���o
N��4O�����P���[�ّU�0�K֞V"^K�5�T��Z�9������-�sut�ʶq��Q��%A]VA�]��]���1��htV�'>$:���2��謘O�kt�#CP�2�K)z�X��8���)ۤ�J
��r�� �,��(?�\N���N�Ȣ�4V)RX��m&F"�����ZNdڂ�ħ�%hX�e��2��z!̸I>K��ϋƝ�<Y��>@�Òl�d��07.ڻ�ƛl����f���;64ĞBhEv$+֦%�U��c�Hю(��1��Kؚ��V݈@�Qt�� �&振`�t ��`�Y0,�כ򭣺��Luo�����ln�=��C�zF�ML��e��K+�g&[��Ów�e$V�2�>��6���$؁�k�^�r����C�7^X������˺[�I�X�-)�xͲR�ʄ�Ҷ�f��{-1=S�D��ha��D�v�_�DT/�"p#�������Tu�1gX��B���۶� ���1�|���)U�2�Y�	�U=�7;NB(m�nP)v����_�L�[�
Lu	���,�a05o�K�aT�>�Ƴ�:"���b�"wƋZ��xQK[/d'�ڪ��;����:K|��_��ϑ������Zvr&lPd;��b�* ���y(��.�mI0���h��ţ�++����Р2��#�4��;�&
���|�Qǩ�E��^:�/:.�!�:��E��t�N�ivh�)J*v+q�c�h���J֝a���ܘ_�x��e=�� ����e0�����?�~��v����?E�Yl=I;�S�u������>�,�B�C38(F�K��1������1+ا�E��/&Tt>\֎e����";L��(ˈ��J��c�Dx b�$���t-�.���e^c���.hn����jlwC)�r����`�2��+E�hz�jQ�h�U�)�~�lP��A9�*�0���_��+,��K�������s�Q=k6������9>�C��V�"k���t��X3�r�����������|B      5   �   x�M�1�@E�Spo�aP;C��,ll�
�3���_-���{�f�����~�'�2��&�&p�����(���ƶ���DG��7J830Ix.*�B���ۑ(m�?Z�Z���j������ -[p)      7      x������ � �      9      x������ � �      ;      x��]�r�H�}���3�	��/�c�y�!�%Yv�a�mK���/�����?��'�
U@����<�["�Z�r=�Yjoe�� �;�([�Oi�>H��u~�-�׷�4����%=�OЇ[�)��fW�R�-��솾7�[|<Ȗ�(�ʾ����f*o�iv�ɿ��}4Ϧ:�4������3���_���w�ɱY'}5�f����Ę'�FMm�`�sz�����ӳ��&^���4T�o�4��k��s	x/��1�n�ވ:[����[`G �{� K��|�V76{����l��&;��L�=���P����}���u�7�4��G������_;�7��	�d���������?���%ͼl��.���B��Q#i�� M5�9�q\�8��hB���gD�o����
�&��@������9��t�3Ki��~d��]��I���G�1ˡ�:�3�D��cX�L�^Mz��*����8�	�M��%���/�x��9��fS,��m�����ʾ@cyzD'��O�D� mn��}ž��cq���ȕ��+ٱ�"b�=��o����1��D��i���7���vI�-pD*Gِ���x��#b�S��Қ�8���v����<�h�)f{zm��K�V���^��;���S�Ke�)Dz�ʝ{�aZ-�j��N�ft��V��o�翈j��%$*�:����#�)Dt'�����N���L5��F#��RC�;+kx�M��q##�	a�����,�7<"C�C[�2/p4�iD�y!6f>��3=�ĖG��Li���|�_dE$*��݆�`O�f�uZ��D�.�7�LѸ/ �P�Ċ�̌D����	�0�X����Mht�1�9��څ=����Y'/l,�L��L��%w��FF50���0a_��Ȯ���5������V(�3�钪�Oy���z�mP��q&�xI�����	mI*��Tl�7�X��/`��UY�i�m��#�E���QC��1U����m:n�^q\�����;&#{h3��l������n�n	=�gQW�%�3H�su�	:e�^Į1ō��o��cb��8d�,Fk��=�6�`�1	���w0{FsVt�,"fZ�p����4�Ј/�p#:�B|:�^��}�=U5��!�B�+� �c�*b�¥�BO^A.4Z�)�]�M��b!D�|�z�oIL�z3y˜�[� "ݩr�ғ��K\����������	s%q#�P�}A���-�
6[4��.<�9/�;·�P����u��(:����aJg�Q�������U���3�^'�<�!��N����鰯ώ�C���3�j�4����W|��%�Lҡ�ey<���헪��8�k驺�4 ��B-��8��(O�4�W͊Gndh��XLe���^����f<�Y��DՏ�����ז ``�V��;X��|��F2 �����Utl���Eg���G��l_��͙o��B���AR�/xQ�`I���u�WW;45^���cշ���c[\�]5��@xt!��_'���X��2���DLj#aљ7�]P���0&�Yg���t����VI���ǒ�\��^8���sl0~ <���K@(����}���֨Z�\�"4�)&�RU��>�)i��م�ۣb�s��$��d�g��%gc�:CP;��#���T5��{s���xy��'`
�.�A�XM����}T��fN춟	�Q��cRv�� @����G7��8}�:�W�b�3�Lt6�h�ٟ���
��2_��_V־lVzڈ���Pc���MA�/�JR`N�UZ-�&�[�>���1�����y���h���PnuYș[�m�<���~���%s̅���"�cu�;���]�,%����*M���)�
��P��.M��ٕ�i޹�bH�o7 z	v��D�Աb�O}�戶�kh�k A�pW8���>�f)!Su)���Be_��)��Y��]����^z�����2W}-|�P�EmČ�r�K��_�F��*R���IL�I.:�J=j�	�Y��m��芇?���*uX[�t��� =]��D?��wA����S���J����,㈗������MѤ�*q%�v�CW�Hl��"����<��	Flw���~(��H�!���3��20	"��V�?b��ۉ�
��P��ūd ��~[](�A@ Y=�1�C���BI��	L�lSC�G`r?%�8$ӡJ ��C�:KyH�ƽ-�UB]�����c����	��J"A�eIN����e�*��{�Jb�͌��~n	�Zu�ZvT��(e�nk�-Q�9��A��Х�!�5�X������B(y��rܜd����d�8����U052�?�z���P��g�!,�(ϱ#�sV;�z ppUy?]�7����z�^���e�?:�Q�ߒ�t}�U��G�\+.̤K\�
Z�z��.B�8/J�;�Q�\��{	�8��@P�ZH�=l��ѝA�}!v"�"4������:08@]�:j)�s��[�����^ɰ���� ��90�IM��;	��P+n�Jc�+Y�޵!�(�a�+qQ8,p&'��Z�OP��E)n�0"�췖um� C/��K��=u��,k�0���D�2��q�nVɸ����@������^Ǵ?,H���aqB�3|���J:�<�%&"�Ʝ�!��/�ٴX�r�uܪD�e$� Tt�'�����ks|z�\Q��*$U8�$�����A5'�u���^�\c�h�5N}׸q^�B��2����TRЁ����o3�������)U�̅��"+]���%J}�yG�7�$�+�<T���h��X߄kʕ+|;a�����֧��|���A�fxh�:v���Z;G�Q6���%ЉCZq�D2n#�L�?����uJ��"4+����t9�:�d����k\ ����W�=��6@��]r~�_�R���}�_�ƱQ�O�9�����#�E]�-qj�P0�����O�JOX еu�]��,�[]{4C���.�p���2�����$�)V���$5�Hp�,c��5�zJA�
��S�'P����2;a��>g$7��aդ���8�j�Z�lӋ �>,�c��^l�#�LmB��d�e5������;�Τ0��   �*pctzy��p����Z����h� /`ӕ�0��u�����o�����Q�����"����ƈ���6l٤��̏l�����4)��.�<��4�Ԯ��]-��_�ز�����Gu!H�|}/�e�qWغ��6��������ia]8S���O�@�u�sz�����.�X	{S�nq�C��3(s�Q��B�����3�Θ}�Fm$V:>��Ŝ^��.*�|���"r�n潄�L`����2���������{��g��}��;"1�;E�����\�.7o���u���{Hϕ�nչ��ۼ��P2Вw/�G��Xr�WI߸�+��+�_d���JԒ:�ު}/���摪XT �M�"�h~��*`�=�T�x�fF�M:Z9�K�.Ŝ��)岉Z3�C�Ͳ��eX�W���Lu�G��5��cE���}K��}IOM�eYBE7��h�1�l��v�x�V_��-P�fS�����%F9BQ�a��j����q��7̱g#��B���R�)L�m��.�~v�-�s���A�Z[j��˴��su�4޴�''(I�Ī=x�G�bT�\V.*�x�]��1f_�>F���M��Vz{Di���Սϕ}
86��Y��GKio	g�=���G�k�%�JxEI�W �:���R65.O���^����t둮��i]d��v��XGk���T�64w/��ǂZ���/����TA�𧻓y��l�ii�&xuny��Ͽ�J7��jy�a�����fS�S���!��7
=b�ˤ,������������[ۥ�dV���ī����S�r�blHIw�b9���gO/J⭡�ЉxH����>��+���]k1c��-�c]a�$c_���q��,���¬��]���8#3�~�� 
  �M����|Z� H�KВ`�Ըa�C_^q��툕������0��M�{.X�x�E��>v��5����&4���=/���hԙ#�N���'m���Z���0�y��Q����4!Z�L5�5��pR^�Fs|�̔C�����Tb�]j��(�>?����n�5D��"X~H�=8�`�Fd"(z��f}���o7�"�Vw���q�`�p��6�f�my�}�C��S#�Ђ�@�`7ݲ�ԭ7��k��Rg�ҨpGD�Ć�и+In8s;�S�`��q��mk�٥����d�mm:�(���i�[Q@�_�(Ӛ���+,����yN�Yv��z>U����T��N���VY���{����"*Q�,��@�7+��H�'�]��#�	T��(;�N)�XxK�d�VL���(�+�6<&J��n��"�����r�]xΘZ���W������k��������pߙXn6᜝^H�ˤQ�z����
Z��:�@d}�^*k�e��6�j�12����[���y20xQ�[U�q�����u���˘GMil���c�i�������v;���/AU1��e����Oc�w���k�+���疱�����"JE�:_٬s~��51���z6*��(�w+�q��ԂJ�]�g����������%�>
�C4�_��F��4�Qc`'�E��h6�������{���~�R�`{ǌ��U�I�kFB��	:�@Hf��|��A����fR0&�}�a#�4�e����@�J�,J�-��S�{�4��M#����c'-5|=gfH63�xNȝDɖv��pA���y��iKE�7�Z�<�^n 94�6 ���+�6�&8	C�P>�.`���?_1�p��i��xW��J �ƧH8�r�tv�'/��@��.��$��zD{W_%*��5Z_��R�]�Ճ[B�z�LˍlG��J����K=:N�hs�{��O�C�F-���V���hAT��J��YY����C��a
������-{=S �Q�2�k�S!E�s����F��,}������I�_3��tlG��+��!i�Dc��_��V.n*��;Rwۆ�A��iyU$;I"{� z��x9X��VB U����v�ôr�#��\�Y�Ђ��6	�p���L�G��O�&��(>��2OP�D�9K5���u�Y8���Վ���ӗA{/��φ��!y�[p���B^8kIi~��v۱ds���Ïn�7�o�4i�zr��lt�v�|���~�qu��K����i�R��F���by�a��C�f�feQ1m���\[�����M]z��
��Ql����9r;����B��v�1�[IZ���A\{k�ޙ����$V�{.��/3�0�/wi�C�չ���0IE�_u`J�K��	��}���N�
k��W�\E/d��z{�	Tl�)�0&�.��2S�%��h$��PhA1�@�����@�\w ��~�ѻI�����UU�U��gY��y��!Ҩ^�"%���jMa.�4߭Hc������1�R���h�]c����Me},k����?��%i��9���0b�C�e*l��d�ʥ'+��2TS��������:RY^��	'����o�ۥnk���w��������p�ę��N�ᛠ+;���$�02���[��לuBw���$���i8�6�z���3ۭ�@�Vj�c�M\��� ����5��//�[��J���7�� E0��|���nP��'Tx-N�ct����b�(!uRΛD��1U���n�.�*��?Ys{�)Oa�ka�&��Ym.�'f�΅�!�.�q	徟�z�����;��·��&��	+2�2�Nv\��/�Q�B�\dҡ�v!��	�I>HTKDE�St���] �^��,�s'�׼Y�� X�=łv����=\�4D�햗��'�i�`�RNL�ߵ˨Ź�Jj�z�W@�������e�͞�������&���s�3�"��NƆ U�>�i1z�Z`����cn����L7ZD�{�6P��;��Z�1��Φ[�T.-[�=����&7��c�Z3�rH�]}�zX%[�I���ף���եZ��Us+�?}�I��wq���F�I���b;��g}�߬�5��?_���ц�Kj�n7��Z-!�*��%mkob}l����������M�+�m�m�ζ��6Ҋ�[�sT���\�`���+9���&9��|5d�z�����ijz�-�j?
�ъZ9���B�-iv}������}�ޜ��Q�#W�
R-뫿i}���A���N_mR�K�;�Z��5�sc�\�k�(��f�x����ťQz� Ϥi���=��ét�U"���zu�Ҡ\Z�I�e���Uz&"w��u��ߧP��uwg����e�~]�j��.�8��Y �w����غ���b�� Z�ӻlOP;�[��G�C��%��;Q0��������3ؽ�t�F5W�Y�G!�M���a�O����?���g�c�      =      x������ � �     