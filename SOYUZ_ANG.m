clear;
clc;
step = 0.01;                %dt
N = 526 / step + 1;         %���������� ��������
t = 0:step:526;             %������ �������

% --��������� �������--
hprev = 0;
pangle = pi/2;
vprev = 0;
H = 200000;
sprev = 0;
vref = H/526;
vxprev = 0;
cycle = 0;

% --�������������--
for i = 0:step:526
    %--���������� ���������� ���������� ��-107
    if(i <= 118)
        k = 5;
    elseif(i <= 286)
        k = 1;
    else
        k = 1;
    end;
    
    %--������ �������� ������������� ��������--
    n = (round(i/step + 1));        %����� ��������� �������
    m(n) = mass(i);                 %�����
    force(n) = tforce(hprev);       %���� ����
    
    %--��������� ���������� ������� �� ������--
    g = gh(hprev);
    
    %������ ���������
    ay(n) = (k*force(n) * sin(pangle) - m(n)*g)/m(n);
    ax(n) = (k*force(n) * cos(pangle))/m(n);
    
    %������ ���������
    v(n) = vprev + ay(n) * step;
    vx(n) = vxprev + ax(n) * step;
    
    %������ ����������
    h(n) = hprev + v(n) * step;
    s(n) = sprev + vx(n) * step;
    
    %--��������� ����--
    theta_cmd(n) = ((vref - v(n)) * 0.158 + ay(n) * 0.01) * 0.27;
    if(theta_cmd(n) < 0)
        theta_cmd(n) = 0;
    elseif(theta_cmd(n) > pi/2)
        theta_cmd(n) = pi/2;
    end
    pangle = theta_cmd(n);
    
    %���������� ��������
    vprev = v(n);
    vxprev = vx(n);
    sprev = s(n);
    hprev = h(n);
    
    
end
graphris(t, m, v, h, force, ay, theta_cmd, vx, s);