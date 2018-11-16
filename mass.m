function [ m ] = mass( t )
m01 = 3.75*1000;        %����� ����� ������ �������
mt1 = 39.475 * 1000;    %����� ������� + ���������� ������ �������
vo1 = 218.4;            %�������� ������� ���������� ������ �������
vt1 = 88.3;             %�������� ������� �������
m02 = 6*1000;
mt2 = 93.3*1000;
vo2 = 202.7;
vt2 = 84.8;
m03 = 2.71*1000;
mt3 = 22.7*1000;
vot3 = 94;
if(t <= 118)
    m = m01 + m02 + m03 + mt1 - (vo1 + vt1).*t + mt2 - (vo2 + vt2).*t + mt3;
end
if((t > 118) && (t <= 286))
   m = m02 + m03 + mt2 - (vo2 + vt2).*t + mt3;
end
if(t > 286 && t <= 526)
   m = m03 + mt3 - vot3.*(t - 286);
end
end

