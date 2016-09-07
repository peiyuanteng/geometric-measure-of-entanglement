function  l=qubitsy66()

X=zeros(6,6,6,6,6,6);
X(6,1,1,1,1,1)=1;
X(1,1,1,1,1,6)=1;
X(1,1,6,1,1,1)=1;
X(1,6,1,1,1,1)=1;
X(1,1,1,6,1,1)=1;
X(1,1,1,1,6,1)=1;
T=tensor(X);
T=T./norm(T);
decomp=tucker_als(T,1)
l=full(decomp.core);    
end