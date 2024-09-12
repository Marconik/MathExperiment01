M=10;N=20;
A=load("Matrix.mat","A").A';

x=(0:N)/N;
d1=zeros(1,N+1);
for k = 1 : N+1
    B=x(k)*(A+A')/2+(1-x(k))*(A-A')/2;

    [D,V]=eig(B);
    [U,S,T]=svd(B);
    
    Eigens=zeros([5,1]);SVs=zeros([5,1]);
    for i=1 : M
        Eigens(i)=abs(V(i,i));
        SVs(i)=S(i,i);
    end
    Eigens=sort(Eigens);
    SVs=sort(SVs);
    
    d1(k)=norm(Eigens-SVs);
end

plot(x,d1,'-.');
xlabel("epsilon");
ylabel("s");
grid minor