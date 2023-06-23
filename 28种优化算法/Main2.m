clear;clc;close all
Function_name='F5'; % ʹ�÷��̵����֣���Ӧ Functions_details �ļ�
[lb,ub,dim,fobj]=Get_Functions_details(Function_name);  %�õ�����ķ��̼�Ŀ�꺯����������ά�ȣ�������������
pop_num=40;  % Number of search agents ��Ⱥ����
Max_iter=501;    % Maximum numbef of iterations ����������
%�����Ǹ����Ż��㷨�ıȽ�
Time_compare=[];      %�㷨������ʱ��Ƚ�
Fival_compare=[];       %�㷨������Ŀ��Ƚ�
curve_compare=[];     %�㷨�Ĺ��̺����Ƚ�
%��ȸ�����㷨
name_all=[];     %�㷨�����Ƽ�¼
%%
iter=1;
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
% load('color_list')
% figure(2)
% color_all=color_list(randperm(length(color_list)),:);
% %��������������
% for N=1:length(Fival_compare)
%      semilogy(curve_compare(N,:),'Color',color_all(N,:),'LineWidth',2)
%      hold on
% end
% xlabel('��������');
% ylabel('Ŀ�꺯��ֵ');
% grid on
% box on
% legend(name_all)
% % %%  ����ֵ������Ŀ�꺯���Ƚ�
% figure(3)
% color=color_list(randperm(length(color_list)),:);
% width=0.7; %��״ͼ���
% for  i=1:length(Fival_compare) 
%    set(bar(i,Fival_compare(i),width),'FaceColor',color(i,:),'EdgeColor',[0,0,0],'LineWidth',2)
%    hold on
%     
%    %����״ͼ x,y ������ ������� ,lowΪ����highΪ����LineStyle ���ͼ��ʽ��'Color' ���ͼ��ɫ  
%    % 'LineWidth', �߿�,'CapSize',����ע��С
% %    errorbar(i, y(i), low(i), high(i), 'LineStyle', 'none', 'Color', color(i+3,:), 'LineWidth', 1.5,'CapSize',18);
% end
% ylabel('obj-value')
% ax=gca;
% ax.XTick = 1:1:length(Fival_compare);
% set(gca,'XTickLabel',name_all,"LineWidth",2);
% set(gca,"FontName","Times New Roman","FontSize",12,"LineWidth",2)
% %% ����ʱ��Ƚ�
% figure(4)
% color=color_list(randperm(length(color_list)),:);
% width=0.7; %��״ͼ���
% for  i=1:length(Fival_compare) 
%    set(bar(i,Time_compare(i),width),'FaceColor',color(i,:),'EdgeColor',[0,0,0],'LineWidth',2)
%    hold on
%    %����״ͼ x,y ������ ������� ,lowΪ����highΪ����LineStyle ���ͼ��ʽ��'Color' ���ͼ��ɫ  
%    % 'LineWidth', �߿�,'CapSize',����ע��С
% %    errorbar(i, y(i), low(i), high(i), 'LineStyle', 'none', 'Color', color(i+3,:), 'LineWidth', 1.5,'CapSize',18);
% end
% ylabel('Time')
% ax=gca;
% ax.XTick = 1:1:length(Fival_compare);
% set(gca,'XTickLabel',name_all,"LineWidth",2);
% set(gca,"FontName","Times New Roman","FontSize",12,"LineWidth",2)
% %%
% % ����Ŀ�꺯����ͼʾ,ֻ�ܻ�����ά��Ŀ�꺯��dim�����ÿ��ܺܶ�ά
% figure(1)
% x=lb/2:0.1:ub/2;  %x��,y�᷶Χ
% y=x;
% L_num=length(x);
% f_value=[];      %��Ӧx,y�ĺ���ֵ
% for i=1:L_num
%     for j=1:L_num
%         f_value(i,j)=fobj([x(i),y(j)]);
%     end
% end
% surfc(x,y,f_value,'LineStyle','none');