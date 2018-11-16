t = 0:1:526;
t1 = 118;                   %������� ��������� ��������
t2 = 286;
m = zeros(1, 527);
vprev = 0;
vxprev = 0;
vx = zeros(1, 527);
s = zeros(1, 527);
sprev = 0;
aprev = 0;
hprev = 0;
alpha = zeros(1, 527);
force = zeros(1, 527);
palpha = pi/2;
alpha(1) = palpha;
v = zeros(1, 527);
a = zeros(1, 527);
ax = zeros(1, 527);
h = zeros(1, 527);
for i = 1:526
    m(i) = mass(t(i));
    force(i) = tforce(hprev);
    a(i) = (4*force(i) * cos(palpha) - m(i)*9.81)/m(i);
    ax(i) = (4*force(i) * sin(palpha))/m(i);
    if(vprev <= 380)                                    %��������� ��� ���������� �������
        v(i) = vprev + a(i);
    else
        v(i) = vprev;
    end
    vx(i) = vxprev + ax(i);
    s(i) = sprev + vx(i);
    h(i) = hprev + v(i);
    aref = rangle(v(i), m(i), i, tforce(h(i)));
    aprev = a(i);
    vprev = v(i);
    hprev = h(i);
    sprev = s(i);
    alpha(i) = rangle(v(i), m(i), i, tforce(h(i)));
    palpha = alpha(i);
    
end
figure('Name', '����������� ����� ������ �� �������', 'NumberTitle', 'off');
hold on;
grid on;
plot(t, m);
plot(t1, mass(t1), '*', 'Color', 'red');
plot(t2, mass(t2), '*', 'Color', 'blue');
legend('����� �� �������', '������ ��������� ������ �������', '������ ��������� ������ �������');
figure('Name', '����������� ������������ �������� ������ �� �������', 'NumberTitle', 'off');
hold on;
grid on;
plot(t, v);
figure('Name', '����������� ������ ������ �� �������', 'NumberTitle', 'off');
plot(t, h);
figure('Name', '����������� ���� ���� ������ �� �������', 'NumberTitle', 'off');
plot(t, force);
figure('Name', '����������� ��������� ������ �� �������', 'NumberTitle', 'off');
plot(t, a);
figure('Name', '����������� ���� ������� ������ �� �������', 'NumberTitle', 'off');
plot(t, alpha);
figure('Name', '����������� �������������� �������� ������ �� �������', 'NumberTitle', 'off');
plot(t, vx);
figure('Name', '����������', 'NumberTitle', 'off');
plot(s(1:526), h(1:526), '--', 'Color', 'red');
legend('���������� ������');