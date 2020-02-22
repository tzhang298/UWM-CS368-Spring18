%
% Jumble Generator
%
% This is the main script for the Jumble Generator.  
% The comments below outline what the script should do.
% 
clear

% Read in a list of 6-letter words from a file
% Note: do not change this code
fileID = fopen('words_6_ltrs.txt', 'r');
sizeWords = [6, Inf];
words = fscanf(fileID, '%s', sizeWords);
words = words';
global attempted;
attempted = 0;
global solve;
solve = 0;
% Ask the user for the number of jumbles they wish to attempt
number = getNumJumbles();
% For each jumble to attempt
%     select a word at random from the list of words 
%     create a jumble from the word and ask the user to solve it
for a = 1:number 
    oneword = 0 ;
    oneword = words(randi(length(words)),:);
    solveOneJumble(oneword);
end
attemptedmsg = ['# jumbles attempted: ',num2str(attempted)];
solvedmsg = ['# jumbles solved: ',num2str(solve)];
disp(attemptedmsg);
disp(solvedmsg);
% Display the number of jumbles attempted and number of jumbles solved
