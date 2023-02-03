function sinal_cont = fcn(ref, vel)

%definição das variaveis persistentes:

persistent erro_ant
if isempty(erro_ant)
    erro_ant=0;
end

persistent sinal_ant
if isempty(sinal_ant)
    sinal_ant=0;
end

er = ref-vel

%controlador:
ctl = sinal_ant-22.2*erro_ant+17.76*er;

%atualizações:
sinal_ant = ctl;
erro_ant = ref-vel;

if ctl>100
    ctl=100;
end
if ctl<0
    ctl=0;
end

sinal_cont = ctl;
