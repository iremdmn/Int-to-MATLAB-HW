int=floor(rand()*100);

if int==0
    int=int+1;
end

number=input('bir tam sayi giriniz')
tahmin=0;
numbers=[number];
while number ~= int
    
    if int<number
        number=input('Your guess is too high!')
        tahmin=tahmin+1;
        numbers=[numbers,number];
    else
        number=input('Your guess is too low!')
        tahmin=tahmin+1;
        numbers=[numbers,number];
    end
end
if number==int
    fprintf('your guess is true! you find the %d in %d trials',int,tahmin+1)
end

grid;
plot((1:tahmin+1),numbers,'-ro')
title('Guess Graph')
xlabel('number of guess')
ylabel('guess')