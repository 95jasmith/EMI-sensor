function[k,H,Q,Fo,C2,R1,R2,R3,R5] = Sallen_Key_Bandpass ( C1, R4, FcL, FcH  )
%
% Used to select values for a Sallen Key Bandpass filter for circuit config
% see https://www.analog.com/media/en/training-seminars/tutorials/MT-222.pdf
% 
% Inputs:
%   C1: Value of Cap 1 choose value (F)
%   R4: Value of Resistor 1 choose value (Ohm)
%   FcL: Low 3-dB Frequency of filter (Hz)
%   FcH: High 3-dB Frequency of filter (Hz)
%
% Outputs:
%   k: pole pair number
%   H: Circuit gain in the pass band or at resonance
%   Q:  Quality Factor
%   Fo: Resonant Frequency (Hz)
%   C2: Capacitor 2 (F)
%   R1: Resistor 1 (Ohm)
%   R2: Resistor 2 (Ohm)
%   R3: Resistor 3 (Ohm)
%   R5: Resistor 5 (Ohm)


Fo = sqrt(FcH * FcL); % Caculates Resonant freq from corner freqs

Q = Fo/(FcH - FcL); % Quality Factor

k = 2*pi*Fo*C1; % Pole pair number
H = (1/3)*(6.5 - 1/Q); %Circuit gain
C2 = 0.5 * C1; % Cap 2 calculation 
R1 = 2 / k; % Res 1 calculation
R2 = 2/(3 * k); % Res 2 calculation
R3 = 4/k; % Res 3 calculation

if H < 0 % correction for calculating R5
    Q1= -1*Q;
    H = (1/3)*(6.5 - 1/Q1);
end
R5 = R4/(H-1); % Res 5 calculation



end