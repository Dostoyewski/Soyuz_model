clear;
clc;
step = 0.01;                %dt
N = 526 / step + 1;         %количество итераций
t = 0:step:526;             %вектор времени

% --Начальные условия--
hprev = 0;
pangle = pi/2;
vprev = 0;
H = 200000;
sprev = 0;
vref = H/526;
vxprev = 0;

% --Моделирование--
for i = 0:step:526
    %--Количество работающих двигателей РД-107
    if(i <= 118)
        k = 5;
    elseif(i <= 286)
        k = 1;
    else
        k = 1;
    end;
    
    %--Расчет основных характеристик итерации--
    n = (round(i/step + 1));        %номер элементов массива
    m(n) = mass(i);                 %масса
    force(n) = tforce(hprev);       %сила тяги
    
    %Расчет ускорений
    ay(n) = (k*force(n) * sin(pangle) - m(n)*9.81)/m(n);
    ax(n) = (k*force(n) * cos(pangle))/m(n);
    
    %Расчет скоростей
    v(n) = vprev + ay(n) * step;
    vx(n) = vxprev + ax(n) * step;
    
    %Расчет расстояний
    h(n) = hprev + v(n) * step;
    s(n) = sprev + vx(n) * step;
    
    %Обновление значений
    vprev = v(n);
    vxprev = vx(n);
    sprev = s(n);
    hprev = h(n);
    
    %--Регулятор угла--
    if(v(n) > vref && pangle > 0)
        pangle = pangle - 0.01 * pi;
    end
    if(v(n) < vref && pangle < pi/2)
       pangle = pangle + 0.01 * pi; 
    end
    angle(n) = pangle;
end

graphris(t, m, v, h, force, ay, angle, vx, s);