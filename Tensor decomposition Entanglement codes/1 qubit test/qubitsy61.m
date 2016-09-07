function  l=qubitsy61()

X=zeros(2,2,2,2,2,2);
X(2,1,1,1,1,1)=1;
X(1,1,1,1,1,2)=1;
X(1,1,2,1,1,1)=1;
X(1,2,1,1,1,1)=1;
X(1,1,1,2,1,1)=1;
X(1,1,1,1,2,1)=1;
T=tensor(X);
T=T./norm(T);
decomp=tucker_als(T,1)
l=full(decomp.core);    
end