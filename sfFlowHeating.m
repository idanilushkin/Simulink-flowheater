function sfFlowHeating(block)
setup(block);

function setup(block)
  block.NumInputPorts  = 4; % Tinput, Tenv, vFlow, betta
  block.NumOutputPorts = 1; % Toutput
  block.SetPreCompInpPortInfoToDynamic;
  block.SetPreCompOutPortInfoToDynamic;
  global N
  block.NumContStates = N;
  block.SampleTimes = [0 0]; % Continuous sample time
  block.SetAccelRunOnTLC(false);
  block.SimStateCompliance = 'DefaultSimState';
  
  block.RegBlockMethod('InitializeConditions', @Init);
  block.RegBlockMethod('Outputs', @Outputs);
  block.RegBlockMethod('Derivatives', @Derivatives);

function Init(block)
  block.ContStates.Data(:) = 0;

function Outputs(block)
  global Pout
  x = block.ContStates.Data;
  block.OutputPort(1).Data = Pout'*x;

function Derivatives(block)
  global P0d P0L P1 d
  g = block.InputPort(1).Data;
  T = block.InputPort(2).Data;
  v = block.InputPort(3).Data;
  betta =  block.InputPort(4).Data;
  x = block.ContStates.Data;

%   Tg=g*exp(-betta*d/v)/(1-exp(-betta*d/v)); % fixed error at doi: 10.1109/ICIEAM57311.2023.10139082
  Tg=g/(exp(betta*d/v)-1); % исправленный расчёт
  
  block.Derivatives.Data = ...
      -betta*diag(ones(block.NumContStates,1))*x ...
      -v*(P1*x) + betta*(P0L*T + P0d*Tg);
       

  
