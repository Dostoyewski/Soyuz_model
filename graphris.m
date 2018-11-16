function [ z ] = graphris(t, m, v, h, force, a, alpha, vx, s )
falpha = smooth(alpha, 350);
size(falpha)
fprintf("����������");

figure('Name', '����������� ����� ������ �� �������', 'NumberTitle', 'off');
hold on;
grid on;
plot(t, m);
plot(118, mass(118), '*', 'Color', 'red');
plot(286, mass(286), '*', 'Color', 'blue');
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
hold on;
grid on;
plot(t, alpha, 'Color', 'blue');
plot(t, falpha, 'Color', 'red');
legend('����������� ���� ������', '����������� ���� ������');

figure('Name', '����������� �������������� �������� ������ �� �������', 'NumberTitle', 'off');
plot(t, vx);

figure('Name', '����������', 'NumberTitle', 'off');
plot(s, h, '--', 'Color', 'red');
legend('���������� ������');
z = 1;

end

