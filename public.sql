/*
 Navicat Premium Data Transfer

 Source Server         : University
 Source Server Type    : PostgreSQL
 Source Server Version : 90605
 Source Host           : kibnet.tk:5432
 Source Catalog        : semik_univer
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 90605
 File Encoding         : 65001

 Date: 16/03/2020 19:48:58
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
-- Sequence structure for week_type_id_week_type_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."week_type_id_week_type_seq";
CREATE SEQUENCE "public"."week_type_id_week_type_seq" 
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
INSERT INTO "public"."education_type" VALUES (1, 'Очная');
INSERT INTO "public"."education_type" VALUES (2, 'Заочная');

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
  "id_teacher_on_lesson" int4 NOT NULL,
  "id_group_on_lesson" int4 NOT NULL,
  "id_type_lesson" int4 NOT NULL,
  "id_week_type" int4 NOT NULL,
  "id_payment_type_on_lesson" int4 NOT NULL,
  "num_lesson" int4 NOT NULL,
  "id_lesson" int4 NOT NULL DEFAULT nextval('lesson_id_lesson_seq'::regclass)
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
  "id_specialization" int4 NOT NULL,
  "name_specialization" text COLLATE "pg_catalog"."default" NOT NULL,
  "id_faculty_specialization" int4 NOT NULL,
  "id_department_specialization" int4 NOT NULL
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
  "id_education_type_group" int4 NOT NULL
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
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS "public"."teacher";
CREATE TABLE "public"."teacher" (
  "id_teacher" int4 NOT NULL DEFAULT nextval('teacher_id_teacher_seq'::regclass),
  "num_teacher" text COLLATE "pg_catalog"."default" NOT NULL,
  "second_name_teacher" text COLLATE "pg_catalog"."default" NOT NULL,
  "third_name_teacher" text COLLATE "pg_catalog"."default" NOT NULL,
  "login" text COLLATE "pg_catalog"."default" NOT NULL,
  "id_teacher_department" int4 NOT NULL,
  "id_teacher_faculty" int4 NOT NULL,
  "id_teacher_position" int4 NOT NULL
)
;
COMMENT ON COLUMN "public"."teacher"."num_teacher" IS 'Имя преподавателя';
COMMENT ON COLUMN "public"."teacher"."second_name_teacher" IS 'Фамилия преподавателя';
COMMENT ON COLUMN "public"."teacher"."third_name_teacher" IS 'Отчество преподавателя';

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
-- Table structure for teachers_on_lesson
-- ----------------------------
DROP TABLE IF EXISTS "public"."teachers_on_lesson";
CREATE TABLE "public"."teachers_on_lesson" (
  "id_teachers_on_lesson" int4 NOT NULL,
  "id_lesson_for_teacher" int4 NOT NULL
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
INSERT INTO "public"."teachers_positions" VALUES (1, 'Ассистент');
INSERT INTO "public"."teachers_positions" VALUES (2, 'Преподаватель');
INSERT INTO "public"."teachers_positions" VALUES (3, 'Старший преподаватель');
INSERT INTO "public"."teachers_positions" VALUES (4, 'Доцент');
INSERT INTO "public"."teachers_positions" VALUES (5, 'Профессор');
INSERT INTO "public"."teachers_positions" VALUES (6, 'Заведующий кафедрой');
INSERT INTO "public"."teachers_positions" VALUES (7, 'Декан факультета');

-- ----------------------------
-- Table structure for type_lesson
-- ----------------------------
DROP TABLE IF EXISTS "public"."type_lesson";
CREATE TABLE "public"."type_lesson" (
  "id_type_lesson" int4 NOT NULL DEFAULT nextval('type_lesson_id_type_lesson_seq'::regclass),
  "name_type_lesson" text COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of type_lesson
-- ----------------------------
INSERT INTO "public"."type_lesson" VALUES (1, 'Лекция');
INSERT INTO "public"."type_lesson" VALUES (2, 'Семинар');
INSERT INTO "public"."type_lesson" VALUES (3, 'Практика');
INSERT INTO "public"."type_lesson" VALUES (4, 'Лабораторная');
INSERT INTO "public"."type_lesson" VALUES (5, 'Консультация');

-- ----------------------------
-- Table structure for week_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."week_type";
CREATE TABLE "public"."week_type" (
  "id_week_type" int4 NOT NULL DEFAULT nextval('week_type_id_week_type_seq'::regclass),
  "name_week_type" text COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of week_type
-- ----------------------------
INSERT INTO "public"."week_type" VALUES (1, 'Верхняя');
INSERT INTO "public"."week_type" VALUES (2, 'Нижняя');

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
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."classrooms_id_classroom_seq"
OWNED BY "public"."classrooms"."id_classroom";
SELECT setval('"public"."classrooms_id_classroom_seq"', 10, true);
ALTER SEQUENCE "public"."departments_id_department_seq"
OWNED BY "public"."departments"."id_department";
SELECT setval('"public"."departments_id_department_seq"', 3, true);
ALTER SEQUENCE "public"."education_type_id_education_type_seq"
OWNED BY "public"."education_type"."id_education_type";
SELECT setval('"public"."education_type_id_education_type_seq"', 3, true);
ALTER SEQUENCE "public"."faculty_id_faculty_seq"
OWNED BY "public"."faculty"."id_faculty";
SELECT setval('"public"."faculty_id_faculty_seq"', 4, true);
ALTER SEQUENCE "public"."lesson_id_lesson_seq"
OWNED BY "public"."lesson"."id_lesson";
SELECT setval('"public"."lesson_id_lesson_seq"', 2, false);
ALTER SEQUENCE "public"."payment_type_id_payment_type_seq"
OWNED BY "public"."payment_type"."id_payment_type";
SELECT setval('"public"."payment_type_id_payment_type_seq"', 2, false);
ALTER SEQUENCE "public"."students_groups_id_group_seq"
OWNED BY "public"."students_groups"."id_group";
SELECT setval('"public"."students_groups_id_group_seq"', 2, false);
ALTER SEQUENCE "public"."subjects_id_subject_seq"
OWNED BY "public"."subjects"."id_subject";
SELECT setval('"public"."subjects_id_subject_seq"', 2, false);
ALTER SEQUENCE "public"."teacher_id_teacher_seq"
OWNED BY "public"."teacher"."id_teacher";
SELECT setval('"public"."teacher_id_teacher_seq"', 2, false);
ALTER SEQUENCE "public"."teachers_positions_id_position_seq"
OWNED BY "public"."teachers_positions"."id_position";
SELECT setval('"public"."teachers_positions_id_position_seq"', 8, true);
ALTER SEQUENCE "public"."type_lesson_id_type_lesson_seq"
OWNED BY "public"."type_lesson"."id_type_lesson";
SELECT setval('"public"."type_lesson_id_type_lesson_seq"', 6, true);
ALTER SEQUENCE "public"."week_type_id_week_type_seq"
OWNED BY "public"."week_type"."id_week_type";
SELECT setval('"public"."week_type_id_week_type_seq"', 3, true);

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
-- Primary Key structure for table teachers_positions
-- ----------------------------
ALTER TABLE "public"."teachers_positions" ADD CONSTRAINT "teachers_positions_pkey" PRIMARY KEY ("id_position");

-- ----------------------------
-- Primary Key structure for table type_lesson
-- ----------------------------
ALTER TABLE "public"."type_lesson" ADD CONSTRAINT "type_lesson_pkey" PRIMARY KEY ("id_type_lesson");

-- ----------------------------
-- Primary Key structure for table week_type
-- ----------------------------
ALTER TABLE "public"."week_type" ADD CONSTRAINT "week_type_pkey" PRIMARY KEY ("id_week_type");

-- ----------------------------
-- Foreign Keys structure for table departments
-- ----------------------------
ALTER TABLE "public"."departments" ADD CONSTRAINT "fk_departments_classrooms_1" FOREIGN KEY ("id_classrooms_department") REFERENCES "classrooms" ("id_classroom") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."departments" ADD CONSTRAINT "fk_departments_faculty_1" FOREIGN KEY ("id_faculty_department") REFERENCES "faculty" ("id_faculty") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table groups_on_lesson
-- ----------------------------
ALTER TABLE "public"."groups_on_lesson" ADD CONSTRAINT "fk_groups_on_lesson_lesson_1" FOREIGN KEY ("id_lesson_for_group") REFERENCES "lesson" ("id_lesson") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."groups_on_lesson" ADD CONSTRAINT "fk_groups_on_lesson_students_groups_1" FOREIGN KEY ("id_groups_on_lesson") REFERENCES "students_groups" ("id_group") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table lesson
-- ----------------------------
ALTER TABLE "public"."lesson" ADD CONSTRAINT "fk_lesson_payment_type_1" FOREIGN KEY ("id_payment_type_on_lesson") REFERENCES "payment_type" ("id_payment_type") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."lesson" ADD CONSTRAINT "fk_lesson_type_lesson_1" FOREIGN KEY ("id_type_lesson") REFERENCES "type_lesson" ("id_type_lesson") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."lesson" ADD CONSTRAINT "fk_lesson_week_type_1" FOREIGN KEY ("id_week_type") REFERENCES "week_type" ("id_week_type") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table specialization
-- ----------------------------
ALTER TABLE "public"."specialization" ADD CONSTRAINT "fk_specialization_departments_1" FOREIGN KEY ("id_department_specialization") REFERENCES "departments" ("id_department") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."specialization" ADD CONSTRAINT "fk_specialization_faculty_1" FOREIGN KEY ("id_faculty_specialization") REFERENCES "faculty" ("id_faculty") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table students_groups
-- ----------------------------
ALTER TABLE "public"."students_groups" ADD CONSTRAINT "fk_students_groups_departments_1" FOREIGN KEY ("id_group_department") REFERENCES "departments" ("id_department") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."students_groups" ADD CONSTRAINT "fk_students_groups_education_type_1" FOREIGN KEY ("id_education_type_group") REFERENCES "education_type" ("id_education_type") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."students_groups" ADD CONSTRAINT "fk_students_groups_faculty_1" FOREIGN KEY ("id_group_faculty") REFERENCES "faculty" ("id_faculty") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."students_groups" ADD CONSTRAINT "fk_students_groups_specialization_1" FOREIGN KEY ("id_specialization_group") REFERENCES "specialization" ("id_specialization") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table teacher
-- ----------------------------
ALTER TABLE "public"."teacher" ADD CONSTRAINT "fk_teacher_departments_1" FOREIGN KEY ("id_teacher_department") REFERENCES "departments" ("id_department") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."teacher" ADD CONSTRAINT "fk_teacher_faculty_1" FOREIGN KEY ("id_teacher_faculty") REFERENCES "faculty" ("id_faculty") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."teacher" ADD CONSTRAINT "fk_teacher_teachers_positions_1" FOREIGN KEY ("id_teacher_position") REFERENCES "teachers_positions" ("id_position") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table teacher_subjects
-- ----------------------------
ALTER TABLE "public"."teacher_subjects" ADD CONSTRAINT "fk_teacher_subjects_subjects_1" FOREIGN KEY ("id_subject_for_teacher") REFERENCES "subjects" ("id_subject") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."teacher_subjects" ADD CONSTRAINT "fk_teacher_subjects_teacher_1" FOREIGN KEY ("id_teacher_for_subject") REFERENCES "teacher" ("id_teacher") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table teachers_on_lesson
-- ----------------------------
ALTER TABLE "public"."teachers_on_lesson" ADD CONSTRAINT "fk_teachers_on_lesson_lesson_1" FOREIGN KEY ("id_lesson_for_teacher") REFERENCES "lesson" ("id_lesson") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."teachers_on_lesson" ADD CONSTRAINT "fk_teachers_on_lesson_teacher_1" FOREIGN KEY ("id_teachers_on_lesson") REFERENCES "teacher" ("id_teacher") ON DELETE NO ACTION ON UPDATE NO ACTION;
