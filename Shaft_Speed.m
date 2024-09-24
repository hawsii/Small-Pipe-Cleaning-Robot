% MATLAB code for a rotating shaft speed plot

% Define parameters
rotationSpeed = 5; % Constant rotation speed (adjust as needed)
totalTime = 10; % Total simulation time (seconds)
timeStep = 0.1; % Time step for simulation (seconds)

% Initialize time and speed arrays for plotting
time = 0:timeStep:totalTime;
speedArray = zeros(size(time));

% Simulate shaft rotation and calculate speed
for i = 1:length(time)
    % Calculate the angle based on the rotation speed
    angle = rotationSpeed * time(i);
    
    % Calculate the angular velocity (shaft speed)
    speedArray(i) = rotationSpeed;
    
    % Pause to simulate real-time behavior
    pause(timeStep);
end

% Plot the results
figure;
plot(time, speedArray, '-o');
title('Rotating Shaft Speed vs. Time');
xlabel('Time (s)');
ylabel('Shaft Speed (rad/s)');
