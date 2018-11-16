function [ z ] = graphris(t, m, v, h, force, a, alpha, vx, s )
fprintf("Построение");

figure('Name', 'Зависимость массы ракеты от времени', 'NumberTitle', 'off');
hold on;
grid on;
plot(t, m);
plot(118, mass(118), '*', 'Color', 'red');
plot(286, mass(286), '*', 'Color', 'blue');
xlabel('Время, с');
ylabel('Масса, кг');
legend('Масса от времени', 'Момент отделения первой ступени', 'Момент отделения второй ступени');
title('Зависимость массы ракеты от времени');

figure('Name', 'Зависимость вертикальной скорости ракеты от времени', 'NumberTitle', 'off');
hold on;
grid on;
plot(t, v);
xlabel('Время, с');
ylabel('Скорость, м/с');
legend('Вертикальная скорость');
title('Зависимость вертикальной скорости ракеты от времени');

figure('Name', 'Зависимость высоты ракеты от времени', 'NumberTitle', 'off');
plot(t, h);
xlabel('Время, с');
ylabel('Высота, м');
legend('Высота');
title('Зависимость высоты ракеты от времени');

figure('Name', 'Зависимость силы тяги ракеты от времени', 'NumberTitle', 'off');
plot(t, force);
xlabel('Время, с');
ylabel('Сила, Н');
legend('Тяга');
title('Зависимость силы тяги ракеты от времени');

figure('Name', 'Зависимость ускорения ракеты от времени', 'NumberTitle', 'off');
plot(t, a);
xlabel('Время, с');
ylabel('Ускорение, м/с^2');
legend('Ускорение');
title('Зависимость ускорения ракеты от времени');

figure('Name', 'Зависимость угла тангажа ракеты от времени', 'NumberTitle', 'off');
hold on;
grid on;
plot(t, alpha, 'Color', 'red');
legend('Угол ракеты');
xlabel('Время, с');
ylabel('Угол, рад');
title('Зависимость угла тангажа ракеты от времени');

figure('Name', 'Зависимость горизонтальной скорости ракеты от времени', 'NumberTitle', 'off');
plot(t, vx);
legend('Горизонтальная скорость');
xlabel('Время, с');
ylabel('Скорость, м/с');
title('Зависимость горизонтальной скорости ракеты от времени');

figure('Name', 'Траектория', 'NumberTitle', 'off');
plot(s, h, '--', 'Color', 'red');
legend('Траектория ракеты');
xlabel('Расстояние, м');
ylabel('Высота, м');
title('Траектория ракеты');
z = 1;

end

