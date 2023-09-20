clc; clear


my_vec = [10 4 17 19 25 pi 2];
My_matrix = [1 2 3; 4 5 6; 7 8 9];

[m ,i] = max(my_vec)
sort(my_vec,'descend')
length(my_vec)

sum(My_matrix,'all')
size(My_matrix)
numel(My_matrix)
prod(My_matrix,"all")