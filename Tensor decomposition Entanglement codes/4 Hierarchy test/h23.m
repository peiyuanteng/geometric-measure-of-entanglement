function  l=h23()

X=zeros(4,8);

X(1,2)=1;
X(2,1)=1;
X(3,1)=1;
X(1,5)=1;
X(1,3)=1;
T=tensor(X);
T=T./norm(T);
decomp=tucker_als(T,1)
l=full(decomp.core);    
end