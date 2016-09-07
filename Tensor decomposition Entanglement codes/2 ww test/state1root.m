function  E=state1root(a)
s=a;
t=[sqrt(1-s) 2*sqrt(s) -2*sqrt(1-s) -sqrt(s)];
r = roots(t);
theta=atan(r(2));
if s==1 
    theta=atan(r(1)); 
end
%disp(theta);
lambda=0.5*sqrt(3)*(sqrt(a)*cos(theta)+sqrt(1-a)*sin(theta))*sin(2*theta);
E=1-lambda^2;
end