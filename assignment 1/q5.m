[y,fs] = audioread("sa_re_ga_ma.mp3");
y1 = smoothdata(y,"movmean");
y2 = smoothdata(y,"movmedian");
y3 = smoothdata(y,"gaussian");
y4 = smoothdata(y,"lowess");
y5 = smoothdata(y,"loess");
y6 = smoothdata(y,"rlowess");
y7 = smoothdata(y,"rloess");
y8 = smoothdata(y,"sgolay");

figure("NAME","DFD");
subplot(4,3,2);
plot(y(5000:5150));
title("ORIGINAL");
subplot(4,3,4);
plot(y1(5000:5150));
title("MOVMEAN");
subplot(4,3,5);
plot(y2(5000:5150));
title("MOVMEDIAN");
subplot(4,3,6);
plot(y3(5000:5150));
title("GAUSSIAN");
subplot(4,3,7);
plot(y4(5000:5150));
title("LOWESS");
subplot(4,3,8);
plot(y5(5000:5150));
title("LOESS");
subplot(4,3,9);
plot(y6(5000:5150));
title("RLOWESS");
subplot(4,3,10);
plot(y7(5000:5150));
title("RLOESS");
subplot(4,3,11);
plot(y8(5000:5150));
title("SGOLAY");