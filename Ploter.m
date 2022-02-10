while(1)
close all;
[Data] = xlsread("US100.cash_M1.csv");
Candle30 = [Data(end-30,3) Data(end-30,6) Data(end-30,4) Data(end-30,5)];
Candle29 = [Data(end-29,3) Data(end-29,6) Data(end-29,4) Data(end-29,5)];
Candle28 = [Data(end-28,3) Data(end-28,6) Data(end-28,4) Data(end-28,5)];
Candle27 = [Data(end-27,3) Data(end-27,6) Data(end-27,4) Data(end-27,5)];
Candle26 = [Data(end-26,3) Data(end-26,6) Data(end-26,4) Data(end-26,5)];
Candle25 = [Data(end-25,3) Data(end-25,6) Data(end-25,4) Data(end-25,5)];
Candle24 = [Data(end-24,3) Data(end-24,6) Data(end-24,4) Data(end-24,5)];
Candle23 = [Data(end-23,3) Data(end-23,6) Data(end-23,4) Data(end-23,5)];
Candle22 = [Data(end-22,3) Data(end-22,6) Data(end-22,4) Data(end-22,5)];
Candle21 = [Data(end-21,3) Data(end-21,6) Data(end-21,4) Data(end-21,5)];
Candle20 = [Data(end-20,3) Data(end-20,6) Data(end-20,4) Data(end-20,5)];
Candle19 = [Data(end-19,3) Data(end-19,6) Data(end-19,4) Data(end-19,5)];
Candle18 = [Data(end-18,3) Data(end-18,6) Data(end-18,4) Data(end-18,5)];
Candle17 = [Data(end-17,3) Data(end-17,6) Data(end-17,4) Data(end-17,5)];
Candle16 = [Data(end-16,3) Data(end-16,6) Data(end-16,4) Data(end-16,5)];
Candle15 = [Data(end-15,3) Data(end-15,6) Data(end-15,4) Data(end-15,5)];
Candle14 = [Data(end-14,3) Data(end-14,6) Data(end-14,4) Data(end-14,5)];
Candle13 = [Data(end-13,3) Data(end-13,6) Data(end-13,4) Data(end-13,5)];
Candle12 = [Data(end-12,3) Data(end-12,6) Data(end-12,4) Data(end-12,5)];
Candle11 = [Data(end-11,3) Data(end-11,6) Data(end-11,4) Data(end-11,5)];
Candle10 = [Data(end-10,3) Data(end-10,6) Data(end-10,4) Data(end-10,5)];
Candle9 = [Data(end-9,3) Data(end-9,6) Data(end-9,4) Data(end-9,5)];
Candle8 = [Data(end-8,3) Data(end-8,6) Data(end-8,4) Data(end-8,5)];
Candle7 = [Data(end-7,3) Data(end-7,6) Data(end-7,4) Data(end-7,5)];
Candle6 = [Data(end-6,3) Data(end-6,6) Data(end-6,4) Data(end-6,5)];
Candle5 = [Data(end-5,3) Data(end-5,6) Data(end-5,4) Data(end-5,5)];
Candle4 = [Data(end-4,3) Data(end-4,6) Data(end-4,4) Data(end-4,5)];
Candle3 = [Data(end-3,3) Data(end-3,6) Data(end-3,4) Data(end-3,5)];
Candle2 = [Data(end-2,3) Data(end-2,6) Data(end-2,4) Data(end-2,5)];
Candle1 = [Data(end-1,3) Data(end-1,6) Data(end-1,4) Data(end-1,5)];
Candle_Current = [Data(end-31,3)];
inputx = [Candle30 Candle29 Candle28 Candle27 Candle26 Candle25 Candle24 Candle23 Candle22 Candle21 Candle20 Candle19 Candle18 Candle17 Candle16 Candle15 Candle14 Candle13 Candle12 Candle11 Candle10 Candle9 Candle8 Candle7 Candle6 Candle5 Candle4 Candle3 Candle2 Candle1 Candle_Current];
Result = net(inputx');

plot(Result);
title('Next 6 Candles Movement')
pause(60);
end