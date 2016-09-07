function  l=qubitsy50()

X=zeros(2,2,2,2,2);
X(1,1,1,1,1)=1;

T=tensor(X);
T=T./norm(T);
decomp=tucker_als(T,1,'init','nvecs')
l=full(decomp.core);    
end