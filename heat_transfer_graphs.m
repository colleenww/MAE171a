% Given Data for Natural Convection
P_natural = [2, 5, 9, 12];                 % Power input (W)
deltaT_natural = [10.88, 23.3, 40.4, 54.4]; % Temperature difference (°C)
Nu_natural = [36.4, 41, 41, 40];            % Nusselt Number
alpha_natural = [2.06, 5, 9, 11.9];         % Alpha values

% Given Data for Forced Convection (No Fins)
P_forced = [5, 12.3, 20];                    % Power input (W)
deltaT_forced = [11.4, 27.6, 45.5];          % Temperature difference (°C)
Nu_forced = [85, 84, 81];                    % Nusselt Number
alpha_forced = [22, 22.3, 22];               % Alpha values

% Given Data for Forced Convection (Turbulent Flow, No Fins)
P_turbulent = [5, 12.7, 20];                 % Power input (W)
deltaT_turbulent = [10.9, 26.3, 41.1];       % Temperature difference (°C)
Nu_turbulent = [88, 91, 90];                 % Nusselt Number
alpha_turbulent = [22.9, 24.2, 24.4];        % Alpha values

% Given Data for Forced Convection (With Small Fins)
P_fins = [5, 12.3, 20.1];                     % Power input (W)
deltaT_fins = [4.1, 13.9, 23.7];              % Temperature difference (°C)
Nu_fins = [235, 170, 161];                    % Nusselt Number
alpha_fins = [60.5, 44.3, 42.5];              % Alpha values

% Compute deltaT/P for all cases
deltaT_P_natural = deltaT_natural ./ P_natural;
deltaT_P_forced = deltaT_forced ./ P_forced;
deltaT_P_turbulent = deltaT_turbulent ./ P_turbulent;
deltaT_P_fins = deltaT_fins ./ P_fins;

%% === Natural Convection Graphs ===
% --- Figure 1: Nu vs. deltaT/P (Natural Convection) ---
figure;
plot(deltaT_P_natural, Nu_natural, 'bo-', 'LineWidth', 2, 'MarkerSize', 8);
xlabel('\DeltaT / P (°C/W)');
ylabel('Nusselt Number (Nu)');
title('Natural Convection: Nu vs. \DeltaT / P');
grid on;

% --- Figure 2: deltaT vs. Power Input (Natural Convection) ---
figure;
plot(P_natural, deltaT_natural, 'bo-', 'LineWidth', 2, 'MarkerSize', 8);
xlabel('Power Input (W)');
ylabel('\DeltaT (°C)');
title('Natural Convection: \DeltaT vs. Power Input');
grid on;

% --- Figure 3: Alpha vs. deltaT/P (Natural Convection) ---
figure;
plot(deltaT_P_natural, alpha_natural, 'bo-', 'LineWidth', 2, 'MarkerSize', 8);
xlabel('\DeltaT / P (°C/W)');
ylabel('Alpha');
title('Natural Convection: Alpha vs. \DeltaT / P');
grid on;

%% === Forced Convection and Forced Turbulent Flow Graphs (Including Small Fins) ===
% --- Figure 4: Nu vs. deltaT/P (Forced Convection & Turbulent Flow & Small Fins) ---
figure;
plot(deltaT_P_forced, Nu_forced, 'rs-', 'LineWidth', 2, 'MarkerSize', 8);
hold on;
plot(deltaT_P_turbulent, Nu_turbulent, 'g^-', 'LineWidth', 2, 'MarkerSize', 8);
plot(deltaT_P_fins, Nu_fins, 'md-', 'LineWidth', 2, 'MarkerSize', 8);
xlabel('\DeltaT / P (°C/W)');
ylabel('Nusselt Number (Nu)');
title('Forced Convection: Nu vs. \DeltaT / P');
legend('Forced Convection', 'Forced Convection Turbulent', 'Forced Convection w/ Small Fins', 'Location', 'Best');
grid on;
hold off;

% --- Figure 5: deltaT vs. Power Input (Forced Convection & Turbulent Flow & Small Fins) ---
figure;
plot(P_forced, deltaT_forced, 'rs-', 'LineWidth', 2, 'MarkerSize', 8);
hold on;
plot(P_turbulent, deltaT_turbulent, 'g^-', 'LineWidth', 2, 'MarkerSize', 8);
plot(P_fins, deltaT_fins, 'md-', 'LineWidth', 2, 'MarkerSize', 8);
xlabel('Power Input (W)');
ylabel('\DeltaT (°C)');
title('Forced Convection: \DeltaT vs. Power Input');
legend('Forced Convection', 'Forced Convection Turbulent', 'Forced Convection w/ Small Fins', 'Location', 'Best');
grid on;
hold off;

% --- Figure 6: Alpha vs. deltaT/P (Forced Convection & Turbulent Flow & Small Fins) ---
figure;
plot(deltaT_P_forced, alpha_forced, 'rs-', 'LineWidth', 2, 'MarkerSize', 8);
hold on;
plot(deltaT_P_turbulent, alpha_turbulent, 'g^-', 'LineWidth', 2, 'MarkerSize', 8);
plot(deltaT_P_fins, alpha_fins, 'md-', 'LineWidth', 2, 'MarkerSize', 8);
xlabel('\DeltaT / P (°C/W)');
ylabel('Alpha');
title('Forced Convection: Alpha vs. \DeltaT / P');
legend('Forced Convection', 'Forced Convection Turbulent', 'Forced Convection w/ Small Fins', 'Location', 'Best');
grid on;
hold off;
