stego_image=imread('Stego.png');
extracted_message='';
checker='0000000000000000000000';
for x=0:3:509
for y=0:3:509
    p=stego_image(x+1:x+3, y+1:y+3);
    ac=p(2,2);a1=p(1,1);a2=p(1,2);a3=p(1,3);a4=p(2,1);a6=p(2,3);a7=p(3,1);a8=p(3,2);a9=p(3,3);
    binary_ac=de2bi(ac,8);
    for inner_loop = 4:-1:1
        extracted_message = strcat(extracted_message,num2str(binary_ac(inner_loop)));
        if(length(extracted_message)>21 & extracted_message(end-21:end)==checker)
            break
        end
    end
    if(length(extracted_message)>21 & extracted_message(end-21:end)==checker)
        break
    end
    d1=abs(ac-a1);
    if(d1<=31)
        k=4;
    else
        k=5;
    end
    binary_a1=de2bi(a1,8);
    for inner_loop=k:-1:1
        extracted_message = strcat(extracted_message,num2str(binary_a1(inner_loop)));
        if(length(extracted_message)>21 & extracted_message(end-21:end)==checker)
            break
        end
    end
    if(length(extracted_message)>21 & extracted_message(end-21:end)==checker)
        break
    end
    d2=abs(ac-a2);
    if(d2<=31)
        k=4;
    else
        k=5;
    end
    binary_a2=de2bi(a2,8);
    for inner_loop=k:-1:1
        extracted_message = strcat(extracted_message,num2str(binary_a2(inner_loop)));
        if(length(extracted_message)>21 & extracted_message(end-21:end)==checker)
            break
        end
    end
    if(length(extracted_message)>21 & extracted_message(end-21:end)==checker)
        break
    end
    d3=abs(ac-a3);
    if(d3<=31)
        k=4;
    else
        k=5;
    end
    binary_a3=de2bi(a3,8);
    for inner_loop=k:-1:1
        extracted_message = strcat(extracted_message,num2str(binary_a3(inner_loop)));
        if(length(extracted_message)>21 & extracted_message(end-21:end)==checker)
            break
        end
    end
    if(length(extracted_message)>21 & extracted_message(end-21:end)==checker)
        break
    end
    d4=abs(ac-a4);
    if(d4<=31)
        k=4;
    else
        k=5;
    end
    binary_a4=de2bi(a4,8);
    for inner_loop=k:-1:1
        extracted_message = strcat(extracted_message,num2str(binary_a4(inner_loop)));
        if(length(extracted_message)>21 & extracted_message(end-21:end)==checker)
            break
        end
    end
    if(length(extracted_message)>21 & extracted_message(end-21:end)==checker)
        break
    end
    d6=abs(ac-a6);
    if(d6<=31)
        k=4;
    else
        k=5;
    end
    binary_a6=de2bi(a6,8);
    for inner_loop=k:-1:1
        extracted_message = strcat(extracted_message,num2str(binary_a6(inner_loop)));
        if(length(extracted_message)>21 & extracted_message(end-21:end)==checker)
            break
        end
    end
    if(length(extracted_message)>21 & extracted_message(end-21:end)==checker)
        break
    end
    d7=abs(ac-a7);
    if(d7<=31)
        k=4;
    else
        k=5;
    end
    binary_a7=de2bi(a7,8);
    for inner_loop=k:-1:1
        extracted_message = strcat(extracted_message,num2str(binary_a7(inner_loop)));
        if(length(extracted_message)>21 & extracted_message(end-21:end)==checker)
            break
        end
    end
    if(length(extracted_message)>21 & extracted_message(end-21:end)==checker)
        break
    end
    d8=abs(ac-a8);
    if(d8<=31)
        k=4;
    else
        k=5;
    end
    binary_a8=de2bi(a8,8);
    for inner_loop=k:-1:1
        extracted_message = strcat(extracted_message,num2str(binary_a8(inner_loop)));
        if(length(extracted_message)>21 & extracted_message(end-21:end)==checker)
            break
        end
    end
    if(length(extracted_message)>21 & extracted_message(end-21:end)==checker)
        break
    end
    d9=abs(ac-a9);
    if(d9<=31)
        k=4;
    else
        k=5;
    end
    binary_a9=de2bi(a9,8);
    for inner_loop=k:-1:1
        extracted_message = strcat(extracted_message,num2str(binary_a9(inner_loop)));
        if(length(extracted_message)>21 & extracted_message(end-21:end)==checker)
            break
        end
    end
    if(length(extracted_message)>21 & extracted_message(end-21:end)==checker)
        break
    end
end
if(length(extracted_message)>21 & extracted_message(end-21:end)==checker)
    break
end
end
word_length = floor(length(extracted_message)/7);   
count = 0;
for last_loop = 1:word_length
    count = count+1;
    A1(last_loop) = bin2dec(fliplr(extracted_message(count:count+6)));
    count = count+6;
end
final_extracted_message = char(A1)