N=input('2den buyuk bir tam sayi giriniz: ');
while N<2 || uint64(N)~=N
if N<2
    N=input('ikiden buyuk bir tam sayi girmelisiniz.');
end
if uint64(N)~=N
    N=input('bir tam sayi girmelisiniz.'); 
end
end
numbers=randperm(N)


%asal sayýlarýn indexi
index=[];
for i=1:N
    if isprime(numbers(i))==1
        index=[index;i];
    end
end
fprintf('asal sayýlarýn indisleri:')
index

%sum of even numbers
sumEven=0;
for i=1:N
    if mod(numbers(i),2)==0
        sumEven=sumEven+numbers(i);
    end
end
fprintf('cift sayilarin toplami:%d\n',sumEven)

%divisible by 3 
sum3=0;
for i=1:N
    if mod(numbers(i),3)==0
        sum3=sum3+numbers(i);
    end
end
fprintf('uce bolunebilen sayilarin toplami:%d\n',sum3)

%divisible by 11 
sum11=0;
for i=1:N
    if mod(numbers(i),11)==0
        sum11=sum11+numbers(i);
    end
end
fprintf('on bire bolunebilen sayilarin toplami:%d\n',sum11)

%divisible by 3 and 5
sumTF=0;
for i=1:N
    if (mod(numbers(i),3)==0) && (mod(numbers(i),5)==0)
        sumTF=sumTF+numbers(i);
    end
end
fprintf('uce ve bese bolunebilen sayilarin toplami:%d\n',sumTF)
