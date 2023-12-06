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

i=1;
n0=0;
index0=1;
for i=1:N
    if n0<numbers(i);
        n0=numbers(i);
        index0=i;
    end
end

j=1;
n1=0;
index1=1;
for j=1:N
    if (n1<numbers(j))&& (numbers(j)~=n0)
        n1=numbers(j);
        index1=j;
    end
end

fprintf('indices of the two integers such that their sum is equal to 2N-1 are %d and %d',index0,index1)