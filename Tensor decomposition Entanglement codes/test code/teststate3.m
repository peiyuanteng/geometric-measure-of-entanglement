N=101;
E(N)=0;
x(N)=0;
lap(N)=0;
y(N)=0;
for i=1:1:N
    
    x(i)=(i-1)*0.01;
    y(i)=(1-x(i))/2;
    X=state2(x(i),y(i));
    T=tensor(X);
    T=T./norm(T);
    decomp=tucker_als(T,1,'init','nvecs');
    
    lap(i)=decomp.lambda;
    %disp(lap)
    E(i)=1-abs(lap(i))^2;
    
    
    end


plot(x,E);