function output = myDCT_quantization(imDCT,qm,c)
temp=qm*c;
output = round(imDCT./temp);
end