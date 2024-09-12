M=10;
A=rand(M);
A=(A-A')/2;
A=A/norm(A);
save("Matrix.mat","A");