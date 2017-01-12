function [A,E] = EstimaRegresion(filename)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

    file = fopen(filename,'r');
    n = fscanf(file,'%d',1);
    m = fscanf(file,'%d',1);
    Z = zeros(m,1);
    X = zeros(m,n);
    for a=1:m
        Data = fscanf(file,'%f',n+1); 
        Z(a)=Data(1);
        X(a,:)= Data(2:n+1);
    end
    fclose(file);
    
    Y = [X,ones(m,1)];
    A = inv(Y'*Y)*Y'*Z;
    D = Z-Y*A;
    E = sqrt(D'*D);
end
