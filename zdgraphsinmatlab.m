clear all;
close all;
n=64;
k=1;
for i=0:n-1
       for j=0:n-1
  z(k) = mod(i+j,n);
% z = mod(x.*y,8);
k=k+1;
        end
end
z=unique(z)
z=z(2:size(z,2))
size(z,2)
k=1;
for i=1:size(z,2)-1
    for j=1:size(z,2)-1
 if ( mod(z(i)*z(j),n))==0
     zz(k)=j;
     k=k+1;
 end
    end
end
zz=unique(zz)
xx = randi([1,10],1,size(zz,2));
figure1 = figure(1);
for i=1:size(zz,2);
   hold on; plot(xx(i),zz(i),'o');hold on
   axis equal;
end



hh=[xx; zz]
annotation(figure1,'textbox',...
    [0.1*hh(1,1) 0.1*hh(2,1) 0.0615 0.0904761904761904],...
    'String',{'2'},...
    'LineStyle','none',...
    'FitBoxToText','off');
% Create textbox
annotation(figure1,'textbox',...
    [0.1*hh(1,2) 0.1*hh(2,2) 0.0329285714285714 0.0595238095238106],...
    'String',{'4'},...
    'LineStyle','none',...
    'FitBoxToText','off');

% Create textbox
annotation(figure1,'textbox',...
    [0.1*hh(1,3) 0.1*hh(2,3) 0.0561428571428574 0.0404761904761907],...
    'String',{'6'},...
    'LineStyle','none',...
    'FitBoxToText','off');
plot(hh(1,1:2), hh(2, 1:2))
plot(hh(1,2:3), hh(2, 2:3))
k=1;
for i=1:size(zz,2)
    for j=1:size(zz,2)
 if ( mod(zz(i)*zz(j),n))==0
%      yy(1,k)=xx(j);
%      yy(2,k)=zz(i);
yy(k,:)=[zz(i) zz(j)];
     k=k+1;
 end
    end
end
yy
y1=unique(yy(:,1))
zyy= yy(y1)
% for i= 1:size(yy,1)
%     if yy(i,

xx= randperm(size(yy,1));
for i=1:size(zyy,1)
    plot(yy(i,1),yy(i,2));hold on
end
yyn=zeros(size(yy));
for i=1:size(zz,2)
c=find(zz(i)==yy);
yyn(c)=i;
end
k=1;
figure(1);hold on;
for i=1:size(yyn,1)
%     for j=1:size(yyn,2)
%         pxy(k,:)=[hh(1,yyn(i,j)) hh(2,yyn(i,j))];
%         k=k+1;
%     end
plot(hh(1,yyn(i,:)), hh(2,yyn(i,:)));
%  k=k+1;
end
% pxy