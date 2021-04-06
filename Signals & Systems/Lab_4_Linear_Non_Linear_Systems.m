%Linear and Non Linear Systems
%To check linearity of the following functions:
%y(n)= 2x(n)
%y(n)= 2x(n)+2
%y(n)= x^2(n)
%y(n)= n^2x(n-2)
%y(n)= cos(x(n))

x1 = input('Enter list for X1(n): ');
x2 = input('Enter list for X2(n): ');
n = 1:1:length(x1);
if length(x1)~= length(x2)
    display('Length of the lists must be same')
else
    %Function 1: y=2x 
    a1 = randi(10);
    a2 = randi(10);
    y1= 2*x1;
    y2= 2*x2;
    rhs= a1*y1+a2*y2;
    lhs= 2*(a1*x1+a2*x2);
    if lhs==rhs
        disp("The function is linear")
    else
        disp("The function is non linear")
    end
    figure(1)
    subplot(2,2,1)
    plot(n,y1)
    subplot(2,2,2)
    plot(n,y2)
    subplot(2,2,3)
    plot(n,x1)
    subplot(2,2,4)
    plot(n,x2)
    
    %Function 2: y=2x+2
    a1= randi(10);
    a2= randi(10);
    y1= 2*x1+2;
    y2= 2*x2+2;
    rhs= a1*y1+a2*y2;
    lhs= 2*(a1*x1+a2*x2)+2; 
    if lhs==rhs
        disp("The function is linear")
    else
        disp("The function is non linear")
    end
    figure(2)
    subplot(2,2,1)
    plot(n,y1)
    subplot(2,2,2)
    plot(n,y2)
    subplot(2,2,3)
    plot(n,x1)
    subplot(2,2,4)
    plot(n,x2)
    
    %Function 3: y = x^2
    a1= randi(10);
    a2= randi(10);
    y1= x1.^2;
    y2= x2.^2;
    lhs= a1*y1+a2*y2;
    rhs= (a1*x1+a2*x2).^2;
    if lhs==rhs
        disp("The function is linear")
    else
        disp("The function is non linear")
    end
    
    figure(3)
    subplot(2,2,1)
    plot(n,y1)
    subplot(2,2,2)
    plot(n,y2)
    subplot(2,2,3)
    plot(n,x1)
    subplot(2,2,4)
    plot(n,x2)
    
    %Function 4: n^2*x
    a1= randi(10);
    a2= randi(10);
    y1 = (n.*n).*x1;
    y2 = (n.*n).*x2;
    rhs= a1*y1+a2*y2;
    lhs= (n.*n).*(a1*x1+a2*x2);
    if lhs==rhs
        disp("The function is linear")
    else
        disp("The function is non linear")
    end
    
    figure(4)
    subplot(2,2,1)
    plot(n,y1)
    subplot(2,2,2)
    plot(n,y2)
    subplot(2,2,3)
    plot(n,x1)
    subplot(2,2,4)
    plot(n,x2)
    
    %Function 5: y=cos(x)
    a1= randi(10);
    a2= randi(10);
    y1= cos(x1);
    y2= cos(x2);
    rhs= a1*y1+a2*y2;
    lhs= cos(a1*x1+a2*x2);
    if lhs==rhs
        disp("The function is linear")
    else
        disp("The function is non linear")
    end
    
    figure(5)
    subplot(2,2,1)
    plot(n,y1)
    subplot(2,2,2)
    plot(n,y2)
    subplot(2,2,3)
    plot(n,x1)
    subplot(2,2,4)
    plot(n,x2)
end
    


