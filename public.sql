/*
 Navicat Premium Data Transfer

 Source Server         : university
 Source Server Type    : PostgreSQL
 Source Server Version : 90605
 Source Host           : myteh24.ru:5432
 Source Catalog        : semik_univer
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 90605
 File Encoding         : 65001

 Date: 04/05/2020 13:31:49
*/


-- ----------------------------
-- Sequence structure for classrooms_id_classroom_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."classrooms_id_classroom_seq";
CREATE SEQUENCE "public"."classrooms_id_classroom_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for departments_id_department_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."departments_id_department_seq";
CREATE SEQUENCE "public"."departments_id_department_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for education_type_id_education_type_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."education_type_id_education_type_seq";
CREATE SEQUENCE "public"."education_type_id_education_type_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for faculty_id_faculty_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."faculty_id_faculty_seq";
CREATE SEQUENCE "public"."faculty_id_faculty_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for lesson_id_lesson_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."lesson_id_lesson_seq";
CREATE SEQUENCE "public"."lesson_id_lesson_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for payment_type_id_payment_type_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."payment_type_id_payment_type_seq";
CREATE SEQUENCE "public"."payment_type_id_payment_type_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for specialization_id_specialization_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."specialization_id_specialization_seq";
CREATE SEQUENCE "public"."specialization_id_specialization_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for students_groups_id_group_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."students_groups_id_group_seq";
CREATE SEQUENCE "public"."students_groups_id_group_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for subjects_id_subject_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."subjects_id_subject_seq";
CREATE SEQUENCE "public"."subjects_id_subject_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for teacher_id_teacher_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."teacher_id_teacher_seq";
CREATE SEQUENCE "public"."teacher_id_teacher_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for teachers_on_lesson_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."teachers_on_lesson_ID_seq";
CREATE SEQUENCE "public"."teachers_on_lesson_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for teachers_positions_id_position_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."teachers_positions_id_position_seq";
CREATE SEQUENCE "public"."teachers_positions_id_position_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for type_lesson_id_type_lesson_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."type_lesson_id_type_lesson_seq";
CREATE SEQUENCE "public"."type_lesson_id_type_lesson_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for week_id_week_day_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."week_id_week_day_seq";
CREATE SEQUENCE "public"."week_id_week_day_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for classrooms
-- ----------------------------
DROP TABLE IF EXISTS "public"."classrooms";
CREATE TABLE "public"."classrooms" (
  "id_classroom" int4 NOT NULL DEFAULT nextval('classrooms_id_classroom_seq'::regclass),
  "num_building" int4 NOT NULL,
  "num_class" int4 NOT NULL
)
;

-- ----------------------------
-- Records of classrooms
-- ----------------------------
INSERT INTO "public"."classrooms" VALUES (2, 9, 404);
INSERT INTO "public"."classrooms" VALUES (3, 9, 408);
INSERT INTO "public"."classrooms" VALUES (6, 8, 201);
INSERT INTO "public"."classrooms" VALUES (8, 8, 605);
INSERT INTO "public"."classrooms" VALUES (16, 4, 23);
INSERT INTO "public"."classrooms" VALUES (17, 2, 23);
INSERT INTO "public"."classrooms" VALUES (18, 213, 1);
INSERT INTO "public"."classrooms" VALUES (19, 123, 1);
INSERT INTO "public"."classrooms" VALUES (20, 13, 1);

-- ----------------------------
-- Table structure for departments
-- ----------------------------
DROP TABLE IF EXISTS "public"."departments";
CREATE TABLE "public"."departments" (
  "id_department" int4 NOT NULL DEFAULT nextval('departments_id_department_seq'::regclass),
  "name_department" text COLLATE "pg_catalog"."default" NOT NULL,
  "logo_department" text COLLATE "pg_catalog"."default",
  "id_faculty_department" int4 NOT NULL,
  "id_classrooms_department" int4 NOT NULL
)
;

-- ----------------------------
-- Records of departments
-- ----------------------------
INSERT INTO "public"."departments" VALUES (3, 'Программная инженерия', NULL, 7, 16);

-- ----------------------------
-- Table structure for education_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."education_type";
CREATE TABLE "public"."education_type" (
  "id_education_type" int4 NOT NULL DEFAULT nextval('education_type_id_education_type_seq'::regclass),
  "name_education_type" text COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of education_type
-- ----------------------------
INSERT INTO "public"."education_type" VALUES (2, 'Очное');
INSERT INTO "public"."education_type" VALUES (3, 'Заочное');

-- ----------------------------
-- Table structure for faculty
-- ----------------------------
DROP TABLE IF EXISTS "public"."faculty";
CREATE TABLE "public"."faculty" (
  "id_faculty" int4 NOT NULL DEFAULT nextval('faculty_id_faculty_seq'::regclass),
  "name_faculty" text COLLATE "pg_catalog"."default" NOT NULL,
  "logo_faculty" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of faculty
-- ----------------------------
INSERT INTO "public"."faculty" VALUES (2, 'Горно-геологический', NULL);
INSERT INTO "public"."faculty" VALUES (3, 'Горный', NULL);
INSERT INTO "public"."faculty" VALUES (4, 'Инженерной механики и машиностроения', NULL);
INSERT INTO "public"."faculty" VALUES (5, 'Металлургии и теплоэнергетики', NULL);
INSERT INTO "public"."faculty" VALUES (6, 'Электротехнический', NULL);
INSERT INTO "public"."faculty" VALUES (7, 'Компьютерных наук и технологий', NULL);
INSERT INTO "public"."faculty" VALUES (8, 'Компьютерных информационных технологий и автоматики', NULL);
INSERT INTO "public"."faculty" VALUES (9, 'Экологии и химической технологии', NULL);
INSERT INTO "public"."faculty" VALUES (10, 'Инженерно-экономический', NULL);

-- ----------------------------
-- Table structure for groups_on_lesson
-- ----------------------------
DROP TABLE IF EXISTS "public"."groups_on_lesson";
CREATE TABLE "public"."groups_on_lesson" (
  "id_groups_on_lesson" int4 NOT NULL,
  "id_lesson_for_group" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for lesson
-- ----------------------------
DROP TABLE IF EXISTS "public"."lesson";
CREATE TABLE "public"."lesson" (
  "id_type_lesson" int4 NOT NULL,
  "id_payment_type_on_lesson" int4 NOT NULL,
  "num_lesson" int4 NOT NULL,
  "id_lesson" int4 NOT NULL DEFAULT nextval('lesson_id_lesson_seq'::regclass),
  "id_week_day" int4 NOT NULL,
  "start_date" date NOT NULL,
  "end_date" date NOT NULL
)
;
COMMENT ON COLUMN "public"."lesson"."num_lesson" IS 'На какой по счёту паре';

-- ----------------------------
-- Table structure for payment_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."payment_type";
CREATE TABLE "public"."payment_type" (
  "id_payment_type" int4 NOT NULL DEFAULT nextval('payment_type_id_payment_type_seq'::regclass),
  "name_payment_type" text COLLATE "pg_catalog"."default" NOT NULL,
  "coefficient_payment" float4 NOT NULL
)
;

-- ----------------------------
-- Table structure for specialization
-- ----------------------------
DROP TABLE IF EXISTS "public"."specialization";
CREATE TABLE "public"."specialization" (
  "id_specialization" int4 NOT NULL DEFAULT nextval('specialization_id_specialization_seq'::regclass),
  "name_specialization" text COLLATE "pg_catalog"."default" NOT NULL,
  "id_faculty_specialization" int4 NOT NULL,
  "id_department_specialization" int4 NOT NULL,
  "specialization_abbreviation" text COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."specialization"."id_specialization" IS 'Код специальности';

-- ----------------------------
-- Table structure for students_groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."students_groups";
CREATE TABLE "public"."students_groups" (
  "id_group" int4 NOT NULL DEFAULT nextval('students_groups_id_group_seq'::regclass),
  "abbreviation_group" text COLLATE "pg_catalog"."default" NOT NULL,
  "id_group_faculty" int4 NOT NULL,
  "id_group_department" int4 NOT NULL,
  "id_specialization_group" int4 NOT NULL,
  "id_education_type_group" int4 NOT NULL,
  "subgroup" text COLLATE "pg_catalog"."default",
  "year_entry" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for sub_teacher
-- ----------------------------
DROP TABLE IF EXISTS "public"."sub_teacher";
CREATE TABLE "public"."sub_teacher" (
  "id_teacher" int4 NOT NULL,
  "id_new_teacher" int4 NOT NULL,
  "date_sub" date NOT NULL
)
;

-- ----------------------------
-- Table structure for subjects
-- ----------------------------
DROP TABLE IF EXISTS "public"."subjects";
CREATE TABLE "public"."subjects" (
  "id_subject" int4 NOT NULL DEFAULT nextval('subjects_id_subject_seq'::regclass),
  "name_subject" text COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of subjects
-- ----------------------------
INSERT INTO "public"."subjects" VALUES (2, 'Высшая математика');
INSERT INTO "public"."subjects" VALUES (3, 'Математический анализ');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS "public"."teacher";
CREATE TABLE "public"."teacher" (
  "id_teacher" int4 NOT NULL DEFAULT nextval('teacher_id_teacher_seq'::regclass),
  "second_name_teacher" text COLLATE "pg_catalog"."default" NOT NULL,
  "third_name_teacher" text COLLATE "pg_catalog"."default" NOT NULL,
  "login" text COLLATE "pg_catalog"."default" NOT NULL,
  "id_teacher_department" int4 NOT NULL,
  "id_teacher_faculty" int4 NOT NULL,
  "id_teacher_position" int4 NOT NULL,
  "photo_teacher" text COLLATE "pg_catalog"."default",
  "name_teacher" text COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."teacher"."second_name_teacher" IS 'Фамилия преподавателя';
COMMENT ON COLUMN "public"."teacher"."third_name_teacher" IS 'Отчество преподавателя';
COMMENT ON COLUMN "public"."teacher"."name_teacher" IS 'Имя преподавателя';

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO "public"."teacher" VALUES (3, 'Федяев', 'Иванович', '	fedyaev@donntu.org', 3, 7, 8, NULL, 'Олег');
INSERT INTO "public"."teacher" VALUES (5, 'Скворцов', 'Ефремович', 'a.e.skvorcov@mail.ru', 3, 7, 8, NULL, 'Анатолий');

-- ----------------------------
-- Table structure for teacher_subjects
-- ----------------------------
DROP TABLE IF EXISTS "public"."teacher_subjects";
CREATE TABLE "public"."teacher_subjects" (
  "id_teacher_for_subject" int4 NOT NULL,
  "id_subject_for_teacher" int4 NOT NULL
)
;

-- ----------------------------
-- Records of teacher_subjects
-- ----------------------------
INSERT INTO "public"."teacher_subjects" VALUES (5, 3);

-- ----------------------------
-- Table structure for teachers_on_lesson
-- ----------------------------
DROP TABLE IF EXISTS "public"."teachers_on_lesson";
CREATE TABLE "public"."teachers_on_lesson" (
  "id_teachers_on_lesson" int4 NOT NULL,
  "id_lesson_for_teacher" int4 NOT NULL,
  "ID" int4 NOT NULL DEFAULT nextval('"teachers_on_lesson_ID_seq"'::regclass)
)
;

-- ----------------------------
-- Table structure for teachers_positions
-- ----------------------------
DROP TABLE IF EXISTS "public"."teachers_positions";
CREATE TABLE "public"."teachers_positions" (
  "id_position" int4 NOT NULL DEFAULT nextval('teachers_positions_id_position_seq'::regclass),
  "name_position" text COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of teachers_positions
-- ----------------------------
INSERT INTO "public"."teachers_positions" VALUES (3, 'Аспирант');
INSERT INTO "public"."teachers_positions" VALUES (4, 'Ассистент');
INSERT INTO "public"."teachers_positions" VALUES (5, 'Ведущий научный сотрудник ');
INSERT INTO "public"."teachers_positions" VALUES (6, 'Главный научный сотрудник');
INSERT INTO "public"."teachers_positions" VALUES (7, 'Докторант');
INSERT INTO "public"."teachers_positions" VALUES (8, 'Доцент');
INSERT INTO "public"."teachers_positions" VALUES (9, 'Младший научный сотрудник');
INSERT INTO "public"."teachers_positions" VALUES (10, 'Научный сотрудник');
INSERT INTO "public"."teachers_positions" VALUES (11, 'Преподаватель');
INSERT INTO "public"."teachers_positions" VALUES (12, 'Профессор');
INSERT INTO "public"."teachers_positions" VALUES (13, 'Старший преподаватель');
INSERT INTO "public"."teachers_positions" VALUES (14, 'Старший научный сотрудник');

-- ----------------------------
-- Table structure for type_lesson
-- ----------------------------
DROP TABLE IF EXISTS "public"."type_lesson";
CREATE TABLE "public"."type_lesson" (
  "id_type_lesson" int4 NOT NULL DEFAULT nextval('type_lesson_id_type_lesson_seq'::regclass),
  "name_type_lesson" text COLLATE "pg_catalog"."default" NOT NULL,
  "name_type_education" text COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of type_lesson
-- ----------------------------
INSERT INTO "public"."type_lesson" VALUES (2, 'урок', 'О');
INSERT INTO "public"."type_lesson" VALUES (6, 'лекция', 'О');
INSERT INTO "public"."type_lesson" VALUES (8, 'семинар', 'О');
INSERT INTO "public"."type_lesson" VALUES (9, 'мастер-класс', 'О');
INSERT INTO "public"."type_lesson" VALUES (10, 'экскурсия', 'О');
INSERT INTO "public"."type_lesson" VALUES (11, 'лабораторная работа', 'О');
INSERT INTO "public"."type_lesson" VALUES (12, 'контрольная работа', 'О');
INSERT INTO "public"."type_lesson" VALUES (13, 'колоквиум', 'О');
INSERT INTO "public"."type_lesson" VALUES (14, 'зачёт', 'С');
INSERT INTO "public"."type_lesson" VALUES (15, 'экзамен', 'С');
INSERT INTO "public"."type_lesson" VALUES (16, 'консультация', 'О');
INSERT INTO "public"."type_lesson" VALUES (17, 'консультация', 'С');

-- ----------------------------
-- Table structure for week
-- ----------------------------
DROP TABLE IF EXISTS "public"."week";
CREATE TABLE "public"."week" (
  "id_week_day" int4 NOT NULL DEFAULT nextval('week_id_week_day_seq'::regclass),
  "week_day" text COLLATE "pg_catalog"."default" NOT NULL,
  "week_type" text COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of week
-- ----------------------------
INSERT INTO "public"."week" VALUES (2, 'Понедельник', 'В');
INSERT INTO "public"."week" VALUES (3, 'Вторник', 'В');
INSERT INTO "public"."week" VALUES (4, 'Среда', 'В');
INSERT INTO "public"."week" VALUES (5, 'Четверг', 'В');
INSERT INTO "public"."week" VALUES (6, 'Пятница', 'В');
INSERT INTO "public"."week" VALUES (7, 'Суббота', 'В');
INSERT INTO "public"."week" VALUES (8, 'Воскресенье', 'В');
INSERT INTO "public"."week" VALUES (9, 'Понедельник', 'Н');
INSERT INTO "public"."week" VALUES (10, 'Вторник', 'Н');
INSERT INTO "public"."week" VALUES (11, 'Среда', 'Н');
INSERT INTO "public"."week" VALUES (12, 'Четверг', 'Н');
INSERT INTO "public"."week" VALUES (13, 'Пятница', 'Н');
INSERT INTO "public"."week" VALUES (14, 'Суббота', 'Н');
INSERT INTO "public"."week" VALUES (15, 'Воскресенье', 'Н');

-- ----------------------------
-- Function structure for add_classroom
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."add_classroom"("num_input_building" int4, "num_input_class" int4);
CREATE OR REPLACE FUNCTION "public"."add_classroom"("num_input_building" int4, "num_input_class" int4)
  RETURNS "pg_catalog"."text" AS $BODY$

BEGIN

		IF EXISTS(SELECT FROM classrooms WHERE classrooms.num_building=num_input_building AND classrooms.num_class=num_input_class) THEN

		RETURN 'Запись уже существует!';

	ELSE

		INSERT INTO classrooms(num_building, num_class) VALUES (num_input_building, num_input_class);

		RETURN 'Запись добавлена!';

	END IF;

END

$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for add_department
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."add_department"("name_input_department" text, "logo_input_department" text, "name_faculty_input_department" text, "num_building_input_department" int4, "num_class_input_department" int4);
CREATE OR REPLACE FUNCTION "public"."add_department"("name_input_department" text, "logo_input_department" text, "name_faculty_input_department" text, "num_building_input_department" int4, "num_class_input_department" int4)
  RETURNS "pg_catalog"."text" AS $BODY$

DECLARE

	id_input_faculty INTEGER := 0;

	id_input_cabinet INTEGER := 0;

	is_faculty_exist BOOLEAN := FALSE;

	is_cabinet_exist BOOLEAN := FALSE;

BEGIN

	SELECT INTO is_faculty_exist check_faculty_exist(name_faculty_input_department);

	SELECT INTO is_cabinet_exist check_cabinet_exist(num_building_input_department, num_class_input_department);

	IF is_faculty_exist = FALSE THEN

		RETURN 'Факультета несуществует!';

	ELSE

		IF is_cabinet_exist = FALSE THEN

			RETURN 'Аудитории несуществует!';

		ELSE

			SELECT faculty.id_faculty FROM faculty INTO id_input_faculty WHERE faculty.name_faculty=name_faculty_input_department;

				SELECT classrooms.id_classroom FROM classrooms INTO id_input_cabinet WHERE classrooms.num_building=num_building_input_department AND classrooms.num_class=num_class_input_department;

				IF EXISTS(SELECT FROM departments WHERE departments.name_department=name_input_department AND departments.logo_department=logo_input_department AND departments.id_faculty_department=id_input_faculty AND departments.id_classrooms_department=id_input_cabinet) THEN

							RETURN 'Запись уже существует!';

				ELSE

					INSERT INTO departments(name_department, logo_department, id_faculty_department, id_classrooms_department) VALUES (name_input_department,logo_input_department,id_input_faculty,id_input_cabinet);

					RETURN 'Запись добавлена!';

				END IF;

		END IF;

	END IF;

END

$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for add_education_type
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."add_education_type"("name_input_education_type" text);
CREATE OR REPLACE FUNCTION "public"."add_education_type"("name_input_education_type" text)
  RETURNS "pg_catalog"."text" AS $BODY$

BEGIN

	IF EXISTS(SELECT FROM education_type WHERE education_type.name_education_type = name_input_education_type) THEN

		RETURN 'Запись уже существует!';

	ELSE

		INSERT INTO education_type(name_education_type)VALUES(name_input_education_type);

		RETURN 'Запись добавлена!';

	END IF;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for add_faculty
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."add_faculty"("name_input_faculty" text, "logo_input_faculty" text);
CREATE OR REPLACE FUNCTION "public"."add_faculty"("name_input_faculty" text, "logo_input_faculty" text)
  RETURNS "pg_catalog"."text" AS $BODY$

BEGIN

	IF EXISTS(SELECT FROM faculty WHERE faculty.name_faculty=name_input_faculty AND faculty.logo_faculty=logo_input_faculty) THEN

		RETURN 'Запись уже существует!';

	ELSE

		INSERT INTO faculty(name_faculty, logo_faculty)VALUES(name_input_faculty, logo_input_faculty);

		RETURN 'Запись добавлена!';

	END IF;

END

$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for add_groups_on_lesson
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."add_groups_on_lesson"("id_input_lesson" int4, "abbrevation_input_group" text, "year_entry_input" int4, "name_faculty_input" text, "name_department_input" text, "name_specialization_input" text, "education_type_input" text, "sub_input_group" text);
CREATE OR REPLACE FUNCTION "public"."add_groups_on_lesson"("id_input_lesson" int4, "abbrevation_input_group" text, "year_entry_input" int4, "name_faculty_input" text, "name_department_input" text, "name_specialization_input" text, "education_type_input" text, "sub_input_group" text)
  RETURNS "pg_catalog"."text" AS $BODY$

DECLARE

	id_input_faculty INTEGER := -1;

	id_input_department INTEGER := -1;

	id_input_specialization INTEGER := -1;

	id_input_education_type INTEGER := -1;

	id_input_group INTEGER := -1;

BEGIN

	SELECT faculty.id_faculty FROM faculty INTO id_input_faculty WHERE faculty.name_faculty = name_faculty_input;

	SELECT departments.id_department FROM departments INTO id_input_department WHERE departments.name_department = name_department_input;

	SELECT specialization.id_specialization FROM specialization INTO id_input_specialization WHERE specialization.name_specialization = name_specialization_input;

	SELECT education_type.id_education_type FROM education_type INTO id_input_education_type WHERE education_type.name_education_type = education_type_input;

	IF id_input_faculty = -1 OR  id_input_department = -1 OR id_input_specialization = -1 THEN

		RETURN 'Нет нужных записей в таблице!';

	ELSE

		SELECT students_groups.id_group FROM students_groups INTO id_input_group WHERE students_groups.id_group_faculty = id_input_faculty AND students_groups.id_group_department = id_input_department AND students_groups.id_specialization_group = id_input_specialization AND students_groups.id_education_type_group = id_input_education_type AND students_groups.year_entry = year_entry_input AND students_groups.abbreviation_group = abbrevation_input_group AND students_groups.subgroup = sub_input_group;

		IF id_input_group = -1 THEN

			RETURN 'Группы не существует!';

		ELSE

			IF EXISTS(SELECT * FROM groups_on_lesson WHERE groups_on_lesson.id_groups_on_lesson = id_input_group AND groups_on_lesson.id_lesson_for_group = id_input_lesson) THEN

				RETURN 'Запись уже существует!';

			ELSE

				INSERT INTO groups_on_lesson(id_groups_on_lesson, id_lesson_for_group) VALUES(id_input_group, id_input_lesson);

				RETURN 'Запись добавлена!';

			END IF;

		END IF;

	END IF;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for add_lesson
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."add_lesson"("name_input_type_lesson" text, "name_input_education_type" text, "name_input_payment_type" text, "week_input_type" text, "week_input_day" text, "num_input_lesson" int4);
CREATE OR REPLACE FUNCTION "public"."add_lesson"("name_input_type_lesson" text, "name_input_education_type" text, "name_input_payment_type" text, "week_input_type" text, "week_input_day" text, "num_input_lesson" int4)
  RETURNS "pg_catalog"."int4" AS $BODY$

DECLARE

	id_input_type_lesson INTEGER := -1;

	id_input_week_day INTEGER := -1;

	id_input_payment_type INTEGER := -1;

	id_return INTEGER := 0;

BEGIN

	SELECT type_lesson.id_type_lesson FROM type_lesson INTO id_input_type_lesson WHERE type_lesson.name_type_lesson = name_input_type_lesson AND type_lesson.name_type_education = name_input_education_type;

	SELECT week.id_week_day FROM week INTO id_input_week_day WHERE week.week_day = week_input_day AND week.week_type = week_input_type;

	SELECT payment_type.id_payment_type FROM payment_type INTO id_input_payment_type WHERE payment_type.name_payment_type = name_input_payment_type;

	IF id_input_type_lesson = -1 OR id_input_week_day = -1 OR id_input_payment_type = -1 THEN

		RETURN -1;

	ELSE

		INSERT INTO lesson(num_lesson, id_week_day, id_type_lesson, id_payment_type_on_lesson) VALUES (num_input_lesson, id_input_week_day, id_input_type_lesson, id_input_payment_type);

		SELECT currval(pg_get_serial_sequence('lesson', 'id_lesson')) INTO id_return;

		RETURN id_return;

	END IF;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for add_payment_type
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."add_payment_type"("input_name_payment_type" text, "input_coefficient" float8);
CREATE OR REPLACE FUNCTION "public"."add_payment_type"("input_name_payment_type" text, "input_coefficient" float8)
  RETURNS "pg_catalog"."text" AS $BODY$

	BEGIN

		IF EXISTS(SELECT FROM payment_type WHERE payment_type.name_payment_type = input_name_payment_type AND payment_type.coefficient_payment = input_coefficient) THEN

			RETURN 'Запись уже существует!';

		ELSE

			INSERT INTO payment_type(name_payment_type, coefficient_payment) VALUES (nput_name_payment_type, input_coefficient);

			RETURN 'Запись добавлена!';

		END IF;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for add_position
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."add_position"("name_input_position" text);
CREATE OR REPLACE FUNCTION "public"."add_position"("name_input_position" text)
  RETURNS "pg_catalog"."text" AS $BODY$

BEGIN

IF EXISTS(SELECT FROM teachers_positions WHERE teachers_positions.name_position = name_input_position) THEN

		RETURN 'Запись уже существует!';

	ELSE

		INSERT INTO teachers_positions(name_position)VALUES(name_input_position);

		RETURN 'Запись добавлена!';

	END IF;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for add_spezialization
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."add_spezialization"("name_input_specialization" text, "name_input_faculty" text, "name_input_department" text, "abbreviation" text);
CREATE OR REPLACE FUNCTION "public"."add_spezialization"("name_input_specialization" text, "name_input_faculty" text, "name_input_department" text, "abbreviation" text)
  RETURNS "pg_catalog"."text" AS $BODY$

DECLARE

	id_input_faculty INTEGER := 0;

	id_input_department INTEGER := 0;

	is_faculty_exist BOOLEAN := FALSE;

	is_department_exist BOOLEAN := FALSE;

BEGIN

	SELECT INTO is_faculty_exist check_faculty_exist(name_input_faculty);

	SELECT INTO is_department_exist check_department_exist(name_input_department);

	IF is_faculty_exist = FALSE THEN

	RETURN 'Факультета не существует!';

ELSE

	IF is_department_exist = FALSE THEN

			RETURN 'Кафедры не существует!';

	ELSE

		SELECT faculty.id_faculty FROM faculty INTO id_input_faculty WHERE faculty.name_faculty = name_input_faculty;

		SELECT departments.id_department FROM departments INTO id_input_department WHERE departments.name_department = name_input_department;

			IF EXISTS(SELECT FROM specialization WHERE specialization.name_specialization = name_input_specialization AND specialization.id_faculty_specialization = id_input_faculty AND specialization.id_department_specialization = name_input_department AND specialization.specialization_abbreviation = abbreviation) THEN

				RETURN 'Запись уже существует!';

			ELSE

				INSERT INTO specialization(name_specialization, id_faculty_specialization, id_department_specialization, specialization_abbreviation) VALUES (name_input_specialization, id_input_faculty, id_input_department, abbreviation);

				RETURN 'Запись добавлена!';

			END IF;

	END IF;

END IF;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for add_students_groups
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."add_students_groups"("abbrevation_input_group" text, "year_entry_input" int4, "name_faculty_input" text, "name_department_input" text, "name_specialization_input" text, "education_type_input" text, "sub_input_group" text);
CREATE OR REPLACE FUNCTION "public"."add_students_groups"("abbrevation_input_group" text, "year_entry_input" int4, "name_faculty_input" text, "name_department_input" text, "name_specialization_input" text, "education_type_input" text, "sub_input_group" text)
  RETURNS "pg_catalog"."text" AS $BODY$

DECLARE

	id_input_faculty INTEGER := 0;

	id_input_department INTEGER := 0;

	id_input_specialization INTEGER := 0;

	id_input_education_type INTEGER := 0;

	is_faculty_exist BOOLEAN := FALSE;

	is_department_exist BOOLEAN := FALSE;

	is_specialization_exist BOOLEAN := FALSE;

	is_education_type_exist BOOLEAN := FALSE;

BEGIN

	SELECT INTO is_faculty_exist check_faculty_exist(name_faculty_input);

  SELECT INTO is_department_exist check_department_exist(name_department_input);

  SELECT INTO is_specialization_exist check_specialization_exist(name_specialization_input);

  SELECT INTO is_education_type_exist check_education_type_exist(education_type_input);

	IF is_faculty_exist = FALSE THEN

		RETURN 'Факультета не существует!';

	ELSE

		IF is_department_exist = FALSE THEN

				RETURN 'Кафедры не существует!';

		ELSE

			IF is_specialization_exist = FALSE THEN

					RETURN 'Специальности не существует!';

			ELSE

				IF is_education_type_exist = FALSE THEN

					RETURN 'Типа обучения не существует!';

			ELSE

					SELECT faculty.id_faculty FROM faculty INTO id_input_faculty WHERE faculty.name_faculty = name_faculty_input;

					SELECT departments.id_department FROM departments INTO id_input_department WHERE departments.name_department = name_department_input;

					SELECT specialization.id_specialization FROM specialization INTO id_input_specialization WHERE specialization.name_specialization = name_specialization_input;

					SELECT education_type.id_education_type FROM education_type INTO id_input_education_type WHERE education_type.name_education_type = education_type_input;

						IF EXISTS(SELECT FROM students_groups WHERE students_groups.abbreviation_group = abbrevation_input_group AND students_groups.year_entry = year_entry_input AND students_groups.id_group_faculty = id_input_faculty AND students_groups.id_group_department = id_input_department AND students_groups.id_specialization_group = id_input_specialization AND students_groups.id_education_type_group = id_input_education_type AND students_groups.subgroup = sub_input_group) THEN

							RETURN 'Запись уже существует!';

						ELSE

							INSERT INTO students_groups(abbreviation_group, year_entry, id_group_faculty, id_group_department, id_specialization_group,id_education_type_group, subgroup, year_entry)VALUES(abbrevation_input_group, year_entry_input,	id_input_faculty,id_input_department,id_input_specialization, id_input_education_type, sub_input_group, year_entry_input);

								RETURN 'Запись добавлена!';

						END IF;

				END IF;

			END IF;

		END IF;

	END IF;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for add_subject
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."add_subject"("name_input_subject" text);
CREATE OR REPLACE FUNCTION "public"."add_subject"("name_input_subject" text)
  RETURNS "pg_catalog"."text" AS $BODY$

BEGIN

	IF EXISTS(SELECT FROM subjects WHERE subjects.name_subject = name_input_subject) THEN

		RETURN 'Запись уже существует!';

	ELSE

		INSERT INTO subjects(name_subject)VALUES(name_input_subject);

		RETURN 'Запись добавлена!';

	END IF;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for add_teacher
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."add_teacher"("name_input_teacher" text, "second_name_input_teacher" text, "third_name_input_teacher" text, "login_input_teacher" text, "name_faculty_input_teacher" text, "name_department_input_teacher" text, "name_position_input_teacher" text, "input_email" text);
CREATE OR REPLACE FUNCTION "public"."add_teacher"("name_input_teacher" text, "second_name_input_teacher" text, "third_name_input_teacher" text, "login_input_teacher" text, "name_faculty_input_teacher" text, "name_department_input_teacher" text, "name_position_input_teacher" text, "input_email" text)
  RETURNS "pg_catalog"."text" AS $BODY$

DECLARE

  id_input_faculty INTEGER := 0;

	id_input_department INTEGER := 0;

	id_input_position INTEGER := 0;

	is_faculty_exist BOOLEAN := FALSE;

	is_department_exist BOOLEAN := FALSE;

	is_position_exist BOOLEAN := FALSE;

	is_login_uniq BOOLEAN := FALSE;

BEGIN

   SELECT INTO is_faculty_exist check_faculty_exist(name_faculty_input_teacher);

   SELECT INTO is_department_exist check_department_exist(name_department_input_teacher);

   SELECT INTO is_position_exist check_position_exist(name_position_input_teacher);

   SELECT INTO is_login_uniq  login_uniqueness(login_input_teacher);

IF is_faculty_exist = FALSE THEN

		RETURN 'Факультета не существует!';

ELSE

	IF is_department_exist = FALSE THEN

			RETURN 'Кафедры не существует!';

	ELSE

		IF is_position_exist = FALSE THEN

				RETURN 'Должности не существует!';

		ELSE

		IF is_login_uniq = FALSE THEN

			RETURN 'Логин не уникален!';

		ELSE

				SELECT faculty.id_faculty FROM faculty INTO id_input_faculty WHERE faculty.name_faculty = name_faculty_input_teacher;

						SELECT departments.id_department FROM departments INTO id_input_department WHERE departments.name_department = name_department_input_teacher;

						SELECT teachers_positions.id_position FROM teachers_positions INTO id_input_position WHERE teachers_positions.name_position = name_position_input_teacher;

							IF EXISTS(SELECT FROM teacher WHERE teacher.name_teacher = name_input_teacher AND teacher.second_name_teacher = second_name_input_teacher AND teacher.third_name_teacher = third_name_input_teacher AND teacher."login" = login_input_teacher AND teacher.id_teacher_faculty = id_input_faculty AND teacher.id_teacher_department = id_input_department AND teacher.id_teacher_position = id_input_position AND teacher.teacher_email = input_email) THEN

									RETURN 'Запись уже существует!';

						ELSE

							INSERT INTO teacher(id_teacher_faculty, id_teacher_department, id_teacher_position, name_teacher, second_name_teacher, third_name_teacher,"login", teacher_email) VALUES(id_input_faculty,id_input_department,id_input_position,name_input_teacher, second_name_input_teacher, third_name_input_teacher, login_input_teacher, input_email);

									RETURN 'Запись добавлена!';

							END IF;

			END IF;

		END IF;

	END IF;

END IF;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for add_teacher
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."add_teacher"("name_input_teacher" text, "second_name_input_teacher" text, "third_name_input_teacher" text, "login_input_teacher" text, "name_faculty_input_teacher" text, "name_department_input_teacher" text, "name_position_input_teacher" text, "input_email" text, "photo_input_teacher" text);
CREATE OR REPLACE FUNCTION "public"."add_teacher"("name_input_teacher" text, "second_name_input_teacher" text, "third_name_input_teacher" text, "login_input_teacher" text, "name_faculty_input_teacher" text, "name_department_input_teacher" text, "name_position_input_teacher" text, "input_email" text, "photo_input_teacher" text)
  RETURNS "pg_catalog"."text" AS $BODY$

	DECLARE

  id_input_faculty INTEGER := 0;

	id_input_department INTEGER := 0;

	id_input_position INTEGER := 0;

	is_faculty_exist BOOLEAN := FALSE;

	is_department_exist BOOLEAN := FALSE;

	is_position_exist BOOLEAN := FALSE;

	is_login_uniq BOOLEAN := FALSE;

BEGIN

	SELECT INTO is_faculty_exist check_faculty_exist(name_faculty_input_teacher);

  SELECT INTO is_department_exist check_department_exist(name_department_input_teacher);

  SELECT INTO is_position_exist check_position_exist(name_position_input_teacher);

  SELECT INTO is_login_uniq  login_uniqueness(login_input_teacher);

	IF is_faculty_exist = FALSE THEN

		RETURN 'Факультета не существует!';

	ELSE

		IF is_department_exist = FALSE THEN

			RETURN 'Кафедры не существует!';

		ELSE

			IF is_position_exist = FALSE THEN

				RETURN 'Должности не существует!';

			ELSE

				IF is_login_uniq = FALSE THEN

					RETURN 'Логин не уникален!';

				ELSE

					SELECT faculty.id_faculty FROM faculty INTO id_input_faculty WHERE faculty.name_faculty = name_faculty_input_teacher;

					SELECT departments.id_department FROM departments INTO id_input_department WHERE departments.name_department = name_department_input_teacher;

					SELECT teachers_positions.id_position FROM teachers_positions INTO id_input_position WHERE teachers_positions.name_position = name_position_input_teacher;

					IF EXISTS(SELECT FROM teacher WHERE teacher.name_teacher = name_input_teacher AND teacher.second_name_teacher = second_name_input_teacher AND teacher.third_name_teacher = third_name_input_teacher AND teacher."login" = login_input_teacher AND teacher.id_teacher_faculty = id_input_faculty AND teacher.id_teacher_department = id_input_department AND teacher.id_teacher_position = id_input_position AND teacher.teacher_email = input_email AND teacher.photo_teacher = photo_input_teacher) THEN

						RETURN 'Запись уже существует!';

					ELSE

						INSERT INTO teacher(id_teacher_faculty, id_teacher_department, id_teacher_position, num_teacher, second_name_teacher, third_name_teacher,"login", teacher_email, photo_teacher) VALUES(id_input_faculty,id_input_department,id_input_position,name_input_teacher, second_name_input_teacher, third_name_input_teacher, login_input_teacher, input_email, photo_input_teacher);

						RETURN 'Запись добавлена!';

					END IF;

			END IF;

		END IF;

	END IF;

END IF;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for add_teacher_subjects
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."add_teacher_subjects"("login_input_teacher" text, "name_input_subject" text);
CREATE OR REPLACE FUNCTION "public"."add_teacher_subjects"("login_input_teacher" text, "name_input_subject" text)
  RETURNS "pg_catalog"."text" AS $BODY$

	DECLARE

		id_input_teacher INTEGER := 0;

		id_input_subject INTEGER := 0;

		is_teacher_exist BOOLEAN := FALSE;

		is_subject_exist BOOLEAN := FALSE;

BEGIN

	SELECT INTO is_teacher_exist check_teacher_exist(login_input_teacher);

	SELECT INTO is_subject_exist check_is_subject_exist(name_input_subject);

	IF is_teacher_exist = FALSE THEN

	  RETURN 'Преподавателя не существует!';

	ELSE

		IF is_subject_exist THEN

			RETURN 'Предмета не существует!';

		ELSE

			SELECT teacher.id_teacher INTO id_input_teacher FROM teacher WHERE teacher."login" = login_input_teacher;

			SELECT subjects.id_subject INTO id_input_subject FROM subjects WHERE subjects.name_subject = name_input_subject;

			IF EXISTS(SELECT * FROM teacher_subjects WHERE teacher_subjects.id_teacher_for_subject = id_input_teacher AND teacher_subjects.id_subject_for_teacher = id_input_subject) THEN

				RETURN 'Запись уже существует!';

			ELSE

				INSERT INTO teacher_subjects(id_teacher_for_subject, id_subject_for_teacher) VALUES (id_input_teacher, id_input_subject);

				RETURN 'Запись добавлена!';

			END IF;

		END IF;

	END IF;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for add_teacher_subjects
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."add_teacher_subjects"("name_input_teacher" text, "second_input_name_teacher" text, "third_input_name_teacher" text, "name_subject" text);
CREATE OR REPLACE FUNCTION "public"."add_teacher_subjects"("name_input_teacher" text, "second_input_name_teacher" text, "third_input_name_teacher" text, "name_subject" text)
  RETURNS "pg_catalog"."text" AS $BODY$

	DECLARE

		id_input_teacher INTEGER := 0;

		id_input_subject INTEGER := 0;

		is_teacher_exist BOOLEAN := FALSE;

		is_subject_exist BOOLEAN := FALSE;

BEGIN

	SELECT INTO is_teacher_exist check_teacher_exist_by_FIO(name_input_teacher, second_input_name_teacher, third_input_name_teacher);

	SELECT INTO is_subject_exist check_is_subject_exist(name_subject);

	IF is_teacher_exist = FALSE THEN

		RETURN 'Преподавателя нет в базе!';

	ELSE

			IF is_subject_exist = FALSE THEN

				RETURN 'Предмета нет в базе!';

			ELSE

				SELECT teacher.id_teacher INTO id_input_teacher FROM teacher WHERE teacher.name_teacher = name_input_teacher AND teacher.second_name_teacher = second_input_name_teacher AND teacher.third_name_teacher = third_input_name_teacher;

				SELECT subjects.id_subject INTO id_input_subject FROM subjects WHERE subjects.name_subject = name_subject;

						IF EXISTS(SELECT FROM teacher_subjects WHERE teacher_subjects.id_subject_for_teacher = id_input_subject AND teacher_subjects.id_teacher_for_subject = id_input_teacher) THEN

								RETURN 'Запись уже существует!';

						ELSE

							INSERT INTO teacher_subjects(id_lesson_for_teacher, id_teachers_on_lesson) VALUES (id_input_teacher, id_input_subject);

								RETURN 'Запись добавлена!';

						END IF;

			END IF;

	END IF;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for add_teachers_on_lesson
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."add_teachers_on_lesson"("login_input_teacher" text, "id_input_lesson" int4);
CREATE OR REPLACE FUNCTION "public"."add_teachers_on_lesson"("login_input_teacher" text, "id_input_lesson" int4)
  RETURNS "pg_catalog"."text" AS $BODY$

DECLARE

	id_input_teacher INTEGER := -1;

BEGIN

	SELECT teacher.id_teacher FROM teacher INTO id_input_teacher WHERE teacher."login" = login_input_teacher;

	IF id_input_teacher = -1 THEN

		RETURN 'Преподавателя не существует!';

	ELSE

		IF EXISTS(SELECT * FROM teachers_on_lesson WHERE teachers_on_lesson.id_teachers_on_lesson = id_input_teacher AND teachers_on_lesson.id_lesson_for_teacher = id_input_lesson) THEN

			RETURN 'Запись уже существует!';

		ELSE

			INSERT INTO teachers_on_lesson(id_teachers_on_lesson, id_lesson_for_teacher) VALUES (id_input_teacher, id_input_lesson);

			RETURN 'Запись добавлена!';

		END IF;

	END IF;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for add_type_lesson
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."add_type_lesson"("input_type_lesson" text, "input_type_education" text);
CREATE OR REPLACE FUNCTION "public"."add_type_lesson"("input_type_lesson" text, "input_type_education" text)
  RETURNS "pg_catalog"."text" AS $BODY$

BEGIN

	IF EXISTS(SELECT FROM type_lesson WHERE type_lesson.name_type_lesson = input_type_lesson AND type_lesson.name_type_education = input_type_education) THEN

		RETURN 'Запись уже существует!';

ELSE

		INSERT INTO type_lesson(name_type_lesson, name_type_education) VALUES (input_type_lesson, input_type_education);

		RETURN 'Запись добавлена!';

END IF;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for add_type_lesson
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."add_type_lesson"("input_type_lesson" text);
CREATE OR REPLACE FUNCTION "public"."add_type_lesson"("input_type_lesson" text)
  RETURNS "pg_catalog"."text" AS $BODY$

BEGIN

	IF EXISTS(SELECT FROM type_lesson WHERE type_lesson.name_type_lesson = input_type_lesson) THEN

		RETURN 'Запись уже существует!';

ELSE

		INSERT INTO type_lesson(name_type_lesson) VALUES (input_type_lesson);

		RETURN 'Запись добавлена!';

END IF;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for check_cabinet_exist
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."check_cabinet_exist"("num_input_building" int4, "num_input_class" int4);
CREATE OR REPLACE FUNCTION "public"."check_cabinet_exist"("num_input_building" int4, "num_input_class" int4)
  RETURNS "pg_catalog"."bool" AS $BODY$

BEGIN

	IF EXISTS(SELECT FROM classrooms WHERE classrooms.num_building=num_input_building AND classrooms.num_class=num_input_class) THEN

		RETURN TRUE;

	ELSE

		RETURN FALSE;

	END IF;

END

$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for check_department_exist
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."check_department_exist"("name_input_department" text);
CREATE OR REPLACE FUNCTION "public"."check_department_exist"("name_input_department" text)
  RETURNS "pg_catalog"."bool" AS $BODY$

BEGIN

	IF EXISTS(SELECT FROM departments WHERE departments.name_department=name_input_department) THEN

		RETURN TRUE;

	ELSE

		RETURN FALSE;

	END IF;

END

$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for check_education_type_exist
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."check_education_type_exist"("name_input_education_type" text);
CREATE OR REPLACE FUNCTION "public"."check_education_type_exist"("name_input_education_type" text)
  RETURNS "pg_catalog"."bool" AS $BODY$

BEGIN

	IF EXISTS(SELECT FROM education_type WHERE education_type.name_education_type=name_input_education_type) THEN

		RETURN TRUE;

	ELSE

		RETURN FALSE;

	END IF;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for check_faculty_exist
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."check_faculty_exist"("name_input_faculty" text);
CREATE OR REPLACE FUNCTION "public"."check_faculty_exist"("name_input_faculty" text)
  RETURNS "pg_catalog"."bool" AS $BODY$

BEGIN

	IF EXISTS(SELECT FROM faculty WHERE faculty.name_faculty=name_input_faculty) THEN

		RETURN TRUE;

	ELSE

		RETURN FALSE;

	END IF;

END

$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for check_is_subject_exist
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."check_is_subject_exist"("input_name_subject" text);
CREATE OR REPLACE FUNCTION "public"."check_is_subject_exist"("input_name_subject" text)
  RETURNS "pg_catalog"."bool" AS $BODY$
BEGIN
	IF EXISTS(SELECT FROM subjects WHERE subjects.name_subject = input_name_subject) THEN
		RETURN TRUE;
	ELSE
		RETURN FALSE;
	END IF;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for check_position_exist
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."check_position_exist"("name_input_position" text);
CREATE OR REPLACE FUNCTION "public"."check_position_exist"("name_input_position" text)
  RETURNS "pg_catalog"."bool" AS $BODY$

BEGIN

	IF EXISTS(SELECT FROM teachers_positions WHERE teachers_positions.name_position=name_input_position) THEN

		RETURN TRUE;

	ELSE

		RETURN FALSE;

	END IF;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for check_specialization_exist
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."check_specialization_exist"("name_input_specialization" text);
CREATE OR REPLACE FUNCTION "public"."check_specialization_exist"("name_input_specialization" text)
  RETURNS "pg_catalog"."bool" AS $BODY$

BEGIN

	IF EXISTS(SELECT FROM specialization WHERE specialization.name_specialization=name_input_specialization) THEN

		RETURN TRUE;

	ELSE

		RETURN FALSE;

	END IF;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for check_teacher_exist
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."check_teacher_exist"("input_teacher_login" text);
CREATE OR REPLACE FUNCTION "public"."check_teacher_exist"("input_teacher_login" text)
  RETURNS "pg_catalog"."bool" AS $BODY$

BEGIN

	IF EXISTS(SELECT FROM teacher WHERE teacher."login" = input_teacher_login) THEN

		RETURN TRUE;

	ELSE

		RETURN FALSE;

	END IF;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for check_teacher_exist_by_FIO
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."check_teacher_exist_by_FIO"("name_input_teacher" text, "second_input_name_teacher" text, "third_input_name_teacher" text);
CREATE OR REPLACE FUNCTION "public"."check_teacher_exist_by_FIO"("name_input_teacher" text, "second_input_name_teacher" text, "third_input_name_teacher" text)
  RETURNS "pg_catalog"."bool" AS $BODY$

BEGIN

	IF EXISTS(SELECT FROM teacher WHERE teacher.name_teacher = name_input_teacher AND teacher.second_name_teacher = second_input_name_teacher AND teacher.third_name_teacher = third_input_name_teacher) THEN

		RETURN TRUE;

	ELSE

		RETURN FALSE;

	END IF;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for check_teacher_exist_by_email
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."check_teacher_exist_by_email"("input_teacher_email" text);
CREATE OR REPLACE FUNCTION "public"."check_teacher_exist_by_email"("input_teacher_email" text)
  RETURNS "pg_catalog"."bool" AS $BODY$

BEGIN

	IF EXISTS(SELECT FROM teacher WHERE teacher.teacher_email = input_teacher_email) THEN

		RETURN TRUE;

	ELSE

		RETURN FALSE;

	END IF;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for create_sub_for_teacher
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."create_sub_for_teacher"("login_input_replaceable_teacher" text, "login_input_replacing_teacher" text, "date_sub_teacher" date);
CREATE OR REPLACE FUNCTION "public"."create_sub_for_teacher"("login_input_replaceable_teacher" text, "login_input_replacing_teacher" text, "date_sub_teacher" date)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
	id_replaceable_teacher INTEGER := 0;
	id_replacing_teacher INTEGER := 0;
BEGIN
	IF EXISTS(SELECT * FROM teacher WHERE teacher."login" = login_input_replaceable_teacher) THEN
	SELECT teacher.id_teacher INTO id_replaceable_teacher WHERE teacher."login" = login_input_replaceable_teacher;
		IF EXISTS(SELECT * FROM teacher WHERE teacher."login" = login_input_replacing_teacher) THEN
			SELECT teacher.id_teacher INTO id_replacing_teacher WHERE teacher."login" = login_input_replacing_teacher;
			IF EXISTS(SELECT * FROM sub_teacher WHERE sub_teacher.id_teacher = id_replaceable_teacher AND sub_teacher.id_new_teacher= id_replacing_teacher AND sub_teacher.date_sub = date_sub_teacher) THEN
				RETURN 'Запись уже существует!';
			ELSE
				INSERT INTO sub_teacher(id_teacher, id_new_teacher, date_sub) VALUES (id_replaceable_teacher, id_replacing_teacher, date_sub_teacher);
				RETURN 'Запись успешно добавлена!';
			END IF;
		ELSE
			RETURN 'Заменяющего преподавателя нет в базе!';
		END IF;
	ELSE
		RETURN 'Заменяемого преподавателя нет в базе!';
	END IF;
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for delete_building
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."delete_building"("num_building_for_delete" int4);
CREATE OR REPLACE FUNCTION "public"."delete_building"("num_building_for_delete" int4)
  RETURNS "pg_catalog"."text" AS $BODY$

BEGIN

	IF EXISTS(SELECT FROM classrooms WHERE classrooms.num_building = num_building_for_delete) THEN

		DELETE FROM classrooms WHERE classrooms.num_building = num_building_for_delete;

		RETURN 'Запись успешно удалена!';

	ELSE

		RETURN 'Записи не существует!';

	END IF;

END

$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for delete_classroom
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."delete_classroom"("num_building_for_delete" int4, "num_class_for_delete" int4);
CREATE OR REPLACE FUNCTION "public"."delete_classroom"("num_building_for_delete" int4, "num_class_for_delete" int4)
  RETURNS "pg_catalog"."text" AS $BODY$

BEGIN

	IF EXISTS(SELECT FROM classrooms WHERE classrooms.num_building = num_building_for_delete) THEN

		IF EXISTS(SELECT FROM classrooms WHERE classrooms.num_building = num_building_for_delete AND classrooms.num_class = num_class_for_delete) THEN

	     DELETE FROM classrooms WHERE classrooms.num_building = num_building_for_delete AND classrooms.num_class = num_class_for_delete;

		   RETURN 'Запись успешно удалена!';

    ELSE

	     RETURN 'Аудитории не существует в базе!';

		END IF;

	ELSE

		RETURN 'Здания не существует в базе!';

	END IF;

END

$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for delete_department
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."delete_department"("name_faculty_for_delete" text, "name_department_for_delete" text);
CREATE OR REPLACE FUNCTION "public"."delete_department"("name_faculty_for_delete" text, "name_department_for_delete" text)
  RETURNS "pg_catalog"."text" AS $BODY$

DECLARE

	id_input_faculty INTEGER := 0;

	is_faculty_exist BOOLEAN := FALSE;

	is_department_exist BOOLEAN := FALSE;

BEGIN

	SELECT INTO is_faculty_exist check_faculty_exist(name_faculty_for_delete);

  SELECT INTO is_department_exist check_department_exist(name_department_for_delete);

	IF is_faculty_exist = FALSE THEN

		RETURN 'Факультета несуществует!';

	ELSE

		IF is_department_exist = FALSE THEN

			RETURN 'Кафедры не существует!';

		ELSE

			SELECT faculty.id_faculty FROM faculty INTO id_input_faculty WHERE faculty.name_faculty = name_faculty_for_delete;

			DELETE FROM departments WHERE departments.id_faculty_department = id_input_faculty AND departments.name_department = name_department_for_delete;

			RETURN 'Запись успешно удалена!';

		END IF;

	END IF;

END

$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for delete_faculty
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."delete_faculty"("name_faculty_for_delete" text);
CREATE OR REPLACE FUNCTION "public"."delete_faculty"("name_faculty_for_delete" text)
  RETURNS "pg_catalog"."text" AS $BODY$

BEGIN

	IF EXISTS(SELECT FROM faculty WHERE faculty.name_faculty = name_faculty_for_delete) THEN

		DELETE FROM faculty WHERE faculty.name_faculty = name_faculty_for_delete;

		RETURN 'Запись успешно удалена!';

	ELSE

		RETURN 'Записи не существует!';

	END IF;

END

$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for delete_specialization
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."delete_specialization"("name_faculty_for_delete" text, "name_department_for_delete" text, "name_specialization_for_delete" text);
CREATE OR REPLACE FUNCTION "public"."delete_specialization"("name_faculty_for_delete" text, "name_department_for_delete" text, "name_specialization_for_delete" text)
  RETURNS "pg_catalog"."text" AS $BODY$

DECLARE

	id_input_faculty INTEGER := 0;

	id_input_department INTEGER := 0;

	is_faculty_exist BOOLEAN := FALSE;

	is_department_exist BOOLEAN := FALSE;

	is_specialization_exist BOOLEAN := FALSE;

BEGIN

	SELECT INTO is_faculty_exist check_faculty_exist(name_faculty_for_delete);

  SELECT INTO is_department_exist check_department_exist(name_department_for_delete);

  SELECT INTO is_specialization_exist check_specialization_exist(name_specialization_for_delete);

	IF is_faculty_exist = FALSE THEN

		RETURN 'Факультета не существует!';

	ELSE

		IF is_department_exist = FALSE THEN

			RETURN 'Кафедры не существует!';

		ELSE

			IF is_specialization_exist = FALSE THEN

				RETURN 'Специальности не существует!';

			ELSE

				SELECT faculty.id_faculty FROM faculty INTO id_input_faculty WHERE faculty.name_faculty = name_faculty_for_delete;

				SELECT departments.id_department FROM departments INTO id_input_department WHERE departments.name_department = name_department_for_delete;

				DELETE FROM specialization WHERE specialization.id_faculty_specialization = id_input_faculty AND specialization.id_department_specialization = id_input_department AND specialization.name_specialization = name_specialization_for_delete;

				RETURN 'Запись успешно удалена!';

			END IF;

		END IF;

	END IF;

END

$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for delete_student_groups
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."delete_student_groups"("abbrevation_input_group" text, "year_entry_input" int4, "name_faculty_input" text, "name_department_input" text, "name_specialization_input" text, "education_type_input" text, "sub_input_group" text);
CREATE OR REPLACE FUNCTION "public"."delete_student_groups"("abbrevation_input_group" text, "year_entry_input" int4, "name_faculty_input" text, "name_department_input" text, "name_specialization_input" text, "education_type_input" text, "sub_input_group" text)
  RETURNS "pg_catalog"."text" AS $BODY$

DECLARE

	id_input_faculty INTEGER := 0;

	id_input_department INTEGER := 0;

	id_input_specialization INTEGER := 0;

	id_input_education_type INTEGER := 0;

	is_faculty_exist BOOLEAN := FALSE;

	is_department_exist BOOLEAN := FALSE;

	is_specialization_exist BOOLEAN := FALSE;

	is_education_type_exist BOOLEAN := FALSE;

BEGIN

	SELECT INTO is_faculty_exist check_faculty_exist(name_faculty_input);

  SELECT INTO is_department_exist check_department_exist(name_department_input);

  SELECT INTO is_specialization_exist check_specialization_exist(name_specialization_input);

  SELECT INTO is_education_type_exist check_education_type_exist(education_type_input);

	IF is_faculty_exist = FALSE THEN

		RETURN 'Факультета не существует!';

	ELSE

		IF is_department_exist = FALSE THEN

				RETURN 'Кафедры не существует!';

		ELSE

			IF is_specialization_exist = FALSE THEN

					RETURN 'Специальности не существует!';

			ELSE

				IF is_education_type_exist = FALSE THEN

					RETURN 'Типа обучения не существует!';

			ELSE

					SELECT faculty.id_faculty FROM faculty INTO id_input_faculty WHERE faculty.name_faculty = name_faculty_input;

					SELECT departments.id_department FROM departments INTO id_input_department WHERE departments.name_department = name_department_input;

					SELECT specialization.id_specialization FROM specialization INTO id_input_specialization WHERE specialization.name_specialization = name_specialization_input;

					SELECT education_type.id_education_type FROM education_type INTO id_input_education_type WHERE education_type.name_education_type = education_type_input;

						DELETE FROM students_groups WHERE students_groups.abbreviation_group = abbrevation_input_group AND students_groups.year_entry = year_entry_input AND students_groups.subgroup = sub_input_group AND students_groups.id_group_department = id_department AND students_groups.id_group_faculty = id_input_faculty AND students_groups.id_specialization_group = id_specialization AND students_groups.id_education_type_group = id_input_education_type;

						RETURN 'Запись успешно удалена!';

				END IF;

			END IF;

		END IF;

	END IF;

END

$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for delete_sub_for_teacher
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."delete_sub_for_teacher"("login_input_replaceable_teacher" text, "login_input_replacing_teacher" text, "date_sub_teacher" date);
CREATE OR REPLACE FUNCTION "public"."delete_sub_for_teacher"("login_input_replaceable_teacher" text, "login_input_replacing_teacher" text, "date_sub_teacher" date)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
	id_replaceable_teacher INTEGER := 0;
	id_replacing_teacher INTEGER := 0;
BEGIN
	IF EXISTS(SELECT * FROM teacher WHERE teacher."login" = login_input_replaceable_teacher) THEN
	SELECT teacher.id_teacher INTO id_replaceable_teacher WHERE teacher."login" = login_input_replaceable_teacher;
		IF EXISTS(SELECT * FROM teacher WHERE teacher."login" = login_input_replacing_teacher) THEN
			SELECT teacher.id_teacher INTO id_replacing_teacher WHERE teacher."login" = login_input_replacing_teacher;
			IF EXISTS(SELECT * FROM sub_teacher WHERE sub_teacher.id_teacher = id_replaceable_teacher AND sub_teacher.id_new_teacher= id_replacing_teacher AND sub_teacher.date_sub = date_sub_teacher) THEN
				DELETE FROM sub_teacher WHERE sub_teacher.id_teacher = id_replaceable_teacher AND sub_teacher.id_new_teacher = id_replacing_teacher AND sub_teacher.date_sub = date_sub_teacher;
				RETURN 'Запись успешно удалена!';
			ELSE
				RETURN 'Записи не существует!';
			END IF;
		ELSE
			RETURN 'Заменяющего преподавателя нет в базе!';
		END IF;
	ELSE
		RETURN 'Заменяемого преподавателя нет в базе!';
	END IF;
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for delete_subject
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."delete_subject"("name_subject_for_delete" text);
CREATE OR REPLACE FUNCTION "public"."delete_subject"("name_subject_for_delete" text)
  RETURNS "pg_catalog"."text" AS $BODY$

BEGIN

	IF EXISTS(SELECT FROM subjects WHERE subjects.name_subject = name_subject_for_delete) THEN

		DELETE FROM subjects WHERE subjects.name_subject = name_subject_for_delete;

		RETURN 'Запись успешно удалена!';

	ELSE

		RETURN 'Записи не существует!';

	END IF;

END

$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for delete_teacher
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."delete_teacher"("name_input_teacher" text, "second_name_input_teacher" text, "third_name_input_teacher" text, "name_faculty_input_teacher" text, "name_department_input_teacher" text, "name_position_input_teacher" text);
CREATE OR REPLACE FUNCTION "public"."delete_teacher"("name_input_teacher" text, "second_name_input_teacher" text, "third_name_input_teacher" text, "name_faculty_input_teacher" text, "name_department_input_teacher" text, "name_position_input_teacher" text)
  RETURNS "pg_catalog"."text" AS $BODY$

DECLARE

  id_input_faculty INTEGER := 0;

	id_input_department INTEGER := 0;

	id_input_position INTEGER := 0;

BEGIN

	SELECT faculty.id_faculty FROM faculty INTO id_input_faculty WHERE faculty.name_faculty = name_faculty_input_teacher;

	SELECT departments.id_department FROM departments INTO id_input_department WHERE departments.name_department = name_department_input_teacher;

	SELECT teachers_positions.id_position FROM teachers_positions INTO id_input_position WHERE teachers_positions.name_position = name_position_input_teacher;

		IF EXISTS(SELECT FROM teacher WHERE teacher.num_teacher = name_input_teacher AND teacher.second_name_teacher = second_name_input_teacher AND teacher.third_name_teacher = third_name_input_teacher AND teacher.id_teacher_faculty = id_input_faculty AND teacher.id_teacher_department = id_input_department AND teacher.id_teacher_position = id_input_position) THEN

		DELETE FROM teacher WHERE teacher.num_teacher = name_input_teacher AND teacher.second_name_teacher = second_name_input_teacher AND teacher.third_name_teacher = third_name_input_teacher AND teacher.id_teacher_faculty = id_input_faculty AND teacher.id_teacher_department = id_input_department AND teacher.id_teacher_position = id_input_position;

		RETURN 'Запись успешно удалена!';

	ELSE

		RETURN 'Записи не существует!';

	END IF;

END

$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for delete_teacher_subjects
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."delete_teacher_subjects"("login_input_teacher" text, "name_input_subject" text);
CREATE OR REPLACE FUNCTION "public"."delete_teacher_subjects"("login_input_teacher" text, "name_input_subject" text)
  RETURNS "pg_catalog"."text" AS $BODY$

DECLARE

	id_input_teacher INTEGER := 0;

	id_input_subject INTEGER := 0;

	is_teacher_exist BOOLEAN := FALSE;

	is_subject_exist BOOLEAN := FALSE;

BEGIN

	SELECT INTO is_teacher_exist check_teacher_exist(login_input_teacher);

	SELECT INTO is_subject_exist check_is_subject_exist(name_input_subject);

	IF is_teacher_exist = FALSE THEN

	  RETURN 'Преподавателя не существует!';

	ELSE

		IF is_subject_exist = FALSE THEN

			RETURN 'Преподавателя не существует!';

		ELSE

			SELECT teacher.id_teacher INTO id_input_teacher FROM teacher WHERE teacher."login" = login_input_teacher;

			SELECT subjects.id_subject INTO id_input_subject FROM subjects WHERE subjects.name_subject = name_input_subject;

			IF EXISTS(SELECT * FROM teacher_subjects WHERE teacher_subjects.id_teacher_for_subject = id_input_teacher AND teacher_subjects.id_subject_for_teacher = id_input_subject) THEN
				DELETE FROM teacher_subjects WHERE teacher_subjects.id_teacher_for_subject = id_input_teacher AND teacher_subjects.id_subject_for_teacher = id_input_subject;
				RETURN 'Запись успешно удалена!';

			ELSE

				RETURN 'Записи не существует';

			END IF;

		END IF;

	END IF;

END

$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for get_all_classes
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_all_classes"();
CREATE OR REPLACE FUNCTION "public"."get_all_classes"()
  RETURNS TABLE("num_buildings" int4, "num_classes" int4) AS $BODY$
	BEGIN
		RETURN QUERY SELECT classrooms.num_building, classrooms.num_class FROM classrooms ORDER BY classrooms.num_building ASC;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_all_classes_in_building
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_all_classes_in_building"("num_house" int4);
CREATE OR REPLACE FUNCTION "public"."get_all_classes_in_building"("num_house" int4)
  RETURNS TABLE("num_classes" int4, "num_buildings" int4) AS $BODY$BEGIN

		RETURN QUERY SELECT classrooms.num_class, classrooms.num_building FROM classrooms WHERE classrooms.num_building = num_house;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_all_departments
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_all_departments"();
CREATE OR REPLACE FUNCTION "public"."get_all_departments"()
  RETURNS TABLE("name_depatments" text) AS $BODY$

	BEGIN

		RETURN QUERY SELECT departments.name_department FROM departments;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_all_departments_in_faculty
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_all_departments_in_faculty"("name_input_faculty" text);
CREATE OR REPLACE FUNCTION "public"."get_all_departments_in_faculty"("name_input_faculty" text)
  RETURNS TABLE("name_departments" text) AS $BODY$

	DECLARE

		id_input_faculty INTEGER := 0;

BEGIN

		SELECT faculty.id_faculty INTO id_input_faculty FROM faculty WHERE faculty.name_faculty = name_input_faculty;

		RETURN QUERY SELECT departments.name_department FROM departments WHERE departments.id_faculty_department = id_input_faculty;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_all_departments_in_faculty_with_logo
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_all_departments_in_faculty_with_logo"("name_input_faculty" text);
CREATE OR REPLACE FUNCTION "public"."get_all_departments_in_faculty_with_logo"("name_input_faculty" text)
  RETURNS TABLE("name_departments" text, "logo_departments" text) AS $BODY$

	DECLARE

		id_input_faculty INTEGER := 0;

BEGIN

		SELECT faculty.id_faculty INTO id_input_faculty FROM faculty WHERE faculty.id_faculty = name_input_faculty;

		RETURN QUERY SELECT departments.name_department, departments.logo_department FROM departments WHERE departments.id_faculty_department = id_input_faculty;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_all_departments_with_logo
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_all_departments_with_logo"();
CREATE OR REPLACE FUNCTION "public"."get_all_departments_with_logo"()
  RETURNS TABLE("name_depatments" text, "logo_depatments" text) AS $BODY$

	BEGIN

		RETURN QUERY SELECT departments.name_department, departments.logo_department FROM departments;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_all_faculties
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_all_faculties"();
CREATE OR REPLACE FUNCTION "public"."get_all_faculties"()
  RETURNS TABLE("name_faculties" text, "logo_faculty" text) AS $BODY$

BEGIN

		RETURN QUERY SELECT faculty.name_faculty, faculty.logo_faculty FROM faculty;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_all_groups
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_all_groups"("faculty_name" text, "department_name" text, "specialization_name" text);
CREATE OR REPLACE FUNCTION "public"."get_all_groups"("faculty_name" text, "department_name" text, "specialization_name" text)
  RETURNS TABLE("abr_group" text, "year_entry_group" int4, "subgroup" text) AS $BODY$

DECLARE

	id_input_faculty INTEGER := 0;

	id_input_department INTEGER := 0;

	id_input_specialization INTEGER := 0;

BEGIN

	SELECT faculty.id_faculty FROM faculty INTO id_input_faculty WHERE faculty.name_faculty = faculty_name;

	IF department_name = NULL THEN

	  RETURN QUERY SELECT students_groups.abbreviation_group, students_groups.year_entry, students_groups.subgroup FROM students_groups WHERE students_groups.id_group_faculty = id_input_faculty;

  ELSE

	  IF specialization_name = NULL THEN

	    SELECT departments.id_department FROM departments INTO id_input_department WHERE departments.name_department = department_name;

			RETURN QUERY SELECT students_groups.abbreviation_group, students_groups.year_entry, students_groups.subgroup FROM students_groups WHERE students_groups.id_group_faculty = id_input_faculty AND students_groups.id_group_department = id_input_department;

    ELSE

	    SELECT specialization.id_specialization FROM specialization INTO id_input_specialization WHERE specialization.name_specialization = specialization_name;

			RETURN QUERY SELECT students_groups.abbreviation_group, students_groups.year_entry, students_groups.subgroup FROM students_groups WHERE students_groups.id_group_faculty = id_input_faculty AND students_groups.id_group_department = id_input_department AND students_groups.id_specialization_group = id_input_specialization;

		END IF;

  END IF;

END

$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_all_housing
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_all_housing"();
CREATE OR REPLACE FUNCTION "public"."get_all_housing"()
  RETURNS TABLE("num_building" int4) AS $BODY$

BEGIN

	RETURN QUERY SELECT DISTINCT classrooms.num_building FROM classrooms ORDER BY classrooms.num_building ASC; 

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_all_lessons_by_group
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_all_lessons_by_group"("abbrevation_input_group" text, "year_entry_input" int4, "name_faculty_input" text, "name_department_input" text, "name_specialization_input" text, "education_type_input" text, "sub_input_group" text);
CREATE OR REPLACE FUNCTION "public"."get_all_lessons_by_group"("abbrevation_input_group" text, "year_entry_input" int4, "name_faculty_input" text, "name_department_input" text, "name_specialization_input" text, "education_type_input" text, "sub_input_group" text)
  RETURNS TABLE("id_type_lesson" int4, "id_payment_type_on_lesson" int4, "num_lesson" int4, "id_lesson" int4, "id_week_day" int4, "id_teachers_on_lesson" int4, "id_lesson_for_teacher" int4, "id_groups_on_lesson" int4, "id_lesson_for_group" int4) AS $BODY$

DECLARE

	id_input_faculty INTEGER := -1;

	id_input_department INTEGER := -1;

	id_input_specialization INTEGER := -1;

	id_input_education_type INTEGER := -1;

	id_input_group INTEGER := -1;

BEGIN

	SELECT faculty.id_faculty FROM faculty INTO id_input_faculty WHERE faculty.name_faculty = name_faculty_input;

	SELECT departments.id_department FROM departments INTO id_input_department WHERE departments.name_department = name_department_input;

	SELECT specialization.id_specialization FROM specialization INTO id_input_specialization WHERE specialization.name_specialization = name_specialization_input;

	SELECT education_type.id_education_type FROM education_type INTO id_input_education_type WHERE education_type.name_education_type = education_type_input;

	SELECT students_groups.id_group FROM students_groups INTO id_input_group WHERE students_groups.id_group_faculty = id_input_faculty AND students_groups.id_group_department = id_input_department AND students_groups.id_specialization_group = id_input_specialization AND students_groups.id_education_type_group = id_input_education_type AND students_groups.abbreviation_group = abbrevation_input_group AND students_groups.year_entry = year_entry_input AND students_groups.subgroup = sub_input_group;

	RETURN QUERY SELECT * FROM(SELECT * FROM lesson INNER JOIN teachers_on_lesson ON teachers_on_lesson.id_lesson_for_teacher = lesson.id_lesson INNER JOIN groups_on_lesson ON groups_on_lesson.id_lesson_for_group = lesson.id_lesson) AS temp_table WHERE temp_table.id_groups_on_lesson = id_input_group;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_all_lessons_by_teacher
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_all_lessons_by_teacher"("login_input_teacher" text);
CREATE OR REPLACE FUNCTION "public"."get_all_lessons_by_teacher"("login_input_teacher" text)
  RETURNS TABLE("id_type_lesson" int4, "id_payment_type_on_lesson" int4, "num_lesson" int4, "id_lesson" int4, "id_week_day" int4, "id_teachers_on_lesson" int4, "id_lesson_for_teacher" int4, "id_groups_on_lesson" int4, "id_lesson_for_group" int4) AS $BODY$

DECLARE

	id_input_teacher INTEGER := -1;

BEGIN

	SELECT teacher.id_teacher FROM teacher INTO id_input_teacher WHERE teacher."login" = login_input_teacher;

	RETURN QUERY SELECT * FROM(SELECT * FROM lesson INNER JOIN teachers_on_lesson ON teachers_on_lesson.id_lesson_for_teacher = lesson.id_lesson INNER JOIN groups_on_lesson ON groups_on_lesson.id_lesson_for_group = lesson.id_lesson) AS temp_table WHERE temp_table.id_teachers_on_lesson = id_input_teacher;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_all_specialization
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_all_specialization"();
CREATE OR REPLACE FUNCTION "public"."get_all_specialization"()
  RETURNS TABLE("name_all_specializations" text) AS $BODY$

BEGIN

		RETURN QUERY SELECT specialization.name_specialization FROM specialization;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_all_specialization_from_department
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_all_specialization_from_department"("name_input_department" text);
CREATE OR REPLACE FUNCTION "public"."get_all_specialization_from_department"("name_input_department" text)
  RETURNS TABLE("name_departments" text) AS $BODY$

	DECLARE

		id_input_department INTEGER := 0;

BEGIN

		SELECT departments.id_department INTO id_input_department FROM departments WHERE departments.name_department = name_input_department;

		RETURN QUERY SELECT specialization.name_specialization FROM specialization WHERE specialization.id_department_specialization = id_input_department;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_all_specialization_from_faculty
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_all_specialization_from_faculty"("name_input_faculty" text);
CREATE OR REPLACE FUNCTION "public"."get_all_specialization_from_faculty"("name_input_faculty" text)
  RETURNS TABLE("name_all_specializations" text) AS $BODY$

	DECLARE

		id_input_faculty INTEGER := 0;

BEGIN

	SELECT faculty.id_faculty INTO id_input_faculty FROM faculty WHERE faculty.id_faculty = name_input_faculty;

	RETURN QUERY SELECT specialization.name_specialization FROM specialization WHERE specialization.id_faculty_specialization = id_input_faculty;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_all_subjects
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_all_subjects"();
CREATE OR REPLACE FUNCTION "public"."get_all_subjects"()
  RETURNS TABLE("name_subjects" text) AS $BODY$

BEGIN

	RETURN QUERY SELECT subjects.name_subject FROM subjects;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_all_teacher_positions
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_all_teacher_positions"();
CREATE OR REPLACE FUNCTION "public"."get_all_teacher_positions"()
  RETURNS TABLE("teachers_positions" text) AS $BODY$

BEGIN

	RETURN QUERY SELECT teachers_positions.name_position FROM teachers_positions;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_all_type_lesson
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_all_type_lesson"();
CREATE OR REPLACE FUNCTION "public"."get_all_type_lesson"()
  RETURNS TABLE("type_lessons" text) AS $BODY$

BEGIN

	RETURN QUERY SELECT type_lesson.name_type_lesson FROM type_lesson;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_count_classes
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_count_classes"("building" int4);
CREATE OR REPLACE FUNCTION "public"."get_count_classes"("building" int4)
  RETURNS "pg_catalog"."int4" AS $BODY$

DECLARE

	num INTEGER := 0;

BEGIN

	SELECT COUNT(classrooms.num_class) INTO num FROM classrooms WHERE classrooms.num_building = building;

	RETURN num;

END

$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for get_department
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_department"("faculty_name" text, "name_input_department" text);
CREATE OR REPLACE FUNCTION "public"."get_department"("faculty_name" text, "name_input_department" text)
  RETURNS TABLE("department" text, "logo" text, "faculty" int4, "id_classroom" int4) AS $BODY$

DECLARE

	id_input_faculty INTEGER := 0;

	building_dep INTEGER := 0;

	classrooms_dep INTEGER := 0;

BEGIN

	SELECT faculty.id_faculty INTO id_input_faculty FROM faculty WHERE faculty.name_faculty = faculty_name;

	RETURN QUERY SELECT departments.name_department, departments.logo_department, departments.id_faculty_department, departments.id_classrooms_department FROM departments WHERE departments.name_department = name_input_department AND departments.id_faculty_department = id_input_faculty;

END

$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_teacher_by_login
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_teacher_by_login"(IN "user_login" text, OUT "name_teacher" text, OUT "second_name_teacher" text, OUT "third_name_teacher" text, OUT "login" text, OUT "photo_teacher" text, OUT "id_teacher_faculty" int4, OUT "id_teacher_department" int4, OUT "id_teacher_position" int4);
CREATE OR REPLACE FUNCTION "public"."get_teacher_by_login"(IN "user_login" text, OUT "name_teacher" text, OUT "second_name_teacher" text, OUT "third_name_teacher" text, OUT "login" text, OUT "photo_teacher" text, OUT "id_teacher_faculty" int4, OUT "id_teacher_department" int4, OUT "id_teacher_position" int4)
  RETURNS SETOF "pg_catalog"."record" AS $BODY$BEGIN

		RETURN QUERY SELECT teacher.name_teacher, teacher.second_name_teacher, teacher.third_name_teacher, teacher."login", teacher.photo_teacher, teacher.id_teacher_faculty, teacher.id_teacher_department, teacher.id_teacher_position FROM teacher WHERE teacher."login" = user_login;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_teacher_info
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_teacher_info"("name_input_teacher" text, "second_name_input_teacher" text, "third_name_input_teacher" text, "name_faculty_input_teacher" text, "name_department_input_teacher" text, "name_position_input_teacher" text);
CREATE OR REPLACE FUNCTION "public"."get_teacher_info"("name_input_teacher" text, "second_name_input_teacher" text, "third_name_input_teacher" text, "name_faculty_input_teacher" text, "name_department_input_teacher" text, "name_position_input_teacher" text)
  RETURNS TABLE("name_teacher" text, "second_name_teacher" text, "third_name_teacher" text, "login_teacher" text, "name_faculty_teacher" text, "name_department_teacher" text, "name_position_teacher" text, "input_email" text, "photo_input_teacher" text) AS $BODY$

DECLARE

  id_input_faculty INTEGER := 0;

	id_input_department INTEGER := 0;

	id_input_position INTEGER := 0;

BEGIN

	SELECT faculty.id_faculty FROM faculty INTO id_input_faculty WHERE faculty.name_faculty = name_faculty_input_teacher;

	SELECT departments.id_department FROM departments INTO id_input_department WHERE departments.name_department = name_department_input_teacher;

	SELECT teachers_positions.id_position FROM teachers_positions INTO id_input_position WHERE teachers_positions.name_position = name_position_input_teacher;

	RETURN QUERY SELECT * FROM teacher WHERE teacher.num_teacher = name_input_teacher AND teacher.second_name_teacher = second_name_input_teacher AND teacher.third_name_teacher = third_name_input_teacher AND teacher.id_teacher_faculty = id_input_faculty AND teacher.id_teacher_department = id_input_department AND teacher.id_teacher_position = id_input_position;

END

$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_teacher_login
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_teacher_login"("name_input_teacher" text, "second_name_input_teacher" text, "third_name_input_teacher" text, "name_faculty_input_teacher" text, "name_department_input_teacher" text);
CREATE OR REPLACE FUNCTION "public"."get_teacher_login"("name_input_teacher" text, "second_name_input_teacher" text, "third_name_input_teacher" text, "name_faculty_input_teacher" text, "name_department_input_teacher" text)
  RETURNS "pg_catalog"."text" AS $BODY$

DECLARE

  id_input_faculty INTEGER := 0;

	id_input_department INTEGER := 0;

	teacher_login TEXT := '';

BEGIN

	SELECT faculty.id_faculty FROM faculty INTO id_input_faculty WHERE faculty.name_faculty = name_faculty_input_teacher;

	SELECT departments.id_department FROM departments INTO id_input_department WHERE departments.name_department = name_department_input_teacher;

	SELECT teacher."login" FROM teacher INTO teacher_login WHERE teacher.id_teacher_faculty = id_input_faculty AND teacher.id_teacher_department = id_input_department AND teacher.num_teacher = name_input_teacher AND teacher.second_name_teacher = second_name_input_teacher AND teacher.third_name_teacher = third_name_input_teacher;

	RETURN teacher_login;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for get_teacher_subjects
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_teacher_subjects"("login_input_teacher" text);
CREATE OR REPLACE FUNCTION "public"."get_teacher_subjects"("login_input_teacher" text)
  RETURNS TABLE("teacher_subject" int4) AS $BODY$

DECLARE

		id_input_teacher INTEGER := 0;

BEGIN

		SELECT teacher.id_teacher INTO id_input_teacher FROM teacher WHERE teacher."login" = login_input_teacher;

		RETURN QUERY SELECT teacher_subjects.id_subject_for_teacher WHERE teacher_subjects.id_teacher_for_subject = id_input_teacher;

END

$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_teachers_in_department
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_teachers_in_department"("input_faculty" text, "input_department" text);
CREATE OR REPLACE FUNCTION "public"."get_teachers_in_department"("input_faculty" text, "input_department" text)
  RETURNS TABLE("name" text, "second_name" text, "third_name" text, "login_teacher" text, "photo" text, "faculty_id" int4, "department_id" int4, "position_id" int4) AS $BODY$

DECLARE

  id_input_faculty INTEGER := 0;

	id_input_department INTEGER := 0;

BEGIN

		SELECT faculty.id_faculty FROM faculty INTO id_input_faculty WHERE faculty.name_faculty = input_faculty;

		SELECT departments.id_department FROM departments INTO id_input_department WHERE departments.name_department = input_department;

		RETURN QUERY SELECT teacher.num_teacher, teacher.second_name_teacher, teacher.third_name_teacher, teacher."login", teacher.photo_teacher, teacher.id_teacher_faculty, teacher.id_teacher_department, teacher.id_teacher_position FROM teacher WHERE teacher.id_teacher_faculty = id_input_faculty AND teacher.id_teacher_department = id_input_department;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_teachers_in_faculty
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_teachers_in_faculty"("input_faculty" text);
CREATE OR REPLACE FUNCTION "public"."get_teachers_in_faculty"("input_faculty" text)
  RETURNS TABLE("name" text, "second_name" text, "third_name" text, "login_teacher" text, "photo" text, "faculty_id" int4, "department_id" int4, "position_id" int4) AS $BODY$

DECLARE

	id_faculty INTEGER := 0;

BEGIN

	SELECT faculty.id_faculty FROM faculty INTO id_faculty WHERE faculty.name_faculty = input_faculty;

	RETURN QUERY SELECT teacher.num_teacher, teacher.second_name_teacher, teacher.third_name_teacher, teacher."login", teacher.photo_teacher, teacher.id_teacher_faculty, teacher.id_teacher_department, teacher.id_teacher_position FROM teacher WHERE teacher.id_teacher_faculty = id_faculty;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for login_uniqueness
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."login_uniqueness"("input_login" text);
CREATE OR REPLACE FUNCTION "public"."login_uniqueness"("input_login" text)
  RETURNS "pg_catalog"."bool" AS $BODY$

BEGIN

	IF EXISTS(SELECT FROM teacher WHERE teacher."login" = input_login) THEN

		RETURN TRUE;

ELSE

		RETURN FALSE;

END IF;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."classrooms_id_classroom_seq"', 21, true);
SELECT setval('"public"."departments_id_department_seq"', 4, true);
SELECT setval('"public"."education_type_id_education_type_seq"', 4, true);
SELECT setval('"public"."faculty_id_faculty_seq"', 11, true);
SELECT setval('"public"."lesson_id_lesson_seq"', 3, false);
SELECT setval('"public"."payment_type_id_payment_type_seq"', 3, false);
SELECT setval('"public"."specialization_id_specialization_seq"', 3, true);
SELECT setval('"public"."students_groups_id_group_seq"', 3, true);
SELECT setval('"public"."subjects_id_subject_seq"', 4, true);
SELECT setval('"public"."teacher_id_teacher_seq"', 6, true);
SELECT setval('"public"."teachers_on_lesson_ID_seq"', 3, false);
SELECT setval('"public"."teachers_positions_id_position_seq"', 15, true);
SELECT setval('"public"."type_lesson_id_type_lesson_seq"', 18, true);
SELECT setval('"public"."week_id_week_day_seq"', 16, true);

-- ----------------------------
-- Primary Key structure for table classrooms
-- ----------------------------
ALTER TABLE "public"."classrooms" ADD CONSTRAINT "classrooms_pkey" PRIMARY KEY ("id_classroom");

-- ----------------------------
-- Primary Key structure for table departments
-- ----------------------------
ALTER TABLE "public"."departments" ADD CONSTRAINT "departments_pkey" PRIMARY KEY ("id_department");

-- ----------------------------
-- Primary Key structure for table education_type
-- ----------------------------
ALTER TABLE "public"."education_type" ADD CONSTRAINT "education_type_pkey" PRIMARY KEY ("id_education_type");

-- ----------------------------
-- Primary Key structure for table faculty
-- ----------------------------
ALTER TABLE "public"."faculty" ADD CONSTRAINT "faculty_pkey" PRIMARY KEY ("id_faculty");

-- ----------------------------
-- Primary Key structure for table lesson
-- ----------------------------
ALTER TABLE "public"."lesson" ADD CONSTRAINT "lesson_pkey" PRIMARY KEY ("id_lesson");

-- ----------------------------
-- Primary Key structure for table payment_type
-- ----------------------------
ALTER TABLE "public"."payment_type" ADD CONSTRAINT "payment_type_pkey" PRIMARY KEY ("id_payment_type");

-- ----------------------------
-- Primary Key structure for table specialization
-- ----------------------------
ALTER TABLE "public"."specialization" ADD CONSTRAINT "specialization_pkey" PRIMARY KEY ("id_specialization");

-- ----------------------------
-- Primary Key structure for table students_groups
-- ----------------------------
ALTER TABLE "public"."students_groups" ADD CONSTRAINT "students_groups_pkey" PRIMARY KEY ("id_group");

-- ----------------------------
-- Primary Key structure for table subjects
-- ----------------------------
ALTER TABLE "public"."subjects" ADD CONSTRAINT "subjects_pkey" PRIMARY KEY ("id_subject");

-- ----------------------------
-- Primary Key structure for table teacher
-- ----------------------------
ALTER TABLE "public"."teacher" ADD CONSTRAINT "teacher_pkey" PRIMARY KEY ("id_teacher");

-- ----------------------------
-- Primary Key structure for table teachers_on_lesson
-- ----------------------------
ALTER TABLE "public"."teachers_on_lesson" ADD CONSTRAINT "teachers_on_lesson_pkey" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table teachers_positions
-- ----------------------------
ALTER TABLE "public"."teachers_positions" ADD CONSTRAINT "teachers_positions_pkey" PRIMARY KEY ("id_position");

-- ----------------------------
-- Primary Key structure for table type_lesson
-- ----------------------------
ALTER TABLE "public"."type_lesson" ADD CONSTRAINT "type_lesson_pkey" PRIMARY KEY ("id_type_lesson");

-- ----------------------------
-- Primary Key structure for table week
-- ----------------------------
ALTER TABLE "public"."week" ADD CONSTRAINT "week_pkey" PRIMARY KEY ("id_week_day");

-- ----------------------------
-- Foreign Keys structure for table departments
-- ----------------------------
ALTER TABLE "public"."departments" ADD CONSTRAINT "fk_departments_classrooms_1" FOREIGN KEY ("id_classrooms_department") REFERENCES "classrooms" ("id_classroom") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."departments" ADD CONSTRAINT "fk_departments_faculty_1" FOREIGN KEY ("id_faculty_department") REFERENCES "faculty" ("id_faculty") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table groups_on_lesson
-- ----------------------------
ALTER TABLE "public"."groups_on_lesson" ADD CONSTRAINT "fk_groups_on_lesson_lesson_1" FOREIGN KEY ("id_lesson_for_group") REFERENCES "lesson" ("id_lesson") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."groups_on_lesson" ADD CONSTRAINT "fk_groups_on_lesson_students_groups_1" FOREIGN KEY ("id_groups_on_lesson") REFERENCES "students_groups" ("id_group") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table lesson
-- ----------------------------
ALTER TABLE "public"."lesson" ADD CONSTRAINT "fk_lesson_payment_type_1" FOREIGN KEY ("id_payment_type_on_lesson") REFERENCES "payment_type" ("id_payment_type") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."lesson" ADD CONSTRAINT "fk_lesson_type_lesson_1" FOREIGN KEY ("id_type_lesson") REFERENCES "type_lesson" ("id_type_lesson") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."lesson" ADD CONSTRAINT "fk_lesson_week_1" FOREIGN KEY ("id_week_day") REFERENCES "week" ("id_week_day") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table specialization
-- ----------------------------
ALTER TABLE "public"."specialization" ADD CONSTRAINT "fk_specialization_departments_1" FOREIGN KEY ("id_department_specialization") REFERENCES "departments" ("id_department") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."specialization" ADD CONSTRAINT "fk_specialization_faculty_1" FOREIGN KEY ("id_faculty_specialization") REFERENCES "faculty" ("id_faculty") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table students_groups
-- ----------------------------
ALTER TABLE "public"."students_groups" ADD CONSTRAINT "fk_students_groups_departments_1" FOREIGN KEY ("id_group_department") REFERENCES "departments" ("id_department") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."students_groups" ADD CONSTRAINT "fk_students_groups_education_type_1" FOREIGN KEY ("id_education_type_group") REFERENCES "education_type" ("id_education_type") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."students_groups" ADD CONSTRAINT "fk_students_groups_faculty_1" FOREIGN KEY ("id_group_faculty") REFERENCES "faculty" ("id_faculty") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."students_groups" ADD CONSTRAINT "fk_students_groups_specialization_1" FOREIGN KEY ("id_specialization_group") REFERENCES "specialization" ("id_specialization") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table sub_teacher
-- ----------------------------
ALTER TABLE "public"."sub_teacher" ADD CONSTRAINT "fk_sub_teacher_teacher_1" FOREIGN KEY ("id_new_teacher") REFERENCES "teacher" ("id_teacher") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."sub_teacher" ADD CONSTRAINT "fk_sub_teacher_teachers_on_lesson_1" FOREIGN KEY ("id_teacher") REFERENCES "teachers_on_lesson" ("ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table teacher
-- ----------------------------
ALTER TABLE "public"."teacher" ADD CONSTRAINT "fk_teacher_departments_1" FOREIGN KEY ("id_teacher_department") REFERENCES "departments" ("id_department") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."teacher" ADD CONSTRAINT "fk_teacher_faculty_1" FOREIGN KEY ("id_teacher_faculty") REFERENCES "faculty" ("id_faculty") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."teacher" ADD CONSTRAINT "fk_teacher_teachers_positions_1" FOREIGN KEY ("id_teacher_position") REFERENCES "teachers_positions" ("id_position") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table teacher_subjects
-- ----------------------------
ALTER TABLE "public"."teacher_subjects" ADD CONSTRAINT "fk_teacher_subjects_subjects_1" FOREIGN KEY ("id_subject_for_teacher") REFERENCES "subjects" ("id_subject") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."teacher_subjects" ADD CONSTRAINT "fk_teacher_subjects_teacher_1" FOREIGN KEY ("id_teacher_for_subject") REFERENCES "teacher" ("id_teacher") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table teachers_on_lesson
-- ----------------------------
ALTER TABLE "public"."teachers_on_lesson" ADD CONSTRAINT "fk_teachers_on_lesson_lesson_1" FOREIGN KEY ("id_lesson_for_teacher") REFERENCES "lesson" ("id_lesson") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."teachers_on_lesson" ADD CONSTRAINT "fk_teachers_on_lesson_teacher_1" FOREIGN KEY ("id_teachers_on_lesson") REFERENCES "teacher" ("id_teacher") ON DELETE CASCADE ON UPDATE CASCADE;
