function  l=qubitsytest42()

X=zeros(2,2,2,2);
X(2,2,1,1)=1;
X(2,1,1,2)=1;
X(1,1,2,2)=1;
X(1,2,2,1)=1;
X(1,2,1,2)=1;
X(2,1,2,1)=1;
T=tensor(X);
T=T./norm(T);
decomp=tucker_als(T,1,'init','nvecs')
l=full(decomp.core);    
end