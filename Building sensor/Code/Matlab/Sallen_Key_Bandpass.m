function[k,H,Q,Fo,C2,R1,R2,R3,R5] = Sallen_Key_Bandpass ( C1, R4, FcL, FcH  )
%
% Used to select values for a Sallen Key Bandpass filter for circuit config
% see https://www.analog.com/media/en/training-seminars/tutorials/MT-222.pdf
% 
% Inputs:
%   C1: Value of Cap 1 choose value
%   R4: Value of Resistor 1 choose value
%   FcL: Low 3-dB Frequency of filter
%   FcH: High 3-dB Frequency of filter
%
% Outputs:
%   k: pole pair number
%   H: Circuit gain in the pass band or at resonance
%   Q:  Quality Factor
%   Fo: Resonant Frequency (Hz)
%   C2: 
%   R1: 
%   R2: 
%   R3: 
%   R5:


Fo = sqrt(FcH * FcL);

Q = Fo/(FcH - FcL);

k = 2*pi*Fo*C1;
H = (1/3)*(6.5 - 1/Q);
C2 = 0.5 * C1;
R1 = 2 / k;
R2 = 2/(3 * k);
R3 = 4/k;

if H < 0 
    Q1= -1*Q;
    H = (1/3)*(6.5 - 1/Q1);
end
R5 = R4/(H-1);



end