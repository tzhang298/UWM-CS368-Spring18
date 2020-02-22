%% CS368 Spring 2018 Homework Assignment 4
% * Name: YOUR NAME HERE 
% * Due Date: Monday, April 9 by 11:58 pm


%% Problem 1: Interpolation

clear
figure % create a new figure window for plotting
x = [0 0.25 0.75 1.25 1.5 1.75 1.875 2 2.125 2.25];
y = [1.2 1.18 1.1 1 0.92 0.8 0.7 0.55 0.35 0];
coef9 = polyfit (x, y, 9)
xx = 0:0.001:2.25;
yy = polyval(coef9,xx);

yys = spline(x,y,xx);
hold on 
plot ( x, y, 'gd')
plot (xx, yy,'-.k');
plot (xx, yys, 'r');
axis([0 2.25 0 1.5]);
hold off 

y_p = polyval(coef9,0.5);
y_s = spline(x,y,0.5);
disp(y_p);
a = ['polynomial interpolation when x = 0.5 y = ' , num2str(y_p)];
b = ['spline interpolation when x = 0.5 y = ' , num2str(y_s)];
disp(a);
disp(b);

%% Problem 2: Approximation

clear
figure % create a new figure window for plotting
x = [1.00 2.12 3.09 5.23 7.64 9.14 11.2 14.3 16.1 18.3 22.7 25.0];
y = [2.43 2.21 2.07 1.79 1.63 1.58 1.49 1.42 1.39 1.34 1.27 1.24];
u = x.^-1;
p = polyfit(u, y , 3)

xx = 1:0.24:25;
u = xx.^-1;
yy = polyval(p,u);
hold on 
plot (x, y, 'd');
plot (xx, yy,'-.r');
hold off 
xlim([1 25]);
y_a = polyval(p,10.5^-1);
a = ['approximation when x = 10.5 y = ',num2str(y_a)];
disp(a);

%% Problem 3: Heat Plate

% Linear equations for each unknown temperature T_1 through T_9:
%T1 = (T2+T4+TA)/3;
%T2 = (T1+T3+T5)/3;
%T3 = (T2+T6)/2;
%T4 = (T1+T5+T7)/3;
%T5 = (T2+T4+T6+T8)/4;
%T6 = (T3+T5+T9)/3;
%T7 = (T4+T8)/2;
%T8 = (T5+T7+T9)/3;
%T9 = (T6+T8+TB)/3;

output = heatplate(50,75);
disp(output);




