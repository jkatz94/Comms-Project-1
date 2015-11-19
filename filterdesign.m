function Hd = filterdesign
%FILTERDESIGN Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 8.6 and the DSP System Toolbox 9.1.
% Generated on: 18-Nov-2015 22:16:01

% Butterworth Lowpass filter designed using FDESIGN.LOWPASS.

% All frequency values are in Hz.
Fs = 1200000;  % Sampling Frequency

Fpass = 40000;       % Passband Frequency
Fstop = 41000;       % Stopband Frequency
Apass = 1;           % Passband Ripple (dB)
Astop = 80;          % Stopband Attenuation (dB)
match = 'stopband';  % Band to match exactly

% Construct an FDESIGN object and call its BUTTER method.
h  = fdesign.lowpass(Fpass, Fstop, Apass, Astop, Fs);
Hd = design(h, 'butter', 'MatchExactly', match);

% [EOF]
