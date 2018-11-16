function [ z ] = graphris(t, m, v, h, force, a, alpha, vx, s )
fprintf("����������");

figure('Name', '����������� ����� ������ �� �������', 'NumberTitle', 'off');
hold on;
grid on;
plot(t, m);
plot(118, mass(118), '*', 'Color', 'red');
plot(286, mass(286), '*', 'Color', 'blue');
xlabel('�����, �');
ylabel('�����, ��');
legend('����� �� �������', '������ ��������� ������ �������', '������ ��������� ������ �������');
title('����������� ����� ������ �� �������');

figure('Name', '����������� ������������ �������� ������ �� �������', 'NumberTitle', 'off');
hold on;
grid on;
plot(t, v);
xlabel('�����, �');
ylabel('��������, �/�');
legend('������������ ��������');
title('����������� ������������ �������� ������ �� �������');

figure('Name', '����������� ������ ������ �� �������', 'NumberTitle', 'off');
plot(t, h);
xlabel('�����, �');
ylabel('������, �');
legend('������');
title('����������� ������ ������ �� �������');

figure('Name', '����������� ���� ���� ������ �� �������', 'NumberTitle', 'off');
plot(t, force);
xlabel('�����, �');
ylabel('����, �');
legend('����');
title('����������� ���� ���� ������ �� �������');

figure('Name', '����������� ��������� ������ �� �������', 'NumberTitle', 'off');
plot(t, a);
xlabel('�����, �');
ylabel('���������, �/�^2');
legend('���������');
title('����������� ��������� ������ �� �������');

figure('Name', '����������� ���� ������� ������ �� �������', 'NumberTitle', 'off');
hold on;
grid on;
plot(t, alpha, 'Color', 'red');
legend('���� ������');
xlabel('�����, �');
ylabel('����, ���');
title('����������� ���� ������� ������ �� �������');

figure('Name', '����������� �������������� �������� ������ �� �������', 'NumberTitle', 'off');
plot(t, vx);
legend('�������������� ��������');
xlabel('�����, �');
ylabel('��������, �/�');
title('����������� �������������� �������� ������ �� �������');

figure('Name', '����������', 'NumberTitle', 'off');
plot(s, h, '--', 'Color', 'red');
legend('���������� ������');
xlabel('����������, �');
ylabel('������, �');
title('���������� ������');
z = 1;

end

