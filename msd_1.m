t=0:0.0001:1;
Vm=15;
a1=1;
a2=0.5;
a3=0.05;
a4=0.005;
Vin=Vm*sin(300*pi*t);
Vout=a1+(a2*Vin)-(a3*(Vin.^2))-(a4*(Vin.^3));
hd2=thd(Vout);
hd=(((a2*Vm).^2+((a3*(Vm.^2)).^2)+((a4*(Vm.^3)).^2)).^(1/2))/a1;
V=(fft(Vout))/length(Vout);
plot(abs(V));
xlim([0 500]);
title('output spectrum');

