function x = Gauss_Elimination(A,b)
[m,n] = size(A);

Ab = [A b];
nAb = n+1;

for j = 1:n-1
    for i = j+1:n
        Ab(i,j:nAb) = Ab(i,j:nAb) - (Ab(i,j)/Ab(j,j))*Ab(j,j:nAb);
    end
end

x = zeros(m,1);
x(m) = Ab(m,nAb)/Ab(m,m);

for i = n-1:-1:1
    x(i) = (Ab(i,nAb) - Ab(i,i+1:n)*x(i+1:n))/Ab(i,i);
end

