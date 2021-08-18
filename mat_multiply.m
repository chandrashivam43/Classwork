function C = mat_multiply(A,B)

% Clear screen, clear previous variables and closes all figures
clc; close all; clear
% Avoid empty lines
format compact

X=input('Enter the number of rows of Matrix A: ');
Y=input('Enter the number of columns of Matrix B: ');
for r1=1:X
    for c1=1:Y
        fprintf('Enter the value in row:- %d column:- %d\n',r1,c1);
        A(r1,c1)=input('');
    end
end
display(A)
fprintf('the size of matrix A: \n  row:- %d column:- %d\n',size(A))

X=input('Enter the number of rows of Matrix B: ');
Y=input('Enter the number of columns of Matrix B : ');
for r2=1:X
    for c2=1:Y
        fprintf('Enter the value in row:- %d column:- %d\n',r2,c2);
        B(r2,c2)=input('');
    end
end
display(B)
fprintf('the size of matrix B: \n row:- %d column:- %d\n',size(B))

% The size of each matrix is considered for these calculations


[r1 c1] = size(A);

[r2 c2] = size(B);

% prevent unappropriate matrix size
if (c1~=r2)
    C=[];
    disp ('Error: Matrix multiplication not followed (C1 not equal to row2)\n')
    return;
elseif isempty(A) || isempty(B)
    C=[];
    return;
end

% Matrix multiplication
% i will run upto no. of row of matrix A
for i = 1 : r1
    % j will run upto no. of row of matrix B
    for j = 1 : c2
        % Reset every new element of the final result
        d = 0;
        % run upto column C1 or Row 2 as both are equal
        for k = 1 : c1
           % Prepare the addition in the iteration
            d = d + A(i,k)*B(k,j);
        end
 % Assign the total of the appropriate element to the final matrix
              C(i,j) = d;
    end
end

% Matrix multiplication using inbuilt Matlab function
fprintf('Matrix multiplication using inbuilt Matlab function: ');

A*B
fprintf('Matrix multiplication through function "C":\n ')
C

%fprintf('element wise matrix multiplication:\n')

if (size(A) == size(B))
    fprintf('elementwise Matrix multiplication of A and B matrices:\n')
    A.*B
    return;
else ([r1 c1] ~= [r2 c2])
    fprintf('Size of matrices are not same so elementwise Matrix multiplication not follows\n')
    return;
end


end
