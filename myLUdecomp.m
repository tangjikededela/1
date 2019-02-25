function [L,U] = myLUdecomp(A)
[row,col]=size(A);
B=diag(A);
if(min(abs(B))==0)
   disp('Error, there is 0 pivot element in matrix.'); 
else
    if row~=col
        disp('This is not n x n matrix.');
    else
        n=row;
        L=eye(n);
        U=A;
        for i=1:1:(n-1)
            for j=(i+1):1:n
                L(j,i)=U(j,i)/U(i,i);
                U(j,i)=0;
                U(j,i+1:n)=U(j,i+1:n)-L(j,i)*U(i,i+1:n);
            end
        end
    end
end
GrowthFactorP=max(max(U))/max(max(A));
end