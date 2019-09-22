input_image = imread('Lena.bmp');
text_file = fopen('Embed.txt','rt');
text_read_ascii = fread(text_file,'uint8');
binaryString = transpose(de2bi(text_read_ascii,7));
size_binaryString = size(binaryString);
text_message = reshape(binaryString,1,size_binaryString(1)*size_binaryString(2));
text_message(length(text_message)+1:length(text_message)+24) = [0];
stego_image=input_image;
hiding_capacity=0;

for x=0:3:509
for y=0:3:509
    p=input_image(x+1:x+3, y+1:y+3);
    q=stego_image(x+1:x+3, y+1:y+3);
    ac=p(2,2);a1=p(1,1);a2=p(1,2);a3=p(1,3);a4=p(2,1);a6=p(2,3);a7=p(3,1);a8=p(3,2);a9=p(3,3);
    if(length(text_message)>0 && length(text_message)<4)
        text_message(length(text_message)+1:4) = [0];
    end
    if(isempty(text_message)==1)
        break
    end
    binary_ac=de2bi(ac,8);
    hiding_capacity=hiding_capacity+4;
    binary_ac(4:-1:1)=text_message(1:4);
    text_message(1:4)=[];
    ac_=bi2de(binary_ac);
    if((ac-ac_)>8 && (ac_+16)>=0 && (ac_+16)<=255)
        ac__=ac_+16;
    elseif((ac-ac_)<-8 && (ac_-16)>=0 && (ac_-16)<=255)
        ac__=ac_-16;
    else
        ac__=ac_;
    end
    q(2,2)=ac__;
    stego_image(x+1:x+3, y+1:y+3)=q;
    d1=abs(ac__-a1);
    if(d1<=31)
        k=4;
    else
        k=5;
    end
    hiding_capacity=hiding_capacity+k;
    if(length(text_message)>0 && length(text_message)<k)
        text_message(length(text_message)+1:k)=[0];
    end
    if(isempty(text_message)==1)
        break
    end
    binary_a1=de2bi(a1,8);
    binary_a1(k:-1:1)=text_message(1:k);
    text_message(1:k)=[];
    a1_=bi2de(binary_a1);
    deviation=a1-a1_;
    if(deviation> (2.^(k-1)) && (a1_+(2.^k))>=0 && (a1_+(2.^k))<=255)
        a1__=a1_+(2.^k);
    elseif(deviation< -(2.^(k-1)) && (a1_-(2.^k))>=0 && (a1_-(2.^k))<=255)
        a1__=a1_-(2.^k);
    else
        a1__=a1_;
    end
    diff1=abs(a1-a1_);
    diff2=abs(a1-a1__);
    if(diff1<diff2 && a1_>=0 && a1_<=255)
        a1___=a1_;
    else
        a1___=a1__;
    end
    a1__=a1___;
    if(abs(ac__-a1)>31 && abs(ac__-a1__)<32)
        if(ac__>a1__)
            a1__=a1__-32;
            if(a1__<0)
                a1__=a1__+96;
            end
        else
            a1__=a1__+32;
            if(a1__>255)
                a1__=a1__-96;
            end
        end
    end
    if(abs(ac__-a1)<32 && abs(ac__-a1__)>31)
        if(ac__>a1__)
            a1__=a1__+32;
        else
            a1__=a1__-32;
        end
    end
    q(1,1)=a1__;
    stego_image(x+1:x+3, y+1:y+3)=q;
    d2=abs(ac__-a2);
    if(d2<=31)
        k=4;
    else
        k=5;
    end
    hiding_capacity=hiding_capacity+k;
    if(length(text_message)>0 && length(text_message)<k)
        text_message(length(text_message)+1:k)=[0];
    end
    if(isempty(text_message)==1)
        break
    end
    binary_a2=de2bi(a2,8);
    binary_a2(k:-1:1)=text_message(1:k);
    text_message(1:k)=[];
    a2_=bi2de(binary_a2);
    deviation=a2-a2_;
    if(deviation> (2.^(k-1)) && (a2_+(2.^k))>=0 && (a2_+(2.^k))<=255)
        a2__=a2_+(2.^k);
    elseif(deviation< -(2.^(k-1)) && (a2_-(2.^k))>=0 && (a2_-(2.^k))<=255)
        a2__=a2_-(2.^k);
    else
        a2__=a2_;
    end
    diff1=abs(a2-a2_);
    diff2=abs(a2-a2__);
    if(diff1<diff2 && a2_>=0 && a2_<=255)
        a2___=a2_;
    else
        a2___=a2__;
    end
    a2__=a2___;
    if(abs(ac__-a2)>31 && abs(ac__-a2__)<32)
        if(ac__>a2__)
            a2__=a2__-32;
            if(a2__<0)
                a2__=a2__+96;
            end
        else
            a2__=a2__+32;
            if(a2__>255)
                a2__=a2__-96;
            end
        end
    end
    if(abs(ac__-a2)<32 && abs(ac__-a2__)>31)
        if(ac__>a2__)
            a2__=a2__+32;
        else
            a2__=a2__-32;
        end
    end
    q(1,2)=a2__;
    stego_image(x+1:x+3, y+1:y+3)=q;
    d3=abs(ac__-a3);
    if(d3<=31)
        k=4;
    else
        k=5;
    end
    hiding_capacity=hiding_capacity+k;
    if(length(text_message)>0 && length(text_message)<k)
        text_message(length(text_message)+1:k)=[0];
    end
    if(isempty(text_message)==1)
        break
    end
    binary_a3=de2bi(a3,8);
    binary_a3(k:-1:1)=text_message(1:k);
    text_message(1:k)=[];
    a3_=bi2de(binary_a3);
    deviation=a3-a3_;
    if(deviation> (2.^(k-1)) && (a3_+(2.^k))>=0 && (a3_+(2.^k))<=255)
        a3__=a3_+(2.^k);
    elseif(deviation< -(2.^(k-1)) && (a3_-(2.^k))>=0 && (a3_-(2.^k))<=255)
        a3__=a3_-(2.^k);
    else
        a3__=a3_;
    end
    diff1=abs(a3-a3_);
    diff2=abs(a3-a3__);
    if(diff1<diff2 && a3_>=0 && a3_<=255)
        a3___=a3_;
    else
        a3___=a3__;
    end
    a3__=a3___;
    if(abs(ac__-a3)>31 && abs(ac__-a3__)<32)
        if(ac__>a3__)
            a3__=a3__-32;
            if(a3__<0)
                a3__=a3__+96;
            end
        else
            a3__=a3__+32;
            if(a3__>255)
                a3__=a3__-96;
            end
        end
    end
    if(abs(ac__-a3)<32 && abs(ac__-a3__)>31)
        if(ac__>a3__)
            a3__=a3__+32;
        else
            a3__=a3__-32;
        end
    end
    q(1,3)=a3__;
    stego_image(x+1:x+3, y+1:y+3)=q;
    d4=abs(ac__-a4);
    if(d4<=31)
        k=4;
    else
        k=5;
    end
    hiding_capacity=hiding_capacity+k;
    if(length(text_message)>0 && length(text_message)<k)
        text_message(length(text_message)+1:k)=[0];
    end
    if(isempty(text_message)==1)
        break
    end
    binary_a4=de2bi(a4,8);
    binary_a4(k:-1:1)=text_message(1:k);
    text_message(1:k)=[];
    a4_=bi2de(binary_a4);
    deviation=a4-a4_;
    if(deviation> (2.^(k-1)) && (a4_+(2.^k))>=0 && (a4_+(2.^k))<=255)
        a4__=a4_+(2.^k);
    elseif(deviation< -(2.^(k-1)) && (a4_-(2.^k))>=0 && (a4_-(2.^k))<=255)
        a4__=a4_-(2.^k);
    else
        a4__=a4_;
    end
    diff1=abs(a4-a4_);
    diff2=abs(a4-a4__);
    if(diff1<diff2 && a4_>=0 && a4_<=255)
        a4___=a4_;
    else
        a4___=a4__;
    end
    a4__=a4___;
    if(abs(ac__-a4)>31 && abs(ac__-a4__)<32)
        if(ac__>a4__)
            a4__=a4__-32;
            if(a4__<0)
                a4__=a4__+96;
            end
        else
            a4__=a4__+32;
            if(a4__>255)
                a4__=a4__-96;
            end
        end
    end
    if(abs(ac__-a4)<32 && abs(ac__-a4__)>31)
        if(ac__>a4__)
            a4__=a4__+32;
        else
            a4__=a4__-32;
        end
    end
    q(2,1)=a4__;
    stego_image(x+1:x+3, y+1:y+3)=q;
    d6=abs(ac__-a6);
    if(d6<=31)
        k=4;
    else
        k=5;
    end
    hiding_capacity=hiding_capacity+k;
    if(length(text_message)>0 && length(text_message)<k)
        text_message(length(text_message)+1:k)=[0];
    end
    if(isempty(text_message)==1)
        break
    end
    binary_a6=de2bi(a6,8);
    binary_a6(k:-1:1)=text_message(1:k);
    text_message(1:k)=[];
    a6_=bi2de(binary_a6);
    deviation=a6-a6_;
    if(deviation> (2.^(k-1)) && (a6_+(2.^k))>=0 && (a6_+(2.^k))<=255)
        a6__=a6_+(2.^k);
    elseif(deviation< -(2.^(k-1)) && (a6_-(2.^k))>=0 && (a6_-(2.^k))<=255)
        a6__=a6_-(2.^k);
    else
        a6__=a6_;
    end
    diff1=abs(a6-a6_);
    diff2=abs(a6-a6__);
    if(diff1<diff2 && a6_>=0 && a6_<=255)
        a6___=a6_;
    else
        a6___=a6__;
    end
    a6__=a6___;
    if(abs(ac__-a6)>31 && abs(ac__-a6__)<32)
        if(ac__>a6__)
            a6__=a6__-32;
            if(a6__<0)
                a6__=a6__+96;
            end
        else
            a6__=a6__+32;
            if(a6__>255)
                a6__=a6__-96;
            end
        end
    end
    if(abs(ac__-a6)<32 && abs(ac__-a6__)>31)
        if(ac__>a6__)
            a6__=a6__+32;
        else
            a6__=a6__-32;
        end
    end
    q(2,3)=a6__;
    stego_image(x+1:x+3, y+1:y+3)=q;
    d7=abs(ac__-a7);
    if(d7<=31)
        k=4;
    else
        k=5;
    end
    hiding_capacity=hiding_capacity+k;
    if(length(text_message)>0 && length(text_message)<k)
        text_message(length(text_message)+1:k)=[0];
    end
    if(isempty(text_message)==1)
        break
    end
    binary_a7=de2bi(a7,8);
    binary_a7(k:-1:1)=text_message(1:k);
    text_message(1:k)=[];
    a7_=bi2de(binary_a7);
    deviation=a7-a7_;
    if(deviation> (2.^(k-1)) && (a7_+(2.^k))>=0 && (a7_+(2.^k))<=255)
        a7__=a7_+(2.^k);
    elseif(deviation< -(2.^(k-1)) && (a7_-(2.^k))>=0 && (a7_-(2.^k))<=255)
        a7__=a7_-(2.^k);
    else
        a7__=a7_;
    end
    diff1=abs(a7-a7_);
    diff2=abs(a7-a7__);
    if(diff1<diff2 && a7_>=0 && a7_<=255)
        a7___=a7_;
    else
        a7___=a7__;
    end
    a7__=a7___;
    if(abs(ac__-a7)>31 && abs(ac__-a7__)<32)
        if(ac__>a7__)
            a7__=a7__-32;
            if(a7__<0)
                a7__=a7__+96;
            end
        else
            a7__=a7__+32;
            if(a7__>255)
                a7__=a7__-96;
            end
        end
    end
    if(abs(ac__-a7)<32 && abs(ac__-a7__)>31)
        if(ac__>a7__)
            a7__=a7__+32;
        else
            a7__=a7__-32;
        end
    end
    q(3,1)=a7__;
    stego_image(x+1:x+3, y+1:y+3)=q;
    d8=abs(ac__-a8);
    if(d8<=31)
        k=4;
    else
        k=5;
    end
    hiding_capacity=hiding_capacity+k;
    if(length(text_message)>0 && length(text_message)<k)
        text_message(length(text_message)+1:k)=[0];
    end
    if(isempty(text_message)==1)
        break
    end
    binary_a8=de2bi(a8,8);
    binary_a8(k:-1:1)=text_message(1:k);
    text_message(1:k)=[];
    a8_=bi2de(binary_a8);
    deviation=a8-a8_;
    if(deviation> (2.^(k-1)) && (a8_+(2.^k))>=0 && (a8_+(2.^k))<=255)
        a8__=a8_+(2.^k);
    elseif(deviation< -(2.^(k-1)) && (a8_-(2.^k))>=0 && (a8_-(2.^k))<=255)
        a8__=a8_-(2.^k);
    else
        a8__=a8_;
    end
    diff1=abs(a8-a8_);
    diff2=abs(a8-a8__);
    if(diff1<diff2 && a8_>=0 && a8_<=255)
        a8___=a8_;
    else
        a8___=a8__;
    end
    a8__=a8___;
    if(abs(ac__-a8)>31 && abs(ac__-a8__)<32)
        if(ac__>a8__)
            a8__=a8__-32;
            if(a8__<0)
                a8__=a8__+96;
            end
        else
            a8__=a8__+32;
            if(a8__>255)
                a8__=a8__-96;
            end
        end
    end
    if(abs(ac__-a8)<32 && abs(ac__-a8__)>31)
        if(ac__>a8__)
            a8__=a8__+32;
        else
            a8__=a8__-32;
        end
    end
    q(3,2)=a8__;
    stego_image(x+1:x+3, y+1:y+3)=q;
    d9=abs(ac__-a9);
    if(d9<=31)
        k=4;
    else
        k=5;
    end
    hiding_capacity=hiding_capacity+k;
    if(length(text_message)>0 && length(text_message)<k)
        text_message(length(text_message)+1:k)=[0];
    end
    if(isempty(text_message)==1)
        break
    end
    binary_a9=de2bi(a9,8);
    binary_a9(k:-1:1)=text_message(1:k);
    text_message(1:k)=[];
    a9_=bi2de(binary_a9);
    deviation=a9-a9_;
    if(deviation> (2.^(k-1)) && (a9_+(2.^k))>=0 && (a9_+(2.^k))<=255)
        a9__=a9_+(2.^k);
    elseif(deviation< -(2.^(k-1)) && (a9_-(2.^k))>=0 && (a9_-(2.^k))<=255)
        a9__=a9_-(2.^k);
    else
        a9__=a9_;
    end
    diff1=abs(a9-a9_);
    diff2=abs(a9-a9__);
    if(diff1<diff2 && a9_>=0 && a9_<=255)
        a9___=a9_;
    else
        a9___=a9__;
    end
    a9__=a9___;
    if(abs(ac__-a9)>31 && abs(ac__-a9__)<32)
        if(ac__>a9__)
            a9__=a9__-32;
            if(a9__<0)
                a9__=a9__+96;
            end
        else
            a9__=a9__+32;
            if(a9__>255)
                a9__=a9__-96;
            end
        end
    end
    if(abs(ac__-a9)<32 && abs(ac__-a9__)>31)
        if(ac__>a9__)
            a9__=a9__+32;
        else
            a9__=a9__-32;
        end
    end
    q(3,3)=a9__;
    stego_image(x+1:x+3, y+1:y+3)=q;
    if(hiding_capacity>209000 && hiding_capacity<209040)
        imwrite(stego_image,'Stego_Truck20.png');
    elseif(hiding_capacity>418000 && hiding_capacity<418040)
        imwrite(stego_image,'Stego_Truck40.png');
    elseif(hiding_capacity>627000 && hiding_capacity<627040)
        imwrite(stego_image,'Stego_Truck60.png');
    elseif(hiding_capacity>836000 && hiding_capacity<836040)
        imwrite(stego_image,'Stego_Truck80.png');
    elseif(hiding_capacity>836040)
        break
    end
end
if(hiding_capacity>836040)
    break
end
if(isempty(text_message)==1)
    break
end
end
%hiding_capacity
imwrite(stego_image,'Stego.png');