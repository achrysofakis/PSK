function [ x ] = bits_to_PSK_16( bit_seq )
%bits_to_PSK_16 converts a bit sequence into 16-PSK coding
%Picked Gray Code:
%      0000->0001->0011->0010->0110->0111->0101->0100->1100->1101->1111->1110->1010->1011->1001->1000
    for i=1:length(bit_seq)
        if bit_seq(i,1)==0 && bit_seq(i,2)==0 && bit_seq(i,3)==0 && bit_seq(i,4)==0
            x(i,1)=cos(2*pi*0/16);
            x(i,2)=sin(2*pi*0/16);
        elseif bit_seq(i,1)==0 && bit_seq(i,2)==0 && bit_seq(i,3)==0 && bit_seq(i,4)==1
            x(i,1)=cos(2*pi*1/16);
            x(i,2)=sin(2*pi*1/16);
         elseif bit_seq(i,1)==0 && bit_seq(i,2)==0 && bit_seq(i,3)==1 && bit_seq(i,4)==1
            x(i,1)=cos(2*pi*2/16);
            x(i,2)=sin(2*pi*2/16);
         elseif bit_seq(i,1)==0 && bit_seq(i,2)==0 && bit_seq(i,3)==1 && bit_seq(i,4)==0
            x(i,1)=cos(2*pi*3/16);
            x(i,2)=sin(2*pi*3/16);
         elseif bit_seq(i,1)==0 && bit_seq(i,2)==1 && bit_seq(i,3)==1 && bit_seq(i,4)==0
            x(i,1)=cos(2*pi*4/16);
            x(i,2)=sin(2*pi*4/16);
         elseif bit_seq(i,1)==0 && bit_seq(i,2)==1 && bit_seq(i,3)==1 && bit_seq(i,4)==1
            x(i,1)=cos(2*pi*5/16);
            x(i,2)=sin(2*pi*5/16);
         elseif bit_seq(i,1)==0 && bit_seq(i,2)==1 && bit_seq(i,3)==0 && bit_seq(i,4)==1
            x(i,1)=cos(2*pi*6/16);
            x(i,2)=sin(2*pi*6/16);
        elseif bit_seq(i,1)==0 && bit_seq(i,2)==1 && bit_seq(i,3)==0 && bit_seq(i,4)==0
            x(i,1)=cos(2*pi*7/16);
            x(i,2)=sin(2*pi*7/16);
        elseif bit_seq(i,1)==1 && bit_seq(i,2)==1 && bit_seq(i,3)==0 && bit_seq(i,4)==0
            x(i,1)=cos(2*pi*8/16);
            x(i,2)=sin(2*pi*8/16);
        elseif bit_seq(i,1)==1 && bit_seq(i,2)==1 && bit_seq(i,3)==0 && bit_seq(i,4)==1
            x(i,1)=cos(2*pi*9/16);
            x(i,2)=sin(2*pi*9/16);
        elseif bit_seq(i,1)==1 && bit_seq(i,2)==1 && bit_seq(i,3)==1 && bit_seq(i,4)==1
            x(i,1)=cos(2*pi*10/16);
            x(i,2)=sin(2*pi*10/16);
        elseif bit_seq(i,1)==1 && bit_seq(i,2)==1 && bit_seq(i,3)==1 && bit_seq(i,4)==0
            x(i,1)=cos(2*pi*11/16);
            x(i,2)=sin(2*pi*11/16);
        elseif bit_seq(i,1)==1 && bit_seq(i,2)==0 && bit_seq(i,3)==1 && bit_seq(i,4)==0
            x(i,1)=cos(2*pi*12/16);
            x(i,2)=sin(2*pi*12/16);
        elseif bit_seq(i,1)==1 && bit_seq(i,2)==0 && bit_seq(i,3)==1 && bit_seq(i,4)==1
            x(i,1)=cos(2*pi*13/16);
            x(i,2)=sin(2*pi*13/16);
        elseif bit_seq(i,1)==1 && bit_seq(i,2)==0 && bit_seq(i,3)==0 && bit_seq(i,4)==1
            x(i,1)=cos(2*pi*14/16);
            x(i,2)=sin(2*pi*14/16);
        elseif bit_seq(i,1)==1 && bit_seq(i,2)==0 && bit_seq(i,3)==0 && bit_seq(i,4)==0
            x(i,1)=cos(2*pi*15/16);
            x(i,2)=sin(2*pi*15/16);
        end
    end
end


