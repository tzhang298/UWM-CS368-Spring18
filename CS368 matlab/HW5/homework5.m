%% problem 1 nested loop 
for a = 1:1:12
    for b = 1:a
           fprintf('*');
    end
    c =['(',num2str(a),')'];
    disp(c);
end


%% problem 2a flipping a coin
heads = 0; 
count = 0;

while heads<30
    a= randperm(2,1);
    count = count+1;
    if a == 1
        heads= heads+1;
    end
end
disp(count);

%% problem 2b flipping a coin
count = 0;
for a = 1:1:2000
    heads = 0; 
    

    while heads<30
        a= randperm(2,1);
        count = count+1;
        if a == 1
            heads= heads+1;
        end
    end
    
end
average = count / 2000; 
disp(average);

%% problem 3 Card Trick
card(1:52) = 1;

%3a
for a = 1:1:52
    if rem(a,2)==0
        card(a) = 0;
        
    end
end
disp(card);

%3b
for a = 1:1:52
    if rem(a,3)==0
        card(a) = 0;
        
    end
end
disp(card);

%3d
returnvalue = flipCards(52);
faceup = find(returnvalue == 1);
disp(faceup);

%3e
newreturnvalue = flipCards(156);
newfaceup = find(newreturnvalue == 1);
disp(newfaceup);



