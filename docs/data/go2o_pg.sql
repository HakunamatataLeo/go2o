PGDMP                 
        w            qkto    11.2    12.0 4               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    567090    qkto    DATABASE     t   CREATE DATABASE qkto WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';
    DROP DATABASE qkto;
                postgres    false            �            1259    567203    user    TABLE     J  CREATE TABLE public."user" (
    id integer NOT NULL,
    ref_id integer NOT NULL,
    real_name character varying(20) NOT NULL,
    user_phone character varying(11) NOT NULL,
    user_im character varying(40) NOT NULL,
    user_flag integer NOT NULL,
    user_state integer NOT NULL,
    user_priority numeric(2,2) NOT NULL,
    inviter_uid integer NOT NULL,
    integral integer NOT NULL,
    bonus bigint NOT NULL,
    total_invite_bonus bigint NOT NULL,
    total_income integer NOT NULL,
    today_bonus bigint NOT NULL,
    total_assets integer NOT NULL,
    total_amount integer NOT NULL,
    create_time bigint NOT NULL,
    update_date bigint NOT NULL,
    update_time bigint NOT NULL,
    user_code character varying(8) DEFAULT ' '::character varying NOT NULL,
    block_coin numeric(10,2) DEFAULT 0 NOT NULL,
    team_count integer DEFAULT 0 NOT NULL,
    team_total_count integer DEFAULT 0 NOT NULL,
    team_total_amount bigint DEFAULT 0 NOT NULL,
    team_total_bonus bigint DEFAULT 0 NOT NULL,
    inviter_d2 integer DEFAULT 0 NOT NULL,
    inviter_d3 integer DEFAULT 0 NOT NULL,
    level integer DEFAULT 0 NOT NULL,
    level_name character varying(20) DEFAULT ' '::character varying NOT NULL,
    level_signal character varying(20) DEFAULT ' '::character varying NOT NULL,
    team_bonus bigint DEFAULT 0 NOT NULL,
    coin numeric(10,2) DEFAULT 0 NOT NULL,
    lock_times integer DEFAULT 0 NOT NULL,
    unlock_time integer DEFAULT 0 NOT NULL,
    hit_rate numeric(10,4) DEFAULT 0 NOT NULL,
    team_valid_count integer DEFAULT 0 NOT NULL,
    emergency_contact character varying(11) DEFAULT ''::character varying NOT NULL,
    week_income integer DEFAULT 0 NOT NULL,
    month_income integer DEFAULT 0 NOT NULL,
    yes_income integer DEFAULT 0 NOT NULL,
    shop_integral integer DEFAULT 0 NOT NULL,
    bit_income integer DEFAULT 0 NOT NULL
);
    DROP TABLE public."user";
       public            postgres    false                       0    0    TABLE "user"    COMMENT     ,   COMMENT ON TABLE public."user" IS '用户';
          public          postgres    false    228                       0    0    COLUMN "user".id    COMMENT     0   COMMENT ON COLUMN public."user".id IS '编号';
          public          postgres    false    228                       0    0    COLUMN "user".ref_id    COMMENT     C   COMMENT ON COLUMN public."user".ref_id IS '引用的用户编号';
          public          postgres    false    228                       0    0    COLUMN "user".real_name    COMMENT     =   COMMENT ON COLUMN public."user".real_name IS '真实姓名';
          public          postgres    false    228                       0    0    COLUMN "user".user_phone    COMMENT     >   COMMENT ON COLUMN public."user".user_phone IS '用户手机';
          public          postgres    false    228                       0    0    COLUMN "user".user_im    COMMENT     A   COMMENT ON COLUMN public."user".user_im IS '用户即时通讯';
          public          postgres    false    228                       0    0    COLUMN "user".user_flag    COMMENT     =   COMMENT ON COLUMN public."user".user_flag IS '用户标志';
          public          postgres    false    228                        0    0    COLUMN "user".user_state    COMMENT     >   COMMENT ON COLUMN public."user".user_state IS '用户状态';
          public          postgres    false    228            !           0    0    COLUMN "user".user_priority    COMMENT     A   COMMENT ON COLUMN public."user".user_priority IS '用户权重';
          public          postgres    false    228            "           0    0    COLUMN "user".inviter_uid    COMMENT     B   COMMENT ON COLUMN public."user".inviter_uid IS '邀请人编号';
          public          postgres    false    228            #           0    0    COLUMN "user".integral    COMMENT     C   COMMENT ON COLUMN public."user".integral IS '积分,用于预约';
          public          postgres    false    228            $           0    0    COLUMN "user".bonus    COMMENT     F   COMMENT ON COLUMN public."user".bonus IS '推广奖励,用于兑换';
          public          postgres    false    228            %           0    0     COLUMN "user".total_invite_bonus    COMMENT     L   COMMENT ON COLUMN public."user".total_invite_bonus IS '累计推广奖励';
          public          postgres    false    228            &           0    0    COLUMN "user".total_income    COMMENT     @   COMMENT ON COLUMN public."user".total_income IS '累计收益';
          public          postgres    false    228            '           0    0    COLUMN "user".today_bonus    COMMENT     ?   COMMENT ON COLUMN public."user".today_bonus IS '今日奖励';
          public          postgres    false    228            (           0    0    COLUMN "user".total_assets    COMMENT     C   COMMENT ON COLUMN public."user".total_assets IS '待处理收益';
          public          postgres    false    228            )           0    0    COLUMN "user".total_amount    COMMENT     =   COMMENT ON COLUMN public."user".total_amount IS '总资产';
          public          postgres    false    228            *           0    0    COLUMN "user".create_time    COMMENT     ?   COMMENT ON COLUMN public."user".create_time IS '创建时间';
          public          postgres    false    228            +           0    0    COLUMN "user".update_date    COMMENT     ?   COMMENT ON COLUMN public."user".update_date IS '更新日期';
          public          postgres    false    228            ,           0    0    COLUMN "user".update_time    COMMENT     ?   COMMENT ON COLUMN public."user".update_time IS '更新时间';
          public          postgres    false    228            -           0    0    COLUMN "user".user_code    COMMENT     =   COMMENT ON COLUMN public."user".user_code IS '用户编码';
          public          postgres    false    228            .           0    0    COLUMN "user".block_coin    COMMENT     L   COMMENT ON COLUMN public."user".block_coin IS '区块币(时间链)数量';
          public          postgres    false    228            /           0    0    COLUMN "user".team_count    COMMENT     >   COMMENT ON COLUMN public."user".team_count IS '团队数量';
          public          postgres    false    228            0           0    0    COLUMN "user".team_total_count    COMMENT     D   COMMENT ON COLUMN public."user".team_total_count IS '团队总数';
          public          postgres    false    228            1           0    0    COLUMN "user".team_total_amount    COMMENT     H   COMMENT ON COLUMN public."user".team_total_amount IS '团队总投资';
          public          postgres    false    228            2           0    0    COLUMN "user".team_total_bonus    COMMENT     J   COMMENT ON COLUMN public."user".team_total_bonus IS '团队累计奖励';
          public          postgres    false    228            3           0    0    COLUMN "user".inviter_d2    COMMENT     D   COMMENT ON COLUMN public."user".inviter_d2 IS '邀请人上上级';
          public          postgres    false    228            4           0    0    COLUMN "user".inviter_d3    COMMENT     D   COMMENT ON COLUMN public."user".inviter_d3 IS '邀请人上三级';
          public          postgres    false    228            5           0    0    COLUMN "user".level    COMMENT     3   COMMENT ON COLUMN public."user".level IS '等级';
          public          postgres    false    228            6           0    0    COLUMN "user".level_name    COMMENT     >   COMMENT ON COLUMN public."user".level_name IS '等级名称';
          public          postgres    false    228            7           0    0    COLUMN "user".level_signal    COMMENT     @   COMMENT ON COLUMN public."user".level_signal IS '等级符号';
          public          postgres    false    228            8           0    0    COLUMN "user".team_bonus    COMMENT     >   COMMENT ON COLUMN public."user".team_bonus IS '团队奖励';
          public          postgres    false    228            9           0    0    COLUMN "user".coin    COMMENT     5   COMMENT ON COLUMN public."user".coin IS '平台币';
          public          postgres    false    228            :           0    0    COLUMN "user".hit_rate    COMMENT     9   COMMENT ON COLUMN public."user".hit_rate IS '命中率';
          public          postgres    false    228            ;           0    0    COLUMN "user".team_valid_count    COMMENT     ^   COMMENT ON COLUMN public."user".team_valid_count IS '团队有效人数(有累计收益的)';
          public          postgres    false    228            <           0    0    COLUMN "user".emergency_contact    COMMENT     H   COMMENT ON COLUMN public."user".emergency_contact IS '紧急联系人';
          public          postgres    false    228            =           0    0    COLUMN "user".week_income    COMMENT     ?   COMMENT ON COLUMN public."user".week_income IS '一周收益';
          public          postgres    false    228            >           0    0    COLUMN "user".month_income    COMMENT     @   COMMENT ON COLUMN public."user".month_income IS '当月收益';
          public          postgres    false    228            ?           0    0    COLUMN "user".yes_income    COMMENT     >   COMMENT ON COLUMN public."user".yes_income IS '昨日收益';
          public          postgres    false    228            @           0    0    COLUMN "user".shop_integral    COMMENT     V   COMMENT ON COLUMN public."user".shop_integral IS '商城积分(临时,同步过来)';
          public          postgres    false    228            A           0    0    COLUMN "user".bit_income    COMMENT     A   COMMENT ON COLUMN public."user".bit_income IS 'bit可提收益';
          public          postgres    false    228            �            1259    567223    user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.user_id_seq;
       public          postgres    false    228            B           0    0    user_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;
          public          postgres    false    229            �           2604    567246    user id    DEFAULT     d   ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);
 8   ALTER TABLE public."user" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228                      0    567203    user 
   TABLE DATA           1  COPY public."user" (id, ref_id, real_name, user_phone, user_im, user_flag, user_state, user_priority, inviter_uid, integral, bonus, total_invite_bonus, total_income, today_bonus, total_assets, total_amount, create_time, update_date, update_time, user_code, block_coin, team_count, team_total_count, team_total_amount, team_total_bonus, inviter_d2, inviter_d3, level, level_name, level_signal, team_bonus, coin, lock_times, unlock_time, hit_rate, team_valid_count, emergency_contact, week_income, month_income, yes_income, shop_integral, bit_income) FROM stdin;
    public          postgres    false    228   55       C           0    0    user_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.user_id_seq', 3337, true);
          public          postgres    false    229            �           2606    567281    user user_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            postgres    false    228                  x��]YsǑ~n�����x�� 	ľ�898	^ ����JZ�%jcC�Di�+�ZI�핼����g���ʞ����1Cy�=�9��3��2++�r�2m(%ً���惗��QM��2-�Lf4#N2��f'����oAS�%ɨ��EJ�?Lh�Yv�\?�s�Qՠ$��v�?�{󋏿}��O�����>�fn4��2� ����~�E���ʵr2+��x��.��| e\H���6T�������x�r#�8R��9ݔ����?XGVA�O&*de"A���Tx�R6{��?�����~ �%� J�(���P�*�(���]��WFqO+jz����H���ޙ\�.]C�3܋E��)���jg���JS|�dlm�ZGpӧ���j����XV�jPV�i��mj�#,�J1=�e�B����F�%7py]�������V�;I��|e�����e�Ⲍq�uwY�&���[u�j���d������ӏ���X�CbQU��m=Q��6��Ƿn�UՆ�FLQTE+E�=Qۆ��o�O�O�U��*���u����Z�2�;w�Ԝ�|����%>�ƪt샶�p�Ճi/�nMN%�iP,ڀ.���l��VӢ���.��6`��~%����*b���ß���vs�%R�ŕ���\�T�����c�d(5`	��0����kr��n�Q��( ����H ���ΌLX�/�/"Q� ~eXZ�c����������*�X�#*F,�M�:�Nm @�n%0 ��Õ{ǉE�S��?���oy���#�ae��"�-�_J��Phe�X������[��C�7n!�ˊ,�z=a��0Ai�d�� Qݿ?l�U=CDc������������ i-�m�(+�v\תB����y��������'�+��0���ֹA��X����(	r�����GiaD�VĢ��&������^XO#aD��I�ZW��H��%ﷺ�9Cs@�/������򿞂j��2S�f�;֬�����ؔ�.%���IH��r�����nW~�;`��-9V6�Ge���ɳ~��,����H�l�G�P��0o>k�vqi��^]`Q�/�N���?_��OZ:��V�ݾ7�`i>�� ��u9���������?���Ƃq�u�om��iPd✸�rZj) "W�o�߭@9�d�JE:ړ���{� ����O��O[��JqA�v1��UY����ͱ#��W�jmTL*� *�x�����A��i��	7�!(H��k��z�����j�;k3h�٣�U�Rk�}j�q�6�$_|����_=��'�JL��֯����U{C��y�+�o�bq0���Cwv��G�tˋ�J�F@�A�wL�O�����([�bbQ�dedc�T)["(T������.!)��e���ns��x�$-����7�e/���7O���CO�+��ف�DDɍתּI$�͙��=�qZ�v&���2��굈<1a�	I�5)
�2zgbZ�j�R��� ��m\p�����P�!��#��O�e���ۋ7��P%�a���m��O�9��S���y���
\ŝ���Q��Pa�G�m�le���+�+״!TP������0w��/������h�8N@ʒ�ir�pam$̨n�l/43ٰ��E�R�pK@�Y_D�����������k�W�U/V�(tu�$���o �t��9��PX���W��?�˨P^�ˤ�@p}��7t�n -���1�H�*�UH�>*������������wW���&QL���1bU����ݺ�iĚ��!9B!cG��3G����n����������Q[���%$�]1O���	juG����� )_Y��膵���
8o�-���J�"@�ٹ���f�r?�]��X����|���goM�,��]IԼ���Eѷ�x���vU��\��� �VE�!H�\��(JB�&&�ý�L����xvS������g�#���w �R(Z l� n�l}i}d�z�ߎ���RJЭs����G������+��j�m���+�w����/�z�g!�!��R�Ŭ!J9�cJ�jK�uXAߚЫ� z_����?����������*(�9T�q�I���8�/@0�.Q�t�+�  ��W�������ڠ6X)�>�h�8tC0߿e�����ȟ�~���e�֦����R	�z�Փ�VW��,��6Qp]���Dtpy{I��ٌ5�F���W��R#�p7A�\iK �R��V�"1�XF��E���7:sYKi��qz�p�ݮ�L}u���h{č�o�/,�p�\=��b��
�{�gɄ���0#�3.�Xֱ�N�>�{ޘ�=e�0��K6�ep%�����9��λ\�$_���ߥ<��K����0���L/Uݥ�>�v�b#��)��M�Y��`��S\ u[EEf8��ռU� C\�M[��j:G���)��Қ�`����ٞ�֦����K�-�F'������/�8QBi��9��*��J�p?`��-���n���:�61K�Dٽ����g&GtZ���B�{�x����æ�kK7��U#� ��������礕�y�(¨Q���# 7i��Ɠ����a���ծ�|7�ɐ(>���Y~IM��+^�p-� ��u��wL$4��١�L��.+��G�o S������Ě��Ͽ~��z�2�?jTY�!��y��0��i�m>F8�55;�(��}�]��
^-��9� O�ܳ�]t�.2�O�0i��՞d=�&��%\��Gz�d��G�j_(���q���/l���>�y����[�LB��;�΁�^,&o�ĸe⽥0hՊJ�r�����k����~L�Nm���+��+�I�.;���W���@�������x�[m��v�=�ޓ
<A�*��z`"�&��X�.NXۃ`h�py��y�j;�a��=U\Y`�@��S=m�7�k�ae7iD�I�����M�T\��,�I��&h� �Ld�9o.�W^N�H�[�t��; ��D;$ڸ��ө�%z���QE�#��t�JQ%��]Q����02�5��a�c�
�kDU��>v�ᶛ�ζ�kU�V��s|������Z������F�	se�2�j\:W�{�VI����kק�7Sg6֪��o챫������Z���n\�Z��n���
෿z6��7	�=b\3C(�6$���wMAJ��8[���l� �ظ�_��j�njn��q�mW�r�Q�Ъ�8���b}qM�� X�O�G�f2���P쥶U��g�tX��=Q]I������ᯬUt+������Z��s��}-��E��
 L��;[�E>���vS���5n�!
���]qu��־Mm�XYLW� ���:\�ٞx�\H�Y�8Z�0˯�6ji|�����{'���WY�X�V5����>'*dM��s���	�Z%%|54 V��6o@ p�	1>2��YQD V: 	�;�,��5��;LV+�����# ���Ǔ�+�@�=�p+e�h�������qbQV^XCP#��>XAH^}H���S����Kp5��:Q��VJ�L5g6�w
� b\5a`��L�u� ���C�t���|���\�WDV#+�u�ΟU�58��s�:��|���0��1\�։*<p�}�[ck��
� c 1���ǭ��d3#��$��"�x�u�Jo��5Z-�][=I�]I$�"�YM߶*���s,P����*/935Q� ��	Y@����p�o>:��Hm��U��j�v+A�Z��f�̮�L�	��Y i��U�N/�0���C�:^I+����8�
l�m�Nn�����[\[_��0��iUx4�An�Z]?�I� 
�J��U�։�=�r\W��#��V8@��E�[Ո��b�K����RjQ����2�[i��%`��ȖЩGR�ޞ;���0����+G_�k�G��S��r��DP���@���6����Tj@�"J�J��:�R��
�� N  ��݅�$P"_1_50�ވg LfGR%�F$���5xDҕ:���[9�����۠�k�h �$gE��Z1߭���f�0�K� �x	�;���h�j�&h�ɉ��
N�p��"[ �j�%����ۇ'�lHWXLW� ����4�f[�х�[���c��Ԉj��^�M��G���EœbL�p���J��z	��՞]Y�:u��0G+r�Q%=Q�A���y��Zcs+Ih�`�LYBH���/�H���krm"�~�Od%c�llղj�|Yi�W����������d����o2j��T΀�q�����.�u��
L���ii�W�cq��,��f�F��2�`N��T�K�"IJ������W�tic��Q>�p	x��?��rj�ð�JB������j��ښX\J��1`����������1����2�Tk�a�㴰Wϳ��^��z�>�����>.���T	o�����qd`u7�Y3q:䆕�{����#��wO��jR�¹��n2��\�䠠�b�L:���~PV�;{}a;�;R�R��̺]<��ix�����k�g^*<g<��g�uS��,� �)KU�p5���i��G�7V'B����D�+�&o*N�D�g֑�����ٟ������u��h�j]��/��,����\V$D*&D"��������[�^��ΟqIE�gP�Q��1<k��O�$�#��+�iÔ��=/)��!��[,�F.�g*.����؃��}��ƤY���� '��h��4�Zm�����9^�{�����8u���v��f�V�^k����d����Ɔ������ޛ!˩ۑ(�.���^�H;�ٵ������(���J�<(A(��B��;��;���8ЎE_� �Z�n~����`�wSˊg[�n~T���K�w�Vn������!p�+�GU��w))T!Ev{hx�~�D�!W�!�P���߉t�#[CSwS�C�1t�b�qȭ���\�Ms���T��.��?�=��\|��7"'�*���,�8� jU'��1\�A�	+�^�3����ްF/T�yW����s��{���ߟ����O�������Nm�Z��f(+�s���º�n����
w�R�9Z�w9vPRJ�S��l���AJhod~��[n'�u�.��k 8ʒͤ���߫	��VF�o�m���܋�|D����
�dOT�:'�n�=�M,*C�GK�uh����g���N�9a�����q�Mz�咒d��뭻��n�Ėv_�ѩ�0Ë�ll����sQW��$85��9X((>��`����J)pSG%��� .��
J���J���uŐ�n�����h�|F����?q�o�%��ށ<�f��ͼ�h=Ժ��|VA�uL�sM����HO.[�"�A�%�r(e�j���w^ՈU����S)l�8�0�m=�^�8\�X�=������a�&���Ō������!y�����Nb��ogd*�b1�&7�����X�+��ĢӮ�q���Ǟq��8XA���wI�,>br؄�ƕ[�+��>�mv���/����
�g`B����
|Tt�Iw�<oft��(��\�\�X��xuf�sA�τ�{�>�ژ`��*���x��$5�UC֙"�K�#��+��i�+T��{���M>���/�yz��O<������Z��N�ѣ�FK��%��,� ;�wB�	�>9⫋�{���N\kwD����/�3G�n���a2�!I�o�?���T��p��+�QcXnn���b���.?!�^6�)VO��L��g��ӎ1�v�Ev���g���ӧNfǯ��b��J�v�����x�7�o;�     