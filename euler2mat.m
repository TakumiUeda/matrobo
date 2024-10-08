function [J,R,T]=euler2mat(eta,Mode)
Rx=rotateX(eta(1));
Ry=rotateY(eta(2));
Rz=rotateZ(eta(3));

switch Mode
    case 'XYZ'
        R=Rz*Ry*Rx;
    case 'XZY'
        R=Ry*Rz*Rx;
    case 'YXZ'
        R=Rz*Rx*Ry;
    case 'YZX'
        R=Rx*Rz*Ry;
    case 'ZXY'
        R=Ry*Rx*Rz;
    case 'ZYX'
        R=Rx*Ry*Rz;
    case 'XYX'
        R=Rx*Ry*Rx;
    case 'XZX'
        R=Rx*Rz*Rx;
    case 'YXY'
        R=Ry*Rx*Ry;
    case 'YZY'
        R=Ry*Rz*Ry;
    case 'ZXZ'
        R=Rz*Rx*Rz;
    case 'ZYZ'
        R=Rz*Ry*Rz;
    otherwise
        error('Invalid rotation mode');
end
T=rotateT(eta(1),eta(2));
J=[...
    R,zeros(3,3);
    zeros(3,3),T;
    ];
end

function Rx=rotateX(phi)
Rx=[...
    1 0         0;
    0 cos(phi)  -sin(phi);
    0 sin(phi) cos(phi);
    ];
end

function Ry=rotateY(theta)
Ry=[...
    cos(theta)  0   sin(theta);
    0           1   0;
    -sin(theta) 0   cos(theta);
    ];
end

function Rz=rotateZ(psi)
Rz=[...
    cos(psi)    -sin(psi)   0;
    sin(psi)    cos(psi)    0;
    0           0           1;
    ];
end

function T_theta=rotateT(phi,theta)
T_theta=[...
    1   sin(phi)*tan(theta)    cos(phi)*tan(theta);
    0   cos(phi)               -sin(phi);
    0   sin(phi)/cos(theta)    cos(phi)/cos(theta);
    ];    
end