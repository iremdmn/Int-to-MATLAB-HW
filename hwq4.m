number=input('bir sayi giriniz');
while uint64(number)~=number
    if number<0
        number=input('bir pozitip tam sayi girmelisiniz.');
    else
        number=input('bir tam sayi girmelisiniz.'); 
    end
end

if number<10
    fprintf('Congrats! You entered a palindrome integer!');
elseif number<100
    if mod(number,10)==(number-mod(number,10))/10
        fprintf('Congrats! You entered a palindrome integer!');
    else
        fprintf('You did not enter a palindrome integer!');
    end
elseif number<1000
    if(number-mod(number,100))/100==mod(number,10)
        fprintf('Congrats! You entered a palindrome integer!');
    else
        fprintf('You did not enter a palindrome integer!');
    end       
elseif number<10000
    if (number-mod(number,1000))/1000==mod(number,10)&& (mod(number,1000)-mod(number,100))/100==(mod(number,100)-mod(number,10))/10
        fprintf('Congrats! You entered a palindrome integer!');
    else
        fprintf('You did not enter a palindrome integer!');
    end
        
end