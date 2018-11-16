function [ z ] = graphris(t, m, v, h, force, a, alpha, vx, s )
falpha = smooth(alpha, 350);
size(falpha)
fprintf("Построение");

figure('Name', 'Зависимость массы ракеты от времени', 'NumberTitle', 'off');
hold on;
grid on;
plot(t, m);
plot(118, mass(118), '*', 'Color', 'red');
plot(286, mass(286), '*', 'Color', 'blue');
legend('Масса от времени', 'Момент отделения первой ступени', 'Момент отделения второй ступени');

figure('Name', 'Зависимость вертикальной скорости ракеты от времени', 'NumberTitle', 'off');
hold on;
grid on;
plot(t, v);

figure('Name', 'Зависимость высоты ракеты от времени', 'NumberTitle', 'off');
plot(t, h);

figure('Name', 'Зависимость силы тяги ракеты от времени', 'NumberTitle', 'off');
plot(t, force);

figure('Name', 'Зависимость ускорения ракеты от времени', 'NumberTitle', 'off');
plot(t, a);

figure('Name', 'Зависимость угла тангажа ракеты от времени', 'NumberTitle', 'off');
hold on;
grid on;
plot(t, alpha, 'Color', 'blue');
plot(t, falpha, 'Color', 'red');
legend('Программный угол ракеты', 'Фактический угол ракеты');

figure('Name', 'Зависимость горизонтальной скорости ракеты от времени', 'NumberTitle', 'off');
plot(t, vx);

figure('Name', 'Траектория', 'NumberTitle', 'off');
plot(s, h, '--', 'Color', 'red');
legend('Траектория ракеты');
z = 1;

end

