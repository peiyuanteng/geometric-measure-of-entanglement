function  l=qubitsy50()

X=zeros(50,50,50,50,50);

X(1,1,1,1,50)=1;
X(1,50,1,1,1)=1;
X(50,1,1,1,1)=1;
X(1,1,50,1,1)=1;
X(1,1,1,50,1)=1;
T=tensor(X);
T=T./norm(T);
decomp=tucker_als(T,1)
l=full(decomp.core);    
end