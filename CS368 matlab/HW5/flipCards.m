function output = flipCards(N);
%3c
card(1:N) = 1;
for a = 2:1:N
    for b = 1:1:N
        if rem(b,a)==0
            card(b) = rem(card(b)+1,2);
        end
    end
end
output = card;