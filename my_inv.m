function invA=my_inv(A)
    if det(A)==0
        disp('matrix is singular');
    else
        [L,U] = myLUdecomp(A);
        B=[1 0 0;0 1 0;0 0 1];
        lowtriang = dsp.LowerTriangularSolver;
        uptriang = dsp.UpperTriangularSolver;
        IL = lowtriang(L,B);
        IU = uptriang(U,B);
        invA=IU*IL;
    end
end