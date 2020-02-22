function number = getNumJumbles()
% getNumJumbles
%
% Returns a valid number of jumbles to solve by repeatedly asking the 
% user until the user enters a valid value.  A value is not valid if:
% - it is not a scalar
% - it is not an integer
% - it is not positive
%
% If the value is not valid, a message is displayed indicating why.
%
% Output: a valid number of jumbles to attempt
%

% Replace the line below with your code.
valid = 0 ;
x= 0;
x = input('Number of jumbles to attempt: ');
while  valid == 0
       if isscalar(x) == 0
           disp("Number must be a scalar");
       elseif x<0 
           disp("Number must be positive");
       elseif rem(x,1) ~=0 
           disp("Number must be an integer");
       else 
           valid = 1;
       end 
       
       if valid == 0
           x = input('Try again: ');
       end      
end  
number = x;
