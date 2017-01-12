function [A] = DatosRegresion(m,n,filename,E)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

    A = rand(n+1,1);
    X = randn(m,n);
    Y = [X, ones(m,1)];
    Z = Y*A+E*randn(m,1);

    file = fopen(filename,'w');
    fprintf(file,'%d\n%d\n',n,m);
    for a=1:m
       fprintf(file,'%f ',Z(a));
       fprintf(file,'%f ',X(a,:));
       fprintf(file,'\n');
    end
    fclose(file);
end
