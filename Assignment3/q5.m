function F = reorderDatagram (f1, f2, f3, f4, f5)
    [a1, Fs1] = audioread(f1,'double');
    [a2, Fs2] = audioread(f2,'double');
    [a3, Fs3] = audioread(f3,'double');
    [a4, Fs4] = audioread(f4,'double');
    [a5, Fs5] = audioread(f5,'double');
    
    a1 = smoothdata(a1,'median');
    a2 = smoothdata(a2,'median');
    a3 = smoothdata(a3,'median');
    a4 = smoothdata(a4,'median');
    a5 = smoothdata(a5,'median');

    a1start = a1(1:5*Fs1, 1);
    a1end = a1(end-5*Fs1+1:end, 1);
    
    a2start = a2(1:5*Fs2, 1);
    a2end = a2(end-5*Fs2+1:end, 1);
    
    a3start = a3(1:5*Fs3, 1);
    a3end = a3(end-5*Fs3+1:end, 1);
    
    a4start = a4(1:5*Fs4, 1);
    a4end = a4(end-5*Fs4+1:end, 1);
    
    a5start = a5(1:5*Fs5, 1);
    a5end = a5(end-5*Fs5+1:end, 1);
    
    audio = [a1, a2, a3, a4, a5];
    arr = zeros(5,5);
    
    a12 = xcorr(a1end, a2start);
    arr(1, 2) = max(abs(a12(1)));
    a13 = xcorr(a1end, a3start);
    arr(1, 3) = max(abs(a13(1)));
    a14 = xcorr(a1end, a4start);
    arr(1, 4) = max(abs(a14(1)));
    a15 = xcorr(a1end, a5start);
    arr(1, 5) = max(abs(a15(1)));

    a21 = xcorr(a2end, a1start);
    arr(2, 1) = max(abs(a21(1)));
    a23 = xcorr(a2end, a3start);
    arr(2, 3) = max(abs(a23(1)));
    a24 = xcorr(a2end, a4start);
    arr(2, 4) = max(abs(a24(1)));
    a25 = xcorr(a2end, a5start);
    arr(2, 5) = max(abs(a25(1)));

    a31 = xcorr(a3end, a1start);
    arr(3, 1) = max(abs(a31(1));
    a32 = xcorr(a3end, a2start);
    arr(3, 2) = max(abs(a32(1));
    a34 = xcorr(a3end, a4start);
    arr(3, 4) = max(abs(a34(1)));
    a35 = xcorr(a3end, a5start);
    arr(3, 5) = max(abs(a35(1)));

    a41 = xcorr(a4end, a1start);
    arr(4, 1) = max(abs(a41(1)));
    a42 = xcorr(a4end, a2start);
    arr(4, 2) = max(abs(a42(1)));
    a43 = xcorr(a4end, a3start);
    arr(4, 3) = max(abs(a43(1)));
    a45 = xcorr(a4end, a5start);
    arr(4, 5) = max(abs(a45(1)));

    a51 = xcorr(a5end, a1start);
    arr(5, 1) = max(abs(a51(1)));
    a52 = xcorr(a5end, a2start);
    arr(5, 2) = max(abs(a52(1)));
    a53 = xcorr(a5end, a3start);
    arr(5, 3) = max(abs(a53(1)));
    a54 = xcorr(a5end, a4start);
    arr(5, 4) = max(abs(a54(1)));



    order = zeros(5, 2);

    for i = 1:5
        for j = 1:5
            if order(i, 2) < arr(i,j)
               order(i, 2) = arr(i, j);
               order(i, 1) = j;
            end
        end
    end

    res = min(order(:,2));
    sIdx = res(2);
    seq = [0 0 0 0 0]';
    i = 1;
    idx = res(2);
    idx = order(idx, 1);
    while(i) 
        seq(i) = idx;
        i = i+1;
        idx = order(idx, 1);
        if(idx == sIdx)
            break
    end

    seq(i) = sIdx
    
    F = double.empty;
    for i = 1:5
        push(F,audio(seq(i)));
    end

end