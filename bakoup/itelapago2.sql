PGDMP     6                	    z         	   itelapago    13.8 (Debian 13.8-0+deb11u1)    14.5 ?              0    0    ENCODING    ENCODING     #   SET client_encoding = 'SQL_ASCII';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    19074 	   itelapago    DATABASE     Y   CREATE DATABASE itelapago WITH TEMPLATE = template0 ENCODING = 'SQL_ASCII' LOCALE = 'C';
    DROP DATABASE itelapago;
                postgres    false                        2615    19075    base    SCHEMA        CREATE SCHEMA base;
    DROP SCHEMA base;
                postgres    false                        2615    19076    estacionamientos    SCHEMA         CREATE SCHEMA estacionamientos;
    DROP SCHEMA estacionamientos;
                postgres    false                        2615    19077    finanzas    SCHEMA        CREATE SCHEMA finanzas;
    DROP SCHEMA finanzas;
                postgres    false                        2615    19078    negocio    SCHEMA        CREATE SCHEMA negocio;
    DROP SCHEMA negocio;
                postgres    false                        2615    19079    sistema    SCHEMA        CREATE SCHEMA sistema;
    DROP SCHEMA sistema;
                postgres    false                        2615    19080    usuarios    SCHEMA        CREATE SCHEMA usuarios;
    DROP SCHEMA usuarios;
                postgres    false            ?            1259    19081 !   t001_tipo_docid_id_tipodoc_id_seq    SEQUENCE     ?   CREATE SEQUENCE base.t001_tipo_docid_id_tipodoc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE base.t001_tipo_docid_id_tipodoc_id_seq;
       base          postgres    false    8            ?            1259    19083    t001_tipo_docid    TABLE     ?   CREATE TABLE base.t001_tipo_docid (
    id_tipodoc_id integer DEFAULT nextval('base.t001_tipo_docid_id_tipodoc_id_seq'::regclass) NOT NULL,
    acro_doc_id character varying(1),
    dsc_tipodoc_id character varying(150)
);
 !   DROP TABLE base.t001_tipo_docid;
       base         heap    postgres    false    206    8            ?            1259    19087    t001_vehiculo    TABLE     ?   CREATE TABLE estacionamientos.t001_vehiculo (
    id_vehiculo integer NOT NULL,
    id_usuario integer,
    placa character varying(10),
    rfid_uhf bigint,
    activo boolean
);
 +   DROP TABLE estacionamientos.t001_vehiculo;
       estacionamientos         heap    postgres    false    4            ?            1259    19090    t001_vehiculo_id_vehiculo_seq    SEQUENCE     ?   CREATE SEQUENCE estacionamientos.t001_vehiculo_id_vehiculo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE estacionamientos.t001_vehiculo_id_vehiculo_seq;
       estacionamientos          postgres    false    4    208                       0    0    t001_vehiculo_id_vehiculo_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE estacionamientos.t001_vehiculo_id_vehiculo_seq OWNED BY estacionamientos.t001_vehiculo.id_vehiculo;
          estacionamientos          postgres    false    209            ?            1259    19092    t002_puesto_parking    TABLE     ?   CREATE TABLE estacionamientos.t002_puesto_parking (
    id_puesto integer NOT NULL,
    id_comercio integer,
    id_clasificacion_es integer,
    dsc_puesto character varying(250),
    svg_puesto character varying,
    disponible boolean
);
 1   DROP TABLE estacionamientos.t002_puesto_parking;
       estacionamientos         heap    postgres    false    4            ?            1259    19098 !   t002_puesto_parking_id_puesto_seq    SEQUENCE     ?   CREATE SEQUENCE estacionamientos.t002_puesto_parking_id_puesto_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE estacionamientos.t002_puesto_parking_id_puesto_seq;
       estacionamientos          postgres    false    210    4                       0    0 !   t002_puesto_parking_id_puesto_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE estacionamientos.t002_puesto_parking_id_puesto_seq OWNED BY estacionamientos.t002_puesto_parking.id_puesto;
          estacionamientos          postgres    false    211            ?            1259    19100    t003_entrada_parking    TABLE       CREATE TABLE estacionamientos.t003_entrada_parking (
    id_entrada integer NOT NULL,
    id_comercio integer,
    ubi_entrada character varying(150),
    svg_entrada character varying,
    img_entrada character varying(250),
    id_status_es integer,
    id_clasificacion_es integer
);
 2   DROP TABLE estacionamientos.t003_entrada_parking;
       estacionamientos         heap    postgres    false    4            ?            1259    19106 #   t003_entrada_parking_id_entrada_seq    SEQUENCE     ?   CREATE SEQUENCE estacionamientos.t003_entrada_parking_id_entrada_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE estacionamientos.t003_entrada_parking_id_entrada_seq;
       estacionamientos          postgres    false    4    212                       0    0 #   t003_entrada_parking_id_entrada_seq    SEQUENCE OWNED BY        ALTER SEQUENCE estacionamientos.t003_entrada_parking_id_entrada_seq OWNED BY estacionamientos.t003_entrada_parking.id_entrada;
          estacionamientos          postgres    false    213            ?            1259    19108    t004_salida_parking    TABLE       CREATE TABLE estacionamientos.t004_salida_parking (
    id_salida integer NOT NULL,
    id_comercio integer,
    ubi_salida character varying(150),
    svg_salida character varying,
    img_salida character varying(250),
    id_status_es integer,
    id_clasificacion_es integer
);
 1   DROP TABLE estacionamientos.t004_salida_parking;
       estacionamientos         heap    postgres    false    4            ?            1259    19114 !   t004_salida_parking_id_salida_seq    SEQUENCE     ?   CREATE SEQUENCE estacionamientos.t004_salida_parking_id_salida_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE estacionamientos.t004_salida_parking_id_salida_seq;
       estacionamientos          postgres    false    4    214                       0    0 !   t004_salida_parking_id_salida_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE estacionamientos.t004_salida_parking_id_salida_seq OWNED BY estacionamientos.t004_salida_parking.id_salida;
          estacionamientos          postgres    false    215            ?            1259    19116    t005_tickets    TABLE     ?   CREATE TABLE estacionamientos.t005_tickets (
    id_ticket bigint NOT NULL,
    id_vehiculo integer,
    status integer,
    "timestamp" timestamp with time zone
);
 *   DROP TABLE estacionamientos.t005_tickets;
       estacionamientos         heap    postgres    false    4            ?            1259    19119    t005_tickets_id_ticket_seq    SEQUENCE     ?   CREATE SEQUENCE estacionamientos.t005_tickets_id_ticket_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE estacionamientos.t005_tickets_id_ticket_seq;
       estacionamientos          postgres    false    216    4            	           0    0    t005_tickets_id_ticket_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE estacionamientos.t005_tickets_id_ticket_seq OWNED BY estacionamientos.t005_tickets.id_ticket;
          estacionamientos          postgres    false    217            ?            1259    19121    t006_entrada_ticket    TABLE     ?   CREATE TABLE estacionamientos.t006_entrada_ticket (
    id_entrada_ticket bigint NOT NULL,
    id_ticket bigint,
    "timestamp" timestamp with time zone,
    id_entrada integer
);
 1   DROP TABLE estacionamientos.t006_entrada_ticket;
       estacionamientos         heap    postgres    false    4            ?            1259    19124 )   t006_entrada_ticket_id_entrada_ticket_seq    SEQUENCE     ?   CREATE SEQUENCE estacionamientos.t006_entrada_ticket_id_entrada_ticket_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 J   DROP SEQUENCE estacionamientos.t006_entrada_ticket_id_entrada_ticket_seq;
       estacionamientos          postgres    false    4    218            
           0    0 )   t006_entrada_ticket_id_entrada_ticket_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE estacionamientos.t006_entrada_ticket_id_entrada_ticket_seq OWNED BY estacionamientos.t006_entrada_ticket.id_entrada_ticket;
          estacionamientos          postgres    false    219            ?            1259    19126    t007_salida_ticket    TABLE     ?   CREATE TABLE estacionamientos.t007_salida_ticket (
    id_salida_ticket bigint NOT NULL,
    id_ticket bigint,
    "timestamp" timestamp with time zone,
    id_salida integer
);
 0   DROP TABLE estacionamientos.t007_salida_ticket;
       estacionamientos         heap    postgres    false    4            ?            1259    19129 '   t007_salida_ticket_id_salida_ticket_seq    SEQUENCE     ?   CREATE SEQUENCE estacionamientos.t007_salida_ticket_id_salida_ticket_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE estacionamientos.t007_salida_ticket_id_salida_ticket_seq;
       estacionamientos          postgres    false    4    220                       0    0 '   t007_salida_ticket_id_salida_ticket_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE estacionamientos.t007_salida_ticket_id_salida_ticket_seq OWNED BY estacionamientos.t007_salida_ticket.id_salida_ticket;
          estacionamientos          postgres    false    221            ?            1259    19131    t008_puesto_ticket    TABLE     ?   CREATE TABLE estacionamientos.t008_puesto_ticket (
    id_puesto_ticket bigint NOT NULL,
    id_ticket bigint,
    "timestamp" timestamp with time zone,
    id_puesto integer
);
 0   DROP TABLE estacionamientos.t008_puesto_ticket;
       estacionamientos         heap    postgres    false    4            ?            1259    19134 '   t008_puesto_ticket_id_puesto_ticket_seq    SEQUENCE     ?   CREATE SEQUENCE estacionamientos.t008_puesto_ticket_id_puesto_ticket_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE estacionamientos.t008_puesto_ticket_id_puesto_ticket_seq;
       estacionamientos          postgres    false    4    222                       0    0 '   t008_puesto_ticket_id_puesto_ticket_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE estacionamientos.t008_puesto_ticket_id_puesto_ticket_seq OWNED BY estacionamientos.t008_puesto_ticket.id_puesto_ticket;
          estacionamientos          postgres    false    223            ?            1259    19136    t009_status_es    TABLE     ~   CREATE TABLE estacionamientos.t009_status_es (
    dsc_status_es character varying(150),
    id_status_es integer NOT NULL
);
 ,   DROP TABLE estacionamientos.t009_status_es;
       estacionamientos         heap    postgres    false    4            ?            1259    19139    t009_status_es_id_status_es_seq    SEQUENCE     ?   CREATE SEQUENCE estacionamientos.t009_status_es_id_status_es_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE estacionamientos.t009_status_es_id_status_es_seq;
       estacionamientos          postgres    false    224    4                       0    0    t009_status_es_id_status_es_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE estacionamientos.t009_status_es_id_status_es_seq OWNED BY estacionamientos.t009_status_es.id_status_es;
          estacionamientos          postgres    false    225            ?            1259    19141    t010_clasificacion_es    TABLE     ?   CREATE TABLE estacionamientos.t010_clasificacion_es (
    id_clasificacion_es integer NOT NULL,
    dsc_clasificacion_es character varying(150)
);
 3   DROP TABLE estacionamientos.t010_clasificacion_es;
       estacionamientos         heap    postgres    false    4            ?            1259    19144 -   t010_clasificacion_es_id_clasificacion_es_seq    SEQUENCE     ?   CREATE SEQUENCE estacionamientos.t010_clasificacion_es_id_clasificacion_es_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 N   DROP SEQUENCE estacionamientos.t010_clasificacion_es_id_clasificacion_es_seq;
       estacionamientos          postgres    false    226    4                       0    0 -   t010_clasificacion_es_id_clasificacion_es_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE estacionamientos.t010_clasificacion_es_id_clasificacion_es_seq OWNED BY estacionamientos.t010_clasificacion_es.id_clasificacion_es;
          estacionamientos          postgres    false    227            ?            1259    19146    t011_control_ticket    TABLE     ?   CREATE TABLE estacionamientos.t011_control_ticket (
    id_ctrl_ticket bigint NOT NULL,
    id_ticket bigint,
    id_comercio integer,
    num_control bigint
);
 1   DROP TABLE estacionamientos.t011_control_ticket;
       estacionamientos         heap    postgres    false    4            ?            1259    19149 &   t011_control_ticket_id_ctrl_ticket_seq    SEQUENCE     ?   CREATE SEQUENCE estacionamientos.t011_control_ticket_id_ctrl_ticket_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE estacionamientos.t011_control_ticket_id_ctrl_ticket_seq;
       estacionamientos          postgres    false    4    228                       0    0 &   t011_control_ticket_id_ctrl_ticket_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE estacionamientos.t011_control_ticket_id_ctrl_ticket_seq OWNED BY estacionamientos.t011_control_ticket.id_ctrl_ticket;
          estacionamientos          postgres    false    229            ?            1259    19151    h009_factura_mov    TABLE     |   CREATE TABLE finanzas.h009_factura_mov (
    id_fac_mov bigint NOT NULL,
    id_factura bigint,
    id_mov_cuenta bigint
);
 &   DROP TABLE finanzas.h009_factura_mov;
       finanzas         heap    postgres    false    7            ?            1259    19154    h009_factura_mov_id_fac_mov_seq    SEQUENCE     ?   CREATE SEQUENCE finanzas.h009_factura_mov_id_fac_mov_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE finanzas.h009_factura_mov_id_fac_mov_seq;
       finanzas          postgres    false    7    230                       0    0    h009_factura_mov_id_fac_mov_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE finanzas.h009_factura_mov_id_fac_mov_seq OWNED BY finanzas.h009_factura_mov.id_fac_mov;
          finanzas          postgres    false    231            ?            1259    19156    t001_mov_cta_usuario    TABLE     )  CREATE TABLE finanzas.t001_mov_cta_usuario (
    id_mov_cuenta bigint NOT NULL,
    id_usuario integer,
    id_comercio integer,
    id_tipo_mov integer,
    id_dsc_mov integer,
    id_impuesto integer,
    "timestamp" timestamp with time zone,
    monto numeric(15,2),
    saldo numeric(15,2)
);
 *   DROP TABLE finanzas.t001_mov_cta_usuario;
       finanzas         heap    postgres    false    7            ?            1259    19159 &   t001_mov_cta_usuario_id_mov_cuenta_seq    SEQUENCE     ?   CREATE SEQUENCE finanzas.t001_mov_cta_usuario_id_mov_cuenta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE finanzas.t001_mov_cta_usuario_id_mov_cuenta_seq;
       finanzas          postgres    false    232    7                       0    0 &   t001_mov_cta_usuario_id_mov_cuenta_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE finanzas.t001_mov_cta_usuario_id_mov_cuenta_seq OWNED BY finanzas.t001_mov_cta_usuario.id_mov_cuenta;
          finanzas          postgres    false    233            ?            1259    19161    t002_tipo_movimiento    TABLE     z   CREATE TABLE finanzas.t002_tipo_movimiento (
    id_tipo_mov integer NOT NULL,
    dsc_tipo_mov character varying(100)
);
 *   DROP TABLE finanzas.t002_tipo_movimiento;
       finanzas         heap    postgres    false    7            ?            1259    19164 $   t002_tipo_movimiento_id_tipo_mov_seq    SEQUENCE     ?   CREATE SEQUENCE finanzas.t002_tipo_movimiento_id_tipo_mov_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE finanzas.t002_tipo_movimiento_id_tipo_mov_seq;
       finanzas          postgres    false    7    234                       0    0 $   t002_tipo_movimiento_id_tipo_mov_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE finanzas.t002_tipo_movimiento_id_tipo_mov_seq OWNED BY finanzas.t002_tipo_movimiento.id_tipo_mov;
          finanzas          postgres    false    235            ?            1259    19166    t003_dsc_movimiento    TABLE     w   CREATE TABLE finanzas.t003_dsc_movimiento (
    id_dsc_mov integer NOT NULL,
    dsc_mov_cta character varying(150)
);
 )   DROP TABLE finanzas.t003_dsc_movimiento;
       finanzas         heap    postgres    false    7            ?            1259    19169 #   t003_dsc_movimiento_dsc_mov_cta_seq    SEQUENCE     ?   CREATE SEQUENCE finanzas.t003_dsc_movimiento_dsc_mov_cta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE finanzas.t003_dsc_movimiento_dsc_mov_cta_seq;
       finanzas          postgres    false    236    7                       0    0 #   t003_dsc_movimiento_dsc_mov_cta_seq    SEQUENCE OWNED BY     n   ALTER SEQUENCE finanzas.t003_dsc_movimiento_dsc_mov_cta_seq OWNED BY finanzas.t003_dsc_movimiento.id_dsc_mov;
          finanzas          postgres    false    237            ?            1259    19171    t004_moneda_referencial    TABLE     ?   CREATE TABLE finanzas.t004_moneda_referencial (
    id_moneda_ref integer NOT NULL,
    id_comercio integer,
    valor_moneda numeric(15,2),
    denominacion character varying(10),
    simbolo character(1),
    fecha date
);
 -   DROP TABLE finanzas.t004_moneda_referencial;
       finanzas         heap    postgres    false    7            ?            1259    19174 )   t004_moneda_referencial_id_moneda_ref_seq    SEQUENCE     ?   CREATE SEQUENCE finanzas.t004_moneda_referencial_id_moneda_ref_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE finanzas.t004_moneda_referencial_id_moneda_ref_seq;
       finanzas          postgres    false    7    238                       0    0 )   t004_moneda_referencial_id_moneda_ref_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE finanzas.t004_moneda_referencial_id_moneda_ref_seq OWNED BY finanzas.t004_moneda_referencial.id_moneda_ref;
          finanzas          postgres    false    239            ?            1259    19176    t005_tarifas    TABLE     ?   CREATE TABLE finanzas.t005_tarifas (
    id_tarifa integer NOT NULL,
    id_renglon integer,
    id_moneda_ref integer,
    monto numeric(15,2),
    fecha_ini date,
    fecha_fin date,
    porcentaje smallint
);
 "   DROP TABLE finanzas.t005_tarifas;
       finanzas         heap    postgres    false    7            ?            1259    19179    t005_tarifas_id_tarifa_seq    SEQUENCE     ?   CREATE SEQUENCE finanzas.t005_tarifas_id_tarifa_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE finanzas.t005_tarifas_id_tarifa_seq;
       finanzas          postgres    false    7    240                       0    0    t005_tarifas_id_tarifa_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE finanzas.t005_tarifas_id_tarifa_seq OWNED BY finanzas.t005_tarifas.id_tarifa;
          finanzas          postgres    false    241            ?            1259    19181    t006_impuestos    TABLE     ?   CREATE TABLE finanzas.t006_impuestos (
    id_impuesto integer NOT NULL,
    id_comercio integer,
    dsc_impuesto character varying(50),
    porcentaje integer,
    fecha_aplicacion date
);
 $   DROP TABLE finanzas.t006_impuestos;
       finanzas         heap    postgres    false    7            ?            1259    19184 '   t006_cargos_impositivos_id_impuesto_seq    SEQUENCE     ?   CREATE SEQUENCE finanzas.t006_cargos_impositivos_id_impuesto_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE finanzas.t006_cargos_impositivos_id_impuesto_seq;
       finanzas          postgres    false    7    242                       0    0 '   t006_cargos_impositivos_id_impuesto_seq    SEQUENCE OWNED BY     n   ALTER SEQUENCE finanzas.t006_cargos_impositivos_id_impuesto_seq OWNED BY finanzas.t006_impuestos.id_impuesto;
          finanzas          postgres    false    243            ?            1259    19186    t007_renglones    TABLE     ?   CREATE TABLE finanzas.t007_renglones (
    id_renglon integer NOT NULL,
    id_comercio integer,
    dsc_renglon character varying(150)
);
 $   DROP TABLE finanzas.t007_renglones;
       finanzas         heap    postgres    false    7            ?            1259    19189    t007_renglones_id_renglon_seq    SEQUENCE     ?   CREATE SEQUENCE finanzas.t007_renglones_id_renglon_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE finanzas.t007_renglones_id_renglon_seq;
       finanzas          postgres    false    244    7                       0    0    t007_renglones_id_renglon_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE finanzas.t007_renglones_id_renglon_seq OWNED BY finanzas.t007_renglones.id_renglon;
          finanzas          postgres    false    245            ?            1259    19191    t008_factura    TABLE     ?   CREATE TABLE finanzas.t008_factura (
    id_factura bigint NOT NULL,
    id_usuario integer,
    id_comercio integer,
    id_moneda_ref integer,
    descripcion character varying,
    fecha_emision date,
    ruta_pdf character varying
);
 "   DROP TABLE finanzas.t008_factura;
       finanzas         heap    postgres    false    7            ?            1259    19197    t008_factura_id_factura_seq    SEQUENCE     ?   CREATE SEQUENCE finanzas.t008_factura_id_factura_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE finanzas.t008_factura_id_factura_seq;
       finanzas          postgres    false    7    246                       0    0    t008_factura_id_factura_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE finanzas.t008_factura_id_factura_seq OWNED BY finanzas.t008_factura.id_factura;
          finanzas          postgres    false    247            ?            1259    19199    t010_usuario_bancos    TABLE     ?   CREATE TABLE finanzas.t010_usuario_bancos (
    id_usr_bancos integer NOT NULL,
    id_usuario integer,
    num_cuenta bigint,
    nom_banco character varying(250)
);
 )   DROP TABLE finanzas.t010_usuario_bancos;
       finanzas         heap    postgres    false    7            ?            1259    19202 %   t010_usuario_bancos_id_usr_bancos_seq    SEQUENCE     ?   CREATE SEQUENCE finanzas.t010_usuario_bancos_id_usr_bancos_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE finanzas.t010_usuario_bancos_id_usr_bancos_seq;
       finanzas          postgres    false    7    248                       0    0 %   t010_usuario_bancos_id_usr_bancos_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE finanzas.t010_usuario_bancos_id_usr_bancos_seq OWNED BY finanzas.t010_usuario_bancos.id_usr_bancos;
          finanzas          postgres    false    249            ?            1259    19204    t011_paquetes    TABLE     ?   CREATE TABLE finanzas.t011_paquetes (
    dsc_paquete character varying(250),
    entradas integer,
    dias integer,
    pernocta boolean,
    id_paquete integer NOT NULL
);
 #   DROP TABLE finanzas.t011_paquetes;
       finanzas         heap    postgres    false    7            ?            1259    19207    t011_paquetes_id_paquete_seq    SEQUENCE     ?   CREATE SEQUENCE finanzas.t011_paquetes_id_paquete_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE finanzas.t011_paquetes_id_paquete_seq;
       finanzas          postgres    false    250    7                       0    0    t011_paquetes_id_paquete_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE finanzas.t011_paquetes_id_paquete_seq OWNED BY finanzas.t011_paquetes.id_paquete;
          finanzas          postgres    false    251            ?            1259    19209    t012_paqxuser    TABLE     ?   CREATE TABLE finanzas.t012_paqxuser (
    id_paquete integer,
    fecha_inicio date,
    id_usuario integer,
    id_paq_usuario integer NOT NULL
);
 #   DROP TABLE finanzas.t012_paqxuser;
       finanzas         heap    postgres    false    7            ?            1259    19212     t012_paqxuser_id_paq_usuario_seq    SEQUENCE     ?   CREATE SEQUENCE finanzas.t012_paqxuser_id_paq_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE finanzas.t012_paqxuser_id_paq_usuario_seq;
       finanzas          postgres    false    252    7                       0    0     t012_paqxuser_id_paq_usuario_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE finanzas.t012_paqxuser_id_paq_usuario_seq OWNED BY finanzas.t012_paqxuser.id_paq_usuario;
          finanzas          postgres    false    253            ?            1259    19214    t013_paqxcom    TABLE       CREATE TABLE finanzas.t013_paqxcom (
    id_paquete integer,
    id_comercio integer,
    fecha_ini date,
    fecha_fin date,
    id_paq_comercio integer NOT NULL,
    hora_ini time with time zone,
    hora_fin time with time zone,
    habilitar_finsemana boolean
);
 "   DROP TABLE finanzas.t013_paqxcom;
       finanzas         heap    postgres    false    7            ?            1259    19217     t013_paqxcom_id_paq_comercio_seq    SEQUENCE     ?   CREATE SEQUENCE finanzas.t013_paqxcom_id_paq_comercio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE finanzas.t013_paqxcom_id_paq_comercio_seq;
       finanzas          postgres    false    254    7                       0    0     t013_paqxcom_id_paq_comercio_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE finanzas.t013_paqxcom_id_paq_comercio_seq OWNED BY finanzas.t013_paqxcom.id_paq_comercio;
          finanzas          postgres    false    255                        1259    19219    t014_mov_paqxuser    TABLE     ?   CREATE TABLE finanzas.t014_mov_paqxuser (
    id_mov_paq_user bigint NOT NULL,
    id_paquete integer,
    id_usuario integer,
    id_comercio integer,
    fecha date,
    hora time with time zone
);
 '   DROP TABLE finanzas.t014_mov_paqxuser;
       finanzas         heap    postgres    false    7                       1259    19222 %   t014_mov_paqxuser_id_mov_paq_user_seq    SEQUENCE     ?   CREATE SEQUENCE finanzas.t014_mov_paqxuser_id_mov_paq_user_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE finanzas.t014_mov_paqxuser_id_mov_paq_user_seq;
       finanzas          postgres    false    7    256                       0    0 %   t014_mov_paqxuser_id_mov_paq_user_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE finanzas.t014_mov_paqxuser_id_mov_paq_user_seq OWNED BY finanzas.t014_mov_paqxuser.id_mov_paq_user;
          finanzas          postgres    false    257                       1259    19224 
   t015_saldo    TABLE     ?   CREATE TABLE finanzas.t015_saldo (
    id_num_cuenta bigint NOT NULL,
    id_usuario integer,
    status_cta boolean,
    fch_ultima_actualizacion timestamp with time zone,
    saldo numeric(15,2)
);
     DROP TABLE finanzas.t015_saldo;
       finanzas         heap    postgres    false    7                       1259    19227    t001_comercio    TABLE     ?  CREATE TABLE negocio.t001_comercio (
    rif integer,
    email character varying(150),
    dir_coordenadas character varying(250),
    id_comercio integer NOT NULL,
    dir_politica character varying(250),
    id_servicio integer,
    id_grupo_corp integer,
    nom_comercio character varying(250),
    tlf_local character varying(150),
    tlf_movil character varying(150),
    svg_comercio text,
    id_tipo_comercio integer
);
 "   DROP TABLE negocio.t001_comercio;
       negocio         heap    postgres    false    5                       1259    19233    t001_comercio_id_comercio_seq    SEQUENCE     ?   CREATE SEQUENCE negocio.t001_comercio_id_comercio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE negocio.t001_comercio_id_comercio_seq;
       negocio          postgres    false    5    259                       0    0    t001_comercio_id_comercio_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE negocio.t001_comercio_id_comercio_seq OWNED BY negocio.t001_comercio.id_comercio;
          negocio          postgres    false    260                       1259    19235    t002_tipo_servicio    TABLE     w   CREATE TABLE negocio.t002_tipo_servicio (
    id_servicio integer NOT NULL,
    dsc_servicio character varying(150)
);
 '   DROP TABLE negocio.t002_tipo_servicio;
       negocio         heap    postgres    false    5                       1259    19238 "   t002_tipo_servicio_id_servicio_seq    SEQUENCE     ?   CREATE SEQUENCE negocio.t002_tipo_servicio_id_servicio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE negocio.t002_tipo_servicio_id_servicio_seq;
       negocio          postgres    false    5    261                       0    0 "   t002_tipo_servicio_id_servicio_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE negocio.t002_tipo_servicio_id_servicio_seq OWNED BY negocio.t002_tipo_servicio.id_servicio;
          negocio          postgres    false    262                       1259    19240    t003_tipo_comercio    TABLE     ?   CREATE TABLE negocio.t003_tipo_comercio (
    id_tipo_comercio integer NOT NULL,
    dsc_tipo_comercio character varying(150)
);
 '   DROP TABLE negocio.t003_tipo_comercio;
       negocio         heap    postgres    false    5                       1259    19243 '   t003_tipo_comercio_id_tipo_comercio_seq    SEQUENCE     ?   CREATE SEQUENCE negocio.t003_tipo_comercio_id_tipo_comercio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE negocio.t003_tipo_comercio_id_tipo_comercio_seq;
       negocio          postgres    false    5    263                        0    0 '   t003_tipo_comercio_id_tipo_comercio_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE negocio.t003_tipo_comercio_id_tipo_comercio_seq OWNED BY negocio.t003_tipo_comercio.id_tipo_comercio;
          negocio          postgres    false    264            	           1259    19245    t013_grupo_corp    TABLE     ?   CREATE TABLE negocio.t013_grupo_corp (
    id_grupo_corp integer NOT NULL,
    rif character varying(15),
    email character varying(150),
    telefono character varying(15),
    nom_grupocorp character varying(150)
);
 $   DROP TABLE negocio.t013_grupo_corp;
       negocio         heap    postgres    false    5            
           1259    19248 !   t013_grupo_corp_id_grupo_corp_seq    SEQUENCE     ?   CREATE SEQUENCE negocio.t013_grupo_corp_id_grupo_corp_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE negocio.t013_grupo_corp_id_grupo_corp_seq;
       negocio          postgres    false    265    5            !           0    0 !   t013_grupo_corp_id_grupo_corp_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE negocio.t013_grupo_corp_id_grupo_corp_seq OWNED BY negocio.t013_grupo_corp.id_grupo_corp;
          negocio          postgres    false    266                       1259    19250    t014_status    TABLE     h   CREATE TABLE negocio.t014_status (
    status integer NOT NULL,
    dsc_status character varying(50)
);
     DROP TABLE negocio.t014_status;
       negocio         heap    postgres    false    5                       1259    19253    t014_status_status_seq    SEQUENCE     ?   CREATE SEQUENCE negocio.t014_status_status_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE negocio.t014_status_status_seq;
       negocio          postgres    false    267    5            "           0    0    t014_status_status_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE negocio.t014_status_status_seq OWNED BY negocio.t014_status.status;
          negocio          postgres    false    268                       1259    19255 	   t001_math    TABLE     ?   CREATE TABLE sistema.t001_math (
    id_math integer NOT NULL,
    version character varying(10),
    configuracion character varying(100),
    id_comercio integer,
    fch_actualizacion date,
    id_licencia integer,
    id_certificado integer
);
    DROP TABLE sistema.t001_math;
       sistema         heap    postgres    false    6                       1259    19258    t001_math_id_math_seq    SEQUENCE        CREATE SEQUENCE sistema.t001_math_id_math_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE sistema.t001_math_id_math_seq;
       sistema          postgres    false    6    269            #           0    0    t001_math_id_math_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE sistema.t001_math_id_math_seq OWNED BY sistema.t001_math.id_math;
          sistema          postgres    false    270                       1259    19260    t002_apk    TABLE     ?   CREATE TABLE sistema.t002_apk (
    id_apk integer NOT NULL,
    id_certificado integer,
    version character varying(10),
    fch_actualizacion date
);
    DROP TABLE sistema.t002_apk;
       sistema         heap    postgres    false    6                       1259    19263    t002_apk_id_apk_seq    SEQUENCE     }   CREATE SEQUENCE sistema.t002_apk_id_apk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE sistema.t002_apk_id_apk_seq;
       sistema          postgres    false    271    6            $           0    0    t002_apk_id_apk_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE sistema.t002_apk_id_apk_seq OWNED BY sistema.t002_apk.id_apk;
          sistema          postgres    false    272                       1259    19265    t003_ios    TABLE     ?   CREATE TABLE sistema.t003_ios (
    id_ios integer NOT NULL,
    id_certificado integer,
    version character varying(10),
    fch_actualizacion date
);
    DROP TABLE sistema.t003_ios;
       sistema         heap    postgres    false    6                       1259    19268    t003_ios_id_ios_seq    SEQUENCE     }   CREATE SEQUENCE sistema.t003_ios_id_ios_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE sistema.t003_ios_id_ios_seq;
       sistema          postgres    false    273    6            %           0    0    t003_ios_id_ios_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE sistema.t003_ios_id_ios_seq OWNED BY sistema.t003_ios.id_ios;
          sistema          postgres    false    274                       1259    19270    t004_licencia    TABLE     ?   CREATE TABLE sistema.t004_licencia (
    id_licencia integer NOT NULL,
    version character varying(10),
    fch_implementacion date,
    doc_pdf character varying(100)
);
 "   DROP TABLE sistema.t004_licencia;
       sistema         heap    postgres    false    6                       1259    19273    t004_licencia_id_licencia_seq    SEQUENCE     ?   CREATE SEQUENCE sistema.t004_licencia_id_licencia_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE sistema.t004_licencia_id_licencia_seq;
       sistema          postgres    false    275    6            &           0    0    t004_licencia_id_licencia_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE sistema.t004_licencia_id_licencia_seq OWNED BY sistema.t004_licencia.id_licencia;
          sistema          postgres    false    276                       1259    19275    t005_certificados    TABLE     ?   CREATE TABLE sistema.t005_certificados (
    id_certificado integer NOT NULL,
    algoritmo character varying(100),
    version character varying(10),
    fch_actualizacion date
);
 &   DROP TABLE sistema.t005_certificados;
       sistema         heap    postgres    false    6                       1259    19278 $   t005_certificados_id_certificado_seq    SEQUENCE     ?   CREATE SEQUENCE sistema.t005_certificados_id_certificado_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE sistema.t005_certificados_id_certificado_seq;
       sistema          postgres    false    6    277            '           0    0 $   t005_certificados_id_certificado_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE sistema.t005_certificados_id_certificado_seq OWNED BY sistema.t005_certificados.id_certificado;
          sistema          postgres    false    278                       1259    19280    t006_android_user_cfg    TABLE     ?   CREATE TABLE sistema.t006_android_user_cfg (
    id_droid_user integer NOT NULL,
    id_usuario integer,
    configuracion character varying,
    "timestamp" timestamp with time zone
);
 *   DROP TABLE sistema.t006_android_user_cfg;
       sistema         heap    postgres    false    6                       1259    19286 '   t006_android_user_cfg_id_droid_user_seq    SEQUENCE     ?   CREATE SEQUENCE sistema.t006_android_user_cfg_id_droid_user_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE sistema.t006_android_user_cfg_id_droid_user_seq;
       sistema          postgres    false    279    6            (           0    0 '   t006_android_user_cfg_id_droid_user_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE sistema.t006_android_user_cfg_id_droid_user_seq OWNED BY sistema.t006_android_user_cfg.id_droid_user;
          sistema          postgres    false    280                       1259    19288    t007_ios_user_cfg    TABLE     ?   CREATE TABLE sistema.t007_ios_user_cfg (
    id_ios_user integer NOT NULL,
    id_usuario integer,
    configuracion character varying,
    "timestamp" timestamp with time zone
);
 &   DROP TABLE sistema.t007_ios_user_cfg;
       sistema         heap    postgres    false    6                       1259    19294 !   t007_ios_user_cfg_id_ios_user_seq    SEQUENCE     ?   CREATE SEQUENCE sistema.t007_ios_user_cfg_id_ios_user_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE sistema.t007_ios_user_cfg_id_ios_user_seq;
       sistema          postgres    false    6    281            )           0    0 !   t007_ios_user_cfg_id_ios_user_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE sistema.t007_ios_user_cfg_id_ios_user_seq OWNED BY sistema.t007_ios_user_cfg.id_ios_user;
          sistema          postgres    false    282                       1259    19296    t008_web_user_cfg    TABLE     ?   CREATE TABLE sistema.t008_web_user_cfg (
    id_web_user integer NOT NULL,
    id_usuario integer,
    configuracion character varying,
    "timestamp" timestamp with time zone
);
 &   DROP TABLE sistema.t008_web_user_cfg;
       sistema         heap    postgres    false    6                       1259    19302 !   t008_web_user_cfg_id_web_user_seq    SEQUENCE     ?   CREATE SEQUENCE sistema.t008_web_user_cfg_id_web_user_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE sistema.t008_web_user_cfg_id_web_user_seq;
       sistema          postgres    false    6    283            *           0    0 !   t008_web_user_cfg_id_web_user_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE sistema.t008_web_user_cfg_id_web_user_seq OWNED BY sistema.t008_web_user_cfg.id_web_user;
          sistema          postgres    false    284                       1259    19304    h003_dispositivoid    TABLE     ?   CREATE TABLE usuarios.h003_dispositivoid (
    id_dispositivoid integer NOT NULL,
    id_tipo_dispositivoid integer,
    id_usuario integer,
    valor_id bigint,
    habilitado boolean
);
 (   DROP TABLE usuarios.h003_dispositivoid;
       usuarios         heap    postgres    false    11                       1259    19307 '   h003_dispositivoid_id_dispositivoid_seq    SEQUENCE     ?   CREATE SEQUENCE usuarios.h003_dispositivoid_id_dispositivoid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE usuarios.h003_dispositivoid_id_dispositivoid_seq;
       usuarios          postgres    false    285    11            +           0    0 '   h003_dispositivoid_id_dispositivoid_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE usuarios.h003_dispositivoid_id_dispositivoid_seq OWNED BY usuarios.h003_dispositivoid.id_dispositivoid;
          usuarios          postgres    false    286                       1259    19309    t001_usuario    TABLE     u  CREATE TABLE usuarios.t001_usuario (
    correo_e character varying(25),
    telefono character varying(25),
    nom_usuario character varying(100),
    ape_usuario character varying(100),
    doc_id integer,
    id_tipo_usuario integer,
    id_tipodoc_id integer,
    id_usuario integer NOT NULL,
    status integer,
    clave character varying(256),
    token integer
);
 "   DROP TABLE usuarios.t001_usuario;
       usuarios         heap    postgres    false    11                        1259    19312    t001_usuario_id_usuario_seq    SEQUENCE     ?   CREATE SEQUENCE usuarios.t001_usuario_id_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE usuarios.t001_usuario_id_usuario_seq;
       usuarios          postgres    false    287    11            ,           0    0    t001_usuario_id_usuario_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE usuarios.t001_usuario_id_usuario_seq OWNED BY usuarios.t001_usuario.id_usuario;
          usuarios          postgres    false    288            !           1259    19314    t002_tipousuario    TABLE     ~   CREATE TABLE usuarios.t002_tipousuario (
    id_tipo_usuario integer NOT NULL,
    dsc_tipo_usuario character varying(100)
);
 &   DROP TABLE usuarios.t002_tipousuario;
       usuarios         heap    postgres    false    11            "           1259    19317    t004_tipo_dispositivoid    TABLE     ?   CREATE TABLE usuarios.t004_tipo_dispositivoid (
    id_tipo_dispositivoid integer NOT NULL,
    dsc_tipodispositivoid character varying(150)
);
 -   DROP TABLE usuarios.t004_tipo_dispositivoid;
       usuarios         heap    postgres    false    11            #           1259    19320 1   t004_tipo_dispositivoid_id_tipo_dispositivoid_seq    SEQUENCE     ?   CREATE SEQUENCE usuarios.t004_tipo_dispositivoid_id_tipo_dispositivoid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 J   DROP SEQUENCE usuarios.t004_tipo_dispositivoid_id_tipo_dispositivoid_seq;
       usuarios          postgres    false    11    290            -           0    0 1   t004_tipo_dispositivoid_id_tipo_dispositivoid_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE usuarios.t004_tipo_dispositivoid_id_tipo_dispositivoid_seq OWNED BY usuarios.t004_tipo_dispositivoid.id_tipo_dispositivoid;
          usuarios          postgres    false    291            0           2604    19322    t001_vehiculo id_vehiculo    DEFAULT     ?   ALTER TABLE ONLY estacionamientos.t001_vehiculo ALTER COLUMN id_vehiculo SET DEFAULT nextval('estacionamientos.t001_vehiculo_id_vehiculo_seq'::regclass);
 R   ALTER TABLE estacionamientos.t001_vehiculo ALTER COLUMN id_vehiculo DROP DEFAULT;
       estacionamientos          postgres    false    209    208            1           2604    19323    t002_puesto_parking id_puesto    DEFAULT     ?   ALTER TABLE ONLY estacionamientos.t002_puesto_parking ALTER COLUMN id_puesto SET DEFAULT nextval('estacionamientos.t002_puesto_parking_id_puesto_seq'::regclass);
 V   ALTER TABLE estacionamientos.t002_puesto_parking ALTER COLUMN id_puesto DROP DEFAULT;
       estacionamientos          postgres    false    211    210            2           2604    19324    t003_entrada_parking id_entrada    DEFAULT     ?   ALTER TABLE ONLY estacionamientos.t003_entrada_parking ALTER COLUMN id_entrada SET DEFAULT nextval('estacionamientos.t003_entrada_parking_id_entrada_seq'::regclass);
 X   ALTER TABLE estacionamientos.t003_entrada_parking ALTER COLUMN id_entrada DROP DEFAULT;
       estacionamientos          postgres    false    213    212            3           2604    19325    t004_salida_parking id_salida    DEFAULT     ?   ALTER TABLE ONLY estacionamientos.t004_salida_parking ALTER COLUMN id_salida SET DEFAULT nextval('estacionamientos.t004_salida_parking_id_salida_seq'::regclass);
 V   ALTER TABLE estacionamientos.t004_salida_parking ALTER COLUMN id_salida DROP DEFAULT;
       estacionamientos          postgres    false    215    214            4           2604    19326    t005_tickets id_ticket    DEFAULT     ?   ALTER TABLE ONLY estacionamientos.t005_tickets ALTER COLUMN id_ticket SET DEFAULT nextval('estacionamientos.t005_tickets_id_ticket_seq'::regclass);
 O   ALTER TABLE estacionamientos.t005_tickets ALTER COLUMN id_ticket DROP DEFAULT;
       estacionamientos          postgres    false    217    216            5           2604    19327 %   t006_entrada_ticket id_entrada_ticket    DEFAULT     ?   ALTER TABLE ONLY estacionamientos.t006_entrada_ticket ALTER COLUMN id_entrada_ticket SET DEFAULT nextval('estacionamientos.t006_entrada_ticket_id_entrada_ticket_seq'::regclass);
 ^   ALTER TABLE estacionamientos.t006_entrada_ticket ALTER COLUMN id_entrada_ticket DROP DEFAULT;
       estacionamientos          postgres    false    219    218            6           2604    19328 #   t007_salida_ticket id_salida_ticket    DEFAULT     ?   ALTER TABLE ONLY estacionamientos.t007_salida_ticket ALTER COLUMN id_salida_ticket SET DEFAULT nextval('estacionamientos.t007_salida_ticket_id_salida_ticket_seq'::regclass);
 \   ALTER TABLE estacionamientos.t007_salida_ticket ALTER COLUMN id_salida_ticket DROP DEFAULT;
       estacionamientos          postgres    false    221    220            7           2604    19329 #   t008_puesto_ticket id_puesto_ticket    DEFAULT     ?   ALTER TABLE ONLY estacionamientos.t008_puesto_ticket ALTER COLUMN id_puesto_ticket SET DEFAULT nextval('estacionamientos.t008_puesto_ticket_id_puesto_ticket_seq'::regclass);
 \   ALTER TABLE estacionamientos.t008_puesto_ticket ALTER COLUMN id_puesto_ticket DROP DEFAULT;
       estacionamientos          postgres    false    223    222            8           2604    19330    t009_status_es id_status_es    DEFAULT     ?   ALTER TABLE ONLY estacionamientos.t009_status_es ALTER COLUMN id_status_es SET DEFAULT nextval('estacionamientos.t009_status_es_id_status_es_seq'::regclass);
 T   ALTER TABLE estacionamientos.t009_status_es ALTER COLUMN id_status_es DROP DEFAULT;
       estacionamientos          postgres    false    225    224            9           2604    19331 )   t010_clasificacion_es id_clasificacion_es    DEFAULT     ?   ALTER TABLE ONLY estacionamientos.t010_clasificacion_es ALTER COLUMN id_clasificacion_es SET DEFAULT nextval('estacionamientos.t010_clasificacion_es_id_clasificacion_es_seq'::regclass);
 b   ALTER TABLE estacionamientos.t010_clasificacion_es ALTER COLUMN id_clasificacion_es DROP DEFAULT;
       estacionamientos          postgres    false    227    226            :           2604    19332 "   t011_control_ticket id_ctrl_ticket    DEFAULT     ?   ALTER TABLE ONLY estacionamientos.t011_control_ticket ALTER COLUMN id_ctrl_ticket SET DEFAULT nextval('estacionamientos.t011_control_ticket_id_ctrl_ticket_seq'::regclass);
 [   ALTER TABLE estacionamientos.t011_control_ticket ALTER COLUMN id_ctrl_ticket DROP DEFAULT;
       estacionamientos          postgres    false    229    228            ;           2604    19333    h009_factura_mov id_fac_mov    DEFAULT     ?   ALTER TABLE ONLY finanzas.h009_factura_mov ALTER COLUMN id_fac_mov SET DEFAULT nextval('finanzas.h009_factura_mov_id_fac_mov_seq'::regclass);
 L   ALTER TABLE finanzas.h009_factura_mov ALTER COLUMN id_fac_mov DROP DEFAULT;
       finanzas          postgres    false    231    230            <           2604    19334 "   t001_mov_cta_usuario id_mov_cuenta    DEFAULT     ?   ALTER TABLE ONLY finanzas.t001_mov_cta_usuario ALTER COLUMN id_mov_cuenta SET DEFAULT nextval('finanzas.t001_mov_cta_usuario_id_mov_cuenta_seq'::regclass);
 S   ALTER TABLE finanzas.t001_mov_cta_usuario ALTER COLUMN id_mov_cuenta DROP DEFAULT;
       finanzas          postgres    false    233    232            =           2604    19335     t002_tipo_movimiento id_tipo_mov    DEFAULT     ?   ALTER TABLE ONLY finanzas.t002_tipo_movimiento ALTER COLUMN id_tipo_mov SET DEFAULT nextval('finanzas.t002_tipo_movimiento_id_tipo_mov_seq'::regclass);
 Q   ALTER TABLE finanzas.t002_tipo_movimiento ALTER COLUMN id_tipo_mov DROP DEFAULT;
       finanzas          postgres    false    235    234            >           2604    19336    t003_dsc_movimiento id_dsc_mov    DEFAULT     ?   ALTER TABLE ONLY finanzas.t003_dsc_movimiento ALTER COLUMN id_dsc_mov SET DEFAULT nextval('finanzas.t003_dsc_movimiento_dsc_mov_cta_seq'::regclass);
 O   ALTER TABLE finanzas.t003_dsc_movimiento ALTER COLUMN id_dsc_mov DROP DEFAULT;
       finanzas          postgres    false    237    236            ?           2604    19337 %   t004_moneda_referencial id_moneda_ref    DEFAULT     ?   ALTER TABLE ONLY finanzas.t004_moneda_referencial ALTER COLUMN id_moneda_ref SET DEFAULT nextval('finanzas.t004_moneda_referencial_id_moneda_ref_seq'::regclass);
 V   ALTER TABLE finanzas.t004_moneda_referencial ALTER COLUMN id_moneda_ref DROP DEFAULT;
       finanzas          postgres    false    239    238            @           2604    19338    t005_tarifas id_tarifa    DEFAULT     ?   ALTER TABLE ONLY finanzas.t005_tarifas ALTER COLUMN id_tarifa SET DEFAULT nextval('finanzas.t005_tarifas_id_tarifa_seq'::regclass);
 G   ALTER TABLE finanzas.t005_tarifas ALTER COLUMN id_tarifa DROP DEFAULT;
       finanzas          postgres    false    241    240            A           2604    19339    t006_impuestos id_impuesto    DEFAULT     ?   ALTER TABLE ONLY finanzas.t006_impuestos ALTER COLUMN id_impuesto SET DEFAULT nextval('finanzas.t006_cargos_impositivos_id_impuesto_seq'::regclass);
 K   ALTER TABLE finanzas.t006_impuestos ALTER COLUMN id_impuesto DROP DEFAULT;
       finanzas          postgres    false    243    242            B           2604    19340    t007_renglones id_renglon    DEFAULT     ?   ALTER TABLE ONLY finanzas.t007_renglones ALTER COLUMN id_renglon SET DEFAULT nextval('finanzas.t007_renglones_id_renglon_seq'::regclass);
 J   ALTER TABLE finanzas.t007_renglones ALTER COLUMN id_renglon DROP DEFAULT;
       finanzas          postgres    false    245    244            C           2604    19341    t008_factura id_factura    DEFAULT     ?   ALTER TABLE ONLY finanzas.t008_factura ALTER COLUMN id_factura SET DEFAULT nextval('finanzas.t008_factura_id_factura_seq'::regclass);
 H   ALTER TABLE finanzas.t008_factura ALTER COLUMN id_factura DROP DEFAULT;
       finanzas          postgres    false    247    246            D           2604    19342 !   t010_usuario_bancos id_usr_bancos    DEFAULT     ?   ALTER TABLE ONLY finanzas.t010_usuario_bancos ALTER COLUMN id_usr_bancos SET DEFAULT nextval('finanzas.t010_usuario_bancos_id_usr_bancos_seq'::regclass);
 R   ALTER TABLE finanzas.t010_usuario_bancos ALTER COLUMN id_usr_bancos DROP DEFAULT;
       finanzas          postgres    false    249    248            E           2604    19343    t011_paquetes id_paquete    DEFAULT     ?   ALTER TABLE ONLY finanzas.t011_paquetes ALTER COLUMN id_paquete SET DEFAULT nextval('finanzas.t011_paquetes_id_paquete_seq'::regclass);
 I   ALTER TABLE finanzas.t011_paquetes ALTER COLUMN id_paquete DROP DEFAULT;
       finanzas          postgres    false    251    250            F           2604    19344    t012_paqxuser id_paq_usuario    DEFAULT     ?   ALTER TABLE ONLY finanzas.t012_paqxuser ALTER COLUMN id_paq_usuario SET DEFAULT nextval('finanzas.t012_paqxuser_id_paq_usuario_seq'::regclass);
 M   ALTER TABLE finanzas.t012_paqxuser ALTER COLUMN id_paq_usuario DROP DEFAULT;
       finanzas          postgres    false    253    252            G           2604    19345    t013_paqxcom id_paq_comercio    DEFAULT     ?   ALTER TABLE ONLY finanzas.t013_paqxcom ALTER COLUMN id_paq_comercio SET DEFAULT nextval('finanzas.t013_paqxcom_id_paq_comercio_seq'::regclass);
 M   ALTER TABLE finanzas.t013_paqxcom ALTER COLUMN id_paq_comercio DROP DEFAULT;
       finanzas          postgres    false    255    254            H           2604    19346 !   t014_mov_paqxuser id_mov_paq_user    DEFAULT     ?   ALTER TABLE ONLY finanzas.t014_mov_paqxuser ALTER COLUMN id_mov_paq_user SET DEFAULT nextval('finanzas.t014_mov_paqxuser_id_mov_paq_user_seq'::regclass);
 R   ALTER TABLE finanzas.t014_mov_paqxuser ALTER COLUMN id_mov_paq_user DROP DEFAULT;
       finanzas          postgres    false    257    256            I           2604    19347    t001_comercio id_comercio    DEFAULT     ?   ALTER TABLE ONLY negocio.t001_comercio ALTER COLUMN id_comercio SET DEFAULT nextval('negocio.t001_comercio_id_comercio_seq'::regclass);
 I   ALTER TABLE negocio.t001_comercio ALTER COLUMN id_comercio DROP DEFAULT;
       negocio          postgres    false    260    259            J           2604    19348    t002_tipo_servicio id_servicio    DEFAULT     ?   ALTER TABLE ONLY negocio.t002_tipo_servicio ALTER COLUMN id_servicio SET DEFAULT nextval('negocio.t002_tipo_servicio_id_servicio_seq'::regclass);
 N   ALTER TABLE negocio.t002_tipo_servicio ALTER COLUMN id_servicio DROP DEFAULT;
       negocio          postgres    false    262    261            K           2604    19349 #   t003_tipo_comercio id_tipo_comercio    DEFAULT     ?   ALTER TABLE ONLY negocio.t003_tipo_comercio ALTER COLUMN id_tipo_comercio SET DEFAULT nextval('negocio.t003_tipo_comercio_id_tipo_comercio_seq'::regclass);
 S   ALTER TABLE negocio.t003_tipo_comercio ALTER COLUMN id_tipo_comercio DROP DEFAULT;
       negocio          postgres    false    264    263            L           2604    19350    t013_grupo_corp id_grupo_corp    DEFAULT     ?   ALTER TABLE ONLY negocio.t013_grupo_corp ALTER COLUMN id_grupo_corp SET DEFAULT nextval('negocio.t013_grupo_corp_id_grupo_corp_seq'::regclass);
 M   ALTER TABLE negocio.t013_grupo_corp ALTER COLUMN id_grupo_corp DROP DEFAULT;
       negocio          postgres    false    266    265            M           2604    19351    t014_status status    DEFAULT     z   ALTER TABLE ONLY negocio.t014_status ALTER COLUMN status SET DEFAULT nextval('negocio.t014_status_status_seq'::regclass);
 B   ALTER TABLE negocio.t014_status ALTER COLUMN status DROP DEFAULT;
       negocio          postgres    false    268    267            N           2604    19352    t001_math id_math    DEFAULT     x   ALTER TABLE ONLY sistema.t001_math ALTER COLUMN id_math SET DEFAULT nextval('sistema.t001_math_id_math_seq'::regclass);
 A   ALTER TABLE sistema.t001_math ALTER COLUMN id_math DROP DEFAULT;
       sistema          postgres    false    270    269            O           2604    19353    t002_apk id_apk    DEFAULT     t   ALTER TABLE ONLY sistema.t002_apk ALTER COLUMN id_apk SET DEFAULT nextval('sistema.t002_apk_id_apk_seq'::regclass);
 ?   ALTER TABLE sistema.t002_apk ALTER COLUMN id_apk DROP DEFAULT;
       sistema          postgres    false    272    271            P           2604    19354    t003_ios id_ios    DEFAULT     t   ALTER TABLE ONLY sistema.t003_ios ALTER COLUMN id_ios SET DEFAULT nextval('sistema.t003_ios_id_ios_seq'::regclass);
 ?   ALTER TABLE sistema.t003_ios ALTER COLUMN id_ios DROP DEFAULT;
       sistema          postgres    false    274    273            Q           2604    19355    t004_licencia id_licencia    DEFAULT     ?   ALTER TABLE ONLY sistema.t004_licencia ALTER COLUMN id_licencia SET DEFAULT nextval('sistema.t004_licencia_id_licencia_seq'::regclass);
 I   ALTER TABLE sistema.t004_licencia ALTER COLUMN id_licencia DROP DEFAULT;
       sistema          postgres    false    276    275            R           2604    19356     t005_certificados id_certificado    DEFAULT     ?   ALTER TABLE ONLY sistema.t005_certificados ALTER COLUMN id_certificado SET DEFAULT nextval('sistema.t005_certificados_id_certificado_seq'::regclass);
 P   ALTER TABLE sistema.t005_certificados ALTER COLUMN id_certificado DROP DEFAULT;
       sistema          postgres    false    278    277            S           2604    19357 #   t006_android_user_cfg id_droid_user    DEFAULT     ?   ALTER TABLE ONLY sistema.t006_android_user_cfg ALTER COLUMN id_droid_user SET DEFAULT nextval('sistema.t006_android_user_cfg_id_droid_user_seq'::regclass);
 S   ALTER TABLE sistema.t006_android_user_cfg ALTER COLUMN id_droid_user DROP DEFAULT;
       sistema          postgres    false    280    279            T           2604    19358    t007_ios_user_cfg id_ios_user    DEFAULT     ?   ALTER TABLE ONLY sistema.t007_ios_user_cfg ALTER COLUMN id_ios_user SET DEFAULT nextval('sistema.t007_ios_user_cfg_id_ios_user_seq'::regclass);
 M   ALTER TABLE sistema.t007_ios_user_cfg ALTER COLUMN id_ios_user DROP DEFAULT;
       sistema          postgres    false    282    281            U           2604    19359    t008_web_user_cfg id_web_user    DEFAULT     ?   ALTER TABLE ONLY sistema.t008_web_user_cfg ALTER COLUMN id_web_user SET DEFAULT nextval('sistema.t008_web_user_cfg_id_web_user_seq'::regclass);
 M   ALTER TABLE sistema.t008_web_user_cfg ALTER COLUMN id_web_user DROP DEFAULT;
       sistema          postgres    false    284    283            V           2604    19360 #   h003_dispositivoid id_dispositivoid    DEFAULT     ?   ALTER TABLE ONLY usuarios.h003_dispositivoid ALTER COLUMN id_dispositivoid SET DEFAULT nextval('usuarios.h003_dispositivoid_id_dispositivoid_seq'::regclass);
 T   ALTER TABLE usuarios.h003_dispositivoid ALTER COLUMN id_dispositivoid DROP DEFAULT;
       usuarios          postgres    false    286    285            W           2604    19361    t001_usuario id_usuario    DEFAULT     ?   ALTER TABLE ONLY usuarios.t001_usuario ALTER COLUMN id_usuario SET DEFAULT nextval('usuarios.t001_usuario_id_usuario_seq'::regclass);
 H   ALTER TABLE usuarios.t001_usuario ALTER COLUMN id_usuario DROP DEFAULT;
       usuarios          postgres    false    288    287            X           2604    19362 -   t004_tipo_dispositivoid id_tipo_dispositivoid    DEFAULT     ?   ALTER TABLE ONLY usuarios.t004_tipo_dispositivoid ALTER COLUMN id_tipo_dispositivoid SET DEFAULT nextval('usuarios.t004_tipo_dispositivoid_id_tipo_dispositivoid_seq'::regclass);
 ^   ALTER TABLE usuarios.t004_tipo_dispositivoid ALTER COLUMN id_tipo_dispositivoid DROP DEFAULT;
       usuarios          postgres    false    291    290            ?          0    19083    t001_tipo_docid 
   TABLE DATA           S   COPY base.t001_tipo_docid (id_tipodoc_id, acro_doc_id, dsc_tipodoc_id) FROM stdin;
    base          postgres    false    207   ?+      ?          0    19087    t001_vehiculo 
   TABLE DATA           c   COPY estacionamientos.t001_vehiculo (id_vehiculo, id_usuario, placa, rfid_uhf, activo) FROM stdin;
    estacionamientos          postgres    false    208   U,      ?          0    19092    t002_puesto_parking 
   TABLE DATA           ?   COPY estacionamientos.t002_puesto_parking (id_puesto, id_comercio, id_clasificacion_es, dsc_puesto, svg_puesto, disponible) FROM stdin;
    estacionamientos          postgres    false    210   ,      ?          0    19100    t003_entrada_parking 
   TABLE DATA           ?   COPY estacionamientos.t003_entrada_parking (id_entrada, id_comercio, ubi_entrada, svg_entrada, img_entrada, id_status_es, id_clasificacion_es) FROM stdin;
    estacionamientos          postgres    false    212   ?,      ?          0    19108    t004_salida_parking 
   TABLE DATA           ?   COPY estacionamientos.t004_salida_parking (id_salida, id_comercio, ubi_salida, svg_salida, img_salida, id_status_es, id_clasificacion_es) FROM stdin;
    estacionamientos          postgres    false    214   ?,      ?          0    19116    t005_tickets 
   TABLE DATA           ]   COPY estacionamientos.t005_tickets (id_ticket, id_vehiculo, status, "timestamp") FROM stdin;
    estacionamientos          postgres    false    216   ?,      ?          0    19121    t006_entrada_ticket 
   TABLE DATA           n   COPY estacionamientos.t006_entrada_ticket (id_entrada_ticket, id_ticket, "timestamp", id_entrada) FROM stdin;
    estacionamientos          postgres    false    218   ?,      ?          0    19126    t007_salida_ticket 
   TABLE DATA           k   COPY estacionamientos.t007_salida_ticket (id_salida_ticket, id_ticket, "timestamp", id_salida) FROM stdin;
    estacionamientos          postgres    false    220   -      ?          0    19131    t008_puesto_ticket 
   TABLE DATA           k   COPY estacionamientos.t008_puesto_ticket (id_puesto_ticket, id_ticket, "timestamp", id_puesto) FROM stdin;
    estacionamientos          postgres    false    222   --      ?          0    19136    t009_status_es 
   TABLE DATA           O   COPY estacionamientos.t009_status_es (dsc_status_es, id_status_es) FROM stdin;
    estacionamientos          postgres    false    224   J-      ?          0    19141    t010_clasificacion_es 
   TABLE DATA           d   COPY estacionamientos.t010_clasificacion_es (id_clasificacion_es, dsc_clasificacion_es) FROM stdin;
    estacionamientos          postgres    false    226   ?-      ?          0    19146    t011_control_ticket 
   TABLE DATA           l   COPY estacionamientos.t011_control_ticket (id_ctrl_ticket, id_ticket, id_comercio, num_control) FROM stdin;
    estacionamientos          postgres    false    228   ?-      ?          0    19151    h009_factura_mov 
   TABLE DATA           S   COPY finanzas.h009_factura_mov (id_fac_mov, id_factura, id_mov_cuenta) FROM stdin;
    finanzas          postgres    false    230   ?-      ?          0    19156    t001_mov_cta_usuario 
   TABLE DATA           ?   COPY finanzas.t001_mov_cta_usuario (id_mov_cuenta, id_usuario, id_comercio, id_tipo_mov, id_dsc_mov, id_impuesto, "timestamp", monto, saldo) FROM stdin;
    finanzas          postgres    false    232   ?-      ?          0    19161    t002_tipo_movimiento 
   TABLE DATA           K   COPY finanzas.t002_tipo_movimiento (id_tipo_mov, dsc_tipo_mov) FROM stdin;
    finanzas          postgres    false    234   ?-      ?          0    19166    t003_dsc_movimiento 
   TABLE DATA           H   COPY finanzas.t003_dsc_movimiento (id_dsc_mov, dsc_mov_cta) FROM stdin;
    finanzas          postgres    false    236   g.      ?          0    19171    t004_moneda_referencial 
   TABLE DATA           {   COPY finanzas.t004_moneda_referencial (id_moneda_ref, id_comercio, valor_moneda, denominacion, simbolo, fecha) FROM stdin;
    finanzas          postgres    false    238   ?.      ?          0    19176    t005_tarifas 
   TABLE DATA           w   COPY finanzas.t005_tarifas (id_tarifa, id_renglon, id_moneda_ref, monto, fecha_ini, fecha_fin, porcentaje) FROM stdin;
    finanzas          postgres    false    240   3/      ?          0    19181    t006_impuestos 
   TABLE DATA           p   COPY finanzas.t006_impuestos (id_impuesto, id_comercio, dsc_impuesto, porcentaje, fecha_aplicacion) FROM stdin;
    finanzas          postgres    false    242   P/      ?          0    19186    t007_renglones 
   TABLE DATA           P   COPY finanzas.t007_renglones (id_renglon, id_comercio, dsc_renglon) FROM stdin;
    finanzas          postgres    false    244   m/      ?          0    19191    t008_factura 
   TABLE DATA           ?   COPY finanzas.t008_factura (id_factura, id_usuario, id_comercio, id_moneda_ref, descripcion, fecha_emision, ruta_pdf) FROM stdin;
    finanzas          postgres    false    246   ?/      ?          0    19199    t010_usuario_bancos 
   TABLE DATA           a   COPY finanzas.t010_usuario_bancos (id_usr_bancos, id_usuario, num_cuenta, nom_banco) FROM stdin;
    finanzas          postgres    false    248   ?/      ?          0    19204    t011_paquetes 
   TABLE DATA           \   COPY finanzas.t011_paquetes (dsc_paquete, entradas, dias, pernocta, id_paquete) FROM stdin;
    finanzas          postgres    false    250   ?/      ?          0    19209    t012_paqxuser 
   TABLE DATA           _   COPY finanzas.t012_paqxuser (id_paquete, fecha_inicio, id_usuario, id_paq_usuario) FROM stdin;
    finanzas          postgres    false    252   ?/      ?          0    19214    t013_paqxcom 
   TABLE DATA           ?   COPY finanzas.t013_paqxcom (id_paquete, id_comercio, fecha_ini, fecha_fin, id_paq_comercio, hora_ini, hora_fin, habilitar_finsemana) FROM stdin;
    finanzas          postgres    false    254   ?/      ?          0    19219    t014_mov_paqxuser 
   TABLE DATA           p   COPY finanzas.t014_mov_paqxuser (id_mov_paq_user, id_paquete, id_usuario, id_comercio, fecha, hora) FROM stdin;
    finanzas          postgres    false    256   0      ?          0    19224 
   t015_saldo 
   TABLE DATA           n   COPY finanzas.t015_saldo (id_num_cuenta, id_usuario, status_cta, fch_ultima_actualizacion, saldo) FROM stdin;
    finanzas          postgres    false    258   80      ?          0    19227    t001_comercio 
   TABLE DATA           ?   COPY negocio.t001_comercio (rif, email, dir_coordenadas, id_comercio, dir_politica, id_servicio, id_grupo_corp, nom_comercio, tlf_local, tlf_movil, svg_comercio, id_tipo_comercio) FROM stdin;
    negocio          postgres    false    259   U0      ?          0    19235    t002_tipo_servicio 
   TABLE DATA           H   COPY negocio.t002_tipo_servicio (id_servicio, dsc_servicio) FROM stdin;
    negocio          postgres    false    261   ?0      ?          0    19240    t003_tipo_comercio 
   TABLE DATA           R   COPY negocio.t003_tipo_comercio (id_tipo_comercio, dsc_tipo_comercio) FROM stdin;
    negocio          postgres    false    263   ?0      ?          0    19245    t013_grupo_corp 
   TABLE DATA           ^   COPY negocio.t013_grupo_corp (id_grupo_corp, rif, email, telefono, nom_grupocorp) FROM stdin;
    negocio          postgres    false    265   ?1      ?          0    19250    t014_status 
   TABLE DATA           :   COPY negocio.t014_status (status, dsc_status) FROM stdin;
    negocio          postgres    false    267   >2      ?          0    19255 	   t001_math 
   TABLE DATA           ?   COPY sistema.t001_math (id_math, version, configuracion, id_comercio, fch_actualizacion, id_licencia, id_certificado) FROM stdin;
    sistema          postgres    false    269   x2      ?          0    19260    t002_apk 
   TABLE DATA           W   COPY sistema.t002_apk (id_apk, id_certificado, version, fch_actualizacion) FROM stdin;
    sistema          postgres    false    271   ?2      ?          0    19265    t003_ios 
   TABLE DATA           W   COPY sistema.t003_ios (id_ios, id_certificado, version, fch_actualizacion) FROM stdin;
    sistema          postgres    false    273   ?2      ?          0    19270    t004_licencia 
   TABLE DATA           [   COPY sistema.t004_licencia (id_licencia, version, fch_implementacion, doc_pdf) FROM stdin;
    sistema          postgres    false    275   ?2      ?          0    19275    t005_certificados 
   TABLE DATA           c   COPY sistema.t005_certificados (id_certificado, algoritmo, version, fch_actualizacion) FROM stdin;
    sistema          postgres    false    277   ?2      ?          0    19280    t006_android_user_cfg 
   TABLE DATA           g   COPY sistema.t006_android_user_cfg (id_droid_user, id_usuario, configuracion, "timestamp") FROM stdin;
    sistema          postgres    false    279   	3      ?          0    19288    t007_ios_user_cfg 
   TABLE DATA           a   COPY sistema.t007_ios_user_cfg (id_ios_user, id_usuario, configuracion, "timestamp") FROM stdin;
    sistema          postgres    false    281   &3      ?          0    19296    t008_web_user_cfg 
   TABLE DATA           a   COPY sistema.t008_web_user_cfg (id_web_user, id_usuario, configuracion, "timestamp") FROM stdin;
    sistema          postgres    false    283   C3      ?          0    19304    h003_dispositivoid 
   TABLE DATA           y   COPY usuarios.h003_dispositivoid (id_dispositivoid, id_tipo_dispositivoid, id_usuario, valor_id, habilitado) FROM stdin;
    usuarios          postgres    false    285   `3      ?          0    19309    t001_usuario 
   TABLE DATA           ?   COPY usuarios.t001_usuario (correo_e, telefono, nom_usuario, ape_usuario, doc_id, id_tipo_usuario, id_tipodoc_id, id_usuario, status, clave, token) FROM stdin;
    usuarios          postgres    false    287   ?3      ?          0    19314    t002_tipousuario 
   TABLE DATA           O   COPY usuarios.t002_tipousuario (id_tipo_usuario, dsc_tipo_usuario) FROM stdin;
    usuarios          postgres    false    289   64      ?          0    19317    t004_tipo_dispositivoid 
   TABLE DATA           a   COPY usuarios.t004_tipo_dispositivoid (id_tipo_dispositivoid, dsc_tipodispositivoid) FROM stdin;
    usuarios          postgres    false    290   ?4      .           0    0 !   t001_tipo_docid_id_tipodoc_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('base.t001_tipo_docid_id_tipodoc_id_seq', 1, false);
          base          postgres    false    206            /           0    0    t001_vehiculo_id_vehiculo_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('estacionamientos.t001_vehiculo_id_vehiculo_seq', 1, true);
          estacionamientos          postgres    false    209            0           0    0 !   t002_puesto_parking_id_puesto_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('estacionamientos.t002_puesto_parking_id_puesto_seq', 1, false);
          estacionamientos          postgres    false    211            1           0    0 #   t003_entrada_parking_id_entrada_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('estacionamientos.t003_entrada_parking_id_entrada_seq', 1, false);
          estacionamientos          postgres    false    213            2           0    0 !   t004_salida_parking_id_salida_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('estacionamientos.t004_salida_parking_id_salida_seq', 1, false);
          estacionamientos          postgres    false    215            3           0    0    t005_tickets_id_ticket_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('estacionamientos.t005_tickets_id_ticket_seq', 1, false);
          estacionamientos          postgres    false    217            4           0    0 )   t006_entrada_ticket_id_entrada_ticket_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('estacionamientos.t006_entrada_ticket_id_entrada_ticket_seq', 1, false);
          estacionamientos          postgres    false    219            5           0    0 '   t007_salida_ticket_id_salida_ticket_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('estacionamientos.t007_salida_ticket_id_salida_ticket_seq', 1, false);
          estacionamientos          postgres    false    221            6           0    0 '   t008_puesto_ticket_id_puesto_ticket_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('estacionamientos.t008_puesto_ticket_id_puesto_ticket_seq', 1, false);
          estacionamientos          postgres    false    223            7           0    0    t009_status_es_id_status_es_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('estacionamientos.t009_status_es_id_status_es_seq', 3, true);
          estacionamientos          postgres    false    225            8           0    0 -   t010_clasificacion_es_id_clasificacion_es_seq    SEQUENCE SET     f   SELECT pg_catalog.setval('estacionamientos.t010_clasificacion_es_id_clasificacion_es_seq', 1, false);
          estacionamientos          postgres    false    227            9           0    0 &   t011_control_ticket_id_ctrl_ticket_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('estacionamientos.t011_control_ticket_id_ctrl_ticket_seq', 1, false);
          estacionamientos          postgres    false    229            :           0    0    h009_factura_mov_id_fac_mov_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('finanzas.h009_factura_mov_id_fac_mov_seq', 1, false);
          finanzas          postgres    false    231            ;           0    0 &   t001_mov_cta_usuario_id_mov_cuenta_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('finanzas.t001_mov_cta_usuario_id_mov_cuenta_seq', 1, false);
          finanzas          postgres    false    233            <           0    0 $   t002_tipo_movimiento_id_tipo_mov_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('finanzas.t002_tipo_movimiento_id_tipo_mov_seq', 8, true);
          finanzas          postgres    false    235            =           0    0 #   t003_dsc_movimiento_dsc_mov_cta_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('finanzas.t003_dsc_movimiento_dsc_mov_cta_seq', 9, true);
          finanzas          postgres    false    237            >           0    0 )   t004_moneda_referencial_id_moneda_ref_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('finanzas.t004_moneda_referencial_id_moneda_ref_seq', 2, true);
          finanzas          postgres    false    239            ?           0    0    t005_tarifas_id_tarifa_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('finanzas.t005_tarifas_id_tarifa_seq', 1, false);
          finanzas          postgres    false    241            @           0    0 '   t006_cargos_impositivos_id_impuesto_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('finanzas.t006_cargos_impositivos_id_impuesto_seq', 1, false);
          finanzas          postgres    false    243            A           0    0    t007_renglones_id_renglon_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('finanzas.t007_renglones_id_renglon_seq', 1, false);
          finanzas          postgres    false    245            B           0    0    t008_factura_id_factura_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('finanzas.t008_factura_id_factura_seq', 1, false);
          finanzas          postgres    false    247            C           0    0 %   t010_usuario_bancos_id_usr_bancos_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('finanzas.t010_usuario_bancos_id_usr_bancos_seq', 1, false);
          finanzas          postgres    false    249            D           0    0    t011_paquetes_id_paquete_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('finanzas.t011_paquetes_id_paquete_seq', 1, false);
          finanzas          postgres    false    251            E           0    0     t012_paqxuser_id_paq_usuario_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('finanzas.t012_paqxuser_id_paq_usuario_seq', 1, false);
          finanzas          postgres    false    253            F           0    0     t013_paqxcom_id_paq_comercio_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('finanzas.t013_paqxcom_id_paq_comercio_seq', 1, false);
          finanzas          postgres    false    255            G           0    0 %   t014_mov_paqxuser_id_mov_paq_user_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('finanzas.t014_mov_paqxuser_id_mov_paq_user_seq', 1, false);
          finanzas          postgres    false    257            H           0    0    t001_comercio_id_comercio_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('negocio.t001_comercio_id_comercio_seq', 1, true);
          negocio          postgres    false    260            I           0    0 "   t002_tipo_servicio_id_servicio_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('negocio.t002_tipo_servicio_id_servicio_seq', 4, true);
          negocio          postgres    false    262            J           0    0 '   t003_tipo_comercio_id_tipo_comercio_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('negocio.t003_tipo_comercio_id_tipo_comercio_seq', 22, true);
          negocio          postgres    false    264            K           0    0 !   t013_grupo_corp_id_grupo_corp_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('negocio.t013_grupo_corp_id_grupo_corp_seq', 2, true);
          negocio          postgres    false    266            L           0    0    t014_status_status_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('negocio.t014_status_status_seq', 3, true);
          negocio          postgres    false    268            M           0    0    t001_math_id_math_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('sistema.t001_math_id_math_seq', 1, false);
          sistema          postgres    false    270            N           0    0    t002_apk_id_apk_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('sistema.t002_apk_id_apk_seq', 1, false);
          sistema          postgres    false    272            O           0    0    t003_ios_id_ios_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('sistema.t003_ios_id_ios_seq', 1, false);
          sistema          postgres    false    274            P           0    0    t004_licencia_id_licencia_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('sistema.t004_licencia_id_licencia_seq', 1, false);
          sistema          postgres    false    276            Q           0    0 $   t005_certificados_id_certificado_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('sistema.t005_certificados_id_certificado_seq', 1, false);
          sistema          postgres    false    278            R           0    0 '   t006_android_user_cfg_id_droid_user_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('sistema.t006_android_user_cfg_id_droid_user_seq', 1, false);
          sistema          postgres    false    280            S           0    0 !   t007_ios_user_cfg_id_ios_user_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('sistema.t007_ios_user_cfg_id_ios_user_seq', 1, false);
          sistema          postgres    false    282            T           0    0 !   t008_web_user_cfg_id_web_user_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('sistema.t008_web_user_cfg_id_web_user_seq', 1, false);
          sistema          postgres    false    284            U           0    0 '   h003_dispositivoid_id_dispositivoid_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('usuarios.h003_dispositivoid_id_dispositivoid_seq', 1, true);
          usuarios          postgres    false    286            V           0    0    t001_usuario_id_usuario_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('usuarios.t001_usuario_id_usuario_seq', 9, true);
          usuarios          postgres    false    288            W           0    0 1   t004_tipo_dispositivoid_id_tipo_dispositivoid_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('usuarios.t004_tipo_dispositivoid_id_tipo_dispositivoid_seq', 8, true);
          usuarios          postgres    false    291            Z           2606    19364 $   t001_tipo_docid t001_tipo_docid_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY base.t001_tipo_docid
    ADD CONSTRAINT t001_tipo_docid_pkey PRIMARY KEY (id_tipodoc_id);
 L   ALTER TABLE ONLY base.t001_tipo_docid DROP CONSTRAINT t001_tipo_docid_pkey;
       base            postgres    false    207            ]           2606    19366     t001_vehiculo t001_vehiculo_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY estacionamientos.t001_vehiculo
    ADD CONSTRAINT t001_vehiculo_pkey PRIMARY KEY (id_vehiculo);
 T   ALTER TABLE ONLY estacionamientos.t001_vehiculo DROP CONSTRAINT t001_vehiculo_pkey;
       estacionamientos            postgres    false    208            a           2606    19368 ,   t002_puesto_parking t002_puesto_parking_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY estacionamientos.t002_puesto_parking
    ADD CONSTRAINT t002_puesto_parking_pkey PRIMARY KEY (id_puesto);
 `   ALTER TABLE ONLY estacionamientos.t002_puesto_parking DROP CONSTRAINT t002_puesto_parking_pkey;
       estacionamientos            postgres    false    210            f           2606    19370 .   t003_entrada_parking t003_entrada_parking_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY estacionamientos.t003_entrada_parking
    ADD CONSTRAINT t003_entrada_parking_pkey PRIMARY KEY (id_entrada);
 b   ALTER TABLE ONLY estacionamientos.t003_entrada_parking DROP CONSTRAINT t003_entrada_parking_pkey;
       estacionamientos            postgres    false    212            k           2606    19372 ,   t004_salida_parking t004_salida_parking_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY estacionamientos.t004_salida_parking
    ADD CONSTRAINT t004_salida_parking_pkey PRIMARY KEY (id_salida);
 `   ALTER TABLE ONLY estacionamientos.t004_salida_parking DROP CONSTRAINT t004_salida_parking_pkey;
       estacionamientos            postgres    false    214            o           2606    19374    t005_tickets t005_tickets_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY estacionamientos.t005_tickets
    ADD CONSTRAINT t005_tickets_pkey PRIMARY KEY (id_ticket);
 R   ALTER TABLE ONLY estacionamientos.t005_tickets DROP CONSTRAINT t005_tickets_pkey;
       estacionamientos            postgres    false    216            s           2606    19376 ,   t006_entrada_ticket t006_entrada_ticket_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY estacionamientos.t006_entrada_ticket
    ADD CONSTRAINT t006_entrada_ticket_pkey PRIMARY KEY (id_entrada_ticket);
 `   ALTER TABLE ONLY estacionamientos.t006_entrada_ticket DROP CONSTRAINT t006_entrada_ticket_pkey;
       estacionamientos            postgres    false    218            w           2606    19378 *   t007_salida_ticket t007_salida_ticket_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY estacionamientos.t007_salida_ticket
    ADD CONSTRAINT t007_salida_ticket_pkey PRIMARY KEY (id_salida_ticket);
 ^   ALTER TABLE ONLY estacionamientos.t007_salida_ticket DROP CONSTRAINT t007_salida_ticket_pkey;
       estacionamientos            postgres    false    220            {           2606    19380 *   t008_puesto_ticket t008_puesto_ticket_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY estacionamientos.t008_puesto_ticket
    ADD CONSTRAINT t008_puesto_ticket_pkey PRIMARY KEY (id_puesto_ticket);
 ^   ALTER TABLE ONLY estacionamientos.t008_puesto_ticket DROP CONSTRAINT t008_puesto_ticket_pkey;
       estacionamientos            postgres    false    222            }           2606    19382 "   t009_status_es t009_status_es_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY estacionamientos.t009_status_es
    ADD CONSTRAINT t009_status_es_pkey PRIMARY KEY (id_status_es);
 V   ALTER TABLE ONLY estacionamientos.t009_status_es DROP CONSTRAINT t009_status_es_pkey;
       estacionamientos            postgres    false    224                       2606    19384 0   t010_clasificacion_es t010_clasificacion_es_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY estacionamientos.t010_clasificacion_es
    ADD CONSTRAINT t010_clasificacion_es_pkey PRIMARY KEY (id_clasificacion_es);
 d   ALTER TABLE ONLY estacionamientos.t010_clasificacion_es DROP CONSTRAINT t010_clasificacion_es_pkey;
       estacionamientos            postgres    false    226            ?           2606    19386 ,   t011_control_ticket t011_control_ticket_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY estacionamientos.t011_control_ticket
    ADD CONSTRAINT t011_control_ticket_pkey PRIMARY KEY (id_ctrl_ticket);
 `   ALTER TABLE ONLY estacionamientos.t011_control_ticket DROP CONSTRAINT t011_control_ticket_pkey;
       estacionamientos            postgres    false    228            ?           2606    19388 &   h009_factura_mov h009_factura_mov_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY finanzas.h009_factura_mov
    ADD CONSTRAINT h009_factura_mov_pkey PRIMARY KEY (id_fac_mov);
 R   ALTER TABLE ONLY finanzas.h009_factura_mov DROP CONSTRAINT h009_factura_mov_pkey;
       finanzas            postgres    false    230            ?           2606    19390 .   t001_mov_cta_usuario t001_mov_cta_usuario_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY finanzas.t001_mov_cta_usuario
    ADD CONSTRAINT t001_mov_cta_usuario_pkey PRIMARY KEY (id_mov_cuenta);
 Z   ALTER TABLE ONLY finanzas.t001_mov_cta_usuario DROP CONSTRAINT t001_mov_cta_usuario_pkey;
       finanzas            postgres    false    232            ?           2606    19392 .   t002_tipo_movimiento t002_tipo_movimiento_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY finanzas.t002_tipo_movimiento
    ADD CONSTRAINT t002_tipo_movimiento_pkey PRIMARY KEY (id_tipo_mov);
 Z   ALTER TABLE ONLY finanzas.t002_tipo_movimiento DROP CONSTRAINT t002_tipo_movimiento_pkey;
       finanzas            postgres    false    234            ?           2606    19394 ,   t003_dsc_movimiento t003_dsc_movimiento_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY finanzas.t003_dsc_movimiento
    ADD CONSTRAINT t003_dsc_movimiento_pkey PRIMARY KEY (id_dsc_mov);
 X   ALTER TABLE ONLY finanzas.t003_dsc_movimiento DROP CONSTRAINT t003_dsc_movimiento_pkey;
       finanzas            postgres    false    236            ?           2606    19396 4   t004_moneda_referencial t004_moneda_referencial_pkey 
   CONSTRAINT        ALTER TABLE ONLY finanzas.t004_moneda_referencial
    ADD CONSTRAINT t004_moneda_referencial_pkey PRIMARY KEY (id_moneda_ref);
 `   ALTER TABLE ONLY finanzas.t004_moneda_referencial DROP CONSTRAINT t004_moneda_referencial_pkey;
       finanzas            postgres    false    238            ?           2606    19398    t005_tarifas t005_tarifas_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY finanzas.t005_tarifas
    ADD CONSTRAINT t005_tarifas_pkey PRIMARY KEY (id_tarifa);
 J   ALTER TABLE ONLY finanzas.t005_tarifas DROP CONSTRAINT t005_tarifas_pkey;
       finanzas            postgres    false    240            ?           2606    19400 "   t006_impuestos t006_impuestos_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY finanzas.t006_impuestos
    ADD CONSTRAINT t006_impuestos_pkey PRIMARY KEY (id_impuesto);
 N   ALTER TABLE ONLY finanzas.t006_impuestos DROP CONSTRAINT t006_impuestos_pkey;
       finanzas            postgres    false    242            ?           2606    19402 "   t007_renglones t007_renglones_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY finanzas.t007_renglones
    ADD CONSTRAINT t007_renglones_pkey PRIMARY KEY (id_renglon);
 N   ALTER TABLE ONLY finanzas.t007_renglones DROP CONSTRAINT t007_renglones_pkey;
       finanzas            postgres    false    244            ?           2606    19404    t008_factura t008_factura_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY finanzas.t008_factura
    ADD CONSTRAINT t008_factura_pkey PRIMARY KEY (id_factura);
 J   ALTER TABLE ONLY finanzas.t008_factura DROP CONSTRAINT t008_factura_pkey;
       finanzas            postgres    false    246            ?           2606    19406 ,   t010_usuario_bancos t010_usuario_bancos_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY finanzas.t010_usuario_bancos
    ADD CONSTRAINT t010_usuario_bancos_pkey PRIMARY KEY (id_usr_bancos);
 X   ALTER TABLE ONLY finanzas.t010_usuario_bancos DROP CONSTRAINT t010_usuario_bancos_pkey;
       finanzas            postgres    false    248            ?           2606    19408     t011_paquetes t011_paquetes_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY finanzas.t011_paquetes
    ADD CONSTRAINT t011_paquetes_pkey PRIMARY KEY (id_paquete);
 L   ALTER TABLE ONLY finanzas.t011_paquetes DROP CONSTRAINT t011_paquetes_pkey;
       finanzas            postgres    false    250            ?           2606    19410     t012_paqxuser t012_paqxuser_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY finanzas.t012_paqxuser
    ADD CONSTRAINT t012_paqxuser_pkey PRIMARY KEY (id_paq_usuario);
 L   ALTER TABLE ONLY finanzas.t012_paqxuser DROP CONSTRAINT t012_paqxuser_pkey;
       finanzas            postgres    false    252            ?           2606    19412    t013_paqxcom t013_paqxcom_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY finanzas.t013_paqxcom
    ADD CONSTRAINT t013_paqxcom_pkey PRIMARY KEY (id_paq_comercio);
 J   ALTER TABLE ONLY finanzas.t013_paqxcom DROP CONSTRAINT t013_paqxcom_pkey;
       finanzas            postgres    false    254            ?           2606    19414 (   t014_mov_paqxuser t014_mov_paqxuser_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY finanzas.t014_mov_paqxuser
    ADD CONSTRAINT t014_mov_paqxuser_pkey PRIMARY KEY (id_mov_paq_user);
 T   ALTER TABLE ONLY finanzas.t014_mov_paqxuser DROP CONSTRAINT t014_mov_paqxuser_pkey;
       finanzas            postgres    false    256            ?           2606    19416    t015_saldo t015_saldo_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY finanzas.t015_saldo
    ADD CONSTRAINT t015_saldo_pkey PRIMARY KEY (id_num_cuenta);
 F   ALTER TABLE ONLY finanzas.t015_saldo DROP CONSTRAINT t015_saldo_pkey;
       finanzas            postgres    false    258            ?           2606    19418     t001_comercio t001_comercio_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY negocio.t001_comercio
    ADD CONSTRAINT t001_comercio_pkey PRIMARY KEY (id_comercio);
 K   ALTER TABLE ONLY negocio.t001_comercio DROP CONSTRAINT t001_comercio_pkey;
       negocio            postgres    false    259            ?           2606    19420 *   t002_tipo_servicio t002_tipo_servicio_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY negocio.t002_tipo_servicio
    ADD CONSTRAINT t002_tipo_servicio_pkey PRIMARY KEY (id_servicio);
 U   ALTER TABLE ONLY negocio.t002_tipo_servicio DROP CONSTRAINT t002_tipo_servicio_pkey;
       negocio            postgres    false    261            ?           2606    19422 *   t003_tipo_comercio t003_tipo_comercio_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY negocio.t003_tipo_comercio
    ADD CONSTRAINT t003_tipo_comercio_pkey PRIMARY KEY (id_tipo_comercio);
 U   ALTER TABLE ONLY negocio.t003_tipo_comercio DROP CONSTRAINT t003_tipo_comercio_pkey;
       negocio            postgres    false    263            ?           2606    19424 $   t013_grupo_corp t013_grupo_corp_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY negocio.t013_grupo_corp
    ADD CONSTRAINT t013_grupo_corp_pkey PRIMARY KEY (id_grupo_corp);
 O   ALTER TABLE ONLY negocio.t013_grupo_corp DROP CONSTRAINT t013_grupo_corp_pkey;
       negocio            postgres    false    265            ?           2606    19426    t014_status t014_status_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY negocio.t014_status
    ADD CONSTRAINT t014_status_pkey PRIMARY KEY (status);
 G   ALTER TABLE ONLY negocio.t014_status DROP CONSTRAINT t014_status_pkey;
       negocio            postgres    false    267            ?           2606    19428    t001_math t001_math_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY sistema.t001_math
    ADD CONSTRAINT t001_math_pkey PRIMARY KEY (id_math);
 C   ALTER TABLE ONLY sistema.t001_math DROP CONSTRAINT t001_math_pkey;
       sistema            postgres    false    269            ?           2606    19430    t002_apk t002_apk_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY sistema.t002_apk
    ADD CONSTRAINT t002_apk_pkey PRIMARY KEY (id_apk);
 A   ALTER TABLE ONLY sistema.t002_apk DROP CONSTRAINT t002_apk_pkey;
       sistema            postgres    false    271            ?           2606    19432    t003_ios t003_ios_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY sistema.t003_ios
    ADD CONSTRAINT t003_ios_pkey PRIMARY KEY (id_ios);
 A   ALTER TABLE ONLY sistema.t003_ios DROP CONSTRAINT t003_ios_pkey;
       sistema            postgres    false    273            ?           2606    19434     t004_licencia t004_licencia_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY sistema.t004_licencia
    ADD CONSTRAINT t004_licencia_pkey PRIMARY KEY (id_licencia);
 K   ALTER TABLE ONLY sistema.t004_licencia DROP CONSTRAINT t004_licencia_pkey;
       sistema            postgres    false    275            ?           2606    19436 (   t005_certificados t005_certificados_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY sistema.t005_certificados
    ADD CONSTRAINT t005_certificados_pkey PRIMARY KEY (id_certificado);
 S   ALTER TABLE ONLY sistema.t005_certificados DROP CONSTRAINT t005_certificados_pkey;
       sistema            postgres    false    277            ?           2606    19438 0   t006_android_user_cfg t006_android_user_cfg_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY sistema.t006_android_user_cfg
    ADD CONSTRAINT t006_android_user_cfg_pkey PRIMARY KEY (id_droid_user);
 [   ALTER TABLE ONLY sistema.t006_android_user_cfg DROP CONSTRAINT t006_android_user_cfg_pkey;
       sistema            postgres    false    279            ?           2606    19440 (   t007_ios_user_cfg t007_ios_user_cfg_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY sistema.t007_ios_user_cfg
    ADD CONSTRAINT t007_ios_user_cfg_pkey PRIMARY KEY (id_ios_user);
 S   ALTER TABLE ONLY sistema.t007_ios_user_cfg DROP CONSTRAINT t007_ios_user_cfg_pkey;
       sistema            postgres    false    281            ?           2606    19442 (   t008_web_user_cfg t008_web_user_cfg_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY sistema.t008_web_user_cfg
    ADD CONSTRAINT t008_web_user_cfg_pkey PRIMARY KEY (id_web_user);
 S   ALTER TABLE ONLY sistema.t008_web_user_cfg DROP CONSTRAINT t008_web_user_cfg_pkey;
       sistema            postgres    false    283            ?           2606    19444 *   h003_dispositivoid h003_dispositivoid_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY usuarios.h003_dispositivoid
    ADD CONSTRAINT h003_dispositivoid_pkey PRIMARY KEY (id_dispositivoid);
 V   ALTER TABLE ONLY usuarios.h003_dispositivoid DROP CONSTRAINT h003_dispositivoid_pkey;
       usuarios            postgres    false    285            ?           2606    19446    t001_usuario t001_usuario_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY usuarios.t001_usuario
    ADD CONSTRAINT t001_usuario_pkey PRIMARY KEY (id_usuario);
 J   ALTER TABLE ONLY usuarios.t001_usuario DROP CONSTRAINT t001_usuario_pkey;
       usuarios            postgres    false    287            ?           2606    19448 &   t002_tipousuario t002_tipousuario_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY usuarios.t002_tipousuario
    ADD CONSTRAINT t002_tipousuario_pkey PRIMARY KEY (id_tipo_usuario);
 R   ALTER TABLE ONLY usuarios.t002_tipousuario DROP CONSTRAINT t002_tipousuario_pkey;
       usuarios            postgres    false    289            ?           2606    19450 4   t004_tipo_dispositivoid t004_tipo_dispositivoid_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY usuarios.t004_tipo_dispositivoid
    ADD CONSTRAINT t004_tipo_dispositivoid_pkey PRIMARY KEY (id_tipo_dispositivoid);
 `   ALTER TABLE ONLY usuarios.t004_tipo_dispositivoid DROP CONSTRAINT t004_tipo_dispositivoid_pkey;
       usuarios            postgres    false    290            ?           1259    19451    fki_frk_ctrltke_com    INDEX     d   CREATE INDEX fki_frk_ctrltke_com ON estacionamientos.t011_control_ticket USING btree (id_comercio);
 1   DROP INDEX estacionamientos.fki_frk_ctrltke_com;
       estacionamientos            postgres    false    228            ?           1259    19452    fki_frk_ctrltke_tke    INDEX     b   CREATE INDEX fki_frk_ctrltke_tke ON estacionamientos.t011_control_ticket USING btree (id_ticket);
 1   DROP INDEX estacionamientos.fki_frk_ctrltke_tke;
       estacionamientos            postgres    false    228            b           1259    19453    fki_frk_ent_clas    INDEX     j   CREATE INDEX fki_frk_ent_clas ON estacionamientos.t003_entrada_parking USING btree (id_clasificacion_es);
 .   DROP INDEX estacionamientos.fki_frk_ent_clas;
       estacionamientos            postgres    false    212            c           1259    19454    fki_frk_ent_com    INDEX     a   CREATE INDEX fki_frk_ent_com ON estacionamientos.t003_entrada_parking USING btree (id_comercio);
 -   DROP INDEX estacionamientos.fki_frk_ent_com;
       estacionamientos            postgres    false    212            d           1259    19455    fki_frk_ent_sta    INDEX     b   CREATE INDEX fki_frk_ent_sta ON estacionamientos.t003_entrada_parking USING btree (id_status_es);
 -   DROP INDEX estacionamientos.fki_frk_ent_sta;
       estacionamientos            postgres    false    212            p           1259    19456    fki_frk_ent_tke    INDEX     ^   CREATE INDEX fki_frk_ent_tke ON estacionamientos.t006_entrada_ticket USING btree (id_ticket);
 -   DROP INDEX estacionamientos.fki_frk_ent_tke;
       estacionamientos            postgres    false    218            q           1259    19457    fki_frk_enttck_ent    INDEX     b   CREATE INDEX fki_frk_enttck_ent ON estacionamientos.t006_entrada_ticket USING btree (id_entrada);
 0   DROP INDEX estacionamientos.fki_frk_enttck_ent;
       estacionamientos            postgres    false    218            ^           1259    19458    fki_frk_psto_clasi    INDEX     k   CREATE INDEX fki_frk_psto_clasi ON estacionamientos.t002_puesto_parking USING btree (id_clasificacion_es);
 0   DROP INDEX estacionamientos.fki_frk_psto_clasi;
       estacionamientos            postgres    false    210            _           1259    19459    fki_frk_psto_com    INDEX     a   CREATE INDEX fki_frk_psto_com ON estacionamientos.t002_puesto_parking USING btree (id_comercio);
 .   DROP INDEX estacionamientos.fki_frk_psto_com;
       estacionamientos            postgres    false    210            x           1259    19460    fki_frk_ptotk_tke    INDEX     _   CREATE INDEX fki_frk_ptotk_tke ON estacionamientos.t008_puesto_ticket USING btree (id_ticket);
 /   DROP INDEX estacionamientos.fki_frk_ptotk_tke;
       estacionamientos            postgres    false    222            y           1259    19461    fki_frk_ptotke_pto    INDEX     `   CREATE INDEX fki_frk_ptotke_pto ON estacionamientos.t008_puesto_ticket USING btree (id_puesto);
 0   DROP INDEX estacionamientos.fki_frk_ptotke_pto;
       estacionamientos            postgres    false    222            g           1259    19462    fki_frk_sal_clas    INDEX     i   CREATE INDEX fki_frk_sal_clas ON estacionamientos.t004_salida_parking USING btree (id_clasificacion_es);
 .   DROP INDEX estacionamientos.fki_frk_sal_clas;
       estacionamientos            postgres    false    214            h           1259    19463    fki_frk_sal_com    INDEX     `   CREATE INDEX fki_frk_sal_com ON estacionamientos.t004_salida_parking USING btree (id_comercio);
 -   DROP INDEX estacionamientos.fki_frk_sal_com;
       estacionamientos            postgres    false    214            i           1259    19464    fki_frk_sal_sta    INDEX     a   CREATE INDEX fki_frk_sal_sta ON estacionamientos.t004_salida_parking USING btree (id_status_es);
 -   DROP INDEX estacionamientos.fki_frk_sal_sta;
       estacionamientos            postgres    false    214            t           1259    19465    fki_frk_saltke_sal    INDEX     `   CREATE INDEX fki_frk_saltke_sal ON estacionamientos.t007_salida_ticket USING btree (id_salida);
 0   DROP INDEX estacionamientos.fki_frk_saltke_sal;
       estacionamientos            postgres    false    220            u           1259    19466    fki_frk_saltke_tke    INDEX     `   CREATE INDEX fki_frk_saltke_tke ON estacionamientos.t007_salida_ticket USING btree (id_ticket);
 0   DROP INDEX estacionamientos.fki_frk_saltke_tke;
       estacionamientos            postgres    false    220            l           1259    19467    fki_frk_tke_sta    INDEX     T   CREATE INDEX fki_frk_tke_sta ON estacionamientos.t005_tickets USING btree (status);
 -   DROP INDEX estacionamientos.fki_frk_tke_sta;
       estacionamientos            postgres    false    216            m           1259    19468    fki_frk_tke_veh    INDEX     Y   CREATE INDEX fki_frk_tke_veh ON estacionamientos.t005_tickets USING btree (id_vehiculo);
 -   DROP INDEX estacionamientos.fki_frk_tke_veh;
       estacionamientos            postgres    false    216            [           1259    19469    fki_frk_veh_usr    INDEX     Y   CREATE INDEX fki_frk_veh_usr ON estacionamientos.t001_vehiculo USING btree (id_usuario);
 -   DROP INDEX estacionamientos.fki_frk_veh_usr;
       estacionamientos            postgres    false    208            ?           1259    19470    fki_frk_fac    INDEX     P   CREATE INDEX fki_frk_fac ON finanzas.h009_factura_mov USING btree (id_factura);
 !   DROP INDEX finanzas.fki_frk_fac;
       finanzas            postgres    false    230            ?           1259    19471    fki_frk_fac_com    INDEX     Q   CREATE INDEX fki_frk_fac_com ON finanzas.t008_factura USING btree (id_comercio);
 %   DROP INDEX finanzas.fki_frk_fac_com;
       finanzas            postgres    false    246            ?           1259    19472    fki_frk_fac_monref    INDEX     V   CREATE INDEX fki_frk_fac_monref ON finanzas.t008_factura USING btree (id_moneda_ref);
 (   DROP INDEX finanzas.fki_frk_fac_monref;
       finanzas            postgres    false    246            ?           1259    19473    fki_frk_fac_usr    INDEX     P   CREATE INDEX fki_frk_fac_usr ON finanzas.t008_factura USING btree (id_usuario);
 %   DROP INDEX finanzas.fki_frk_fac_usr;
       finanzas            postgres    false    246            ?           1259    19474    fki_frk_facmv    INDEX     U   CREATE INDEX fki_frk_facmv ON finanzas.h009_factura_mov USING btree (id_mov_cuenta);
 #   DROP INDEX finanzas.fki_frk_facmv;
       finanzas            postgres    false    230            ?           1259    19475    fki_frk_imp_com    INDEX     S   CREATE INDEX fki_frk_imp_com ON finanzas.t006_impuestos USING btree (id_comercio);
 %   DROP INDEX finanzas.fki_frk_imp_com;
       finanzas            postgres    false    242            ?           1259    19476    fki_frk_monref_com    INDEX     _   CREATE INDEX fki_frk_monref_com ON finanzas.t004_moneda_referencial USING btree (id_comercio);
 (   DROP INDEX finanzas.fki_frk_monref_com;
       finanzas            postgres    false    238            ?           1259    19477    fki_frk_movcat_com    INDEX     \   CREATE INDEX fki_frk_movcat_com ON finanzas.t001_mov_cta_usuario USING btree (id_comercio);
 (   DROP INDEX finanzas.fki_frk_movcat_com;
       finanzas            postgres    false    232            ?           1259    19478    fki_frk_movcat_dmov    INDEX     \   CREATE INDEX fki_frk_movcat_dmov ON finanzas.t001_mov_cta_usuario USING btree (id_dsc_mov);
 )   DROP INDEX finanzas.fki_frk_movcat_dmov;
       finanzas            postgres    false    232            ?           1259    19479    fki_frk_movcat_imp    INDEX     \   CREATE INDEX fki_frk_movcat_imp ON finanzas.t001_mov_cta_usuario USING btree (id_impuesto);
 (   DROP INDEX finanzas.fki_frk_movcat_imp;
       finanzas            postgres    false    232            ?           1259    19480    fki_frk_movcat_tmov    INDEX     ]   CREATE INDEX fki_frk_movcat_tmov ON finanzas.t001_mov_cta_usuario USING btree (id_tipo_mov);
 )   DROP INDEX finanzas.fki_frk_movcat_tmov;
       finanzas            postgres    false    232            ?           1259    19481    fki_frk_movcat_usr    INDEX     [   CREATE INDEX fki_frk_movcat_usr ON finanzas.t001_mov_cta_usuario USING btree (id_usuario);
 (   DROP INDEX finanzas.fki_frk_movcat_usr;
       finanzas            postgres    false    232            ?           1259    19482    fki_frk_movxpaqusr_com    INDEX     ]   CREATE INDEX fki_frk_movxpaqusr_com ON finanzas.t014_mov_paqxuser USING btree (id_comercio);
 ,   DROP INDEX finanzas.fki_frk_movxpaqusr_com;
       finanzas            postgres    false    256            ?           1259    19483    fki_frk_movxpaqusr_paq    INDEX     \   CREATE INDEX fki_frk_movxpaqusr_paq ON finanzas.t014_mov_paqxuser USING btree (id_paquete);
 ,   DROP INDEX finanzas.fki_frk_movxpaqusr_paq;
       finanzas            postgres    false    256            ?           1259    19484    fki_frk_movxpaqusr_usr    INDEX     \   CREATE INDEX fki_frk_movxpaqusr_usr ON finanzas.t014_mov_paqxuser USING btree (id_usuario);
 ,   DROP INDEX finanzas.fki_frk_movxpaqusr_usr;
       finanzas            postgres    false    256            ?           1259    19485    fki_frk_paqxcom_com    INDEX     U   CREATE INDEX fki_frk_paqxcom_com ON finanzas.t013_paqxcom USING btree (id_comercio);
 )   DROP INDEX finanzas.fki_frk_paqxcom_com;
       finanzas            postgres    false    254            ?           1259    19486    fki_frk_paqxcom_paq    INDEX     T   CREATE INDEX fki_frk_paqxcom_paq ON finanzas.t013_paqxcom USING btree (id_paquete);
 )   DROP INDEX finanzas.fki_frk_paqxcom_paq;
       finanzas            postgres    false    254            ?           1259    19487    fki_frk_paqxusr_paq    INDEX     U   CREATE INDEX fki_frk_paqxusr_paq ON finanzas.t012_paqxuser USING btree (id_usuario);
 )   DROP INDEX finanzas.fki_frk_paqxusr_paq;
       finanzas            postgres    false    252            ?           1259    19488    fki_frk_paqxusr_usr    INDEX     U   CREATE INDEX fki_frk_paqxusr_usr ON finanzas.t012_paqxuser USING btree (id_paquete);
 )   DROP INDEX finanzas.fki_frk_paqxusr_usr;
       finanzas            postgres    false    252            ?           1259    19489    fki_frk_ren_com    INDEX     S   CREATE INDEX fki_frk_ren_com ON finanzas.t007_renglones USING btree (id_comercio);
 %   DROP INDEX finanzas.fki_frk_ren_com;
       finanzas            postgres    false    244            ?           1259    19490    fki_frk_sdo_usr    INDEX     N   CREATE INDEX fki_frk_sdo_usr ON finanzas.t015_saldo USING btree (id_usuario);
 %   DROP INDEX finanzas.fki_frk_sdo_usr;
       finanzas            postgres    false    258            ?           1259    19491    fki_frk_tar_monref    INDEX     V   CREATE INDEX fki_frk_tar_monref ON finanzas.t005_tarifas USING btree (id_moneda_ref);
 (   DROP INDEX finanzas.fki_frk_tar_monref;
       finanzas            postgres    false    240            ?           1259    19492    fki_frk_tar_ren    INDEX     P   CREATE INDEX fki_frk_tar_ren ON finanzas.t005_tarifas USING btree (id_renglon);
 %   DROP INDEX finanzas.fki_frk_tar_ren;
       finanzas            postgres    false    240            ?           1259    19493    fki_frk_usrban_usr    INDEX     Z   CREATE INDEX fki_frk_usrban_usr ON finanzas.t010_usuario_bancos USING btree (id_usuario);
 (   DROP INDEX finanzas.fki_frk_usrban_usr;
       finanzas            postgres    false    248            ?           1259    19494    fki_frk_servicio    INDEX     R   CREATE INDEX fki_frk_servicio ON negocio.t001_comercio USING btree (id_servicio);
 %   DROP INDEX negocio.fki_frk_servicio;
       negocio            postgres    false    259            ?           1259    19495    fki_frk_tipo_comer    INDEX     Y   CREATE INDEX fki_frk_tipo_comer ON negocio.t001_comercio USING btree (id_tipo_comercio);
 '   DROP INDEX negocio.fki_frk_tipo_comer;
       negocio            postgres    false    259            ?           1259    19496 	   fki_grupo    INDEX     M   CREATE INDEX fki_grupo ON negocio.t001_comercio USING btree (id_grupo_corp);
    DROP INDEX negocio.fki_grupo;
       negocio            postgres    false    259            ?           1259    19497    fki_frk_apk_cert    INDEX     P   CREATE INDEX fki_frk_apk_cert ON sistema.t002_apk USING btree (id_certificado);
 %   DROP INDEX sistema.fki_frk_apk_cert;
       sistema            postgres    false    271            ?           1259    19498    fki_frk_drousr_usr    INDEX     [   CREATE INDEX fki_frk_drousr_usr ON sistema.t006_android_user_cfg USING btree (id_usuario);
 '   DROP INDEX sistema.fki_frk_drousr_usr;
       sistema            postgres    false    279            ?           1259    19499    fki_frk_ios_cert    INDEX     P   CREATE INDEX fki_frk_ios_cert ON sistema.t003_ios USING btree (id_certificado);
 %   DROP INDEX sistema.fki_frk_ios_cert;
       sistema            postgres    false    273            ?           1259    19500    fki_frk_iosusr_usr    INDEX     W   CREATE INDEX fki_frk_iosusr_usr ON sistema.t007_ios_user_cfg USING btree (id_usuario);
 '   DROP INDEX sistema.fki_frk_iosusr_usr;
       sistema            postgres    false    281            ?           1259    19501    fki_frk_math_cert    INDEX     R   CREATE INDEX fki_frk_math_cert ON sistema.t001_math USING btree (id_certificado);
 &   DROP INDEX sistema.fki_frk_math_cert;
       sistema            postgres    false    269            ?           1259    19502    fki_frk_math_com    INDEX     N   CREATE INDEX fki_frk_math_com ON sistema.t001_math USING btree (id_comercio);
 %   DROP INDEX sistema.fki_frk_math_com;
       sistema            postgres    false    269            ?           1259    19503    fki_frk_math_lic    INDEX     N   CREATE INDEX fki_frk_math_lic ON sistema.t001_math USING btree (id_licencia);
 %   DROP INDEX sistema.fki_frk_math_lic;
       sistema            postgres    false    269            ?           1259    19504    fki_frk_webusr_usr    INDEX     W   CREATE INDEX fki_frk_webusr_usr ON sistema.t008_web_user_cfg USING btree (id_usuario);
 '   DROP INDEX sistema.fki_frk_webusr_usr;
       sistema            postgres    false    283            ?           1259    19505    fki_frk_dispid_tipo    INDEX     e   CREATE INDEX fki_frk_dispid_tipo ON usuarios.h003_dispositivoid USING btree (id_tipo_dispositivoid);
 )   DROP INDEX usuarios.fki_frk_dispid_tipo;
       usuarios            postgres    false    285            ?           1259    19506    fki_frk_dispid_usr    INDEX     Y   CREATE INDEX fki_frk_dispid_usr ON usuarios.h003_dispositivoid USING btree (id_usuario);
 (   DROP INDEX usuarios.fki_frk_dispid_usr;
       usuarios            postgres    false    285            ?           1259    19507    fki_frk_usr_status    INDEX     O   CREATE INDEX fki_frk_usr_status ON usuarios.t001_usuario USING btree (status);
 (   DROP INDEX usuarios.fki_frk_usr_status;
       usuarios            postgres    false    287            ?           1259    19508    fki_frkdocid    INDEX     P   CREATE INDEX fki_frkdocid ON usuarios.t001_usuario USING btree (id_tipodoc_id);
 "   DROP INDEX usuarios.fki_frkdocid;
       usuarios            postgres    false    287            ?           1259    19509    fki_usr_tipousr    INDEX     U   CREATE INDEX fki_usr_tipousr ON usuarios.t001_usuario USING btree (id_tipo_usuario);
 %   DROP INDEX usuarios.fki_usr_tipousr;
       usuarios            postgres    false    287            ?           2606    19510 #   t011_control_ticket frk_ctrltke_com    FK CONSTRAINT     ?   ALTER TABLE ONLY estacionamientos.t011_control_ticket
    ADD CONSTRAINT frk_ctrltke_com FOREIGN KEY (id_comercio) REFERENCES negocio.t001_comercio(id_comercio);
 W   ALTER TABLE ONLY estacionamientos.t011_control_ticket DROP CONSTRAINT frk_ctrltke_com;
       estacionamientos          postgres    false    228    259    3262            ?           2606    19515 #   t011_control_ticket frk_ctrltke_tke    FK CONSTRAINT     ?   ALTER TABLE ONLY estacionamientos.t011_control_ticket
    ADD CONSTRAINT frk_ctrltke_tke FOREIGN KEY (id_ticket) REFERENCES estacionamientos.t005_tickets(id_ticket);
 W   ALTER TABLE ONLY estacionamientos.t011_control_ticket DROP CONSTRAINT frk_ctrltke_tke;
       estacionamientos          postgres    false    228    3183    216            ?           2606    19520 !   t003_entrada_parking frk_ent_clas    FK CONSTRAINT     ?   ALTER TABLE ONLY estacionamientos.t003_entrada_parking
    ADD CONSTRAINT frk_ent_clas FOREIGN KEY (id_clasificacion_es) REFERENCES estacionamientos.t010_clasificacion_es(id_clasificacion_es);
 U   ALTER TABLE ONLY estacionamientos.t003_entrada_parking DROP CONSTRAINT frk_ent_clas;
       estacionamientos          postgres    false    3199    212    226            ?           2606    19525     t003_entrada_parking frk_ent_com    FK CONSTRAINT     ?   ALTER TABLE ONLY estacionamientos.t003_entrada_parking
    ADD CONSTRAINT frk_ent_com FOREIGN KEY (id_comercio) REFERENCES negocio.t001_comercio(id_comercio);
 T   ALTER TABLE ONLY estacionamientos.t003_entrada_parking DROP CONSTRAINT frk_ent_com;
       estacionamientos          postgres    false    212    259    3262            ?           2606    19530     t003_entrada_parking frk_ent_sta    FK CONSTRAINT     ?   ALTER TABLE ONLY estacionamientos.t003_entrada_parking
    ADD CONSTRAINT frk_ent_sta FOREIGN KEY (id_status_es) REFERENCES estacionamientos.t009_status_es(id_status_es);
 T   ALTER TABLE ONLY estacionamientos.t003_entrada_parking DROP CONSTRAINT frk_ent_sta;
       estacionamientos          postgres    false    224    3197    212            ?           2606    19535    t006_entrada_ticket frk_ent_tke    FK CONSTRAINT     ?   ALTER TABLE ONLY estacionamientos.t006_entrada_ticket
    ADD CONSTRAINT frk_ent_tke FOREIGN KEY (id_ticket) REFERENCES estacionamientos.t005_tickets(id_ticket);
 S   ALTER TABLE ONLY estacionamientos.t006_entrada_ticket DROP CONSTRAINT frk_ent_tke;
       estacionamientos          postgres    false    3183    216    218            ?           2606    19540 "   t006_entrada_ticket frk_enttck_ent    FK CONSTRAINT     ?   ALTER TABLE ONLY estacionamientos.t006_entrada_ticket
    ADD CONSTRAINT frk_enttck_ent FOREIGN KEY (id_entrada) REFERENCES estacionamientos.t003_entrada_parking(id_entrada);
 V   ALTER TABLE ONLY estacionamientos.t006_entrada_ticket DROP CONSTRAINT frk_enttck_ent;
       estacionamientos          postgres    false    218    3174    212            ?           2606    19545 "   t002_puesto_parking frk_psto_clasi    FK CONSTRAINT     ?   ALTER TABLE ONLY estacionamientos.t002_puesto_parking
    ADD CONSTRAINT frk_psto_clasi FOREIGN KEY (id_clasificacion_es) REFERENCES estacionamientos.t010_clasificacion_es(id_clasificacion_es);
 V   ALTER TABLE ONLY estacionamientos.t002_puesto_parking DROP CONSTRAINT frk_psto_clasi;
       estacionamientos          postgres    false    226    3199    210            ?           2606    19550     t002_puesto_parking frk_psto_com    FK CONSTRAINT     ?   ALTER TABLE ONLY estacionamientos.t002_puesto_parking
    ADD CONSTRAINT frk_psto_com FOREIGN KEY (id_comercio) REFERENCES negocio.t001_comercio(id_comercio);
 T   ALTER TABLE ONLY estacionamientos.t002_puesto_parking DROP CONSTRAINT frk_psto_com;
       estacionamientos          postgres    false    259    3262    210            ?           2606    19555     t008_puesto_ticket frk_ptotk_tke    FK CONSTRAINT     ?   ALTER TABLE ONLY estacionamientos.t008_puesto_ticket
    ADD CONSTRAINT frk_ptotk_tke FOREIGN KEY (id_ticket) REFERENCES estacionamientos.t005_tickets(id_ticket);
 T   ALTER TABLE ONLY estacionamientos.t008_puesto_ticket DROP CONSTRAINT frk_ptotk_tke;
       estacionamientos          postgres    false    3183    216    222            ?           2606    19560 !   t008_puesto_ticket frk_ptotke_pto    FK CONSTRAINT     ?   ALTER TABLE ONLY estacionamientos.t008_puesto_ticket
    ADD CONSTRAINT frk_ptotke_pto FOREIGN KEY (id_puesto) REFERENCES estacionamientos.t002_puesto_parking(id_puesto);
 U   ALTER TABLE ONLY estacionamientos.t008_puesto_ticket DROP CONSTRAINT frk_ptotke_pto;
       estacionamientos          postgres    false    222    210    3169            ?           2606    19565     t004_salida_parking frk_sal_clas    FK CONSTRAINT     ?   ALTER TABLE ONLY estacionamientos.t004_salida_parking
    ADD CONSTRAINT frk_sal_clas FOREIGN KEY (id_clasificacion_es) REFERENCES estacionamientos.t010_clasificacion_es(id_clasificacion_es);
 T   ALTER TABLE ONLY estacionamientos.t004_salida_parking DROP CONSTRAINT frk_sal_clas;
       estacionamientos          postgres    false    214    226    3199            ?           2606    19570    t004_salida_parking frk_sal_com    FK CONSTRAINT     ?   ALTER TABLE ONLY estacionamientos.t004_salida_parking
    ADD CONSTRAINT frk_sal_com FOREIGN KEY (id_comercio) REFERENCES negocio.t001_comercio(id_comercio);
 S   ALTER TABLE ONLY estacionamientos.t004_salida_parking DROP CONSTRAINT frk_sal_com;
       estacionamientos          postgres    false    214    259    3262            ?           2606    19575    t004_salida_parking frk_sal_sta    FK CONSTRAINT     ?   ALTER TABLE ONLY estacionamientos.t004_salida_parking
    ADD CONSTRAINT frk_sal_sta FOREIGN KEY (id_status_es) REFERENCES estacionamientos.t009_status_es(id_status_es);
 S   ALTER TABLE ONLY estacionamientos.t004_salida_parking DROP CONSTRAINT frk_sal_sta;
       estacionamientos          postgres    false    214    224    3197            ?           2606    19580 !   t007_salida_ticket frk_saltke_sal    FK CONSTRAINT     ?   ALTER TABLE ONLY estacionamientos.t007_salida_ticket
    ADD CONSTRAINT frk_saltke_sal FOREIGN KEY (id_salida) REFERENCES estacionamientos.t004_salida_parking(id_salida);
 U   ALTER TABLE ONLY estacionamientos.t007_salida_ticket DROP CONSTRAINT frk_saltke_sal;
       estacionamientos          postgres    false    3179    220    214            ?           2606    19585 !   t007_salida_ticket frk_saltke_tke    FK CONSTRAINT     ?   ALTER TABLE ONLY estacionamientos.t007_salida_ticket
    ADD CONSTRAINT frk_saltke_tke FOREIGN KEY (id_ticket) REFERENCES estacionamientos.t005_tickets(id_ticket);
 U   ALTER TABLE ONLY estacionamientos.t007_salida_ticket DROP CONSTRAINT frk_saltke_tke;
       estacionamientos          postgres    false    220    3183    216            ?           2606    19590    t005_tickets frk_tke_sta    FK CONSTRAINT     ?   ALTER TABLE ONLY estacionamientos.t005_tickets
    ADD CONSTRAINT frk_tke_sta FOREIGN KEY (status) REFERENCES negocio.t014_status(status);
 L   ALTER TABLE ONLY estacionamientos.t005_tickets DROP CONSTRAINT frk_tke_sta;
       estacionamientos          postgres    false    216    267    3270            ?           2606    19595    t005_tickets frk_tke_veh    FK CONSTRAINT     ?   ALTER TABLE ONLY estacionamientos.t005_tickets
    ADD CONSTRAINT frk_tke_veh FOREIGN KEY (id_vehiculo) REFERENCES estacionamientos.t001_vehiculo(id_vehiculo);
 L   ALTER TABLE ONLY estacionamientos.t005_tickets DROP CONSTRAINT frk_tke_veh;
       estacionamientos          postgres    false    3165    208    216            ?           2606    19600    t001_vehiculo frk_veh_usr    FK CONSTRAINT     ?   ALTER TABLE ONLY estacionamientos.t001_vehiculo
    ADD CONSTRAINT frk_veh_usr FOREIGN KEY (id_usuario) REFERENCES usuarios.t001_usuario(id_usuario);
 M   ALTER TABLE ONLY estacionamientos.t001_vehiculo DROP CONSTRAINT frk_veh_usr;
       estacionamientos          postgres    false    208    287    3303            ?           2606    19605    h009_factura_mov frk_fac    FK CONSTRAINT     ?   ALTER TABLE ONLY finanzas.h009_factura_mov
    ADD CONSTRAINT frk_fac FOREIGN KEY (id_factura) REFERENCES finanzas.t008_factura(id_factura);
 D   ALTER TABLE ONLY finanzas.h009_factura_mov DROP CONSTRAINT frk_fac;
       finanzas          postgres    false    230    246    3236                       2606    19610    t008_factura frk_fac_com    FK CONSTRAINT     ?   ALTER TABLE ONLY finanzas.t008_factura
    ADD CONSTRAINT frk_fac_com FOREIGN KEY (id_comercio) REFERENCES negocio.t001_comercio(id_comercio);
 D   ALTER TABLE ONLY finanzas.t008_factura DROP CONSTRAINT frk_fac_com;
       finanzas          postgres    false    246    259    3262                       2606    19615    t008_factura frk_fac_monref    FK CONSTRAINT     ?   ALTER TABLE ONLY finanzas.t008_factura
    ADD CONSTRAINT frk_fac_monref FOREIGN KEY (id_moneda_ref) REFERENCES finanzas.t004_moneda_referencial(id_moneda_ref);
 G   ALTER TABLE ONLY finanzas.t008_factura DROP CONSTRAINT frk_fac_monref;
       finanzas          postgres    false    3221    246    238                       2606    19620    t008_factura frk_fac_usr    FK CONSTRAINT     ?   ALTER TABLE ONLY finanzas.t008_factura
    ADD CONSTRAINT frk_fac_usr FOREIGN KEY (id_usuario) REFERENCES usuarios.t001_usuario(id_usuario);
 D   ALTER TABLE ONLY finanzas.t008_factura DROP CONSTRAINT frk_fac_usr;
       finanzas          postgres    false    3303    246    287                        2606    19625    h009_factura_mov frk_facmv    FK CONSTRAINT     ?   ALTER TABLE ONLY finanzas.h009_factura_mov
    ADD CONSTRAINT frk_facmv FOREIGN KEY (id_mov_cuenta) REFERENCES finanzas.t001_mov_cta_usuario(id_mov_cuenta);
 F   ALTER TABLE ONLY finanzas.h009_factura_mov DROP CONSTRAINT frk_facmv;
       finanzas          postgres    false    3214    230    232            	           2606    19630    t006_impuestos frk_imp_com    FK CONSTRAINT     ?   ALTER TABLE ONLY finanzas.t006_impuestos
    ADD CONSTRAINT frk_imp_com FOREIGN KEY (id_comercio) REFERENCES negocio.t001_comercio(id_comercio);
 F   ALTER TABLE ONLY finanzas.t006_impuestos DROP CONSTRAINT frk_imp_com;
       finanzas          postgres    false    242    3262    259                       2606    19635 &   t004_moneda_referencial frk_monref_com    FK CONSTRAINT     ?   ALTER TABLE ONLY finanzas.t004_moneda_referencial
    ADD CONSTRAINT frk_monref_com FOREIGN KEY (id_comercio) REFERENCES negocio.t001_comercio(id_comercio);
 R   ALTER TABLE ONLY finanzas.t004_moneda_referencial DROP CONSTRAINT frk_monref_com;
       finanzas          postgres    false    259    3262    238                       2606    19640 #   t001_mov_cta_usuario frk_movcat_com    FK CONSTRAINT     ?   ALTER TABLE ONLY finanzas.t001_mov_cta_usuario
    ADD CONSTRAINT frk_movcat_com FOREIGN KEY (id_comercio) REFERENCES negocio.t001_comercio(id_comercio);
 O   ALTER TABLE ONLY finanzas.t001_mov_cta_usuario DROP CONSTRAINT frk_movcat_com;
       finanzas          postgres    false    232    3262    259                       2606    19645 $   t001_mov_cta_usuario frk_movcat_dmov    FK CONSTRAINT     ?   ALTER TABLE ONLY finanzas.t001_mov_cta_usuario
    ADD CONSTRAINT frk_movcat_dmov FOREIGN KEY (id_dsc_mov) REFERENCES finanzas.t003_dsc_movimiento(id_dsc_mov);
 P   ALTER TABLE ONLY finanzas.t001_mov_cta_usuario DROP CONSTRAINT frk_movcat_dmov;
       finanzas          postgres    false    3218    232    236                       2606    19650 #   t001_mov_cta_usuario frk_movcat_imp    FK CONSTRAINT     ?   ALTER TABLE ONLY finanzas.t001_mov_cta_usuario
    ADD CONSTRAINT frk_movcat_imp FOREIGN KEY (id_impuesto) REFERENCES finanzas.t006_impuestos(id_impuesto);
 O   ALTER TABLE ONLY finanzas.t001_mov_cta_usuario DROP CONSTRAINT frk_movcat_imp;
       finanzas          postgres    false    232    3228    242                       2606    19655 $   t001_mov_cta_usuario frk_movcat_tmov    FK CONSTRAINT     ?   ALTER TABLE ONLY finanzas.t001_mov_cta_usuario
    ADD CONSTRAINT frk_movcat_tmov FOREIGN KEY (id_tipo_mov) REFERENCES finanzas.t002_tipo_movimiento(id_tipo_mov);
 P   ALTER TABLE ONLY finanzas.t001_mov_cta_usuario DROP CONSTRAINT frk_movcat_tmov;
       finanzas          postgres    false    234    232    3216                       2606    19660 #   t001_mov_cta_usuario frk_movcat_usr    FK CONSTRAINT     ?   ALTER TABLE ONLY finanzas.t001_mov_cta_usuario
    ADD CONSTRAINT frk_movcat_usr FOREIGN KEY (id_usuario) REFERENCES usuarios.t001_usuario(id_usuario);
 O   ALTER TABLE ONLY finanzas.t001_mov_cta_usuario DROP CONSTRAINT frk_movcat_usr;
       finanzas          postgres    false    232    3303    287                       2606    19665 $   t014_mov_paqxuser frk_movxpaqusr_com    FK CONSTRAINT     ?   ALTER TABLE ONLY finanzas.t014_mov_paqxuser
    ADD CONSTRAINT frk_movxpaqusr_com FOREIGN KEY (id_comercio) REFERENCES negocio.t001_comercio(id_comercio);
 P   ALTER TABLE ONLY finanzas.t014_mov_paqxuser DROP CONSTRAINT frk_movxpaqusr_com;
       finanzas          postgres    false    3262    256    259                       2606    19670 $   t014_mov_paqxuser frk_movxpaqusr_paq    FK CONSTRAINT     ?   ALTER TABLE ONLY finanzas.t014_mov_paqxuser
    ADD CONSTRAINT frk_movxpaqusr_paq FOREIGN KEY (id_paquete) REFERENCES finanzas.t011_paquetes(id_paquete);
 P   ALTER TABLE ONLY finanzas.t014_mov_paqxuser DROP CONSTRAINT frk_movxpaqusr_paq;
       finanzas          postgres    false    250    3241    256                       2606    19675 $   t014_mov_paqxuser frk_movxpaqusr_usr    FK CONSTRAINT     ?   ALTER TABLE ONLY finanzas.t014_mov_paqxuser
    ADD CONSTRAINT frk_movxpaqusr_usr FOREIGN KEY (id_usuario) REFERENCES usuarios.t001_usuario(id_usuario);
 P   ALTER TABLE ONLY finanzas.t014_mov_paqxuser DROP CONSTRAINT frk_movxpaqusr_usr;
       finanzas          postgres    false    287    256    3303                       2606    19680    t013_paqxcom frk_paqxcom_com    FK CONSTRAINT     ?   ALTER TABLE ONLY finanzas.t013_paqxcom
    ADD CONSTRAINT frk_paqxcom_com FOREIGN KEY (id_comercio) REFERENCES negocio.t001_comercio(id_comercio);
 H   ALTER TABLE ONLY finanzas.t013_paqxcom DROP CONSTRAINT frk_paqxcom_com;
       finanzas          postgres    false    259    3262    254                       2606    19685    t013_paqxcom frk_paqxcom_paq    FK CONSTRAINT     ?   ALTER TABLE ONLY finanzas.t013_paqxcom
    ADD CONSTRAINT frk_paqxcom_paq FOREIGN KEY (id_paquete) REFERENCES finanzas.t011_paquetes(id_paquete);
 H   ALTER TABLE ONLY finanzas.t013_paqxcom DROP CONSTRAINT frk_paqxcom_paq;
       finanzas          postgres    false    250    3241    254                       2606    19690    t012_paqxuser frk_paqxusr_paq    FK CONSTRAINT     ?   ALTER TABLE ONLY finanzas.t012_paqxuser
    ADD CONSTRAINT frk_paqxusr_paq FOREIGN KEY (id_usuario) REFERENCES usuarios.t001_usuario(id_usuario);
 I   ALTER TABLE ONLY finanzas.t012_paqxuser DROP CONSTRAINT frk_paqxusr_paq;
       finanzas          postgres    false    252    3303    287                       2606    19695    t012_paqxuser frk_paqxusr_usr    FK CONSTRAINT     ?   ALTER TABLE ONLY finanzas.t012_paqxuser
    ADD CONSTRAINT frk_paqxusr_usr FOREIGN KEY (id_paquete) REFERENCES finanzas.t011_paquetes(id_paquete);
 I   ALTER TABLE ONLY finanzas.t012_paqxuser DROP CONSTRAINT frk_paqxusr_usr;
       finanzas          postgres    false    252    3241    250            
           2606    19700    t007_renglones frk_ren_com    FK CONSTRAINT     ?   ALTER TABLE ONLY finanzas.t007_renglones
    ADD CONSTRAINT frk_ren_com FOREIGN KEY (id_comercio) REFERENCES negocio.t001_comercio(id_comercio);
 F   ALTER TABLE ONLY finanzas.t007_renglones DROP CONSTRAINT frk_ren_com;
       finanzas          postgres    false    259    3262    244                       2606    19705    t015_saldo frk_sdo_usr    FK CONSTRAINT     ?   ALTER TABLE ONLY finanzas.t015_saldo
    ADD CONSTRAINT frk_sdo_usr FOREIGN KEY (id_usuario) REFERENCES usuarios.t001_usuario(id_usuario);
 B   ALTER TABLE ONLY finanzas.t015_saldo DROP CONSTRAINT frk_sdo_usr;
       finanzas          postgres    false    3303    287    258                       2606    19710    t005_tarifas frk_tar_monref    FK CONSTRAINT     ?   ALTER TABLE ONLY finanzas.t005_tarifas
    ADD CONSTRAINT frk_tar_monref FOREIGN KEY (id_moneda_ref) REFERENCES finanzas.t004_moneda_referencial(id_moneda_ref);
 G   ALTER TABLE ONLY finanzas.t005_tarifas DROP CONSTRAINT frk_tar_monref;
       finanzas          postgres    false    240    238    3221                       2606    19715    t005_tarifas frk_tar_ren    FK CONSTRAINT     ?   ALTER TABLE ONLY finanzas.t005_tarifas
    ADD CONSTRAINT frk_tar_ren FOREIGN KEY (id_renglon) REFERENCES finanzas.t007_renglones(id_renglon);
 D   ALTER TABLE ONLY finanzas.t005_tarifas DROP CONSTRAINT frk_tar_ren;
       finanzas          postgres    false    240    3231    244                       2606    19720 "   t010_usuario_bancos frk_usrban_usr    FK CONSTRAINT     ?   ALTER TABLE ONLY finanzas.t010_usuario_bancos
    ADD CONSTRAINT frk_usrban_usr FOREIGN KEY (id_usuario) REFERENCES usuarios.t001_usuario(id_usuario);
 N   ALTER TABLE ONLY finanzas.t010_usuario_bancos DROP CONSTRAINT frk_usrban_usr;
       finanzas          postgres    false    248    3303    287                       2606    19725    t001_comercio frk_servicio    FK CONSTRAINT     ?   ALTER TABLE ONLY negocio.t001_comercio
    ADD CONSTRAINT frk_servicio FOREIGN KEY (id_servicio) REFERENCES negocio.t002_tipo_servicio(id_servicio);
 E   ALTER TABLE ONLY negocio.t001_comercio DROP CONSTRAINT frk_servicio;
       negocio          postgres    false    261    259    3264                       2606    19730    t001_comercio frk_tipo_comer    FK CONSTRAINT     ?   ALTER TABLE ONLY negocio.t001_comercio
    ADD CONSTRAINT frk_tipo_comer FOREIGN KEY (id_tipo_comercio) REFERENCES negocio.t003_tipo_comercio(id_tipo_comercio);
 G   ALTER TABLE ONLY negocio.t001_comercio DROP CONSTRAINT frk_tipo_comer;
       negocio          postgres    false    263    259    3266                       2606    19735    t001_comercio grupo    FK CONSTRAINT     ?   ALTER TABLE ONLY negocio.t001_comercio
    ADD CONSTRAINT grupo FOREIGN KEY (id_grupo_corp) REFERENCES negocio.t013_grupo_corp(id_grupo_corp);
 >   ALTER TABLE ONLY negocio.t001_comercio DROP CONSTRAINT grupo;
       negocio          postgres    false    265    259    3268                       2606    19740    t002_apk frk_apk_cert    FK CONSTRAINT     ?   ALTER TABLE ONLY sistema.t002_apk
    ADD CONSTRAINT frk_apk_cert FOREIGN KEY (id_certificado) REFERENCES sistema.t005_certificados(id_certificado);
 @   ALTER TABLE ONLY sistema.t002_apk DROP CONSTRAINT frk_apk_cert;
       sistema          postgres    false    271    277    3285                       2606    19745 $   t006_android_user_cfg frk_drousr_usr    FK CONSTRAINT     ?   ALTER TABLE ONLY sistema.t006_android_user_cfg
    ADD CONSTRAINT frk_drousr_usr FOREIGN KEY (id_usuario) REFERENCES usuarios.t001_usuario(id_usuario);
 O   ALTER TABLE ONLY sistema.t006_android_user_cfg DROP CONSTRAINT frk_drousr_usr;
       sistema          postgres    false    3303    279    287                       2606    19750    t003_ios frk_ios_cert    FK CONSTRAINT     ?   ALTER TABLE ONLY sistema.t003_ios
    ADD CONSTRAINT frk_ios_cert FOREIGN KEY (id_certificado) REFERENCES sistema.t005_certificados(id_certificado);
 @   ALTER TABLE ONLY sistema.t003_ios DROP CONSTRAINT frk_ios_cert;
       sistema          postgres    false    3285    273    277                        2606    19755     t007_ios_user_cfg frk_iosusr_usr    FK CONSTRAINT     ?   ALTER TABLE ONLY sistema.t007_ios_user_cfg
    ADD CONSTRAINT frk_iosusr_usr FOREIGN KEY (id_usuario) REFERENCES usuarios.t001_usuario(id_usuario);
 K   ALTER TABLE ONLY sistema.t007_ios_user_cfg DROP CONSTRAINT frk_iosusr_usr;
       sistema          postgres    false    281    287    3303                       2606    19760    t001_math frk_math_cert    FK CONSTRAINT     ?   ALTER TABLE ONLY sistema.t001_math
    ADD CONSTRAINT frk_math_cert FOREIGN KEY (id_certificado) REFERENCES sistema.t005_certificados(id_certificado);
 B   ALTER TABLE ONLY sistema.t001_math DROP CONSTRAINT frk_math_cert;
       sistema          postgres    false    269    277    3285                       2606    19765    t001_math frk_math_com    FK CONSTRAINT     ?   ALTER TABLE ONLY sistema.t001_math
    ADD CONSTRAINT frk_math_com FOREIGN KEY (id_comercio) REFERENCES negocio.t001_comercio(id_comercio);
 A   ALTER TABLE ONLY sistema.t001_math DROP CONSTRAINT frk_math_com;
       sistema          postgres    false    259    269    3262                       2606    19770    t001_math frk_math_lic    FK CONSTRAINT     ?   ALTER TABLE ONLY sistema.t001_math
    ADD CONSTRAINT frk_math_lic FOREIGN KEY (id_licencia) REFERENCES sistema.t004_licencia(id_licencia);
 A   ALTER TABLE ONLY sistema.t001_math DROP CONSTRAINT frk_math_lic;
       sistema          postgres    false    269    3283    275            !           2606    19775     t008_web_user_cfg frk_webusr_usr    FK CONSTRAINT     ?   ALTER TABLE ONLY sistema.t008_web_user_cfg
    ADD CONSTRAINT frk_webusr_usr FOREIGN KEY (id_usuario) REFERENCES usuarios.t001_usuario(id_usuario);
 K   ALTER TABLE ONLY sistema.t008_web_user_cfg DROP CONSTRAINT frk_webusr_usr;
       sistema          postgres    false    283    287    3303            "           2606    19780 "   h003_dispositivoid frk_dispid_tipo    FK CONSTRAINT     ?   ALTER TABLE ONLY usuarios.h003_dispositivoid
    ADD CONSTRAINT frk_dispid_tipo FOREIGN KEY (id_tipo_dispositivoid) REFERENCES usuarios.t004_tipo_dispositivoid(id_tipo_dispositivoid);
 N   ALTER TABLE ONLY usuarios.h003_dispositivoid DROP CONSTRAINT frk_dispid_tipo;
       usuarios          postgres    false    290    285    3307            #           2606    19785 !   h003_dispositivoid frk_dispid_usr    FK CONSTRAINT     ?   ALTER TABLE ONLY usuarios.h003_dispositivoid
    ADD CONSTRAINT frk_dispid_usr FOREIGN KEY (id_usuario) REFERENCES usuarios.t001_usuario(id_usuario);
 M   ALTER TABLE ONLY usuarios.h003_dispositivoid DROP CONSTRAINT frk_dispid_usr;
       usuarios          postgres    false    287    3303    285            $           2606    19790    t001_usuario frk_usr_status    FK CONSTRAINT     ?   ALTER TABLE ONLY usuarios.t001_usuario
    ADD CONSTRAINT frk_usr_status FOREIGN KEY (status) REFERENCES negocio.t014_status(status);
 G   ALTER TABLE ONLY usuarios.t001_usuario DROP CONSTRAINT frk_usr_status;
       usuarios          postgres    false    3270    287    267            %           2606    19795    t001_usuario frkdocid    FK CONSTRAINT     ?   ALTER TABLE ONLY usuarios.t001_usuario
    ADD CONSTRAINT frkdocid FOREIGN KEY (id_tipodoc_id) REFERENCES base.t001_tipo_docid(id_tipodoc_id);
 A   ALTER TABLE ONLY usuarios.t001_usuario DROP CONSTRAINT frkdocid;
       usuarios          postgres    false    287    207    3162            &           2606    19800    t001_usuario usr_tipousr    FK CONSTRAINT     ?   ALTER TABLE ONLY usuarios.t001_usuario
    ADD CONSTRAINT usr_tipousr FOREIGN KEY (id_tipo_usuario) REFERENCES usuarios.t002_tipousuario(id_tipo_usuario);
 D   ALTER TABLE ONLY usuarios.t001_usuario DROP CONSTRAINT usr_tipousr;
       usuarios          postgres    false    3305    289    287            ?   Q   x?3??tNM)?ITHIU?LI?+?LILQK?K???K???2???JM?,.)?)??K?/?ML???Sp?,NN??????? ??a      ?      x?3?4?L4A????=... /?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?   (   x?KL.?,??4?JI-N????RoLL??4?????? ??-      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?   a   x?E?;?0C???H?9K
B?Mմ??ea??g????48@?tG1-?p??}?n?I???D*??GJh?ۅ??5VtU??MvV?{??/?!s      ?   u   x?]?I1??W?@b_???$?(ҐFYx?????u?wST??=4?~????B2و?Ƒ2?I??????8:9???:Ν8???I/Of?Ź6&^?q[?B	}\?׉??????B?      ?   7   x?3?4???3??t??I,
?T?4202?54?50?2ʚCe??
??f\1z\\\ ӌP      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?   *   x?3426153?????4!CNϒԜĀ??|N?W? ?=-      ?   E   x?3?)J?+.?/*I?2?I?IM??-??LNL???K-?2?tJ,?L?/?2?t-.HM?L?
??qqq ?D      ?   ?   x?=??j1???S?	J??k?!???ҞzQl5?8?"{?&O_%??f???:pJr?X*v?=??s?'M%H??x??K?V.??'?*Y???k憏??cb??Q???,?[A??7nj?û)??n?J㟝?'?X/?p?A???nGz"?+虾????lZY'{? v??P??Lf7?q??????r?z???]? |?H]??8?V?? g??>?guX?      ?   ^   x??1? @ѹ=EO@???arvu!??D))??U????A?N[?X???94??tV[?ml??q*?YYB!?F??????;3?,????0.
_ق?      ?   *   x?3?tL.?,??2?tI-N???9?K?R?R2S??b???? ???      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?3?4?4?4?,?????? ?      ?   ?   x?]?K?0Dדà?h?]O???h?\?P5???7??Y?x?x?9D?	ڟ??^y8h?:?XtW$?9$???9???U?fĔҚ?S??Ʊ$|m?͗?򒵔???2?ı???j?[{v?`G0p,o|?I??ϖݵr;?ׅ?Z??W???!?\];8      ?   ?   x????
?0?٧??????BO??^?Yd!?aM??(EB?;????e?,&Ї?^??@ccY?E?I??Lc??q???ä?9?#?E5i{???uA?yn?c?5??1?U?u5e}M@?h0??????C?fo=Z??B?.lʿ?? ?!??      ?   w   x?%?=
A@?:9E.?????k#렝 a6E?q2???X??{k??n??H?L#'?̆;?E\??mg?AϋGpQR-5?[?x%???a??K??׬?Ф?j4
]L>????$?     