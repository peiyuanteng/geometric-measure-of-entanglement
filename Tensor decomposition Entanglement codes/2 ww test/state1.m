function  T=state1(s,psi)

W1=zeros(2,2,2);
W1(1,2,1)=1;
W1(2,1,1)=1;
W1(1,1,2)=1;

W2=zeros(2,2,2);
W2(2,2,1)=1;
W2(2,1,2)=1;
W2(1,2,2)=1;

T=sqrt(s).*W1+sqrt(1-s)*psi*W2;

end