function  l=quditsytest44()

X=zeros(4,4,4,4);
X(1,1,1,4)=1;
X(1,4,1,1)=1;
X(4,1,1,1)=1;
X(1,1,4,1)=1;
T=tensor(X);
T=T./norm(T);
decomp=tucker_als(T,1)
l=full(decomp.core);    
end