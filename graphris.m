function [ z ] = graphris(t, m, v, h, force, a, alpha, vx, s )
fprintf("����������");

gcf = figure('Name', '����������� ����� ������ �� �������', 'NumberTitle', 'off');
hold on;
grid on;
plot(t, m);
plot(118, mass(118), '*', 'Color', 'red');
plot(286, mass(286), '*', 'Color', 'blue');
xlabel('�����, �');
ylabel('�����, ��');
legend('����� �� �������', '������ ��������� ������ �������', '������ ��������� ������ �������');
title('����������� ����� ������ �� �������');
saveas(gcf,'Mass.png')

gcf = figure('Name', '����������� ������������ �������� ������ �� �������', 'NumberTitle', 'off');
hold on;
grid on;
plot(t, v);
xlabel('�����, �');
ylabel('��������, �/�');
legend('������������ ��������');
title('����������� ������������ �������� ������ �� �������');
saveas(gcf,'Vert.png')

gcf = figure('Name', '����������� ������ ������ �� �������', 'NumberTitle', 'off');
plot(t, h);
xlabel('�����, �');
ylabel('������, �');
legend('������');
title('����������� ������ ������ �� �������');
saveas(gcf,'Att.png')

gcf = figure('Name', '����������� ���� ���� ������ �� �������', 'NumberTitle', 'off');
plot(t, force);
xlabel('�����, �');
ylabel('����, �');
legend('����');
title('����������� ���� ���� ������ �� �������');
saveas(gcf,'Force.png')

gcf = figure('Name', '����������� ��������� ������ �� �������', 'NumberTitle', 'off');
plot(t, a);
xlabel('�����, �');
ylabel('���������, �/�^2');
legend('���������');
title('����������� ��������� ������ �� �������');
saveas(gcf,'Uskor.png')

gcf = figure('Name', '����������� ���� ������� ������ �� �������', 'NumberTitle', 'off');
hold on;
grid on;
plot(t, alpha, 'Color', 'red');
legend('���� ������');
xlabel('�����, �');
ylabel('����, ���');
title('����������� ���� ������� ������ �� �������');
saveas(gcf,'Tangasch.png')

gcf = figure('Name', '����������� �������������� �������� ������ �� �������', 'NumberTitle', 'off');
plot(t, vx);
legend('�������������� ��������');
xlabel('�����, �');
ylabel('��������, �/�');
title('����������� �������������� �������� ������ �� �������');
saveas(gcf,'Vgor.png')

gcf = figure('Name', '����������', 'NumberTitle', 'off');
plot(s, h, '--', 'Color', 'red');
legend('���������� ������');
xlabel('����������, �');
ylabel('������, �');
title('���������� ������');
saveas(gcf,'Traektoria.png')
z = 1;

end

