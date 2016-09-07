function  T=state2(x,y)

W1=zeros(2,2,2);
W1(1,2,1)=1;
W1(2,1,1)=1;
W1(1,1,2)=1;

W2=zeros(2,2,2);
W2(2,2,1)=1;
W2(2,1,2)=1;
W2(1,2,2)=1;

G=zeros(2,2,2);
G(2,2,2)=1;
G(1,1,1)=1;

T=sqrt(x).*G+sqrt(y)*W1+sqrt(1-x-y)*W2;

end