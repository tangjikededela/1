function x = myBsolve(A,b)
[row,col]=size(A);
[r,~]=size(b);
if row~=col
    disp('This is not n x n matrix.');
else
    if col~=r
        disp('The col of matrix is not as same as the row of x')
    else
        n=row;
        x=b;
        x(n)=b(n)/A(n,n);
        for i=(n-1):-1:1
            for j=n:-1:(i+1)
               x(i)=x(i)-x(j)*A(i,j); 
            end
            x(i)=x(i)/A(i,i);
        end
    end
end

end