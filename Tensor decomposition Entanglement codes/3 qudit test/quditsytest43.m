function  l=quditsytest43()

X=zeros(3,3,3,3);
X(1,1,1,3)=1;
X(1,3,1,1)=1;
X(3,1,1,1)=1;
X(1,1,3,1)=1;
T=tensor(X);
T=T./norm(T);
decomp=tucker_als(T,1)
l=full(decomp.core);    
end