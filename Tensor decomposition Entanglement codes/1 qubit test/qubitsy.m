function  l=qubitsy(n,k)

l=sqrt(factorial(n)/factorial(k)/factorial(n-k))*(k/n)^(k/2)*((n-k)/n)^((n-k)/2);

end