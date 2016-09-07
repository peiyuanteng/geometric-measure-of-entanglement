function  l=qubitsy510()

X=zeros(10,10,10,10,10);

X(1,1,1,1,10)=1;
X(1,10,1,1,1)=1;
X(10,1,1,1,1)=1;
X(1,1,10,1,1)=1;
X(1,1,1,10,1)=1;
T=tensor(X);
T=T./norm(T);
decomp=tucker_als(T,1)
l=full(decomp.core);    
end