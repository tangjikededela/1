function x = mytriSolve(Lsub,Udiag,c,rhs,n)
    y=zeros(n,1); 
    x=zeros(n,1);
    y(1)=rhs(1);
    for i=2:1:n
       y(i)=rhs(i)-Lsub(i-1)*y(i-1); 
    end
    x(n)=y(n)/Udiag(n);
    for j=(n-1):-1:1
        x(j)=(y(j)-x(j+1)*c(j))/Udiag(j);
    end
end
% (a)
% Since we know the Lsub this means we have the lower matrix, so that we
% can easily find y by forwerd calculateing code for L*y=rhs. 
% And then we can find x by using Udiag & c and backwerd calculating code for U*x=y.
% (b) the flop is 2(n-1)+3(n-1)

