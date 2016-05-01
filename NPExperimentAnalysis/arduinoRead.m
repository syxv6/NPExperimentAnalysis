clear all
a = arduino;
status = '';
th1 = 6;    
th2 = 7;    

while(1) 
    v = readVoltage(a, 'A0');
    force = v / 5.0 * 10;
    if (force < th1) 
        status = 'UNDER';
    elseif (force < th2)
        status = 'WITHIN LIMIT';
    else
        status = 'OVER';
    end
        
    fprintf('force = %f\tstatus = %s\n',force,status);
end
