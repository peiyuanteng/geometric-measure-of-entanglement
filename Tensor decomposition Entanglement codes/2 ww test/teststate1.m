N=49;
E(N,N)=0;
s(N)=0;
lap(N)=0;
psi(N)=0;
for i=1:1:N
    for j=1:1:N
    s(i)=(i)*0.02;
    
    psi(j)=2*pi/N*j;
    X=state1(s(i),exp(1j*psi(j)));
    T=tensor(X);
    T=T./norm(T);
    decomp=tucker_als(T,1);
    
    lap(i)=decomp.lambda;
    %disp(lap)
    E(i,j)=1-abs(lap(i))^2;
    
    
    end
end

mesh(psi,s,E);
ylabel('s');
xlabel('phi');
zlabel('Entanglement');
%legend('Numerical','Theoretical');
title('Entanglement as a function of parameters s  and phi');