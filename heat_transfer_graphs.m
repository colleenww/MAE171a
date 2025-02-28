%% MATLAB Script for Comparing Forced Convection Conditions

% Data for Forced Convection (Laminar, No Fins)
P_forced = [5, 12.5, 20];
deltaT_forced = [11.4, 27.6, 45.5];
Nu_forced = [85, 84.4, 81];
alpha_forced = [22, 22.44, 22];

% Data for Forced Convection (Turbulent, No Fins)
P_turbulent = [5, 12.5, 20];
deltaT_turbulent = [10.92, 26.3, 41.08];
Nu_turbulent = [88, 90.4, 90];
alpha_turbulent = [22.88, 24.02, 24.4];

% Data for Forced Convection (With Short Fins)
P_short = [5, 12.5, 20];
deltaT_short = [4.1, 13.9, 23.7];
Nu_short = [235.2, 170.2, 161];
alpha_short = [60.5, 44.3, 42.5];

% Data for Forced Convection (With Long Fins)
P_long = [5, 12.5, 20];
deltaT_long = [5.4, 12.46, 19.9];
Nu_long = [180.8, 190.8, 192];
alpha_long = [46.52, 49.54, 50.3];

% Data for Forced Convection (Half-plate Short Rods)
P_half = [5, 12.5, 20];
deltaT_half = [7.5, 17.8, 28.2];
Nu_half = [129.2, 132.4, 134];
alpha_half = [33.42, 34.7, 35.5];

% Compute deltaT/P for all cases
deltaT_P_forced = deltaT_forced ./ P_forced;
deltaT_P_turbulent = deltaT_turbulent ./ P_turbulent;
deltaT_P_short = deltaT_short ./ P_short;
deltaT_P_long = deltaT_long ./ P_long;
deltaT_P_half = deltaT_half ./ P_half;

%% Plot 1: Comparing the Two Forced Convection Conditions
figure;
plot(deltaT_P_forced, Nu_forced, 'rs-', 'LineWidth', 2, 'MarkerSize', 8);
hold on;
plot(deltaT_P_turbulent, Nu_turbulent, 'g^-', 'LineWidth', 2, 'MarkerSize', 8);
xlabel('\DeltaT / P (\circC/W)');
ylabel('Nusselt Number (Nu)');
title('Comparison of Forced Convection Conditions');
legend('Forced Convection (Laminar)', 'Forced Convection (Turbulent)', 'Location', 'Best');
grid on;
hold off;

%% Plot 2: Comparing Using Fins with Two Forced Conditions
figure;
plot(deltaT_P_forced, Nu_forced, 'rs-', 'LineWidth', 2, 'MarkerSize', 8);
hold on;
plot(deltaT_P_turbulent, Nu_turbulent, 'g^-', 'LineWidth', 2, 'MarkerSize', 8);
plot(deltaT_P_short, Nu_short, 'md-', 'LineWidth', 2, 'MarkerSize', 8);
xlabel('\DeltaT / P (\circC/W)');
ylabel('Nusselt Number (Nu)');
title('Effect of Adding Short Fins to Forced Convection');
legend('Forced Convection (Laminar)', 'Forced Convection (Turbulent)', 'Forced Convection w/ Short Fins', 'Location', 'Best');
grid on;
hold off;

%% Plot 3: Comparing Fin Length (Short vs. Long)
figure;
plot(deltaT_P_short, Nu_short, 'md-', 'LineWidth', 2, 'MarkerSize', 8);
hold on;
plot(deltaT_P_long, Nu_long, 'bo-', 'LineWidth', 2, 'MarkerSize', 8);
xlabel('\DeltaT / P (\circC/W)');
ylabel('Nusselt Number (Nu)');
title('Comparison of Fin Length (Short vs. Long)');
legend('Forced Convection w/ Short Fins', 'Forced Convection w/ Long Fins', 'Location', 'Best');
grid on;
hold off;

%% Plot 4: Comparing Number of Fins (Half vs. Full)
figure;
plot(deltaT_P_short, Nu_short, 'md-', 'LineWidth', 2, 'MarkerSize', 8);
hold on;
plot(deltaT_P_half, Nu_half, 'c*-', 'LineWidth', 2, 'MarkerSize', 8);
xlabel('\DeltaT / P (\circC/W)');
ylabel('Nusselt Number (Nu)');
title('Comparison of Number of Fins (Half vs. Full)');
legend('Forced Convection w/ Short Fins (Full)', 'Forced Convection w/ Short Fins (Half)', 'Location', 'Best');
grid on;
hold off;
