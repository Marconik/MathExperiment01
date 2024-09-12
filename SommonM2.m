M=10;
A=rand(M);
A=A/norm(A);
save("Matrix.mat","A");