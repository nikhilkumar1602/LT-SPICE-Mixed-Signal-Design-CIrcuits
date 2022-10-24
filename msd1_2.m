t=0:0.001:1;
vm=15;
a0=1;       %offset
a1=10;      %fundamental gain
a2=0.5;
a3=0.05;
vin2=vm*(sin(200*pi*t)+sin(250*pi*t))
vout2=a0+(a1*vin2)-(a2*(vin2.^2))-(a3*(vin2.^3));
v2=(fft(vout2))/length(vout2)
plot(abs(v2))
xlim([0 500])
title('Two tone testing output spectrum')
