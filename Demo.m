%% demo feature extraction for a file;

clc
close all
clear all
wavpath='./wavs/10001.wav';


%% Baseline Specral and prosody feature extraction

cqcc_features=CQCC_Feat(wavpath); %% outs N X D features, N: no. of frames D: 39 dimension

MGD_features=MGD(wavpath); %% outs N X D features, N: no. of frames D: 39 dimension

PLP_features=PLP_Feat(wavpath); %% outs N X D features, N: no. of frames D: 39 dimension

PESFCC_features=PE_SFCC_Feat(wavpath); %% outs N X D features, N: no. of frames D: 39 dimension

MT_MFCC_features=MT_MFCC_Feat(wavpath); %% outs N X D features, N: no. of frames D: 39 dimension

MFCC_features=MFCC_Feat(wavpath); %% outs N X D features, N: no. of frames D: 39 dimension

Duration_features=RYTHM_Feat(wavpath); %% outs 1 X 12 feature VECTOR

INTONATION_features=INTONATION_Feat(wavpath); %% outs 1 X 76 feature VECTOR

LTAS_features=LTAS_Feat(wavpath); %% outs 1 X 99 feature VECTOR


%% Proposed

SFFB_LTAS_features=LTAS_SFF_Feat(wavpath); %% outs 1 X 2019 feature VECTOR