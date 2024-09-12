M=10;
A=rand(M);
for i = 1 : M
    A(i,i)=sum(abs(A(i)));
end
A=A/norm(A);
save("Matrix.mat","A");