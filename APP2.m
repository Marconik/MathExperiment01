M=10;
A=load("Matrix.mat","A").A;
    
    [D,V]=eig(A);
    [U,S,T]=svd(A);
    
    Eigens=zeros([5,1]);SVs=zeros([5,1]);
    for i=1 : M
        Eigens(i)=abs(V(i,i));
        SVs(i)=S(i,i);
    end
    Eigens=sort(Eigens);
    SVs=sort(SVs);
    
    plot([1:M],Eigens,'-o');
    hold on
    title("EigenValue VS Strange Value");
    grid minor
    plot([1:M],SVs,'-o'); 
    legend("Eigen","Strange");
    hold off
    
    d2=norm(Eigens-SVs);
    d1=norm(A-A');
    fprintf("%.6f %.6f\n",d1,d2);
