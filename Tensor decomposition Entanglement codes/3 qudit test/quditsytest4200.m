function  l=quditsytest4200()

X=zeros(200,200,200,200);
X(1,1,1,200)=1;
X(1,200,1,1)=1;
X(200,1,1,1)=1;
X(1,1,200,1)=1;
T=tensor(X);
T=T./norm(T);
decomp=tucker_als(T,1)
l=full(decomp.core);    
end