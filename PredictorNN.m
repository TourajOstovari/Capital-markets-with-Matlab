[Data] = xlsread("US100.cash_M1.csv");
Candle30 = [Data(30:end-7,3) Data(30:end-7,6) Data(30:end-7,4) Data(30:end-7,5)];
Candle29 = [Data(29:end-8,3) Data(29:end-8,6) Data(29:end-8,4) Data(29:end-8,5)];
Candle28 = [Data(28:end-9,3) Data(28:end-9,6) Data(28:end-9,4) Data(28:end-9,5)];
Candle27 = [Data(27:end-10,3) Data(27:end-10,6) Data(27:end-10,4) Data(27:end-10,5)];
Candle26 = [Data(26:end-11,3) Data(26:end-11,6) Data(26:end-11,4) Data(26:end-11,5)];
Candle25 = [Data(25:end-12,3) Data(25:end-12,6) Data(25:end-12,4) Data(25:end-12,5)];
Candle24 = [Data(24:end-13,3) Data(24:end-13,6) Data(24:end-13,4) Data(24:end-13,5)];
Candle23 = [Data(23:end-14,3) Data(23:end-14,6) Data(23:end-14,4) Data(23:end-14,5)];
Candle22 = [Data(22:end-15,3) Data(22:end-15,6) Data(22:end-15,4) Data(22:end-15,5)];
Candle21 = [Data(21:end-16,3) Data(21:end-16,6) Data(21:end-16,4) Data(21:end-16,5)];
Candle20 = [Data(20:end-17,3) Data(20:end-17,6) Data(20:end-17,4) Data(20:end-17,5)];
Candle19 = [Data(19:end-18,3) Data(19:end-18,6) Data(19:end-18,4) Data(19:end-18,5)];
Candle18 = [Data(18:end-19,3) Data(18:end-19,6) Data(18:end-19,4) Data(18:end-19,5)];
Candle17 = [Data(17:end-20,3) Data(17:end-20,6) Data(17:end-20,4) Data(17:end-20,5)];
Candle16 = [Data(16:end-21,3) Data(16:end-21,6) Data(16:end-21,4) Data(16:end-21,5)];
Candle15 = [Data(15:end-22,3) Data(15:end-22,6) Data(15:end-22,4) Data(15:end-22,5)];
Candle14 = [Data(14:end-23,3) Data(14:end-23,6) Data(14:end-23,4) Data(14:end-23,5)];
Candle13 = [Data(13:end-24,3) Data(13:end-24,6) Data(13:end-24,4) Data(13:end-24,5)];
Candle12 = [Data(12:end-25,3) Data(12:end-25,6) Data(12:end-25,4) Data(12:end-25,5)];
Candle11 = [Data(11:end-26,3) Data(11:end-26,6) Data(11:end-26,4) Data(11:end-26,5)];
Candle10 = [Data(10:end-27,3) Data(10:end-27,6) Data(10:end-27,4) Data(10:end-27,5)];
Candle9 = [Data(9:end-28,3) Data(9:end-28,6) Data(9:end-28,4) Data(9:end-28,5)];
Candle8 = [Data(8:end-29,3) Data(8:end-29,6) Data(8:end-29,4) Data(8:end-29,5)];
Candle7 = [Data(7:end-30,3) Data(7:end-30,6) Data(7:end-30,4) Data(7:end-30,5)];
Candle6 = [Data(6:end-31,3) Data(6:end-31,6) Data(6:end-31,4) Data(6:end-31,5)];
Candle5 = [Data(5:end-32,3) Data(5:end-32,6) Data(5:end-32,4) Data(5:end-32,5)];
Candle4 = [Data(4:end-33,3) Data(4:end-33,6) Data(4:end-33,4) Data(4:end-33,5)];
Candle3 = [Data(3:end-34,3) Data(3:end-34,6) Data(3:end-34,4) Data(3:end-34,5)];
Candle2 = [Data(2:end-35,3) Data(2:end-35,6) Data(2:end-35,4) Data(2:end-35,5)];
Candle1 = [Data(1:end-36,3) Data(1:end-36,6) Data(1:end-36,4) Data(1:end-36,5)];
Candle_Current = [Data(31:end-6,3)];
inputx = [Candle30 Candle29 Candle28 Candle27 Candle26 Candle25 Candle24 Candle23 Candle22 Candle21 Candle20 Candle19 Candle18 Candle17 Candle16 Candle15 Candle14 Candle13 Candle12 Candle11 Candle10 Candle9 Candle8 Candle7 Candle6 Candle5 Candle4 Candle3 Candle2 Candle1 Candle_Current];

output = [Data(31:end-6,6) Data(32:end-5,6) Data(33:end-4,6) Data(34:end-3,6) Data(35:end-2,6) Data(36:end-1,6)];
x = inputx';
t = output';

% Choose a Training Function
% For a list of all training functions type: help nntrain
% 'trainlm' is usually fastest.
% 'trainbr' takes longer but may be better for challenging problems.
% 'trainscg' uses less memory. Suitable in low memory situations.
trainFcn = 'trainbr';  % Levenberg-Marquardt backpropagation.

% Create a Fitting Network
hiddenLayerSize = 5;
net = fitnet(hiddenLayerSize,trainFcn);

% Choose Input and Output Pre/Post-Processing Functions
% For a list of all processing functions type: help nnprocess
net.input.processFcns = {'removeconstantrows','mapminmax'};
net.output.processFcns = {'removeconstantrows','mapminmax'};

% Setup Division of Data for Training, Validation, Testing
% For a list of all data division functions type: help nndivision
net.divideFcn = 'dividerand';  % Divide data randomly
net.divideMode = 'sample';  % Divide up every sample
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;
net.trainParam.epochs = 150;
% Choose a Performance Function
% For a list of all performance functions type: help nnperformance
net.performFcn = 'mse';  % Mean Squared Error

% Choose Plot Functions
% For a list of all plot functions type: help nnplot
net.plotFcns = {'plotperform','plottrainstate','ploterrhist', ...
    'plotregression', 'plotfit'};

% Train the Network
[net,tr] = train(net,x,t);

% Test the Network
y = net(x);
e = gsubtract(t,y);
performance = perform(net,t,y)

% Recalculate Training, Validation and Test Performance
trainTargets = t .* tr.trainMask{1};
valTargets = t .* tr.valMask{1};
testTargets = t .* tr.testMask{1};
trainPerformance = perform(net,trainTargets,y)
valPerformance = perform(net,valTargets,y)
testPerformance = perform(net,testTargets,y)

% View the Network
view(net)

% Plots
% Uncomment these lines to enable various plots.
%figure, plotperform(tr)
%figure, plottrainstate(tr)
%figure, ploterrhist(e)
%figure, plotregression(t,y)
%figure, plotfit(net,x,t)

% Deployment
% Change the (false) values to (true) to enable the following code blocks.
% See the help for each generation function for more information.
if (false)
    % Generate MATLAB function for neural network for application
    % deployment in MATLAB scripts or with MATLAB Compiler and Builder
    % tools, or simply to examine the calculations your trained neural
    % network performs.
    genFunction(net,'myNeuralNetworkFunction');
    y = myNeuralNetworkFunction(x);
end
if (false)
    % Generate a matrix-only MATLAB function for neural network code
    % generation with MATLAB Coder tools.
    genFunction(net,'myNeuralNetworkFunction','MatrixOnly','yes');
    y = myNeuralNetworkFunction(x);
end
if (false)
    % Generate a Simulink diagram for simulation or deployment with.
    % Simulink Coder tools.
    gensim(net);
end
