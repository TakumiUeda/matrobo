function M = getInertiaMatrix(Mass, Radius, length,rg)
    Ib=getInertiaForJavelin(Mass,Radius,length);
    
    M=[...
        Mass.*eye(3),               -Mass*getCrossFact(rg);
        Mass*getCrossFact(rg),      Ib;
    ];

end
function I = getInertiaForJavelin(Mass, Radius, length)
    % M: 槍の質量 [kg]
    % R: 槍の半径 [m]
    % L: 槍の長さ [m]

    % x軸、y軸まわりの慣性モーメント
    I_x = (1/12) * Mass * (3 * Radius^2 + length^2);
    
    % z軸まわりの慣性モーメント
    I_z = (1/2) * Mass * Radius^2;
    
    % 慣性モーメントテンソル (3x3 行列)
    I = [I_x, 0, 0;
         0, I_x, 0;
         0, 0, I_z];
end