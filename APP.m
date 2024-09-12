M=10;
d01=zeros(1,80);d02=zeros(1,80);
for k = 1 : 80
    A=rand(M);
    A=A/norm(A);
    %A=load("Matrix.mat","A").A;
    
    [D,V]=eig(A);
    [U,S,T]=svd(A);
    
    Eigens=zeros([5,1]);SVs=zeros([5,1]);
    for i=1 : M
        Eigens(i)=abs(V(i,i));
        SVs(i)=S(i,i);
    end
    Eigens=sort(Eigens);
    SVs=sort(SVs);
    
    d02(k)=norm(Eigens-SVs);
    d01(k)=norm(A+A')/norm(A-A');
end

plot(d01,d02,'o');
grid minor
xlabel('t');ylabel('s');