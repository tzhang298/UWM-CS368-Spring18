function solved = solveOneJumble(word)
% solveOneJumble
%
% Takes one argument (the word to guess), creates a jumble out of it, 
% and repeatedly allows the user to guess the word (or quit guessing).
%
% Input:
%   word   the word the user is to guess
%
% Output: true (1) if the jumble was correctly solved; 
%         false (0) otherwise (i.e., the user decided to quit)
%
global attempted;
newword = '';
global solve;
guess = '';
newword = word(randperm(numel(word)));
%disp(word(randperm(numel(word))));
while 1
   disp(newword);
   guess = input('Enter guess or Q to quit: ','s');
   a = "q";
   if strcmpi(guess,a) == 1
       output = ['The word was: ' , word];
       disp(output);
       break;
   end
  
   solved = checkGuess(guess, word);
   if solved == 1
       disp('correct');
       solve = solve +1 ;
       break;
   else 
       attempted = attempted +1;
   
   end
end


% The comments below outline what this function should do:

% create a jumble out of the word by scrambling the letters
% (making sure that the scrambled word is different than the 
%  original word)

% repeatedly
%     display the jumbled word
%     ask user to guess the correct word (or enter Q to quit)
%     if user made a guess, 
%         check if guess is correct (if it is, display "Correct")
%     if user decided to quit, display the correct word
% until user has either guessed the correct word or decided to quit 

% return true (1) if the jumble was correctly solved 
% or false (0) if user decided to quit before solving it
