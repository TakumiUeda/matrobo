clc
clear

syms phi theta psi

phi=1;
theta=1;
psi=1;

eta=[phi,theta,psi];

[J,R,T] = euler2mat(eta,'XYZ')
