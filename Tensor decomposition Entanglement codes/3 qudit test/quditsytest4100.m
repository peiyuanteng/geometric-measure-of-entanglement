function  l=quditsytest4100()

X=zeros(100,100,100,100);
X(1,1,1,100)=1;
X(1,100,1,1)=1;
X(100,1,1,1)=1;
X(1,1,100,1)=1;
T=tensor(X);
T=T./norm(T);
decomp=tucker_als(T,1)
l=full(decomp.core);    
end