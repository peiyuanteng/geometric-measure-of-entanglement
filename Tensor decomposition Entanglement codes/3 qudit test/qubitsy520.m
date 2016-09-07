function  l=qubitsy520()

X=zeros(20,20,20,20,20);

X(1,1,1,1,20)=1;
X(1,20,1,1,1)=1;
X(20,1,1,1,1)=1;
X(1,1,20,1,1)=1;
X(1,1,1,20,1)=1;
T=tensor(X);
T=T./norm(T);
decomp=tucker_als(T,1)
l=full(decomp.core);    
end