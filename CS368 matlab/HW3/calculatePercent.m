function percent = calculatePercent(exams,homeworks,quizzes)
examtotal = sum(exams,2) ./ size(exams,2) ./ 60;
homeworktotal = sum(homeworks,2) ./ size(homeworks,2) ./ 30;
quiztotal = sum(quizzes,2) ./ size(quizzes, 2) ./ 10;
percent = 60 .* examtotal + 25 .* homeworktotal + 15 .*quiztotal;

end 