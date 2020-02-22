%% CS368 Spring 2017 Homework Assignment 3 
% * Name: Tianyu Zhang 
% * Due Date: Friday, March 3 by 11:59 pm

clear
header = 'Choose function to test:';
option1 = 'calculateGPA';
option2 = 'calculatePercent - user input';
option3 = 'calculatePercent - file I/O';
option4 = 'quit';

choice = 0;

while choice ~= 4
   choice = menu(header, option1, option2, option3, option4);
   
   switch choice
       case 1
           filename = input('Enter filename: ', 's');
           GPA = calculateGPA(filename);
           fprintf('GPA = %.4f\n', GPA);
           % replace the line above with your code to implement this option
           
       case 2
           exams = input ('Enter exams scores: ');
           homeworks = input ('Enter homework scores: ');
           quizzes = input ('Enter quiz scores: ');
           percent = calculatePercent(exams,homeworks,quizzes);
           fprintf('Score = %.3f%%\n', percent);
           % replace the line above with your code to implement this option
           
       case 3
           infile = input('Enter input filename:  ', 's');
           outfile = input('Enter output filename: ', 's');
           content = load (infile);
           exams = content(:,2:4);
           homeworks = content(:,5:10);
           quizzes = content (:,11:24);
           percent = calculatePercent(exams,homeworks,quizzes);
           result(:,1) = content(:,1);
           result(:,2) = percent(:,1);
           save(outfile, 'result', '-ascii' );
           
           
           % replace the line above with your code to implement this option
           
       otherwise
           disp('quit')
   end
    
end