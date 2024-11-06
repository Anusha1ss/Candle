clc
clear
g='10011';
N=length(g)-1;
t=input('Enter data:','s');
fprintf('generating polynomial: %s\n',g);
fprintf('Padded data is: %s\n',t);
fprintf('computed CRC is: %s\n');
e=input('test error detection? 0(yes) 1(no):');
if e==0
    e_pos=input('enter the position where the error is to be inserted:');
    while e_pos==0
        e_pos=input('pls enter a valid position:');
    end
    
    t(e_pos)=char(1-(t(e_pos)-'0')+'0');
    fprintf('erroneous data: %s\n',t);
end
 
error_detected=0;
if error_detected&&e==0
    fprintf('error detected\n\n');
elseif e==1
        fprintf('no error detected \n\n');
    end


