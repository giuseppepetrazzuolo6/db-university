USE 149_boolean;

# 1. Contare quanti iscritti ci sono stati ogni anno
/*
SELECT COUNT(*) as `total_enrolments`, YEAR(`enrolment_date`) as `year`
FROM `students`
GROUP BY `year`
*/

# 2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio
/*
SELECT COUNT(*) as `total_teachers`, `office_address`
FROM `teachers`
GROUP BY `office_address`
*/

# 3. Calcolare la media dei voti di ogni appello d'esame
/*
SELECT AVG(`vote`) as `avg_vote`, `exam_id`
FROM `exam_student`
GROUP BY `exam_id`
*/

# 4. Contare quanti corsi di laurea ci sono per ogni dipartimento
/*
SELECT COUNT(*) as `total_degrees`, `department_id`
FROM `degrees`
GROUP BY `department_id`
*/


