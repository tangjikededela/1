function x = myLUsolve(A,b)
myLUdecomp(A); 
y=myFsolve(L,b);
x=myBsolve(U,y);
end