function shudu = change_block_row(shudu,a,b)%a b =1:3
%            for(int i=0;i<3;++i)
%              swap_col(lhs+i,rhs+i);
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

