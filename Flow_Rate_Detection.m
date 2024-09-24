% Simulated flow rate data (replace this with actual sensor data)
distance = 1:100; % Distance steps (replace with actual distance data)
normal_flow = 10 + 0.1 * randn(1, 100); % Normal flow rates (randomized)
clog_flow = [normal_flow(1:50), 5 * ones(1, 50)]; % Introduce a clog

% Plot the simulated flow rates against distance
figure;
plot(distance, normal_flow, 'b', 'LineWidth', 1.5);
hold on;
plot(distance, clog_flow, 'r', 'LineWidth', 1.5);
xlabel('Distance');
ylabel('Flow Rate');
title('Simulated Flow Rates vs. Distance');
legend('Normal Flow', 'Clog Detected');

% Detect clog using gradient analysis
threshold_gradient = -0.5; % Define a threshold for gradient change

% Compute the gradient of the flow rates
gradient_flow = diff(clog_flow);

% Find the indices where the gradient is below the threshold
detected_indices = find(gradient_flow < threshold_gradient);

if isempty(detected_indices)
    disp('No clog detected.');
else
    disp(['Clog detected at distance steps: ', num2str(detected_indices)]);
    disp(['Clog occurred between distance steps ', num2str(min(detected_indices)), ' and ', num2str(max(detected_indices) + 1)]);
end
