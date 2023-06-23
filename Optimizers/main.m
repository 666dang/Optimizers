clear;clc;close all
Function_name='F11'; % ʹ�÷��̵����֣���Ӧ Functions_details �ļ�
[lb,ub,dim,fobj]=Get_Functions_details(Function_name);  %�õ�����ķ��̼�Ŀ�꺯����������ά�ȣ�������������
pop_num=30;  % Number of search agents ��Ⱥ����
Max_iter=501;    % Maximum numbef of iterations ����������
%�����Ǹ����Ż��㷨�ıȽ�
Time_compare=[];      %�㷨������ʱ��Ƚ�
Fival_compare=[];      %�㷨������Ŀ��Ƚ�
curve_compare=[];     %�㷨�Ĺ��̺����Ƚ�
%��ȸ�����㷨
name_all=[];     %�㷨�����Ƽ�¼
%%
t1=clock;
iter=1;
[fMin_SSA,bestX_SSA,SSA_curve]=SSA(pop_num,Max_iter,lb,ub,dim,fobj);    %��ȸ�����㷨
t2=clock;
time_SSA=(t2(end)+t2(end-1)*60+t2(end-2)*3600-t1(end)-t1(end-1)*60-t1(end-2)*3600);
Fival_compare=[Fival_compare,fMin_SSA];   
Time_compare=[Time_compare,time_SSA(end)];
curve_compare=[curve_compare;SSA_curve];
name_all{1,iter}='SSA';
iter=iter+1;
%%
%����Ⱥ�Ż��㷨
t1=clock;
[fMin_PSO,bestX_PSO,PSO_curve]=PSO(pop_num,Max_iter,lb,ub,dim,fobj);  % ����Ⱥ�Ż��㷨
t2=clock;
time_PSO=(t2(end)+t2(end-1)*60+t2(end-2)*3600-t1(end)-t1(end-1)*60-t1(end-2)*3600);
Fival_compare=[Fival_compare,fMin_PSO];
Time_compare=[Time_compare,time_PSO(end)];
curve_compare=[curve_compare;PSO_curve];
name_all{1,iter}='PSO';
iter=iter+1;

% ģ���˻��Ż��㷨
t1=clock;
[fMin_SA,bestX2,SA_curve]=SA(Max_iter,lb,ub,dim,fobj);                               % ģ���˻��Ż��㷨
t2=clock;
time_SA=(t2(end)+t2(end-1)*60+t2(end-2)*3600-t1(end)-t1(end-1)*60-t1(end-2)*3600);
Fival_compare=[Fival_compare,fMin_SA];
Time_compare=[Time_compare,time_SA(end)];
curve_compare=[curve_compare;SA_curve];
name_all{1,iter}='SA';
iter=iter+1;

% % �Ŵ��㷨�Ż��㷨 
% t1=clock;
% [fMin_GA,bestX_GA,GA_curve]=GA(pop_num,Max_iter,lb,ub,dim,fobj);     % �Ŵ��㷨�Ż��㷨    
% time_GA=(clock-t1);
% Fival_compare=[Fival_compare,fMin_GA];
% Time_compare=[Time_compare,time_GA(end)];
% curve_compare=[curve_compare;GA_curve];
% name_all{1,iter}='GA';
% iter=iter+1;

% �����Ż��㷨 
t1=clock;
[fMin_GWO,bestX_GWO,GWO_curve]=GWO(pop_num,Max_iter,lb,ub,dim,fobj);      % �����Ż��㷨 
t2=clock;
time_GWO=(t2(end)+t2(end-1)*60+t2(end-2)*3600-t1(end)-t1(end-1)*60-t1(end-2)*3600);
Fival_compare=[Fival_compare,fMin_GWO];
Time_compare=[Time_compare,time_GWO(end)];
curve_compare=[curve_compare;GWO_curve];
name_all{1,iter}='GWO';
iter=iter+1;

% �Ľ������Ż��㷨 
t1=clock;
[fMin_IGWO,bestX_IGWO,IGWO_curve]=IGWO(pop_num,Max_iter,lb,ub,dim,fobj);  
t2=clock;
time_IGWO=(t2(end)+t2(end-1)*60+t2(end-2)*3600-t1(end)-t1(end-1)*60-t1(end-2)*3600);
Fival_compare=[Fival_compare,fMin_IGWO];
Time_compare=[Time_compare,time_IGWO(end)];
curve_compare=[curve_compare;IGWO_curve];
name_all{1,iter}='IGWO';
iter=iter+1;

%�����Ż��㷨
t1=clock;
[fMin_WOA,bestX_WOA,WOA_curve]=WOA(pop_num,Max_iter,lb,ub,dim,fobj); % �����Ż��㷨    
t2=clock;
time_WOA=(t2(end)+t2(end-1)*60+t2(end-2)*3600-t1(end)-t1(end-1)*60-t1(end-2)*3600);
Fival_compare=[Fival_compare,fMin_WOA];
Time_compare=[Time_compare,time_WOA(end)];
curve_compare=[curve_compare;WOA_curve];
name_all{1,iter}='WOA';
iter=iter+1;

%�Ľ������Ż��㷨
t1=clock;
[fMin_EWOA,bestX_EWOA,EWOA_curve]=E_WOA(pop_num,Max_iter,lb,ub,dim,fobj); 
t2=clock;
time_EWOA=(t2(end)+t2(end-1)*60+t2(end-2)*3600-t1(end)-t1(end-1)*60-t1(end-2)*3600);
Fival_compare=[Fival_compare,fMin_EWOA];
Time_compare=[Time_compare,time_EWOA(end)];
curve_compare=[curve_compare;EWOA_curve];
name_all{1,iter}='EWOA';
iter=iter+1;

% %��Ⱥ�㷨
% %ʱ���Գ�
% t1=clock;
% [fMin_ALO,bestX_ALO,ALO_curve]=ALO(pop_num,Max_iter,lb,ub,dim,fobj);     
% t2=clock;
% time_ALO=(t2(end)+t2(end-1)*60+t2(end-2)*3600-t1(end)-t1(end-1)*60-t1(end-2)*3600);
% Fival_compare=[Fival_compare,fMin_ALO];
% Time_compare=[Time_compare,time_ALO(end)];
% curve_compare=[curve_compare;ALO_curve];
% name_all{1,iter}='ALO';
% iter=iter+1;

%�����Ż��㷨
t1=clock;
[fMin_MFO,bestX_MFO,MFO_curve]=MFO(pop_num,Max_iter,lb,ub,dim,fobj);     
t2=clock;
time_MFO=(t2(end)+t2(end-1)*60+t2(end-2)*3600-t1(end)-t1(end-1)*60-t1(end-2)*3600);
Fival_compare=[Fival_compare,fMin_MFO];
Time_compare=[Time_compare,time_MFO(end)];
curve_compare=[curve_compare;MFO_curve];
name_all{1,iter}='MFO';
iter=iter+1;
%%
% %�����Ż��㷨
% %ʱ���Գ�
% t1=clock;
% [fMin_DA,bestX_DA,DA_curve]=DA(pop_num,Max_iter,lb,ub,dim,fobj);     
% t2=clock;
% time_DA=(t2(end)+t2(end-1)*60+t2(end-2)*3600-t1(end)-t1(end-1)*60-t1(end-2)*3600);
% Fival_compare=[Fival_compare,fMin_DA];
% Time_compare=[Time_compare,time_DA(end)];
% curve_compare=[curve_compare;DA_curve];
% name_all{1,iter}='DA';
% iter=iter+1;
%%
% % %�ȳ��Ż��㷨
% %%�ٶ�̫����
% t1=clock;
% [fMin_GOA,bestX_GOA,GOA_curve]=GOA(pop_num,Max_iter,lb,ub,dim,fobj);     
% t2=clock;
% time_GOA=(t2(end)+t2(end-1)*60+t2(end-2)*3600-t1(end)-t1(end-1)*60-t1(end-2)*3600);
% Fival_compare=[Fival_compare,fMin_GOA];
% Time_compare=[Time_compare,time_GOA(end)];
% curve_compare=[curve_compare;GOA_curve];
% name_all{1,iter}='GOA';
% iter=iter+1;

% % %�Ľ���ȳ��Ż��㷨
% % ʱ�仹���Գ�
% t1=clock;
% [fMin_IGOA,bestX_IGOA,IGOA_curve]=IGOA(pop_num,Max_iter,lb,ub,dim,fobj);     
% t2=clock;
% time_IGOA=(t2(end)+t2(end-1)*60+t2(end-2)*3600-t1(end)-t1(end-1)*60-t1(end-2)*3600);
% Fival_compare=[Fival_compare,fMin_IGOA];
% Time_compare=[Time_compare,time_IGOA(end)];
% curve_compare=[curve_compare;IGOA_curve];
% name_all{1,iter}='IGOA';
% iter=iter+1;

%%%%%��汾�Ż���  Multi-Verse Optimizer
t1=clock;
[fMin_MVO,bestX_MVO,MVO_curve]=MVO(pop_num,Max_iter,lb,ub,dim,fobj);     
t2=clock;
time_MVO=(t2(end)+t2(end-1)*60+t2(end-2)*3600-t1(end)-t1(end-1)*60-t1(end-2)*3600);
Fival_compare=[Fival_compare,fMin_MVO];
Time_compare=[Time_compare,time_MVO(end)];
curve_compare=[curve_compare;MVO_curve];
name_all{1,iter}='MVO';
iter=iter+1;

%���������Ż��㷨 Sine Cosine Algorithm
t1=clock;
[fMin_SCA,bestX_SCA,SCA_curve]=SCA(pop_num,Max_iter,lb,ub,dim,fobj);     
t2=clock;
time_SCA=(t2(end)+t2(end-1)*60+t2(end-2)*3600-t1(end)-t1(end-1)*60-t1(end-2)*3600);
Fival_compare=[Fival_compare,fMin_SCA];
Time_compare=[Time_compare,time_SCA(end)];
curve_compare=[curve_compare;SCA_curve];
name_all{1,iter}='SCA';
iter=iter+1;

%ˮĸ�Ż��㷨��Salp Swarm Algorithm
t1=clock;
[fMin_SS,bestX_SS,SS_curve]=SS(pop_num,Max_iter,lb,ub,dim,fobj);     
t2=clock;
time_SS=(t2(end)+t2(end-1)*60+t2(end-2)*3600-t1(end)-t1(end-1)*60-t1(end-2)*3600);
Fival_compare=[Fival_compare,fMin_SS];
Time_compare=[Time_compare,time_SS(end)];
curve_compare=[curve_compare;SS_curve];
name_all{1,iter}='SS';
iter=iter+1;

% % %ƽ���Ż��� Equilibrium Optimizer
% %�о�ʱ���е���
% t1=clock;
% RUN_NUM=30;
% [fMin_EO,bestX_EO,EO_curve]=EO(pop_num,Max_iter,lb,ub,dim,fobj,RUN_NUM);     
% t2=clock;
% time_EO=(t2(end)+t2(end-1)*60+t2(end-2)*3600-t1(end)-t1(end-1)*60-t1(end-2)*3600);
% Fival_compare=[Fival_compare,fMin_EO];
% Time_compare=[Time_compare,time_EO(end)];
% curve_compare=[curve_compare;EO_curve];
% name_all{1,iter}='EO';
% iter=iter+1;

%ͺӥ�Ż��㷨 African vultures optimization algorithm
t1=clock;
[fMin_AVOA,bestX_AVOA,AVOA_curve]=AVOA(pop_num,Max_iter,lb,ub,dim,fobj);     
t2=clock;
time_AVOA=(t2(end)+t2(end-1)*60+t2(end-2)*3600-t1(end)-t1(end-1)*60-t1(end-2)*3600);
Fival_compare=[Fival_compare,fMin_AVOA];
Time_compare=[Time_compare,time_AVOA(end)];
curve_compare=[curve_compare;AVOA_curve];
name_all{1,iter}='AVOA';
iter=iter+1;

%�˹������㷨 Artificial Hummingbird Algorithm
t1=clock;
[fMin_AHA,bestX_AHA,AHA_curve]=AHA(pop_num,Max_iter,lb,ub,dim,fobj);     
t2=clock;
time_AHA=(t2(end)+t2(end-1)*60+t2(end-2)*3600-t1(end)-t1(end-1)*60-t1(end-2)*3600);
Fival_compare=[Fival_compare,fMin_AHA];
Time_compare=[Time_compare,time_AHA(end)];
curve_compare=[curve_compare;AHA_curve'];
name_all{1,iter}='AHA';
iter=iter+1;

%�˹������ɲ����Ż��㷨 Artificial gorilla troops optimizer
t1=clock;
[fMin_GTO,bestX_GTO,GTO_curve]=GTO(pop_num,Max_iter,lb,ub,dim,fobj);     
t2=clock;
time_GTO=(t2(end)+t2(end-1)*60+t2(end-2)*3600-t1(end)-t1(end-1)*60-t1(end-2)*3600);
Fival_compare=[Fival_compare,fMin_GTO];
Time_compare=[Time_compare,time_GTO(end)];
curve_compare=[curve_compare;GTO_curve'];
name_all{1,iter}='GTO';
iter=iter+1;

%�����㷨 Flow Direction Algorithm
alpha=50; % Number of flows
beta=1; %Number of neighborhoods
t1=clock;
[fMin_FDA,bestX_FDA,FDA_curve]=FDA(Max_iter,lb,ub,dim,fobj,alpha,beta);     
t2=clock;
time_FDA=(t2(end)+t2(end-1)*60+t2(end-2)*3600-t1(end)-t1(end-1)*60-t1(end-2)*3600);
Fival_compare=[Fival_compare,fMin_FDA];
Time_compare=[Time_compare,time_FDA(end)];
curve_compare=[curve_compare;FDA_curve];
name_all{1,iter}='FDA';
iter=iter+1;

% �����Ż��㷨 The Arithmetic Optimization Algorithm
t1=clock;
[fMin_AOA,bestX_AOA,AOA_curve]=AOA(pop_num,Max_iter,lb,ub,dim,fobj);     
t2=clock;
time_AOA=(t2(end)+t2(end-1)*60+t2(end-2)*3600-t1(end)-t1(end-1)*60-t1(end-2)*3600);
Fival_compare=[Fival_compare,fMin_AOA];
Time_compare=[Time_compare,time_AOA(end)];
curve_compare=[curve_compare;AOA_curve];
name_all{1,iter}='AOA';
iter=iter+1;

%�����Ż��㷨 The Pelican Optimization Algorithm
t1=clock;
[fMin_POA,bestX_POA,POA_curve]=POA(pop_num,Max_iter,lb,ub,dim,fobj);     
t2=clock;
time_POA=(t2(end)+t2(end-1)*60+t2(end-2)*3600-t1(end)-t1(end-1)*60-t1(end-2)*3600);
Fival_compare=[Fival_compare,fMin_POA];
Time_compare=[Time_compare,time_POA(end)];
curve_compare=[curve_compare;POA_curve];
name_all{1,iter}='POA';
iter=iter+1;

%��ɫ���Ż��㷨 Chameleon Swarm Algorithm (CSA)  
t1=clock;
[fMin_CSA,bestX_CSA,CSA_curve]=CSA(pop_num,Max_iter,lb,ub,dim,fobj);     
t2=clock;
time_CSA=(t2(end)+t2(end-1)*60+t2(end-2)*3600-t1(end)-t1(end-1)*60-t1(end-2)*3600);
Fival_compare=[Fival_compare,fMin_CSA];
Time_compare=[Time_compare,time_CSA(end)];
curve_compare=[curve_compare;CSA_curve];
name_all{1,iter}='CSA';
iter=iter+1;

%���Ż��㷨 SO 
t1=clock;
[fMin_SO,bestX_SO,SO_curve]=SO(pop_num,Max_iter,lb,ub,dim,fobj);     
t2=clock;
time_SO=(t2(end)+t2(end-1)*60+t2(end-2)*3600-t1(end)-t1(end-1)*60-t1(end-2)*3600);
Fival_compare=[Fival_compare,fMin_SO];
Time_compare=[Time_compare,time_SO(end)];
curve_compare=[curve_compare;SO_curve];
name_all{1,iter}='SO';
iter=iter+1;

%������ӥ�Ż��㷨Northern_Goshawk_Optimization_A_New_Swarm-Based_Algorithm
t1=clock;
[fMin_NGO,bestX_NGO,NGO_curve]=NGO(pop_num,Max_iter,lb,ub,dim,fobj);     
t2=clock;
time_NGO=(t2(end)+t2(end-1)*60+t2(end-2)*3600-t1(end)-t1(end-1)*60-t1(end-2)*3600);
Fival_compare=[Fival_compare,fMin_NGO];
Time_compare=[Time_compare,time_NGO(end)];
curve_compare=[curve_compare;NGO_curve];
name_all{1,iter}='NGO';
iter=iter+1;

% % ��è���Ż��㷨Dwarf Mongoose Optimization Algorithm source codes (version 1.0)   
% t1=clock;
% [fMin_DMOA,bestX_DMOA,DMOA_curve]=DMOA(pop_num,Max_iter,lb,ub,dim,fobj);     
% t2=clock;
% time_DMOA=(t2(end)+t2(end-1)*60+t2(end-2)*3600-t1(end)-t1(end-1)*60-t1(end-2)*3600);
% Fival_compare=[Fival_compare,fMin_DMOA];
% Time_compare=[Time_compare,time_DMOA(end)];
% curve_compare=[curve_compare;DMOA_curve'];
% name_all{1,iter}='DMOA';
% iter=iter+1;
%%
% �����Ż��㷨 White Shark Optimizer (WSO)
t1=clock;
[fMin_WSO,bestX_WSO,WSO_curve]=WSO(pop_num,Max_iter,lb,ub,dim,fobj);     
t2=clock;
time_WSO=(t2(end)+t2(end-1)*60+t2(end-2)*3600-t1(end)-t1(end-1)*60-t1(end-2)*3600);
Fival_compare=[Fival_compare,fMin_WSO];
Time_compare=[Time_compare,time_WSO(end)];
curve_compare=[curve_compare;WSO_curve];
name_all{1,iter}='WSO';
iter=iter+1;

% ����˰˺���ʮ����Ż��㷨 Ali baba and the Forty Thieves (AFT) algorithm 
t1=clock;
[fMin_AFT,bestX_AFT,AFT_curve]=AFT(pop_num,Max_iter,lb,ub,dim,fobj);     
t2=clock;
time_AFT=(t2(end)+t2(end-1)*60+t2(end-2)*3600-t1(end)-t1(end-1)*60-t1(end-2)*3600);
Fival_compare=[Fival_compare,fMin_AFT];
Time_compare=[Time_compare,time_AFT(end)];
curve_compare=[curve_compare;AFT_curve];
name_all{1,iter}='AFT';
iter=iter+1;
%%
load('color_list')
figure(2)
color_all=color_list(randperm(length(color_list)),:);
%��������������
for N=1:length(Fival_compare)
     semilogy(curve_compare(N,:),'Color',color_all(N,:),'LineWidth',2)
     hold on
end
xlabel('��������');
ylabel('Ŀ�꺯��ֵ');
grid on
box on
legend(name_all)
%���¿�����ʾ
% display(['The best solution obtained by SSA is : ', num2str(bestX)]);
% display(['The best optimal value of the objective funciton found by SSA is : ', num2str(fMin)]);
%%  �����Ż��㷨���ڵ㷨�Ƚ�
t1=clock;
lb= lb.*ones( 1,dim );    %     Լ������
ub= ub.*ones( 1,dim );    %   Լ������   
x0 = zeros( 1, dim );   %�����ʼ��n����Ⱥ
[xsol,fval] = fmincon(fobj,x0,[],[],[],[],lb,ub);
time_interpoint=(clock-t1);         %�ڵ㷨
Fival_compare=[Fival_compare,fval];
Time_compare=[Time_compare,time_interpoint(end)];
name_all{1,iter}='inter-point';
iter=iter+1;
%%  ����ֵ������Ŀ�꺯���Ƚ�
figure(3)
color=color_list(randperm(length(color_list)),:);
width=0.7; %��״ͼ���
for  i=1:length(Fival_compare) 
   set(bar(i,Fival_compare(i),width),'FaceColor',color(i,:),'EdgeColor',[0,0,0],'LineWidth',2)
   hold on
    
   %����״ͼ x,y ������ ������� ,lowΪ����highΪ����LineStyle ���ͼ��ʽ��'Color' ���ͼ��ɫ  
   % 'LineWidth', �߿�,'CapSize',����ע��С
%    errorbar(i, y(i), low(i), high(i), 'LineStyle', 'none', 'Color', color(i+3,:), 'LineWidth', 1.5,'CapSize',18);
end
ylabel('obj-value')
ax=gca;
ax.XTick = 1:1:length(Fival_compare);
set(gca,'XTickLabel',name_all,"LineWidth",2);
set(gca,"FontName","Times New Roman","FontSize",12,"LineWidth",2)
%% ����ʱ��Ƚ�
figure(4)
color=color_list(randperm(length(color_list)),:);
width=0.7; %��״ͼ���
for  i=1:length(Fival_compare) 
   set(bar(i,Time_compare(i),width),'FaceColor',color(i,:),'EdgeColor',[0,0,0],'LineWidth',2)
   hold on
   %����״ͼ x,y ������ ������� ,lowΪ����highΪ����LineStyle ���ͼ��ʽ��'Color' ���ͼ��ɫ  
   % 'LineWidth', �߿�,'CapSize',����ע��С
%    errorbar(i, y(i), low(i), high(i), 'LineStyle', 'none', 'Color', color(i+3,:), 'LineWidth', 1.5,'CapSize',18);
end
ylabel('Time')
ax=gca;
ax.XTick = 1:1:length(Fival_compare);
set(gca,'XTickLabel',name_all,"LineWidth",2);
set(gca,"FontName","Times New Roman","FontSize",12,"LineWidth",2)
%%
% ����Ŀ�꺯����ͼʾ,ֻ�ܻ�����ά��Ŀ�꺯��dim�����ÿ��ܺܶ�ά
figure(1)
x=lb/2:0.1:ub/2;  %x��,y�᷶Χ
y=x;
L_num=length(x);
f_value=[];      %��Ӧx,y�ĺ���ֵ
for i=1:L_num
    for j=1:L_num
        f_value(i,j)=fobj([x(i),y(j)]);
    end
end
surfc(x,y,f_value,'LineStyle','none');