/*
File name: C:\Users\cabal\Desktop\avcpost.sql
Creation date: 04/18/2022
Created by MySQL to PostgreSQL 5.5 [Demo]
--------------------------------------------------
More conversion tools at http://www.convert-in.com
*/
set client_encoding to 'WIN1258';
DO $$
BEGIN
IF NOT EXISTS (SELECT schema_name FROM information_schema.schemata WHERE schema_name = 'songs')
THEN
CREATE SCHEMA "songs";
END IF;
END$$;


/*
Table structure for table 'songs.auth_group'
*/

DROP TABLE IF EXISTS "songs"."auth_group" CASCADE;
CREATE TABLE "songs"."auth_group" ("id" SERIAL NOT NULL, "name" VARCHAR(150)  NOT NULL);
ALTER SEQUENCE "songs"."auth_group_id_seq" RESTART WITH 1 INCREMENT BY 1;
DROP INDEX IF EXISTS "primary";
ALTER TABLE "songs"."auth_group" ADD CONSTRAINT "primary" PRIMARY KEY ("id");
DROP INDEX IF EXISTS "name";
CREATE UNIQUE INDEX "name" ON "songs"."auth_group" ("name");

/*
Dumping data for table 'songs.auth_group'
*/

DO $$
BEGIN
IF NOT EXISTS (SELECT schema_name FROM information_schema.schemata WHERE schema_name = 'songs')
THEN
CREATE SCHEMA "songs";
END IF;
END$$;


/*
Table structure for table 'songs.auth_group_permissions'
*/

DROP TABLE IF EXISTS "songs"."auth_group_permissions" CASCADE;
CREATE TABLE "songs"."auth_group_permissions" ("id" BIGSERIAL NOT NULL, "group_id" INTEGER NOT NULL, "permission_id" INTEGER NOT NULL);
ALTER SEQUENCE "songs"."auth_group_permissions_id_seq" RESTART WITH 1 INCREMENT BY 1;
DROP INDEX IF EXISTS "primary00000";
ALTER TABLE "songs"."auth_group_permissions" ADD CONSTRAINT "primary00000" PRIMARY KEY ("id");
DROP INDEX IF EXISTS "auth_group_permissions_group_id_permission_id_0cd325b0_uniq";
CREATE UNIQUE INDEX "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "songs"."auth_group_permissions" ("group_id", "permission_id");
DROP INDEX IF EXISTS "auth_group_permissio_permission_id_84c5c92e_fk_auth_perm";
CREATE INDEX "auth_group_permissio_permission_id_84c5c92e_fk_auth_perm" ON "songs"."auth_group_permissions" ("permission_id");

/*
Dumping data for table 'songs.auth_group_permissions'
*/

DO $$
BEGIN
IF NOT EXISTS (SELECT schema_name FROM information_schema.schemata WHERE schema_name = 'songs')
THEN
CREATE SCHEMA "songs";
END IF;
END$$;


/*
Table structure for table 'songs.auth_permission'
*/

DROP TABLE IF EXISTS "songs"."auth_permission" CASCADE;
CREATE TABLE "songs"."auth_permission" ("id" SERIAL NOT NULL, "name" VARCHAR(255)  NOT NULL, "content_type_id" INTEGER NOT NULL, "codename" VARCHAR(100)  NOT NULL);
ALTER SEQUENCE "songs"."auth_permission_id_seq" RESTART WITH 29 INCREMENT BY 1;
DROP INDEX IF EXISTS "primary00001";
ALTER TABLE "songs"."auth_permission" ADD CONSTRAINT "primary00001" PRIMARY KEY ("id");
DROP INDEX IF EXISTS "auth_permission_content_type_id_codename_01ab375a_uniq";
CREATE UNIQUE INDEX "auth_permission_content_type_id_codename_01ab375a_uniq" ON "songs"."auth_permission" ("content_type_id", "codename");

/*
Dumping data for table 'songs.auth_permission'
*/

INSERT INTO "songs"."auth_permission"("id", "name", "content_type_id", "codename") VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO "songs"."auth_permission"("id", "name", "content_type_id", "codename") VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO "songs"."auth_permission"("id", "name", "content_type_id", "codename") VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO "songs"."auth_permission"("id", "name", "content_type_id", "codename") VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO "songs"."auth_permission"("id", "name", "content_type_id", "codename") VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO "songs"."auth_permission"("id", "name", "content_type_id", "codename") VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO "songs"."auth_permission"("id", "name", "content_type_id", "codename") VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO "songs"."auth_permission"("id", "name", "content_type_id", "codename") VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO "songs"."auth_permission"("id", "name", "content_type_id", "codename") VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO "songs"."auth_permission"("id", "name", "content_type_id", "codename") VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO "songs"."auth_permission"("id", "name", "content_type_id", "codename") VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO "songs"."auth_permission"("id", "name", "content_type_id", "codename") VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO "songs"."auth_permission"("id", "name", "content_type_id", "codename") VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO "songs"."auth_permission"("id", "name", "content_type_id", "codename") VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO "songs"."auth_permission"("id", "name", "content_type_id", "codename") VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO "songs"."auth_permission"("id", "name", "content_type_id", "codename") VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO "songs"."auth_permission"("id", "name", "content_type_id", "codename") VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO "songs"."auth_permission"("id", "name", "content_type_id", "codename") VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO "songs"."auth_permission"("id", "name", "content_type_id", "codename") VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO "songs"."auth_permission"("id", "name", "content_type_id", "codename") VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO "songs"."auth_permission"("id", "name", "content_type_id", "codename") VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO "songs"."auth_permission"("id", "name", "content_type_id", "codename") VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO "songs"."auth_permission"("id", "name", "content_type_id", "codename") VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO "songs"."auth_permission"("id", "name", "content_type_id", "codename") VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO "songs"."auth_permission"("id", "name", "content_type_id", "codename") VALUES (25, 'Can add songs', 7, 'add_songs');
INSERT INTO "songs"."auth_permission"("id", "name", "content_type_id", "codename") VALUES (26, 'Can change songs', 7, 'change_songs');
INSERT INTO "songs"."auth_permission"("id", "name", "content_type_id", "codename") VALUES (27, 'Can delete songs', 7, 'delete_songs');
INSERT INTO "songs"."auth_permission"("id", "name", "content_type_id", "codename") VALUES (28, 'Can view songs', 7, 'view_songs');
DO $$
BEGIN
IF NOT EXISTS (SELECT schema_name FROM information_schema.schemata WHERE schema_name = 'songs')
THEN
CREATE SCHEMA "songs";
END IF;
END$$;


/*
Table structure for table 'songs.auth_user'
*/

DROP TABLE IF EXISTS "songs"."auth_user" CASCADE;
CREATE TABLE "songs"."auth_user" ("id" SERIAL NOT NULL, "password" VARCHAR(128)  NOT NULL, "last_login" TIMESTAMP(0), "is_superuser" SMALLINT NOT NULL, "username" VARCHAR(150)  NOT NULL, "first_name" VARCHAR(150)  NOT NULL, "last_name" VARCHAR(150)  NOT NULL, "email" VARCHAR(254)  NOT NULL, "is_staff" SMALLINT NOT NULL, "is_active" SMALLINT NOT NULL, "date_joined" TIMESTAMP(0));
DROP INDEX IF EXISTS "primary00002";
ALTER TABLE "songs"."auth_user" ADD CONSTRAINT "primary00002" PRIMARY KEY ("id");
DROP INDEX IF EXISTS "username";
CREATE UNIQUE INDEX "username" ON "songs"."auth_user" ("username");

/*
Dumping data for table 'songs.auth_user'
*/

INSERT INTO "songs"."auth_user"("id", "password", "last_login", "is_superuser", "username", "first_name", "last_name", "email", "is_staff", "is_active", "date_joined") VALUES (1, 'pbkdf2_sha256$320000$SQLP65Ti5k36QW2GUSjzn6$mVsaYTK7Gpclcu4dB95HK7qMuCUhN4h5906BMCGpUEc=', '2022-04-17 16:01:49.833596', 1, 'Sasha', '', '', 'caballerosasha@hotmail.com', 1, 1, '2022-04-16 00:30:47.950406');
DO $$
BEGIN
IF NOT EXISTS (SELECT schema_name FROM information_schema.schemata WHERE schema_name = 'songs')
THEN
CREATE SCHEMA "songs";
END IF;
END$$;


/*
Table structure for table 'songs.auth_user_groups'
*/

DROP TABLE IF EXISTS "songs"."auth_user_groups" CASCADE;
CREATE TABLE "songs"."auth_user_groups" ("id" BIGSERIAL NOT NULL, "user_id" INTEGER NOT NULL, "group_id" INTEGER NOT NULL);
ALTER SEQUENCE "songs"."auth_user_groups_id_seq" RESTART WITH 1 INCREMENT BY 1;
DROP INDEX IF EXISTS "primary00003";
ALTER TABLE "songs"."auth_user_groups" ADD CONSTRAINT "primary00003" PRIMARY KEY ("id");
DROP INDEX IF EXISTS "auth_user_groups_user_id_group_id_94350c0c_uniq";
CREATE UNIQUE INDEX "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "songs"."auth_user_groups" ("user_id", "group_id");
DROP INDEX IF EXISTS "auth_user_groups_group_id_97559544_fk_auth_group_id";
CREATE INDEX "auth_user_groups_group_id_97559544_fk_auth_group_id" ON "songs"."auth_user_groups" ("group_id");

/*
Dumping data for table 'songs.auth_user_groups'
*/

DO $$
BEGIN
IF NOT EXISTS (SELECT schema_name FROM information_schema.schemata WHERE schema_name = 'songs')
THEN
CREATE SCHEMA "songs";
END IF;
END$$;


/*
Table structure for table 'songs.auth_user_user_permissions'
*/

DROP TABLE IF EXISTS "songs"."auth_user_user_permissions" CASCADE;
CREATE TABLE "songs"."auth_user_user_permissions" ("id" BIGSERIAL NOT NULL, "user_id" INTEGER NOT NULL, "permission_id" INTEGER NOT NULL);
ALTER SEQUENCE "songs"."auth_user_user_permissions_id_seq" RESTART WITH 1 INCREMENT BY 1;
DROP INDEX IF EXISTS "primary00004";
ALTER TABLE "songs"."auth_user_user_permissions" ADD CONSTRAINT "primary00004" PRIMARY KEY ("id");
DROP INDEX IF EXISTS "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq";
CREATE UNIQUE INDEX "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "songs"."auth_user_user_permissions" ("user_id", "permission_id");
DROP INDEX IF EXISTS "auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm";
CREATE INDEX "auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm" ON "songs"."auth_user_user_permissions" ("permission_id");

/*
Dumping data for table 'songs.auth_user_user_permissions'
*/

DO $$
BEGIN
IF NOT EXISTS (SELECT schema_name FROM information_schema.schemata WHERE schema_name = 'songs')
THEN
CREATE SCHEMA "songs";
END IF;
END$$;


/*
Table structure for table 'songs.django_admin_log'
*/

DROP TABLE IF EXISTS "songs"."django_admin_log" CASCADE;
CREATE TABLE "songs"."django_admin_log" ("id" SERIAL NOT NULL, "action_time" TIMESTAMP(0), "object_id" TEXT, "object_repr" VARCHAR(200)  NOT NULL, "action_flag" INTEGER NOT NULL, "change_message" TEXT NOT NULL, "content_type_id" INTEGER, "user_id" INTEGER NOT NULL);
ALTER SEQUENCE "songs"."django_admin_log_id_seq" RESTART WITH 1 INCREMENT BY 1;
DROP INDEX IF EXISTS "primary00005";
ALTER TABLE "songs"."django_admin_log" ADD CONSTRAINT "primary00005" PRIMARY KEY ("id");
DROP INDEX IF EXISTS "django_admin_log_content_type_id_c4bce8eb_fk_django_co";
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb_fk_django_co" ON "songs"."django_admin_log" ("content_type_id");
DROP INDEX IF EXISTS "django_admin_log_user_id_c564eba6_fk_auth_user_id";
CREATE INDEX "django_admin_log_user_id_c564eba6_fk_auth_user_id" ON "songs"."django_admin_log" ("user_id");

/*
Dumping data for table 'songs.django_admin_log'
*/

DO $$
BEGIN
IF NOT EXISTS (SELECT schema_name FROM information_schema.schemata WHERE schema_name = 'songs')
THEN
CREATE SCHEMA "songs";
END IF;
END$$;


/*
Table structure for table 'songs.django_content_type'
*/

DROP TABLE IF EXISTS "songs"."django_content_type" CASCADE;
CREATE TABLE "songs"."django_content_type" ("id" SERIAL NOT NULL, "app_label" VARCHAR(100)  NOT NULL, "model" VARCHAR(100)  NOT NULL);
ALTER SEQUENCE "songs"."django_content_type_id_seq" RESTART WITH 8 INCREMENT BY 1;
DROP INDEX IF EXISTS "primary00006";
ALTER TABLE "songs"."django_content_type" ADD CONSTRAINT "primary00006" PRIMARY KEY ("id");
DROP INDEX IF EXISTS "django_content_type_app_label_model_76bd3d3b_uniq";
CREATE UNIQUE INDEX "django_content_type_app_label_model_76bd3d3b_uniq" ON "songs"."django_content_type" ("app_label", "model");

/*
Dumping data for table 'songs.django_content_type'
*/

INSERT INTO "songs"."django_content_type"("id", "app_label", "model") VALUES (1, 'admin', 'logentry');
INSERT INTO "songs"."django_content_type"("id", "app_label", "model") VALUES (3, 'auth', 'group');
INSERT INTO "songs"."django_content_type"("id", "app_label", "model") VALUES (2, 'auth', 'permission');
INSERT INTO "songs"."django_content_type"("id", "app_label", "model") VALUES (4, 'auth', 'user');
INSERT INTO "songs"."django_content_type"("id", "app_label", "model") VALUES (7, 'avcapi', 'songs');
INSERT INTO "songs"."django_content_type"("id", "app_label", "model") VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO "songs"."django_content_type"("id", "app_label", "model") VALUES (6, 'sessions', 'session');
DO $$
BEGIN
IF NOT EXISTS (SELECT schema_name FROM information_schema.schemata WHERE schema_name = 'songs')
THEN
CREATE SCHEMA "songs";
END IF;
END$$;


/*
Table structure for table 'songs.django_migrations'
*/

DROP TABLE IF EXISTS "songs"."django_migrations" CASCADE;
CREATE TABLE "songs"."django_migrations" ("id" BIGSERIAL NOT NULL, "app" VARCHAR(255)  NOT NULL, "name" VARCHAR(255)  NOT NULL, "applied" TIMESTAMP(0));
ALTER SEQUENCE "songs"."django_migrations_id_seq" RESTART WITH 21 INCREMENT BY 1;
DROP INDEX IF EXISTS "primary00007";
ALTER TABLE "songs"."django_migrations" ADD CONSTRAINT "primary00007" PRIMARY KEY ("id");

/*
Dumping data for table 'songs.django_migrations'
*/

INSERT INTO "songs"."django_migrations"("id", "app", "name", "applied") VALUES (1, 'contenttypes', '0001_initial', '2022-04-15 15:55:22.119727');
INSERT INTO "songs"."django_migrations"("id", "app", "name", "applied") VALUES (2, 'auth', '0001_initial', '2022-04-15 15:56:14.051501');
INSERT INTO "songs"."django_migrations"("id", "app", "name", "applied") VALUES (3, 'admin', '0001_initial', '2022-04-15 15:56:33.699552');
INSERT INTO "songs"."django_migrations"("id", "app", "name", "applied") VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2022-04-15 15:56:33.830742');
INSERT INTO "songs"."django_migrations"("id", "app", "name", "applied") VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2022-04-15 15:56:34.078069');
INSERT INTO "songs"."django_migrations"("id", "app", "name", "applied") VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2022-04-15 15:56:40.966585');
INSERT INTO "songs"."django_migrations"("id", "app", "name", "applied") VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2022-04-15 15:56:46.292688');
INSERT INTO "songs"."django_migrations"("id", "app", "name", "applied") VALUES (8, 'auth', '0003_alter_user_email_max_length', '2022-04-15 15:56:48.134443');
INSERT INTO "songs"."django_migrations"("id", "app", "name", "applied") VALUES (9, 'auth', '0004_alter_user_username_opts', '2022-04-15 15:56:48.651219');
INSERT INTO "songs"."django_migrations"("id", "app", "name", "applied") VALUES (10, 'auth', '0005_alter_user_last_login_null', '2022-04-15 15:56:54.984819');
INSERT INTO "songs"."django_migrations"("id", "app", "name", "applied") VALUES (11, 'auth', '0006_require_contenttypes_0002', '2022-04-15 15:56:55.397729');
INSERT INTO "songs"."django_migrations"("id", "app", "name", "applied") VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2022-04-15 15:56:55.755861');
INSERT INTO "songs"."django_migrations"("id", "app", "name", "applied") VALUES (13, 'auth', '0008_alter_user_username_max_length', '2022-04-15 15:57:02.774981');
INSERT INTO "songs"."django_migrations"("id", "app", "name", "applied") VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2022-04-15 15:57:09.573219');
INSERT INTO "songs"."django_migrations"("id", "app", "name", "applied") VALUES (15, 'auth', '0010_alter_group_name_max_length', '2022-04-15 15:57:10.614671');
INSERT INTO "songs"."django_migrations"("id", "app", "name", "applied") VALUES (16, 'auth', '0011_update_proxy_permissions', '2022-04-15 15:57:11.248854');
INSERT INTO "songs"."django_migrations"("id", "app", "name", "applied") VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2022-04-15 15:57:16.018068');
INSERT INTO "songs"."django_migrations"("id", "app", "name", "applied") VALUES (18, 'sessions', '0001_initial', '2022-04-15 15:57:18.616836');
INSERT INTO "songs"."django_migrations"("id", "app", "name", "applied") VALUES (19, 'avcapi', '0001_initial', '2022-04-15 16:01:10.644059');
INSERT INTO "songs"."django_migrations"("id", "app", "name", "applied") VALUES (20, 'avcapi', '0002_alter_songs_options', '2022-04-17 21:55:14.620497');
DO $$
BEGIN
IF NOT EXISTS (SELECT schema_name FROM information_schema.schemata WHERE schema_name = 'songs')
THEN
CREATE SCHEMA "songs";
END IF;
END$$;


/*
Table structure for table 'songs.django_session'
*/

DROP TABLE IF EXISTS "songs"."django_session" CASCADE;
CREATE TABLE "songs"."django_session" ("session_key" VARCHAR(40)  NOT NULL, "session_data" TEXT NOT NULL, "expire_date" TIMESTAMP(0));
DROP INDEX IF EXISTS "primary00008";
ALTER TABLE "songs"."django_session" ADD CONSTRAINT "primary00008" PRIMARY KEY ("session_key");
DROP INDEX IF EXISTS "django_session_expire_date_a5c62663";
CREATE INDEX "django_session_expire_date_a5c62663" ON "songs"."django_session" ("expire_date");

/*
Dumping data for table 'songs.django_session'
*/

INSERT INTO "songs"."django_session"("session_key", "session_data", "expire_date") VALUES ('nyzssim5cqjimzeeom0zcuhkbvxhi3i3', '.eJxVjDsOwyAQRO9CHSGzfAIp0-cMaGEhOIlAMnYV-e62JRdJOfPezJd5XObil54mPxK7McEuv13A-E71APTC-mw8tjpPY-CHwk_a-aNR-txP9--gYC_7WhpUEkCSkmrQbk9BS9LJGAvaCYsUkQSAwGivCrQlYTJghsGp7Gxm6wawuDbh:1nfWYf:6jQrvTJ9W84ESMspEgTlMMuuTqG1AvAAeJY2I11zcfk', '2022-04-30 00:45:01.908648');
INSERT INTO "songs"."django_session"("session_key", "session_data", "expire_date") VALUES ('rha605x4sqc3rurfhw97v87qvuoivcjo', '.eJxVjDsOwyAQRO9CHSGzfAIp0-cMaGEhOIlAMnYV-e62JRdJOfPezJd5XObil54mPxK7McEuv13A-E71APTC-mw8tjpPY-CHwk_a-aNR-txP9--gYC_7WhpUEkCSkmrQbk9BS9LJGAvaCYsUkQSAwGivCrQlYTJghsGp7Gxm6wawuDbh:1ng7LS:AZfobT3SmyFCdxSX8819qU49-FJydmDPzm8XYunVkuA', '2022-05-01 16:01:50.345027');
DO $$
BEGIN
IF NOT EXISTS (SELECT schema_name FROM information_schema.schemata WHERE schema_name = 'songs')
THEN
CREATE SCHEMA "songs";
END IF;
END$$;


/*
Table structure for table 'songs.songs'
*/

DROP TABLE IF EXISTS "songs"."songs" CASCADE;
CREATE TABLE "songs"."songs" ("nombre" VARCHAR(90) , "id" INTEGER, "año_de_composición" INTEGER, "duración_segundos" INTEGER, "compositores" VARCHAR(255) , "letra" VARCHAR(2000) );

/*
Dumping data for table 'songs.songs'
*/

INSERT INTO "songs"."songs"("nombre", "id", "año_de_composición", "duración_segundos", "compositores", "letra") VALUES ('Lugar de Almas', 2, 2020, NULL, 'Emanuel Porres, Sasha Rodriguez Carlomagno, Brian Casafú', 'Sin falta, dame ya
un buen recuerdo
que lo sientas de verdad
que brille en tu cuerpo.

Si me tengo que perder y cegar
asi será, no tengo miedo.

Cuando me lleves a tu lugar
de almas, por favor demorate
en apagar mi vela. 

Quisiera hoy vivir en 
este desierto. 

Si me tengo que perder y cegar
asi será, todo es tan lento.

Cuando me lleves a tu lugar
de almas, por favor demorate
en apagar mi vela. 

Cuando me lleves a tu lugar
de almas, por favor demorate
en apagar mi vela. 
No debía arriesgar, pero era
una necesidad encontrar la belleza
de tu presencia una vez mas.');
INSERT INTO "songs"."songs"("nombre", "id", "año_de_composición", "duración_segundos", "compositores", "letra") VALUES ('Enrika', 1, 2015, NULL, 'Sasha Rodriguez Carlomagno', 'Muchas palabras se han dicho, pero en tiempos de guerra y no se si son reales
Quiero creerlas sin embargo tu rostro me asusta cuando siento que se va 

Siendo tu pan en el camino te dije que dándote la vuelta mirarias al sol

Y yo te busco en ese sueño y en todos los tiempos

Lirio del valle, mediadora, no abandones tu reino, no detengas tu brillar

Siendo tu pan en el camino te dije que dándote la vuelta mirarias al sol

Y yo te busco en ese sueño y en todos los tiempos, sin volver y sin textos
Sin razon, sin poder, pues no existes');
INSERT INTO "songs"."songs"("nombre", "id", "año_de_composición", "duración_segundos", "compositores", "letra") VALUES ('Rinkrank', 3, 2020, NULL, 'Emanuel Porres, Sasha Rodriguez Carlomagno, Brian Casafú', 'Tal vez era hora de crecer
siendo la nieve que imaginaba
ayer

Y acá viendo la gente pasar,
no me decido si el tren tomar
no sé

A donde va y que será verdad

Quizás en este viaje habrá
alguien que me diga como luchar
es que

No respiro, pienso, no concluyo, siento
y ya no hay mas que dejarme caer

Allá en la oscuridad,
que no es el lugar que creía,
el dolor que me causaste fue en el día. 

No respiro, pienso, no concluyo, siento
y ya no hay mas que dejarme caer

Allá en la oscuridad,
que no es el lugar que creía,
el dolor que me causaste fue tan
brillante, un largo instante
y por todas partes grité amarlo

No respiro, pienso, no concluyo, siento
y ya no hay mas tiempo, ya no hay mas tiempo');
INSERT INTO "songs"."songs"("nombre", "id", "año_de_composición", "duración_segundos", "compositores", "letra") VALUES ('Scarlett', 8, 2021, NULL, 'Emanuel Porres, Sasha Rodriguez Carlomagno, Brian Casafú, Miranda Martinez', 'Oh oh oh, oh oh oh, oh oh. x2 

Intento encontrarte cuando no estás,
hurgando en tu propia verdad.

Oh oh oh, oh oh oh, oh oh. x2

Esta mañana me di cuenta
es obvio que es lo que nos cuesta.
¿Hoy quien sos cuando no tenés voz?

Oh oh oh, oh oh oh, oh oh.

Quien vendrá a buscarme cuando no haya
mas nada que decir, que contar

Esta mañana me di cuenta
la cruz que cargo no es respuesta
¿Hoy quien sos cuando no tenés voz?, ¿quien sos?

Que no, que siga x6
Que no, que siga x6
No, no pare, no, que siga, comienza el viaje.

No habrá mas que contarte las cosas que me cuenta(que presenta) el mañana.

Que no, que siga x6
No, no pare, no pa, que siga, comienza el viaje.');
INSERT INTO "songs"."songs"("nombre", "id", "año_de_composición", "duración_segundos", "compositores", "letra") VALUES ('Con la frente en alto', 9, 2021, NULL, 'Emanuel Porres, Sasha Rodriguez Carlomagno, Brian Casafú, Miranda Martinez', 'Ruedan mil cabezas, ninguna a la par, se quiebra el arcoíris solo por estar.
Miseria en la comedia, cruel en el cartel, se mueren por beberla, se matan por estar
Y ahora estoy aquí, aquí, aquí, aquí sin mi, y ahora estoy sin mi queriéndome escapar del fin
No comprendo que te pasa, cuando quieres cortar mis alas, que me importa que me quieras, con la frente en alto, con la frente en alto estoy, sin vos, estoy sin vos. 
Los versos que comiste no están en mi menú, la historia que vendiste no se escuchará.
Se revela la colmena, sin reina estarán, ahora libre y fuerte

Y ahora estoy aquí, aquí, aquí, aquí sin mi, y ahora estoy sin mi queriéndome escapar del fin
No comprendo que te pasa, cuando quieres cortar mis alas, que me importa que me quieras, con la frente en alto, con la frente en alto estoy, sin vos, estoy sin vos. 
');
INSERT INTO "songs"."songs"("nombre", "id", "año_de_composición", "duración_segundos", "compositores", "letra") VALUES ('Mapa', 10, 2021, NULL, 'Emanuel Porres, Sasha Rodriguez Carlomagno, Brian Casafú, Miranda Martinez', 'Mil maneras de caminar, pero todas te traen acá.
Tu aroma, tu sombra, tu esencia, tu boca, una voz irreal. 
Clausurada está la cuestión, lo que siento viaja con vos, 
Mis manos, tus manos, se funden, no en vano, pienso al respirar. 

Y me doy cuenta que me falla el GPS en la ciudad. 
Que lo que busco esté por donde quieras vos andar.
 
Hey, dónde voy, cuando se me acaba el mapa,
Hey, donde voy, cuando hoy pierda el ancla,
Hey dónde estoy, cuando no encuentre mi casa,
Hey dónde voy, cuando no te vea en mi cama.

Cuando no entra la señal mi cabeza empieza a carburar, que hice, que hago, en tal calle, en tal barrio ya no nos verán.

Y me doy cuenta que me falla el GPS en mi ciudad. 
Que lo que busco esté por donde quieras vos andar.

Hey, dónde voy, cuando se me acaba el mapa,
Hey, donde voy, cuando hoy pierda el ancla,
Hey dónde estoy, cuando no encuentre mi casa,
Hey dónde voy, cuando no te vea en mi cama.
');
INSERT INTO "songs"."songs"("nombre", "id", "año_de_composición", "duración_segundos", "compositores", "letra") VALUES ('Real', 4, 2020, NULL, 'Emanuel Porres, Sasha Rodriguez Carlomagno, Brian Casafú', 'Se va durmiendo el sol
mi alma lento se quiebra
no hay consideracion, el ciclo no frena,
uno cambia junto al mundo

El viento nos cuenta, el dia que nos aguarda
pero no puedo ver, no se interpretar
los aullidos en mi ventana

Y todo es igual a lo que creo recordar
aunque el cielo varió su color, ya no es claro,
y mis pies dudan en la tierra buscando
un rostro que pueda ser

Real, que haya sentido la máscara,
ese elemento que hace distancias,
real, que sostenga la mirada.


INSTRUMENTAL/SOLO

Y todo es igual a lo que creo recordar
aunque el cielo varió su color, ya no es claro,
y mis pies dudan en la tierra buscando
un rostro que pueda ser

Real, que haya sentido la máscara,
ese elemento que hace distancias,
real, que sostenga la mirada.');
INSERT INTO "songs"."songs"("nombre", "id", "año_de_composición", "duración_segundos", "compositores", "letra") VALUES ('Tu Piel', 5, 2020, NULL, 'Emanuel Porres, Sasha Rodriguez Carlomagno, Brian Casafú', 'Cuando espero volver a comenzar, volvés a bailarme,
Y aunque sepa que la danza no está, no puedo dejar de mirar 

Y hoy tu amor, un resto verbal, ¿a quien despertará?
Un largo sueño roto como un cristal, despedazándose

Y el tiempo pasó, la noche no mintió, me gritó que te pida salir

Lo tengo que olvidar, ya sé, pero igual ¿como fue que el se llevó tu piel?
Se vuelve tan real el que renuncies a mi fé escrita en tu piel

Lo tengo que olvidar, ya sé, pero igual ¿como fue que el se llevó tu piel?
Se vuelve tan real el que renuncies a mi fé escrita en tu piel

Y el tiempo pasó, la noche no mintió, me gritó que te pida salir');
INSERT INTO "songs"."songs"("nombre", "id", "año_de_composición", "duración_segundos", "compositores", "letra") VALUES ('2 AM', 6, 2020, NULL, 'Emanuel Porres, Sasha Rodriguez Carlomagno, Brian Casafú', 'Hoy el cielo, borró el adiós. 
Que mandaste por el buzón. 
La distancia nos mejoró.
Caminemos ya sin pudor.

Caminando por la calle,
Voy sin reloj.
No sé ni cuando y como, se harán las 2 AM.

Voy llegando, a la disco, y te veo sin tu chico,
Que mal.
Solo conmigo estarás.

Hoy el cielo, borró el adiós. 
Que mandaste por el buzón. 
La distancia nos mejoró.
Caminemos ya sin pudor.

Voy llegando, a la disco, y te veo sin tu chico,
Que mal.
Solo conmigo estarás.');
INSERT INTO "songs"."songs"("nombre", "id", "año_de_composición", "duración_segundos", "compositores", "letra") VALUES ('Afrodita', 7, 2020, NULL, 'Emanuel Porres, Sasha Rodriguez Carlomagno, Brian Casafú', 'Supe que me pasaba, 
Al correr mi ventana al sur. 
Puedo sentir tus mañanas,
Cuando me despertas.

Tu mirada atrapaba, 
El secreto en mi almohada, 
Drácula me succiona, 
Pero vos me enamoras.

Si, hoy me enamora Afrodita,
Si, hoy ven mi venus de Milo.
Si, hoy siento la vibra en mi alma, 
Y quiero más, mucho más.

Tu mirada atrapaba, 
El secreto en mi almohada, 
Drácula me succiona, 
Pero vos me enamoras.

Si, hoy me enamora Afrodita,
Si, hoy ven mi venus de Milo.
Si, hoy siento la vibra en mi alma, 
Y quiero más, mucho más.');
INSERT INTO "songs"."songs"("nombre", "id", "año_de_composición", "duración_segundos", "compositores", "letra") VALUES ('Me voy', 11, NULL, NULL, NULL, NULL);
