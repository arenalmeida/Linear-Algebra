%LU Factorization in Matlab
%%%%%%Code starts%%%%%%%
function[L,U]=Aren_Almeida_q4_1(A)
%Storing size of matrix A in variables I and J for rows and columns respectively
[I,J]= size(A); 
%Q set to zero for default values
Q=0; 
% for loop for Column of Matrix from 1 to total size of columns
for C= 1:J 
    % for loop for Row of Matrix from Q+1 to I-1 size of rows
    for R= Q+1: I-1 
            % loop for issuing warning for Row Exchange
            if ( A(C,C) == 0)
                %Displaying message to show row exchanges is required
                fprintf('Row Exchange is Neccesary')
                return
            end
            G= A(R+1,C)/ A(C,C);
            A(R+1,:) = A(R+1,:) - G*A(C,:);
            F(R+1,C) = G;
    end
    %Adding Q+1 to Q value
    Q=Q+1; 
end
%Adding values of A to U where U is Upper Triangular Matrix
U=A  
%Defaultly adding zero values in L
L=F;L(:,I)= zeros(I,1);   
for R= 1:I
    %Adding value 1 at diagonal values in L where L is Lower Triangular Matrix 
    L(R,R) = 1;
end
%Displaying value of L matrix
L
end
%%%%%%%Code ends%%%%%%%%