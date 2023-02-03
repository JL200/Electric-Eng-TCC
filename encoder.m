function vel = fcn(borda, relogio)

%persistent variables:
persistent v_linear_f
if isempty(v_linear_f)
    v_linear_f=0;
end

persistent vaux
if isempty(vaux)
    vaux=0;
end

persistent aux
if isempty(aux)
    aux=0;
end

persistent va
if isempty(va)
    va=0;
end

persistent vb
if isempty(vb)
    vb=0;
end

persistent vc
if isempty(vc)
    vc=0;
end

persistent vd
if isempty(vd)
    vd=0;
end

persistent ve
if isempty(ve)
    ve=0;
end

persistent vf
if isempty(vf)
    vf=0;
end

persistent vg
if isempty(vg)
    vg=0;
end

persistent vh
if isempty(vh)
    vh=0;
end

persistent vi
if isempty(vi)
    vi=0;
end

persistent vj
if isempty(vj)
    vj=0;
end

persistent vk
if isempty(vk)
    vk=0;
end

persistent vl
if isempty(vl)
    vl=0;
end

persistent vm
if isempty(vm)
    vm=0;
end

persistent vn
if isempty(vn)
    vn=0;
end

persistent vo
if isempty(vo)
    vo=0;
end

persistent vp
if isempty(vp)
    vp=0;
end

persistent t_ant v_linear
if isempty(t_ant)
    t_ant = 0;
    v_linear = 0;
end

persistent vaf_ant
if isempty(vaf_ant)
    vaf_ant=0;
end

%calculo da velocidade
if borda > 0
    delta_t = relogio-t_ant;
    
    v_linear = (pi*0.0475)/(3*delta_t)
    
    v_ant = v_linear

    t_ant=relogio;
else
    v_linear = v_linear
end


vp=vo;
vo=vn;
vn=vm;
vm=vl;
vl=vk;
vk=vj;
vj=vi;
vi=vh;
vh=vg;
vg=vf;
vf=ve;
ve=vd;
vd=vc;
vc=vb;
vb=vaux;
vaux=v_linear
va=v_linear;

if vp~=0
    v_linear_f = (va+vb+vc+vd+ve+vf+vg+vh+vi+vj+vk+vl+vm+vn+vo+vp)/16
    va=v_linear_f
end




vel = va