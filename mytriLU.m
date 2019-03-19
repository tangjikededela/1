function [Lsub,Udiag] = mytriLU(a,b,c,n)
% Diagonal part of input matrix is b(1), ..., b(n)
% above the main diagonal of input matri is c(1),...,c(n-1)
% below the main diagonal of input matri is a(2),...,a(n)
    if n~=length(b)
       disp('Threr is a problem of n.') 
    end
    Lsub=zeros(n-1,1); Udiag=zeros(n,1); 
    Udiag(1)=b(1);
    for i=2:n
        Lsub(i-1)=a(i)/Udiag(i-1);
        Udiag(i)=b(i)-Lsub(i)*c(i-1);
    end;
    %(a)We only need to know only Lsub and Udiag because below:
    disp('Lower matrix has a main diagonal of 1.');
    disp('Vector below the main diagonal of Lower is: ');
    display(Lsub);
    disp('Diagonal part of Upper is: ');
    display(Udiag);
    disp('Vector above the main diagonal of Upper is as same as input matrix.');
    %(b)the flop of this function is 2(n-1)
end