# 简易数独游戏设计

## 一、数独规则
数独盘面是个九宫，每一宫又分为九个小格。在这八十一格中给出一定的已知数字和解题条件，利用逻辑和推理，在其他的空格上填入1-9的数字。使1-9每个数字在每一行、每一列和每一宫中都只出现一次。本游戏的程序以9×9矩阵（9行、9列）作为数独、9个互不交叉的3×3矩阵作为宫。
<!--more-->
## 二、程序流程
1、	给定一个原有一个随机可解的数独
2、	输入空格数，作为难度的调节
3、	打乱，并存储为答案
4、	随机挖空（置零）
5、	输出答案
## 三、程序说明
本游戏设计的难度在于熟悉数独游戏规则以及如何将原有的数独打乱。对矩阵中的元素进行打乱有行、列、宫以及两个数字互换的方法。在数独中，一个数字的变化，相应的就会有不同位置上的数字需要变化在能符合数独的规则（1-9在每行、每列、每宫都只出现一次）。通过对矩阵的随机两个元素、随机行列互换操作，对数独进行打乱输出。

### 1、3*3矩阵变换列/行
```markdown
function shudu = change_block_col(shudu,a,b)%a b =1:3
i=0;
if a>b
    temp=a
    a=b
    b=temp
end
while(i<=2)
     x=a*i+1+(b-a)*3
     y=b*3-i-(b-a)*3
     shudu=change_col(shudu,x,y)
     i=i+1
end
end

function shudu = change_block_row(shudu,a,b)%a b =1:3
if a>b
    temp=a
    a=b
    b=temp
end
i=0;
while(i<=2)
     x=a*i+1+(b-a)*3
     y=b*3-i-(b-a)*3
     shudu=change_row(shudu,x,y)
     i=i+1
end
end
```
### 2、在宫内变换行/列
```markdown
function shudu = change_col(shudu,a,b) %a bֻ:1~3 / 4~6 / 7~9
%b(:,[1;2]) = b(:,[2;1]); % Swap col 1 and 2
shudu(:,[a,b]) = shudu(:,[b,a])
end

function [shudu] = change_row(shudu,a,b) %a bֻ:1~3 / 4~6 / 7~9
%b(:,[1;2]) = b(:,[2;1]); % Swap col 1 and 2
shudu([a,b],:) = shudu([b,a],:)
end

```
### 3、变换任意两个数值在数独中的位置
```markdown
function [shudu] = change_value(shudu,a,b)
[r,c] =  size(shudu)
    for i = 1:r
        for k = 1:c
            if shudu(i,k)==a
                shudu(i,k) = b
            elseif shudu(i,k)==b
                shudu(i,k) = a
            end
        end
    end
end
```
### 4、将所有变换集合，对数独进行打乱
```markdown
function shudu = magic_change(shudu)
%随机变换数独
%变换随机数s
s=[1,2,3;4,5,6;7,8,9]
s1 = randperm(9,2) %从1-9中随机产生2个不重复的数
shudu=change_value(shudu,s1(1,1),s1(1,2)) %1：9

%变换宫
s2 = randperm(3,2) %从1-3中随机产生2个不重复的数
shudu=change_block_col(shudu,s2(1,1),s2(1,2)) %a b =1:3
s3 = randperm(3,2)
shudu=change_block_row(shudu,s3(1,1),s3(1,2))%a b =1:3

%变换列(在宫内变换)
%a b只能取1~3 
col1 = randperm(3,2)
a=s(1,col1(1,1))
b=s(1,col1(1,2))
shudu=change_col(shudu,a,b) 
%/ 4~6 
col2= randperm(3,2)
c=s(2,col2(1,1))
d=s(2,col2(1,2));
shudu=change_col(shudu,c,d)
%/ 7~9
col3= randperm(3,2)
e=s(3,col3(1,1))
f=s(3,col3(1,2))
shudu=change_col(shudu,e,f) 

%变换行(在宫内变换)
row1 = randperm(3,2)
a=s(1,row1(1,1))
b=s(1,row1(1,2))
shudu=change_row(shudu,a,b) 
%/ 4~6 
row2= randperm(3,2)
c=s(2,row2(1,1))
d=s(2,row2(1,2))
shudu=change_row(shudu,c,d)
%/ 7~9
row3= randperm(3,2)
e=s(3,row3(1,1))
f=s(3,row3(1,2))
shudu=change_row(shudu,e,f) 
end
```
### 5、随机挖空，生成数独
```markdown
global s;
global shudu;
global anwser;
s=[8, 7, 4, 6, 3, 1, 5, 9, 2;
   5, 9, 6, 7, 2, 8, 4, 3, 1;
   2, 3, 1, 4, 5, 9, 6, 8, 7; 
   4, 8, 2, 1, 9, 6, 7, 5, 3;
   7, 6, 5, 3, 8, 4, 2, 1, 9;
   9, 1, 3, 5, 7, 2, 8, 4, 6;
   3, 2, 9, 8, 6, 5, 1, 7, 4;
   1, 5, 7, 2, 4, 3, 9, 6, 8;
   6, 4, 8, 9, 1, 7, 3, 2, 5]
shudu=magic_change(s)
anwser=shudu;
setGlobala(anwser)
dragNum=str2double(get(handles.edit1,'string'))
%默认20个空
%dragNum=20;
dragLoc = randperm(81, dragNum);
shudu(dragLoc) = 0;
```
## 四、存在的问题
1. 随机挖空的时候，可能会造成数独求解的难度不一；
2. 功能单调，因为能力和时间有限，未能实现输入答案、对答案并且显示得分等功能；
3. 界面需美化。

## 参考：
[QT编写的数独游戏及一个准确高效生成算法](http://blog.csdn.net/zj0395/article/details/72773001 "QT编写的数独游戏及一个准确高效生成算法")



