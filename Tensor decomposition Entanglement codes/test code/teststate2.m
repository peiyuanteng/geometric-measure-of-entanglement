N=51;
E(N,N)=0;
x(N)=0;
lap(N)=0;
y(N)=0;
for i=1:1:N
    for j=1:1:N
    x(i)=(i-1)*0.02;
    y(j)=(j-1)*0.02;
    X=state2(x(i),y(j));
    T=tensor(X);
    T=T./norm(T);
    decomp=tucker_als(T,1,'init','nvecs');
    
    lap(i)=decomp.lambda;
    %disp(lap)
    E(i,j)=1-abs(lap(i))^2;
    
    
    end
end

mesh(x,y,E);
