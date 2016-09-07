function  l=qubitsy55()

X=zeros(5,5,5,5,5);

X(1,1,1,1,5)=1;
X(1,5,1,1,1)=1;
X(5,1,1,1,1)=1;
X(1,1,5,1,1)=1;
X(1,1,1,5,1)=1;
T=tensor(X);
T=T./norm(T);
decomp=tucker_als(T,1)
l=full(decomp.core);    
end