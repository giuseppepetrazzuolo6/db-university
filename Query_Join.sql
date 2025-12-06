USE 149_boolean;

# 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
/*
SELECT `students`.`id` as `studentsId`, `students`.`name` as `name`, `students`.`surname` as `surname`, `degrees`.`name` as `degreesName`
FROM `students`
JOIN `degrees` ON `students`.`degree_id` = `degrees`.`id`
WHERE `degrees`.`name` = "Corso di Laurea in Economia"
*/


# 2. Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
/*
SELECT `degrees`.`id` as `degreeID`, `degrees`.`name` as `degreeName`, `departments`.`id` as `departmentId`, `departments`.`name` as `departmentName`
FROM `degrees`
JOIN `departments` ON `degrees`.`department_id` = `departments`.`id`
WHERE `degrees`.`name` LIKE "%Magistrale%"
AND `departments`.`name` = "Dipartimento di Neuroscienze"
*/

# 3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
/*
SELECT `teachers`.`id`, `teachers`.`name`, `teachers`.`surname`, `degrees`.`name` as `degreeName`
FROM `teachers`
JOIN `course_teacher` ON `course_teacher`.`teacher_id` = `teachers`.`id`
JOIN `courses` ON `course_teacher`.`course_id` = `courses`.`id`
JOIN `degrees` ON `courses`.`degree_id` = `degrees`.`id`
WHERE `teachers`.`name` = "Fulvio"
AND `teachers`.`surname` = "Amato"
*/

# 4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
/*
SELECT `students`.`id`, `students`.`surname`, `students`.`name`, `degrees`.`name` as `degreeName`, `departments`.`name` as `departmentName`
FROM `students`
JOIN `degrees` ON `students`.`degree_id` = `degrees`.`id`
JOIN `departments` ON `degrees`.`department_id` = `departments`.`id`
ORDER BY `students`.`surname` ASC, `students`.`name` ASC;
*/




