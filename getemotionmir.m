restoredefaultpath
rehash toolboxcache

rmpath(genpath('/Users/liannesanchez/Library/Application Support/MathWorks/MATLAB Add-Ons/Collections/MIRtoolbox1.8.2/MIRToolbox'))
addpath(genpath('/Users/liannesanchez/Downloads/MIRtoolbox1.3/MIRToolbox'))

clear classes
clear all
rehash toolboxcache
% Choose your audio file
[audio, fs] = audioread('/Users/liannesanchez/Downloads/desierto.mp3');
audiowrite('/Users/liannesanchez/Downloads/desierto.wav', audio, fs);
audiofile = '/Users/liannesanchez/Downloads/desierto.wav';


% Analyze emotion using MIR Toolbox
% Extract average valence and arousal
valence_obj = miremotion(audiofile, 'Valence');
valence = mirgetdata(valence_obj);
arousal_obj = miremotion(audiofile, 'Arousal');
arousal = mirgetdata(arousal_obj);

% Display results
fprintf('Valence: %.2f\n', mean(valence));
fprintf('Arousal: %.2f\n', mean(arousal));
