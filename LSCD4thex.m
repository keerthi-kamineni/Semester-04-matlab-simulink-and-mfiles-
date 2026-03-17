wn=6;
z=0.5;
k=1;
num=k*wn^2;
den=[1 2*z*wn wn^2];
sys = tf (num, den);
stepResponse = step (sys);
info=stepinfo(sys);
grid on
plot (stepResponse);
xlabel('Time (s)');
ylabel('Response');
title('step Response of the System');
%Display the step response data
disp('Step Response Data:');
disp(stepResponse);
disp('rise time:');
disp(info.RiseTime);
disp('settling time:');
disp(info.SettlingTime);
disp('overshoot:');
disp(info.Overshoot);
disp('peak time:');
disp(info.PeakTime);
%Calculate and display the steady-state value
steadyStateValue = stepResponse(end);
disp('Steady-State Value:');
disp(steadyStateValue);
