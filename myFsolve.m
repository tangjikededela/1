function x = myFsolve(A,b)
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
            x(1)=b(1)/A(1,1);
            for i=2:1:n
                for j=1:1:(i-1)
                   x(i)=x(i)-x(j)*A(i,j); 
                end
                x(i)=x(i)/A(i,i);
            end
        end
    end
end