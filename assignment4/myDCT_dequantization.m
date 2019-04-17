function output = myDCT_dequantization(imqDCT, qm, c)
    temp=qm*c;
    output = imqDCT.*temp;
end