%% CS368 Spring 2018 Homework Assignment 7
% * Name: Tianyu Zhang 
% * Due: DUE DATE HERE

%% Problem 1: Area between two curves
clear
xx=0 : 0.01 : 5;
y1 = @(x)2*(x.^3) - 5*(x.^(5/4)) + 4;
y2 = @(x)3 + 6 * x - 2 * (x.^2);
root1 = fzero(@(x)2*(x.^3) - 5*(x.^(5/4)) + 4 - 3 - 6 * x + 2 * (x.^2),0.5);
root2 = fzero(@(x)2*(x.^3) - 5*(x.^(5/4)) + 4 - 3 - 6 * x + 2 * (x.^2),2);
a = ["the first root we have "+num2str( root1) ];
b = ["the second root we have " + num2str(root2)];
disp(a);
disp(b);
Area = integral(@(x)2*(x.^3) - 5*(x.^(5/4)) + 4 - 3 - 6 * x + 2 * (x.^2), root2, root1);
c = ["The area between those two functions is " + num2str(Area)];
disp(c);

%% Problem 2: The Secant Method
clear

% function we wish to find the roots of
fctn = @(x)x.^3 + 3*x.^2 - 5*x - 0.4*exp(x);

%a.plot
xx = -6: 0.001: 8;
yy = fctn(xx);
hold on;
plot(xx, yy);
axis([-6, 8, -40, 40]);
grid on;
hold off;

%b. derivative
fctn_derivative =  @(x)3*(x.^2) + 6*x - 5 - 0.4*exp(x);

%d. 
disp( 'method   : root (# iterations)')
for guess = -6 : 8
    % the next line is used to visually separate the tests
    disp('--------------------------------------------------') 
    disp(['Initial guess: ' num2str(guess)])
    
    % calculate root and display results using each method
    % note: num2str(value, N) displays value to a maximum of N digits
    root_f = fzero(fctn, guess);
    disp(['fzero    : ', num2str(root_f, 20)])
    
    [root_n, iters_n] = newton(fctn, fctn_derivative, guess);
    disp(['Newton''s : ', num2str(root_n, 20), '  (' num2str(iters_n), ')'])
    
    offset = [1, 0.1, 0.01, 0.001];
    for a = offset 
        [root_s, iters_s] = secant(fctn, guess - a, guess + a);
        disp(['Secant   : ', num2str(root_s, 20), '  (' num2str(iters_s), ')'...
          '  offset: ' num2str(a)])
    end
end