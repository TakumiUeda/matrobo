clc
clear

syms phi theta psi

eta=[phi,theta,psi];

R01=euler2mat(eta,'XYZ')';
% R02=euler2mat(phi,theta,psi,'XZY');
% R03=euler2mat(phi,theta,psi,'YXZ');
% R04=euler2mat(phi,theta,psi,'YZX');
% R05=euler2mat(phi,theta,psi,'ZXY');
% R06=euler2mat(phi,theta,psi,'ZYX');
% R07=euler2mat(phi,theta,psi,'XYX');
% R08=euler2mat(phi,theta,psi,'XZX');
% R09=euler2mat(phi,theta,psi,'YXY');
% R10=euler2mat(phi,theta,psi,'YZY');
% R11=euler2mat(phi,theta,psi,'ZXZ');
% R12=euler2mat(phi,theta,psi,'ZYZ');

R01
% R02
% R03
% R04
% R05
% R06
% R07
% R08
% R09
% R10
% R11
% R12
