%%
% NOTE: THE SECTIONS NEED TO BE RUN SEQUENTIALLY TO PRODUCE THE CORRECT
% RESULTS

%%
clc
clear all
close all

%%
%    _____           __  _                ___         ____        __           ____                                   __  _           
%   / ___/___  _____/ /_(_)___  ____     /   |  _    / __ \____ _/ /_____ _   / __ \________  ____  ____ __________ _/ /_(_)___  ____ 
%   \__ \/ _ \/ ___/ __/ / __ \/ __ \   / /| | (_)  / / / / __ `/ __/ __ `/  / /_/ / ___/ _ \/ __ \/ __ `/ ___/ __ `/ __/ / __ \/ __ \
%  ___/ /  __/ /__/ /_/ / /_/ / / / /  / ___ |_    / /_/ / /_/ / /_/ /_/ /  / ____/ /  /  __/ /_/ / /_/ / /  / /_/ / /_/ / /_/ / / / /
% /____/\___/\___/\__/_/\____/_/ /_/  /_/  |_(_)  /_____/\__,_/\__/\__,_/  /_/   /_/   \___/ .___/\__,_/_/   \__,_/\__/_/\____/_/ /_/ 
%                                                                                         /_/                                        
%%

steel_vase = ["steel_vase_702_01_HOLD.mat", "steel_vase_702_02_HOLD.mat", "steel_vase_702_03_HOLD.mat", "steel_vase_702_04_HOLD.mat", "steel_vase_702_05_HOLD.mat", "steel_vase_702_06_HOLD.mat", "steel_vase_702_07_HOLD.mat", "steel_vase_702_08_HOLD.mat", "steel_vase_702_09_HOLD.mat", "steel_vase_702_10_HOLD.mat"];
kitchen_sponge = ["kitchen_sponge_114_01_HOLD.mat", "kitchen_sponge_114_02_HOLD.mat", "kitchen_sponge_114_03_HOLD.mat", "kitchen_sponge_114_04_HOLD.mat", "kitchen_sponge_114_05_HOLD.mat", "kitchen_sponge_114_06_HOLD.mat", "kitchen_sponge_114_07_HOLD.mat", "kitchen_sponge_114_08_HOLD.mat", "kitchen_sponge_114_09_HOLD.mat", "kitchen_sponge_114_10_HOLD.mat"];
flour_sack = ["flour_sack_410_01_HOLD.mat", "flour_sack_410_02_HOLD.mat", "flour_sack_410_03_HOLD.mat", "flour_sack_410_04_HOLD.mat", "flour_sack_410_05_HOLD.mat", "flour_sack_410_06_HOLD.mat", "flour_sack_410_07_HOLD.mat", "flour_sack_410_08_HOLD.mat", "flour_sack_410_09_HOLD.mat", "flour_sack_410_10_HOLD.mat"];
car_sponge = ["car_sponge_101_01_HOLD.mat", "car_sponge_101_02_HOLD.mat", "car_sponge_101_03_HOLD.mat", "car_sponge_101_04_HOLD.mat", "car_sponge_101_05_HOLD.mat", "car_sponge_101_06_HOLD.mat", "car_sponge_101_07_HOLD.mat", "car_sponge_101_08_HOLD.mat", "car_sponge_101_09_HOLD.mat", "car_sponge_101_10_HOLD.mat"];
black_foam = ["black_foam_110_01_HOLD.mat", "black_foam_110_02_HOLD.mat", "black_foam_110_03_HOLD.mat", "black_foam_110_04_HOLD.mat", "black_foam_110_05_HOLD.mat", "black_foam_110_06_HOLD.mat", "black_foam_110_07_HOLD.mat", "black_foam_110_08_HOLD.mat", "black_foam_110_09_HOLD.mat", "black_foam_110_10_HOLD.mat"];
acrylic = ["acrylic_211_01_HOLD.mat", "acrylic_211_02_HOLD.mat", "acrylic_211_03_HOLD.mat", "acrylic_211_04_HOLD.mat", "acrylic_211_05_HOLD.mat", "acrylic_211_06_HOLD.mat", "acrylic_211_07_HOLD.mat", "acrylic_211_08_HOLD.mat", "acrylic_211_09_HOLD.mat", "acrylic_211_10_HOLD.mat"];

%% Data Visualisation as per My Requirements

% --------------------------Finger F0-------------------------- %
% 6 objects, 10 trials, 60 data points per time instance (6x10 per each
% colour) so 60000 data points per figure.
% There are 19 different electrode time sensor data streams so 19 figures

%%

for i = 1:19
    figure('WindowState', 'maximized')
    title = sprintf('F0 Electrode Sensor Stream %d', i);
    sgtitle(title)
    xlabel('Time')
    ylabel(title)
    hold on
    for j = 1:10
        load(steel_vase(j))
        time = 1:length(F0Electrodes(i,:));
        plot(time, F0Electrodes(i,:),'Linestyle', ':', 'Color', "#0072BD", 'Marker', '.', 'MarkerSize', 10)
        load(kitchen_sponge(j))
        time = 1:length(F0Electrodes(i,:));
        plot(time, F0Electrodes(i,:),'Linestyle', ':', 'Color', "#D95319", 'Marker', '.', 'MarkerSize', 10)
        load(flour_sack(j))
        time = 1:length(F0Electrodes(i,:));
        plot(time, F0Electrodes(i,:),'Linestyle', ':', 'Color', "#EDB120", 'Marker', '.', 'MarkerSize', 10)
        load(car_sponge(j))
        time = 1:length(F0Electrodes(i,:));
        plot(time, F0Electrodes(i,:),'Linestyle', ':', 'Color', "#7E2F8E", 'Marker', '.', 'MarkerSize', 10)
        load(black_foam(j))
        time = 1:length(F0Electrodes(i,:));
        plot(time, F0Electrodes(i,:),'Linestyle', ':', 'Color', "#77AC30", 'Marker', '.', 'MarkerSize', 10)
        load(acrylic(j))
        time = 1:length(F0Electrodes(i,:));
        plot(time, F0Electrodes(i,:),'Linestyle', ':', 'Color', "#4DBEEE", 'Marker', '.', 'MarkerSize', 10)
        legend('Steel Vase', 'Kitchen Sponge', 'Flour Sack', 'Car Sponge', 'Black Foam', 'Acrylic')
    end
    hold off
end

%% Data Visualisation as per Assessor's Requirements

% --------------------------Finger F0-------------------------- %
% 3 objects, 2 trials, 6 data points per time instance (3x2 per each
% colour) so 6000 data points per subplot.
% There are 19 different electrode time sensor data streams so 19 subplots

%%

% figure('WindowState', 'maximized')
% for i = 1:19
%     subplot(4,5,i)
%     title = sprintf('Electrode Sensor Stream %d', i);
%     sgtitle('Electrode Time Series Data for Steel Vase, Kitchen Sponge and Flour Sack on Two Separate Trials')
%     xlabel('Time')
%     ylabel(title)
%     hold on
%     for j = 1:2
%         load(steel_vase(j))
%         time = 1:length(F0Electrodes(i,:));
%         plot(time, F0Electrodes(i,:),'Linestyle', ':', 'Color', "#0072BD", 'Marker', '.', 'MarkerSize', 10)
%         load(kitchen_sponge(j))
%         time = 1:length(F0Electrodes(i,:));
%         plot(time, F0Electrodes(i,:),'Linestyle', ':', 'Color', "#D95319", 'Marker', '.', 'MarkerSize', 10)
%         load(flour_sack(j))
%         time = 1:length(F0Electrodes(i,:));
%         plot(time, F0Electrodes(i,:),'Linestyle', ':', 'Color', "#EDB120", 'Marker', '.', 'MarkerSize', 10)
%     end
%     hold off
% end

%% Data Visualisation as Per My Requirements

% --------------------------Finger F0-------------------------- %
% 6 objects, 10 trials, 60 data points per time instance (6x10 per each
% colour) so 60000 data points per plot and there are 4 plots so 240000 data
% points in total for one figure.

%%

figure('WindowState', 'maximized')
sgtitle('F0 PVT Data')

% high frequency fluid vibrations against time

subplot(2,2,1)
xlabel('Time')
ylabel('High Frequency Fluid Vibrations')
hold on
for i = 1:10
    load(steel_vase(i))
    time = 1:length(F0pac(2,:));
    plot(time, F0pac(2,:),'Linestyle', ':', 'Color', "#0072BD", 'Marker', '.', 'MarkerSize', 10)
    load(kitchen_sponge(i))
    time = 1:length(F0pac(2,:));
    plot(time, F0pac(2,:),'Linestyle', ':', 'Color', "#D95319", 'Marker', '.', 'MarkerSize', 10)
    load(flour_sack(i))
    time = 1:length(F0pac(2,:));
    plot(time, F0pac(2,:),'Linestyle', ':', 'Color', "#EDB120", 'Marker', '.', 'MarkerSize', 10)
    load(car_sponge(i))
    time = 1:length(F0pac(2,:));
    plot(time, F0pac(2,:),'Linestyle', ':', 'Color', "#7E2F8E", 'Marker', '.', 'MarkerSize', 10)
    load(black_foam(i))
    time = 1:length(F0pac(2,:));
    plot(time, F0pac(2,:),'Linestyle', ':', 'Color', "#77AC30", 'Marker', '.', 'MarkerSize', 10)
    load(acrylic(i))
    time = 1:length(F0pac(2,:));
    plot(time, F0pac(2,:),'Linestyle', ':', 'Color', "#4DBEEE", 'Marker', '.', 'MarkerSize', 10)
    legend('Steel Vase', 'Kitchen Sponge', 'Flour Sack', 'Car Sponge', 'Black Foam', 'Acrylic')
end
hold off


% low frequency fluid pressure against time

subplot(2,2,2)
xlabel('Time')
ylabel('Low Frequency Fluid Vibrations')
hold on
for i = 1:10
    load(steel_vase(i))
    time = 1:length(F0pdc);
    plot(time, F0pdc,'Linestyle', ':', 'Color', "#0072BD", 'Marker', '.', 'MarkerSize', 10)
    load(kitchen_sponge(i))
    time = 1:length(F0pdc);
    plot(time, F0pdc,'Linestyle', ':', 'Color', "#D95319", 'Marker', '.', 'MarkerSize', 10)
    load(flour_sack(i))
    time = 1:length(F0pdc);
    plot(time, F0pdc,'Linestyle', ':', 'Color', "#EDB120", 'Marker', '.', 'MarkerSize', 10)
    load(car_sponge(i))
    time = 1:length(F0pdc);
    plot(time, F0pdc,'Linestyle', ':', 'Color', "#7E2F8E", 'Marker', '.', 'MarkerSize', 10)
    load(black_foam(i))
    time = 1:length(F0pdc);
    plot(time, F0pdc,'Linestyle', ':', 'Color', "#77AC30", 'Marker', '.', 'MarkerSize', 10)
    load(acrylic(i))
    time = 1:length(F0pdc);
    plot(time, F0pdc,'Linestyle', ':', 'Color', "#4DBEEE", 'Marker', '.', 'MarkerSize', 10)
    legend('Steel Vase', 'Kitchen Sponge', 'Flour Sack', 'Car Sponge', 'Black Foam', 'Acrylic')
end
hold off


% core temperature change against time

subplot(2,2,3)
xlabel('Time')
ylabel('Core Temperature Change')
hold on
for i = 1:10
    load(steel_vase(i))
    time = 1:length(F0tac);
    plot(time, F0tac,'Linestyle', ':', 'Color', "#0072BD", 'Marker', '.', 'MarkerSize', 10)
    load(kitchen_sponge(i))
    time = 1:length(F0tac);
    plot(time, F0tac,'Linestyle', ':', 'Color', "#D95319", 'Marker', '.', 'MarkerSize', 10)
    load(flour_sack(i))
    time = 1:length(F0tac);
    plot(time, F0tac,'Linestyle', ':', 'Color', "#EDB120", 'Marker', '.', 'MarkerSize', 10)
    load(car_sponge(i))
    time = 1:length(F0tac);
    plot(time, F0tac,'Linestyle', ':', 'Color', "#7E2F8E", 'Marker', '.', 'MarkerSize', 10)
    load(black_foam(i))
    time = 1:length(F0tac);
    plot(time, F0tac,'Linestyle', ':', 'Color', "#77AC30", 'Marker', '.', 'MarkerSize', 10)
    load(acrylic(i))
    time = 1:length(F0tac);
    plot(time, F0tac,'Linestyle', ':', 'Color', "#4DBEEE", 'Marker', '.', 'MarkerSize', 10)
    legend('Steel Vase', 'Kitchen Sponge', 'Flour Sack', 'Car Sponge', 'Black Foam', 'Acrylic')
end
hold off


% core temperature against time

subplot(2,2,4)
xlabel('Time')
ylabel('Core Temperature')
hold on
for i = 1:10
    load(steel_vase(i))
    time = 1:length(F0tdc);
    plot(time, F0tdc,'Linestyle', ':', 'Color', "#0072BD", 'Marker', '.', 'MarkerSize', 10)
    load(kitchen_sponge(i))
    time = 1:length(F0tdc);
    plot(time, F0tdc,'Linestyle', ':', 'Color', "#D95319", 'Marker', '.', 'MarkerSize', 10)
    load(flour_sack(i))
    time = 1:length(F0tdc);
    plot(time, F0tdc,'Linestyle', ':', 'Color', "#EDB120", 'Marker', '.', 'MarkerSize', 10)
    load(car_sponge(i))
    time = 1:length(F0tdc);
    plot(time, F0tdc,'Linestyle', ':', 'Color', "#7E2F8E", 'Marker', '.', 'MarkerSize', 10)
    load(black_foam(i))
    time = 1:length(F0tdc);
    plot(time, F0tdc,'Linestyle', ':', 'Color', "#77AC30", 'Marker', '.', 'MarkerSize', 10)
    load(acrylic(i))
    time = 1:length(F0tdc);
    plot(time, F0tdc,'Linestyle', ':', 'Color', "#4DBEEE", 'Marker', '.', 'MarkerSize', 10)
    legend('Steel Vase', 'Kitchen Sponge', 'Flour Sack', 'Car Sponge', 'Black Foam', 'Acrylic')
end
hold off

%% Data Visualisation as Per Assessor's Requirements

% --------------------------Finger F0-------------------------- %
% 3 objects, 2 trials, 6 data points per time instance (3x2 per each
% colour) so 6000 data points per subplot and there are 4 plots so 24000 datapoints
% in total for one figure.

%%

% figure('WindowState', 'maximized')
% sgtitle('PVT Data for Steel Vase, Kitchen Sponge and Flour Sack on Two Separate Trials')
% 
% % high frequency fluid vibrations against time
% 
% subplot(2,2,1)
% xlabel('Time')
% ylabel('High Frequency Fluid Vibrations')
% hold on
% for i = 1:2
%     load(steel_vase(i))
%     time = 1:length(F0pac(2,:));
%     plot(time, F0pac(2,:),'Linestyle', ':', 'Color', "#0072BD", 'Marker', '.', 'MarkerSize', 10)
%     load(kitchen_sponge(i))
%     time = 1:length(F0pac(2,:));
%     plot(time, F0pac(2,:),'Linestyle', ':', 'Color', "#D95319", 'Marker', '.', 'MarkerSize', 10)
%     load(flour_sack(i))
%     time = 1:length(F0pac(2,:));
%     plot(time, F0pac(2,:),'Linestyle', ':', 'Color', "#EDB120", 'Marker', '.', 'MarkerSize', 10)
%     legend('Steel Vase', 'Kitchen Sponge', 'Flour Sack')
% end
% hold off
% 
% % low frequency fluid pressure against time
% 
% subplot(2,2,2)
% xlabel('Time')
% ylabel('Low Frequency Fluid Vibrations')
% hold on
% for i = 1:2
%     load(steel_vase(i))
%     time = 1:length(F0pdc);
%     plot(time, F0pdc,'Linestyle', ':', 'Color', "#0072BD", 'Marker', '.', 'MarkerSize', 10)
%     load(kitchen_sponge(i))
%     time = 1:length(F0pdc);
%     plot(time, F0pdc,'Linestyle', ':', 'Color', "#D95319", 'Marker', '.', 'MarkerSize', 10)
%     load(flour_sack(i))
%     time = 1:length(F0pdc);
%     plot(time, F0pdc,'Linestyle', ':', 'Color', "#EDB120", 'Marker', '.', 'MarkerSize', 10)
%     legend('Steel Vase', 'Kitchen Sponge', 'Flour Sack')
% end
% hold off
% 
% 
% % core temperature change against time
% 
% subplot(2,2,3)
% xlabel('Time')
% ylabel('Core Temperature Change')
% hold on
% for i = 1:2
%     load(steel_vase(i))
%     time = 1:length(F0tac);
%     plot(time, F0tac,'Linestyle', ':', 'Color', "#0072BD", 'Marker', '.', 'MarkerSize', 10)
%     load(kitchen_sponge(i))
%     time = 1:length(F0tac);
%     plot(time, F0tac,'Linestyle', ':', 'Color', "#D95319", 'Marker', '.', 'MarkerSize', 10)
%     load(flour_sack(i))
%     time = 1:length(F0tac);
%     plot(time, F0tac,'Linestyle', ':', 'Color', "#EDB120", 'Marker', '.', 'MarkerSize', 10)
%     legend('Steel Vase', 'Kitchen Sponge', 'Flour Sack')
% end
% hold off
% 
% 
% % core temperature against time
% 
% subplot(2,2,4)
% xlabel('Time')
% ylabel('Core Temperature')
% hold on
% for i = 1:2
%     load(steel_vase(i))
%     time = 1:length(F0tdc);
%     plot(time, F0tdc,'Linestyle', ':', 'Color', "#0072BD", 'Marker', '.', 'MarkerSize', 10)
%     load(kitchen_sponge(i))
%     time = 1:length(F0tdc);
%     plot(time, F0tdc,'Linestyle', ':', 'Color', "#D95319", 'Marker', '.', 'MarkerSize', 10)
%     load(flour_sack(i))
%     time = 1:length(F0tdc);
%     plot(time, F0tdc,'Linestyle', ':', 'Color', "#EDB120", 'Marker', '.', 'MarkerSize', 10)
%     legend('Steel Vase', 'Kitchen Sponge', 'Flour Sack')
% end
% hold off

%% Data Visualisation as per My Requirements

% --------------------------Finger F1-------------------------- %
% 6 objects, 10 trials, 60 data points per time instance (6x10 per each
% colour) so 60000 data points per figure.
% There are 19 different electrode time sensor data streams so 19 figures

%%

for i = 1:19
    figure('WindowState', 'maximized')
    title = sprintf('F1 Electrode Sensor Stream %d', i);
    sgtitle(title)
    xlabel('Time')
    ylabel(title)
    hold on
    for j = 1:10
        load(steel_vase(j))
        time = 1:length(F1Electrodes(i,:));
        plot(time, F1Electrodes(i,:),'Linestyle', ':', 'Color', "#0072BD", 'Marker', '.', 'MarkerSize', 10)
        load(kitchen_sponge(j))
        time = 1:length(F1Electrodes(i,:));
        plot(time, F1Electrodes(i,:),'Linestyle', ':', 'Color', "#D95319", 'Marker', '.', 'MarkerSize', 10)
        load(flour_sack(j))
        time = 1:length(F1Electrodes(i,:));
        plot(time, F1Electrodes(i,:),'Linestyle', ':', 'Color', "#EDB120", 'Marker', '.', 'MarkerSize', 10)
        load(car_sponge(j))
        time = 1:length(F1Electrodes(i,:));
        plot(time, F1Electrodes(i,:),'Linestyle', ':', 'Color', "#7E2F8E", 'Marker', '.', 'MarkerSize', 10)
        load(black_foam(j))
        time = 1:length(F1Electrodes(i,:));
        plot(time, F1Electrodes(i,:),'Linestyle', ':', 'Color', "#77AC30", 'Marker', '.', 'MarkerSize', 10)
        load(acrylic(j))
        time = 1:length(F1Electrodes(i,:));
        plot(time, F1Electrodes(i,:),'Linestyle', ':', 'Color', "#4DBEEE", 'Marker', '.', 'MarkerSize', 10)
        legend('Steel Vase', 'Kitchen Sponge', 'Flour Sack', 'Car Sponge', 'Black Foam', 'Acrylic')
    end
    hold off
end

%% Data Visualisation as per Assessor's Requirements

% --------------------------Finger F1-------------------------- %
% 3 objects, 2 trials, 6 data points per time instance (3x2 per each
% colour) so 6000 data points per subplot.
% There are 19 different electrode time sensor data streams so 19 subplots

%%

% figure('WindowState', 'maximized')
% for i = 1:19
%     subplot(4,5,i)
%     title = sprintf('Electrode Sensor Stream %d', i);
%     sgtitle('Electrode Time Series Data for Steel Vase, Kitchen Sponge and Flour Sack on Two Separate Trials')
%     xlabel('Time')
%     ylabel(title)
%     hold on
%     for j = 1:2
%         load(steel_vase(j))
%         time = 1:length(F1Electrodes(i,:));
%         plot(time, F1Electrodes(i,:),'Linestyle', ':', 'Color', "#0072BD", 'Marker', '.', 'MarkerSize', 10)
%         load(kitchen_sponge(j))
%         time = 1:length(F1Electrodes(i,:));
%         plot(time, F1Electrodes(i,:),'Linestyle', ':', 'Color', "#D95319", 'Marker', '.', 'MarkerSize', 10)
%         load(flour_sack(j))
%         time = 1:length(F1Electrodes(i,:));
%         plot(time, F1Electrodes(i,:),'Linestyle', ':', 'Color', "#EDB120", 'Marker', '.', 'MarkerSize', 10)
%     end
%     hold off
% end

%% Data Visualisation as Per My Requirements

% --------------------------Finger F1-------------------------- %
% 6 objects, 10 trials, 60 data points per time instance (6x10 per each
% colour) so 60000 data points per plot and there are 4 plots so 240000 data
% points in total for one figure.

%%

figure('WindowState', 'maximized')
sgtitle('F1 PVT Data')

% high frequency fluid vibrations against time

subplot(2,2,1)
xlabel('Time')
ylabel('High Frequency Fluid Vibrations')
hold on
for i = 1:10
    load(steel_vase(i))
    time = 1:length(F1pac(2,:));
    plot(time, F1pac(2,:),'Linestyle', ':', 'Color', "#0072BD", 'Marker', '.', 'MarkerSize', 10)
    load(kitchen_sponge(i))
    time = 1:length(F1pac(2,:));
    plot(time, F1pac(2,:),'Linestyle', ':', 'Color', "#D95319", 'Marker', '.', 'MarkerSize', 10)
    load(flour_sack(i))
    time = 1:length(F1pac(2,:));
    plot(time, F1pac(2,:),'Linestyle', ':', 'Color', "#EDB120", 'Marker', '.', 'MarkerSize', 10)
    load(car_sponge(i))
    time = 1:length(F1pac(2,:));
    plot(time, F1pac(2,:),'Linestyle', ':', 'Color', "#7E2F8E", 'Marker', '.', 'MarkerSize', 10)
    load(black_foam(i))
    time = 1:length(F1pac(2,:));
    plot(time, F1pac(2,:),'Linestyle', ':', 'Color', "#77AC30", 'Marker', '.', 'MarkerSize', 10)
    load(acrylic(i))
    time = 1:length(F1pac(2,:));
    plot(time, F1pac(2,:),'Linestyle', ':', 'Color', "#4DBEEE", 'Marker', '.', 'MarkerSize', 10)
    legend('Steel Vase', 'Kitchen Sponge', 'Flour Sack', 'Car Sponge', 'Black Foam', 'Acrylic')
end
hold off


% low frequency fluid pressure against time

subplot(2,2,2)
xlabel('Time')
ylabel('Low Frequency Fluid Vibrations')
hold on
for i = 1:10
    load(steel_vase(i))
    time = 1:length(F1pdc);
    plot(time, F1pdc,'Linestyle', ':', 'Color', "#0072BD", 'Marker', '.', 'MarkerSize', 10)
    load(kitchen_sponge(i))
    time = 1:length(F1pdc);
    plot(time, F1pdc,'Linestyle', ':', 'Color', "#D95319", 'Marker', '.', 'MarkerSize', 10)
    load(flour_sack(i))
    time = 1:length(F1pdc);
    plot(time, F1pdc,'Linestyle', ':', 'Color', "#EDB120", 'Marker', '.', 'MarkerSize', 10)
    load(car_sponge(i))
    time = 1:length(F1pdc);
    plot(time, F1pdc,'Linestyle', ':', 'Color', "#7E2F8E", 'Marker', '.', 'MarkerSize', 10)
    load(black_foam(i))
    time = 1:length(F1pdc);
    plot(time, F1pdc,'Linestyle', ':', 'Color', "#77AC30", 'Marker', '.', 'MarkerSize', 10)
    load(acrylic(i))
    time = 1:length(F1pdc);
    plot(time, F1pdc,'Linestyle', ':', 'Color', "#4DBEEE", 'Marker', '.', 'MarkerSize', 10)
    legend('Steel Vase', 'Kitchen Sponge', 'Flour Sack', 'Car Sponge', 'Black Foam', 'Acrylic')
end
hold off


% core temperature change against time

subplot(2,2,3)
xlabel('Time')
ylabel('Core Temperature Change')
hold on
for i = 1:10
    load(steel_vase(i))
    time = 1:length(F1tac);
    plot(time, F1tac,'Linestyle', ':', 'Color', "#0072BD", 'Marker', '.', 'MarkerSize', 10)
    load(kitchen_sponge(i))
    time = 1:length(F1tac);
    plot(time, F1tac,'Linestyle', ':', 'Color', "#D95319", 'Marker', '.', 'MarkerSize', 10)
    load(flour_sack(i))
    time = 1:length(F1tac);
    plot(time, F1tac,'Linestyle', ':', 'Color', "#EDB120", 'Marker', '.', 'MarkerSize', 10)
    load(car_sponge(i))
    time = 1:length(F1tac);
    plot(time, F1tac,'Linestyle', ':', 'Color', "#7E2F8E", 'Marker', '.', 'MarkerSize', 10)
    load(black_foam(i))
    time = 1:length(F1tac);
    plot(time, F1tac,'Linestyle', ':', 'Color', "#77AC30", 'Marker', '.', 'MarkerSize', 10)
    load(acrylic(i))
    time = 1:length(F1tac);
    plot(time, F1tac,'Linestyle', ':', 'Color', "#4DBEEE", 'Marker', '.', 'MarkerSize', 10)
    legend('Steel Vase', 'Kitchen Sponge', 'Flour Sack', 'Car Sponge', 'Black Foam', 'Acrylic')
end
hold off


% core temperature against time

subplot(2,2,4)
xlabel('Time')
ylabel('Core Temperature')
hold on
for i = 1:10
    load(steel_vase(i))
    time = 1:length(F1tdc);
    plot(time, F1tdc,'Linestyle', ':', 'Color', "#0072BD", 'Marker', '.', 'MarkerSize', 10)
    load(kitchen_sponge(i))
    time = 1:length(F1tdc);
    plot(time, F1tdc,'Linestyle', ':', 'Color', "#D95319", 'Marker', '.', 'MarkerSize', 10)
    load(flour_sack(i))
    time = 1:length(F1tdc);
    plot(time, F1tdc,'Linestyle', ':', 'Color', "#EDB120", 'Marker', '.', 'MarkerSize', 10)
    load(car_sponge(i))
    time = 1:length(F1tdc);
    plot(time, F1tdc,'Linestyle', ':', 'Color', "#7E2F8E", 'Marker', '.', 'MarkerSize', 10)
    load(black_foam(i))
    time = 1:length(F1tdc);
    plot(time, F1tdc,'Linestyle', ':', 'Color', "#77AC30", 'Marker', '.', 'MarkerSize', 10)
    load(acrylic(i))
    time = 1:length(F1tdc);
    plot(time, F1tdc,'Linestyle', ':', 'Color', "#4DBEEE", 'Marker', '.', 'MarkerSize', 10)
    legend('Steel Vase', 'Kitchen Sponge', 'Flour Sack', 'Car Sponge', 'Black Foam', 'Acrylic')
end
hold off

%% Data Visualisation as Per Assessor's Requirements

% --------------------------Finger F1-------------------------- %
% 3 objects, 2 trials, 6 data points per time instance (3x2 per each
% colour) so 6000 data points per subplot and there are 4 plots so 24000 datapoints
% in total for one figure.

%%

% figure('WindowState', 'maximized')
% sgtitle('PVT Data for Steel Vase, Kitchen Sponge and Flour Sack on Two Separate Trials')
% 
% % high frequency fluid vibrations against time
% 
% subplot(2,2,1)
% xlabel('Time')
% ylabel('High Frequency Fluid Vibrations')
% hold on
% for i = 1:2
%     load(steel_vase(i))
%     time = 1:length(F1pac(2,:));
%     plot(time, F1pac(2,:),'Linestyle', ':', 'Color', "#0072BD", 'Marker', '.', 'MarkerSize', 10)
%     load(kitchen_sponge(i))
%     time = 1:length(F1pac(2,:));
%     plot(time, F1pac(2,:),'Linestyle', ':', 'Color', "#D95319", 'Marker', '.', 'MarkerSize', 10)
%     load(flour_sack(i))
%     time = 1:length(F1pac(2,:));
%     plot(time, F1pac(2,:),'Linestyle', ':', 'Color', "#EDB120", 'Marker', '.', 'MarkerSize', 10)
%     legend('Steel Vase', 'Kitchen Sponge', 'Flour Sack')
% end
% hold off
% 
% % low frequency fluid pressure against time
% 
% subplot(2,2,2)
% xlabel('Time')
% ylabel('Low Frequency Fluid Vibrations')
% hold on
% for i = 1:2
%     load(steel_vase(i))
%     time = 1:length(F1pdc);
%     plot(time, F1pdc,'Linestyle', ':', 'Color', "#0072BD", 'Marker', '.', 'MarkerSize', 10)
%     load(kitchen_sponge(i))
%     time = 1:length(F1pdc);
%     plot(time, F1pdc,'Linestyle', ':', 'Color', "#D95319", 'Marker', '.', 'MarkerSize', 10)
%     load(flour_sack(i))
%     time = 1:length(F1pdc);
%     plot(time, F1pdc,'Linestyle', ':', 'Color', "#EDB120", 'Marker', '.', 'MarkerSize', 10)
%     legend('Steel Vase', 'Kitchen Sponge', 'Flour Sack')
% end
% hold off
% 
% 
% % core temperature change against time
% 
% subplot(2,2,3)
% xlabel('Time')
% ylabel('Core Temperature Change')
% hold on
% for i = 1:2
%     load(steel_vase(i))
%     time = 1:length(F1tac);
%     plot(time, F1tac,'Linestyle', ':', 'Color', "#0072BD", 'Marker', '.', 'MarkerSize', 10)
%     load(kitchen_sponge(i))
%     time = 1:length(F1tac);
%     plot(time, F1tac,'Linestyle', ':', 'Color', "#D95319", 'Marker', '.', 'MarkerSize', 10)
%     load(flour_sack(i))
%     time = 1:length(F1tac);
%     plot(time, F1tac,'Linestyle', ':', 'Color', "#EDB120", 'Marker', '.', 'MarkerSize', 10)
%     legend('Steel Vase', 'Kitchen Sponge', 'Flour Sack')
% end
% hold off
% 
% 
% % core temperature against time
% 
% subplot(2,2,4)
% xlabel('Time')
% ylabel('Core Temperature')
% hold on
% for i = 1:2
%     load(steel_vase(i))
%     time = 1:length(F1tdc);
%     plot(time, F1tdc,'Linestyle', ':', 'Color', "#0072BD", 'Marker', '.', 'MarkerSize', 10)
%     load(kitchen_sponge(i))
%     time = 1:length(F1tdc);
%     plot(time, F1tdc,'Linestyle', ':', 'Color', "#D95319", 'Marker', '.', 'MarkerSize', 10)
%     load(flour_sack(i))
%     time = 1:length(F1tdc);
%     plot(time, F1tdc,'Linestyle', ':', 'Color', "#EDB120", 'Marker', '.', 'MarkerSize', 10)
%     legend('Steel Vase', 'Kitchen Sponge', 'Flour Sack')
% end
% hold off

%%

% choosing a single time instance and sampling the pressure, vibration and
% temperature at the selected time instance for finger F0
% 6 by 10 by 3 tensor

%%

selected_time_instance = 740;

% object_number x trial_number x feature

data3D = zeros(6,10,3);
disp(data3D)

for i = 1:10

    % sampling high frequency fluid vibrations

    load(steel_vase(i))
    data3D(1,i,1) = F0pac(2,selected_time_instance);
    load(kitchen_sponge(i))
    data3D(2,i,1) = F0pac(2,selected_time_instance);
    load(flour_sack(i))
    data3D(3,i,1) = F0pac(2,selected_time_instance);
    load(car_sponge(i))
    data3D(4,i,1) = F0pac(2,selected_time_instance);
    load(black_foam(i))
    data3D(5,i,1) = F0pac(2,selected_time_instance);
    load(acrylic(i))
    data3D(6,i,1) = F0pac(2,selected_time_instance);

    % sampling low frequency fluid pressure

    load(steel_vase(i))
    data3D(1,i,2) = F0pdc(selected_time_instance);
    load(kitchen_sponge(i))
    data3D(2,i,2) = F0pdc(selected_time_instance);
    load(flour_sack(i))
    data3D(3,i,2) = F0pdc(selected_time_instance);
    load(car_sponge(i))
    data3D(4,i,2) = F0pdc(selected_time_instance);
    load(black_foam(i))
    data3D(5,i,2) = F0pdc(selected_time_instance);
    load(acrylic(i))
    data3D(6,i,2) = F0pdc(selected_time_instance);

    % sampling core temperature

    load(steel_vase(i))
    data3D(1,i,3) = F0tdc(selected_time_instance);
    load(kitchen_sponge(i))
    data3D(2,i,3) = F0tdc(selected_time_instance);
    load(flour_sack(i))
    data3D(3,i,3) = F0tdc(selected_time_instance);
    load(car_sponge(i))
    data3D(4,i,3) = F0tdc(selected_time_instance);
    load(black_foam(i))
    data3D(5,i,3) = F0tdc(selected_time_instance);
    load(acrylic(i))
    data3D(6,i,3) = F0tdc(selected_time_instance);
end

% Save variables to a .mat file
save('F0_PVT.mat', 'data3D');

disp(data3D)

%%

% choosing a single time instance and sampling the electrodes data at the 
% selected time instance for finger F0.
% 6 by 10 by 19 tensor

%%

% object_number x trial_number x electrode_sensor_number

electrodeData3D = zeros(6,10,19);
disp(electrodeData3D)

for i = 1:19
    for j = 1:10

        % sampling electrode sensor data
    
        load(steel_vase(j))
        electrodeData3D(1,j,i) = F0Electrodes(i,selected_time_instance);
        load(kitchen_sponge(j))
        electrodeData3D(2,j,i) = F0Electrodes(i,selected_time_instance);
        load(flour_sack(j))
        electrodeData3D(3,j,i) = F0Electrodes(i,selected_time_instance);
        load(car_sponge(j))
        electrodeData3D(4,j,i) = F0Electrodes(i,selected_time_instance);
        load(black_foam(j))
        electrodeData3D(5,j,i) = F0Electrodes(i,selected_time_instance);
        load(acrylic(j))
        electrodeData3D(6,j,i) = F0Electrodes(i,selected_time_instance);
    end
end

% Save variables to a .mat file
save('F0_ElectrodeData.mat', 'electrodeData3D');

disp(electrodeData3D)

%%

% creating a 3D scatter plot of the complete contents of the PVT mat file

%%

% high frequency fluid vibrations

vibrations_steel_vase =  data3D(1,:,1);
vibrations_kitchen_sponge = data3D(2,:,1);
vibrations_flour_sack = data3D(3,:,1);
vibrations_car_sponge = data3D(4,:,1);
vibrations_black_foam = data3D(5,:,1);
vibrations_acrylic = data3D(6,:,1);

vibrations_matrix = [vibrations_steel_vase; vibrations_kitchen_sponge; vibrations_flour_sack; vibrations_car_sponge; vibrations_black_foam; vibrations_acrylic];

% low frequency fluid pressure

pressure_steel_vase = data3D(1,:,2);
pressure_kitchen_sponge = data3D(2,:,2);
pressure_flour_sack = data3D(3,:,2);
pressure_car_sponge = data3D(4,:,2);
pressure_black_foam = data3D(5,:,2);
pressure_acrylic = data3D(6,:,2);

pressure_matrix = [pressure_steel_vase; pressure_kitchen_sponge; pressure_flour_sack; pressure_car_sponge; pressure_black_foam; pressure_acrylic];

% core temperature

temperature_steel_vase = data3D(1,:,3);
temperature_kitchen_sponge = data3D(2,:,3);
temperature_flour_sack = data3D(3,:,3);
temperature_car_sponge = data3D(4,:,3);
temperature_black_foam = data3D(5,:,3);
temperature_acrylic = data3D(6,:,3);

temperature_matrix = [temperature_steel_vase; temperature_kitchen_sponge; temperature_flour_sack; temperature_car_sponge; temperature_black_foam; temperature_acrylic];

% 3D Scatter Plot

figure('WindowState', 'maximized')
title = sprintf('PVT Data Sampled at t=%d', selected_time_instance);
sgtitle(title)
scatter3(vibrations_steel_vase, pressure_steel_vase, temperature_steel_vase, 50, [0 0.4470 0.7410], "filled")
hold on
scatter3(vibrations_kitchen_sponge, pressure_kitchen_sponge, temperature_kitchen_sponge, 50, [0.8500 0.3250 0.0980], "filled")
hold on
scatter3(vibrations_flour_sack, pressure_flour_sack, temperature_flour_sack, 50, [0.9290 0.6940 0.1250], "filled")
hold on
scatter3(vibrations_car_sponge, pressure_car_sponge, temperature_car_sponge, 50, [0.4940 0.1840 0.5560], "filled")
hold on
scatter3(vibrations_black_foam, pressure_black_foam, temperature_black_foam, 50, [0.4660 0.6740 0.1880], "filled")
hold on
scatter3(vibrations_acrylic, pressure_acrylic, temperature_acrylic, 50, [0.3010 0.7450 0.9330], "filled")
hold on
xlabel('Vibrations');
ylabel('Pressure');
zlabel('Temperature');
legend('Steel Vase', 'Kitchen Sponge', 'Flour Sack', 'Car Sponge', 'Black Foam', 'Acrylic');
hold off
axis square

%%
%    _____           __  _                ____       ____       _            _       __        ______                                             __     ___                __           _     
%   / ___/___  _____/ /_(_)___  ____     / __ )_    / __ \_____(_)___  _____(_)___  / /__     / ____/___  ____ ___  ____  ____  ____  ___  ____  / /_   /   |  ____  ____ _/ /_  _______(_)____
%   \__ \/ _ \/ ___/ __/ / __ \/ __ \   / __  (_)  / /_/ / ___/ / __ \/ ___/ / __ \/ / _ \   / /   / __ \/ __ `__ \/ __ \/ __ \/ __ \/ _ \/ __ \/ __/  / /| | / __ \/ __ `/ / / / / ___/ / ___/
%  ___/ /  __/ /__/ /_/ / /_/ / / / /  / /_/ /    / ____/ /  / / / / / /__/ / /_/ / /  __/  / /___/ /_/ / / / / / / /_/ / /_/ / / / /  __/ / / / /_   / ___ |/ / / / /_/ / / /_/ (__  ) (__  ) 
% /____/\___/\___/\__/_/\____/_/ /_/  /_____(_)  /_/   /_/  /_/_/ /_/\___/_/ .___/_/\___/   \____/\____/_/ /_/ /_/ .___/\____/_/ /_/\___/_/ /_/\__/  /_/  |_/_/ /_/\__,_/_/\__, /____/_/____/  
%                                                                         /_/                                   /_/                                                       /____/              
%% PCA: PVT Data

%% Standardise Data

% Transpose each slice of the third dimension to form a tensor A of
% dimension 10 x 6 x 3, instead of the original 6 x 10 x 3

% disp('data3D')
% disp(data3D)
A = pagetranspose(data3D);
% disp('A')
% disp(A)

% Reshape the tensor A to form a matrix with 3 columns, the size of the
% third dimension of A. This happens by stacking all 6 columns of a single slice of A one after another in a
% single column. As there are 3 slices, you end up with 3 columns that have
% been filled in said fashion.

reshapedData = reshape(A, [], size(A, 3));
% disp('reshapedData')
% disp(reshapedData)

% Standardize the data such that each column of reshapedData has a mean of
% 0 and standard deviation of 1.

standardisedData = zscore(reshapedData);
% disp('standardisedData')
% disp(standardisedData)

% Reshape carefully to form a tensor of dimensions 6 x 10 x 3

stand1 = standardisedData(:,1);
stand2 = standardisedData(:,2);
stand3 = standardisedData(:,3);

prelimshape1 = reshape(stand1,[10,6]);
% disp('stand1')
% disp(stand1)
% disp('prelimshape1')
% disp(prelimshape1)
prelimshape2 = reshape(stand2,[10,6]);
% disp('stand2')
% disp(stand2)
% disp('prelimshape2')
% disp(prelimshape2)
prelimshape3 = reshape(stand3,[10,6]);
% disp('stand3')
% disp(stand3)
% disp('prelimshape3')
% disp(prelimshape3)

standardisedData = cat(3, prelimshape1, prelimshape2, prelimshape3);
% disp('standardisedData')
% disp(standardisedData)
standardisedData = pagetranspose(standardisedData);
% disp('standardisedData')
% disp(standardisedData)

%% Finding covariance matrix, eigenvalues and eigenvectors of PVT data

% Preliminary modification before reshaping
B = pagetranspose(standardisedData);

% Reshape standardisedData to a 2D matrix
% Each slice along the third dimension is treated as a separate variable
reshapedMatrixPVT = reshape(B, [], size(B, 3));
disp(size(reshapedMatrixPVT))

% Calculate the covariance matrix
covarianceMatrixPVT = cov(reshapedMatrixPVT);

% Display the result
disp('Covariance Matrix:');
disp(covarianceMatrixPVT);

% Extract eigenvectors and eigenvalues
[V_PVT, D_PVT] = eig(covarianceMatrixPVT);

disp('Eigenvectors in Columns')
disp(V_PVT)
disp('Eigenvalues along Diagonal')
disp(D_PVT)

%% producing standardised 3d scatter plot with principle components displayed

% Standardised 3D Scatter Plot

figure('WindowState', 'maximized')
title = sprintf('Standardised PVT Data Sampled at t=%d', selected_time_instance);
sgtitle(title)
scatter3(standardisedData(1,:,1), standardisedData(1,:,2), standardisedData(1,:,3), 50, [0 0.4470 0.7410], "filled")
hold on
scatter3(standardisedData(2,:,1), standardisedData(2,:,2), standardisedData(2,:,3), 50, [0.8500 0.3250 0.0980], "filled")
hold on
scatter3(standardisedData(3,:,1), standardisedData(3,:,2), standardisedData(3,:,3), 50, [0.9290 0.6940 0.1250], "filled")
hold on
scatter3(standardisedData(4,:,1), standardisedData(4,:,2), standardisedData(4,:,3), 50, [0.4940 0.1840 0.5560], "filled")
hold on
scatter3(standardisedData(5,:,1), standardisedData(5,:,2), standardisedData(5,:,3), 50, [0.4660 0.6740 0.1880], "filled")
hold on
scatter3(standardisedData(6,:,1), standardisedData(6,:,2), standardisedData(6,:,3), 50, [0.3010 0.7450 0.9330], "filled")
hold on
quiver3(0, 0, 0, V_PVT(1,1), V_PVT(2,1), V_PVT(3,1), 1, 'Color', 'r');
hold on
quiver3(0, 0, 0, V_PVT(1,2), V_PVT(2,2), V_PVT(3,2), 1, 'Color', 'g');
hold on
quiver3(0, 0, 0, V_PVT(1,3), V_PVT(2,3), V_PVT(3,3), 1, 'Color', 'b');
hold on
xlabel('Standardised Vibrations');
ylabel('Standardised Pressure');
zlabel('Standardised Temperature');
legend('Steel Vase', 'Kitchen Sponge', 'Flour Sack', 'Car Sponge', 'Black Foam', 'Acrylic', 'PC3', 'PC2', 'PC1')
hold off
axis square

%% projection onto plane spanned by PC1, PC2

% create feature vector

feature_vector_2d = zeros(3,2);
feature_vector_2d(:,1) = V_PVT(:,3);
feature_vector_2d(:,2) = V_PVT(:,2);

disp('2d feature vector')
disp(feature_vector_2d)

% project data

projected_data = reshapedMatrixPVT * feature_vector_2d;

% plot on 2D scatter graph

figure('WindowState', 'maximized')
title = sprintf('Projection of Standardised PVT Data Sampled at t=%d onto Plane Spanned by PC1 and PC2', selected_time_instance);
sgtitle(title)
scatter(projected_data(1:10,1), projected_data(1:10,2), 50, [0 0.4470 0.7410], "filled")
hold on
scatter(projected_data(11:20,1), projected_data(11:20,2), 50, [0.8500 0.3250 0.0980], "filled")
hold on
scatter(projected_data(21:30,1), projected_data(21:30,2), 50, [0.9290 0.6940 0.1250], "filled")
hold on
scatter(projected_data(31:40,1), projected_data(31:40,2), 50, [0.4940 0.1840 0.5560], "filled")
hold on
scatter(projected_data(41:50,1), projected_data(41:50,2), 50, [0.4660 0.6740 0.1880], "filled")
hold on
scatter(projected_data(51:60,1), projected_data(51:60,2), 50, [0.3010 0.7450 0.9330], "filled")
hold on
xlabel('PC1')
ylabel('PC2')
% set(gca, 'XTickLabel', [])
% set(gca, 'YTickLabel', [])
legend('Steel Vase', 'Kitchen Sponge', 'Flour Sack', 'Car Sponge', 'Black Foam', 'Acrylic')
hold off
axis square
grid on

%% projection onto PC1, PC2, PC3

% create feature vector

feature_vector_1d_1 = zeros(3,1);
feature_vector_1d_1(:,1) = V_PVT(:,3);

disp('1D PC1 Feature Vector')
disp(feature_vector_1d_1)

% project data

projected_data = reshapedMatrixPVT * feature_vector_1d_1;

% plot on 1D scatter graph

figure('WindowState', 'maximized')
title = sprintf('Projection of Standardised PVT Data Sampled at t=%d onto PC1, PC2 and PC3', selected_time_instance);
sgtitle(title)
scatter(projected_data(1:10,1), ones(10,1), 50, [0 0.4470 0.7410], "filled")
hold on
scatter(projected_data(11:20,1), ones(10,1), 50, [0.8500 0.3250 0.0980], "filled")
hold on
scatter(projected_data(21:30,1), ones(10,1), 50, [0.9290 0.6940 0.1250], "filled")
hold on
scatter(projected_data(31:40,1), ones(10,1), 50, [0.4940 0.1840 0.5560], "filled")
hold on
scatter(projected_data(41:50,1), ones(10,1), 50, [0.4660 0.6740 0.1880], "filled")
hold on
scatter(projected_data(51:60,1), ones(10,1), 50, [0.3010 0.7450 0.9330], "filled")
hold on

% projection onto PC2

% create feature vector

feature_vector_1d_2 = zeros(3,1);
feature_vector_1d_2(:,1) = V_PVT(:,2);

disp('1D PC2 Feature Vector')
disp(feature_vector_1d_2)

% project data

projected_data = reshapedMatrixPVT * feature_vector_1d_2;

% plot on 1D scatter graph

scatter(projected_data(1:10,1), zeros(10,1), 50, [0 0.4470 0.7410], "filled")
hold on
scatter(projected_data(11:20,1), zeros(10,1), 50, [0.8500 0.3250 0.0980], "filled")
hold on
scatter(projected_data(21:30,1), zeros(10,1), 50, [0.9290 0.6940 0.1250], "filled")
hold on
scatter(projected_data(31:40,1), zeros(10,1), 50, [0.4940 0.1840 0.5560], "filled")
hold on
scatter(projected_data(41:50,1), zeros(10,1), 50, [0.4660 0.6740 0.1880], "filled")
hold on
scatter(projected_data(51:60,1), zeros(10,1), 50, [0.3010 0.7450 0.9330], "filled")
hold on

% projection onto PC3

% create feature vector

feature_vector_1d_3 = zeros(3,1);
feature_vector_1d_3(:,1) = V_PVT(:,1);

disp('1D PC3 Feature Vector')
disp(feature_vector_1d_3)

% project data

projected_data = reshapedMatrixPVT * feature_vector_1d_3;

% plot on 1D scatter graph

scatter(projected_data(1:10,1), -1 * ones(10,1), 50, [0 0.4470 0.7410], "filled")
hold on
scatter(projected_data(11:20,1), -1 * ones(10,1), 50, [0.8500 0.3250 0.0980], "filled")
hold on
scatter(projected_data(21:30,1), -1 * ones(10,1), 50, [0.9290 0.6940 0.1250], "filled")
hold on
scatter(projected_data(31:40,1), -1 * ones(10,1), 50, [0.4940 0.1840 0.5560], "filled")
hold on
scatter(projected_data(41:50,1), -1 * ones(10,1), 50, [0.4660 0.6740 0.1880], "filled")
hold on
scatter(projected_data(51:60,1), -1 * ones(10,1), 50, [0.3010 0.7450 0.9330], "filled")
hold on
ylim([-2 2])
% xticks([])
yticks([-1, 0, 1])
yticklabels({'PC3', 'PC2', 'PC1'})
legend('Steel Vase', 'Kitchen Sponge', 'Flour Sack', 'Car Sponge', 'Black Foam', 'Acrylic')
hold off
grid on

%% PCA: Electrode Data

%% Standardise Data

% Transpose each slice of the third dimension to form a tensor A of
% dimension 10 x 6 x 19, instead of the original 6 x 10 x 19

A = pagetranspose(electrodeData3D);
disp(size(A))

% Reshape the tensor A to form a matrix with 19 columns, the size of the
% third dimension of A. This happens by stacking all 6 columns of a single slice of A one after another in a
% single column. As there are 19 slices, you end up with 19 columns that have
% been filled in said fashion.

reshapedData = reshape(A, [], size(A, 3));
disp(size(reshapedData))

% Standardize the data such that each column of reshapedData has a mean of
% 0 and standard deviation of 1.

standardisedData = zscore(reshapedData);

% Reshape carefully to form a tensor of dimensions 6 x 10 x 19

stand1 = standardisedData(:,1);
stand2 = standardisedData(:,2);
stand3 = standardisedData(:,3);
stand4 = standardisedData(:,4);
stand5 = standardisedData(:,5);
stand6 = standardisedData(:,6);
stand7 = standardisedData(:,7);
stand8 = standardisedData(:,8);
stand9 = standardisedData(:,9);
stand10 = standardisedData(:,10);
stand11 = standardisedData(:,11);
stand12 = standardisedData(:,12);
stand13 = standardisedData(:,13);
stand14 = standardisedData(:,14);
stand15 = standardisedData(:,15);
stand16 = standardisedData(:,16);
stand17 = standardisedData(:,17);
stand18 = standardisedData(:,18);
stand19 = standardisedData(:,19);


prelimshape1 = reshape(stand1,[10,6]);
prelimshape2 = reshape(stand2,[10,6]);
prelimshape3 = reshape(stand3,[10,6]);
prelimshape4 = reshape(stand4,[10,6]);
prelimshape5 = reshape(stand5,[10,6]);
prelimshape6 = reshape(stand6,[10,6]);
prelimshape7 = reshape(stand7,[10,6]);
prelimshape8 = reshape(stand8,[10,6]);
prelimshape9 = reshape(stand9,[10,6]);
prelimshape10 = reshape(stand10,[10,6]);
prelimshape11 = reshape(stand11,[10,6]);
prelimshape12 = reshape(stand12,[10,6]);
prelimshape13 = reshape(stand13,[10,6]);
prelimshape14 = reshape(stand14,[10,6]);
prelimshape15 = reshape(stand15,[10,6]);
prelimshape16 = reshape(stand16,[10,6]);
prelimshape17 = reshape(stand17,[10,6]);
prelimshape18 = reshape(stand18,[10,6]);
prelimshape19 = reshape(stand19,[10,6]);


standardisedData = cat(3, prelimshape1, prelimshape2, prelimshape3, prelimshape4, prelimshape5, prelimshape6, prelimshape7, prelimshape8, prelimshape9, prelimshape10, prelimshape11, prelimshape12, prelimshape13, prelimshape14, prelimshape15, prelimshape16, prelimshape17, prelimshape18, prelimshape19);
standardisedData = pagetranspose(standardisedData);

disp(size(standardisedData))
disp(standardisedData)

%% Finding covariance matrix, eigenvectors and eigenvalues of electrode data

% Preliminary modification before reshaping
B = pagetranspose(standardisedData);

% Reshape standardisedData3D to a 2D matrix
% Each slice along the third dimension is treated as a separate variable
reshapedMatrixElectrodes = reshape(B, [], size(B, 3));
disp(size(reshapedMatrixElectrodes))

% Calculate the covariance matrix
covarianceMatrixElectrodes = cov(reshapedMatrixElectrodes);

% Display the result
disp('Covariance Matrix:');
disp(covarianceMatrixElectrodes);

% Extract eigenvectors and eigenvalues
[V_Electrodes, D_Electrodes] = eig(covarianceMatrixElectrodes);

disp('Eigenvectors in Columns')
disp(V_Electrodes)
disp('Eigenvalues along Diagonal')
disp(D_Electrodes)


eigVals = zeros(1,19);

for i = 1:19
    eigVals(1,i) = D_Electrodes(i,i); 
end

disp(eigVals)

%% Producing a Scree Plot

% Principle Components
PC = 1:19;

% Plot Scree Plot
flipped_eigVals = flip(eigVals);
disp(flipped_eigVals)

figure('WindowState', 'maximized')
plot(PC,flipped_eigVals,'-o')
xlabel('Principle Component Number')
xlim([1 19])
ylabel('Eigenvalues')
title = sprintf('Electrode Data Scree Plot');
sgtitle(title)

%% projection onto plane spanned by PC1, PC2 and PC3

% create feature vector

feature_vector_3d = zeros(19,3);
feature_vector_3d(:,1) = V_Electrodes(:,19);
feature_vector_3d(:,2) = V_Electrodes(:,18);
feature_vector_3d(:,3) = V_Electrodes(:,17);

disp('3d feature vector')
disp(feature_vector_3d)

% project data

projected_data = reshapedMatrixElectrodes * feature_vector_3d;
disp(size(projected_data))

% plot on 3D scatter graph

figure('WindowState', 'maximized')
title = sprintf('Projection of Standardised Electrode Data Sampled at t=%d onto Plane Spanned by PC1, PC2 and PC3', selected_time_instance);
sgtitle(title)
scatter3(projected_data(1:10,1), projected_data(1:10,2), projected_data(1:10,3), 50, [0 0.4470 0.7410], "filled")
hold on
scatter3(projected_data(11:20,1), projected_data(11:20,2), projected_data(11:20,3), 50, [0.8500 0.3250 0.0980], "filled")
hold on
scatter3(projected_data(21:30,1), projected_data(21:30,2), projected_data(21:30,3), 50, [0.9290 0.6940 0.1250], "filled")
hold on
scatter3(projected_data(31:40,1), projected_data(31:40,2), projected_data(31:40,3), 50, [0.4940 0.1840 0.5560], "filled")
hold on
scatter3(projected_data(41:50,1), projected_data(41:50,2), projected_data(41:50,3), 50, [0.4660 0.6740 0.1880], "filled")
hold on
scatter3(projected_data(51:60,1), projected_data(51:60,2), projected_data(51:60,3), 50, [0.3010 0.7450 0.9330], "filled")
hold on
xlabel('PC1')
ylabel('PC2')
zlabel('PC3')
% set(gca, 'XTickLabel', [])
% set(gca, 'YTickLabel', [])
% set(gca, 'ZTickLabel', [])
legend('Steel Vase', 'Kitchen Sponge', 'Flour Sack', 'Car Sponge', 'Black Foam', 'Acrylic')
hold off
axis square
grid on

%% projection onto plane spanned by PC1 and PC2

% create feature vector

feature_vector_2d = zeros(19,2);
feature_vector_2d(:,1) = V_Electrodes(:,19);
feature_vector_2d(:,2) = V_Electrodes(:,18);

disp('2d feature vector')
disp(feature_vector_2d)

% project data

projected_data = reshapedMatrixElectrodes * feature_vector_2d;

% plot on 2D scatter graph

figure('WindowState', 'maximized')
title = sprintf('Projection of Standardised Electrodes Data Sampled at t=%d onto Plane Spanned by PC1 and PC2', selected_time_instance);
sgtitle(title)
scatter(projected_data(1:10,1), projected_data(1:10,2), 50, [0 0.4470 0.7410], "filled")
hold on
scatter(projected_data(11:20,1), projected_data(11:20,2), 50, [0.8500 0.3250 0.0980], "filled")
hold on
scatter(projected_data(21:30,1), projected_data(21:30,2), 50, [0.9290 0.6940 0.1250], "filled")
hold on
scatter(projected_data(31:40,1), projected_data(31:40,2), 50, [0.4940 0.1840 0.5560], "filled")
hold on
scatter(projected_data(41:50,1), projected_data(41:50,2), 50, [0.4660 0.6740 0.1880], "filled")
hold on
scatter(projected_data(51:60,1), projected_data(51:60,2), 50, [0.3010 0.7450 0.9330], "filled")
hold on
xlabel('PC1')
ylabel('PC2')
% set(gca, 'XTickLabel', [])
% set(gca, 'YTickLabel', [])
legend('Steel Vase', 'Kitchen Sponge', 'Flour Sack', 'Car Sponge', 'Black Foam', 'Acrylic')
hold off
axis square
grid on

%% projection onto PC1, PC2, PC3

% create feature vector

feature_vector_1d_1 = zeros(19,1);
feature_vector_1d_1(:,1) = V_Electrodes(:,19);

disp('1D PC1 Feature Vector')
disp(feature_vector_1d_1)

% project data

projected_data = reshapedMatrixElectrodes * feature_vector_1d_1;

% plot on 1D scatter graph

figure('WindowState', 'maximized')
title = sprintf('Projection of Standardised Electrodes Data Sampled at t=%d onto PC1, PC2 and PC3', selected_time_instance);
sgtitle(title)
scatter(projected_data(1:10,1), ones(10,1), 50, [0 0.4470 0.7410], "filled")
hold on
scatter(projected_data(11:20,1), ones(10,1), 50, [0.8500 0.3250 0.0980], "filled")
hold on
scatter(projected_data(21:30,1), ones(10,1), 50, [0.9290 0.6940 0.1250], "filled")
hold on
scatter(projected_data(31:40,1), ones(10,1), 50, [0.4940 0.1840 0.5560], "filled")
hold on
scatter(projected_data(41:50,1), ones(10,1), 50, [0.4660 0.6740 0.1880], "filled")
hold on
scatter(projected_data(51:60,1), ones(10,1), 50, [0.3010 0.7450 0.9330], "filled")
hold on

% projection onto PC2

% create feature vector

feature_vector_1d_2 = zeros(19,1);
feature_vector_1d_2(:,1) = V_Electrodes(:,18);

disp('1D PC2 Feature Vector')
disp(feature_vector_1d_2)

% project data

projected_data = reshapedMatrixElectrodes * feature_vector_1d_2;

% plot on 1D scatter graph

scatter(projected_data(1:10,1), zeros(10,1), 50, [0 0.4470 0.7410], "filled")
hold on
scatter(projected_data(11:20,1), zeros(10,1), 50, [0.8500 0.3250 0.0980], "filled")
hold on
scatter(projected_data(21:30,1), zeros(10,1), 50, [0.9290 0.6940 0.1250], "filled")
hold on
scatter(projected_data(31:40,1), zeros(10,1), 50, [0.4940 0.1840 0.5560], "filled")
hold on
scatter(projected_data(41:50,1), zeros(10,1), 50, [0.4660 0.6740 0.1880], "filled")
hold on
scatter(projected_data(51:60,1), zeros(10,1), 50, [0.3010 0.7450 0.9330], "filled")
hold on

% projection onto PC3

% create feature vector

feature_vector_1d_3 = zeros(19,1);
feature_vector_1d_3(:,1) = V_Electrodes(:,17);

disp('1D PC3 Feature Vector')
disp(feature_vector_1d_3)

% project data

projected_data = reshapedMatrixElectrodes * feature_vector_1d_3;

% plot on 1D scatter graph

scatter(projected_data(1:10,1), -1 * ones(10,1), 50, [0 0.4470 0.7410], "filled")
hold on
scatter(projected_data(11:20,1), -1 * ones(10,1), 50, [0.8500 0.3250 0.0980], "filled")
hold on
scatter(projected_data(21:30,1), -1 * ones(10,1), 50, [0.9290 0.6940 0.1250], "filled")
hold on
scatter(projected_data(31:40,1), -1 * ones(10,1), 50, [0.4940 0.1840 0.5560], "filled")
hold on
scatter(projected_data(41:50,1), -1 * ones(10,1), 50, [0.4660 0.6740 0.1880], "filled")
hold on
scatter(projected_data(51:60,1), -1 * ones(10,1), 50, [0.3010 0.7450 0.9330], "filled")
hold on
ylim([-2 2])
% xticks([])
yticks([-1, 0, 1])
yticklabels({'PC3', 'PC2', 'PC1'})
legend('Steel Vase', 'Kitchen Sponge', 'Flour Sack', 'Car Sponge', 'Black Foam', 'Acrylic')
hold off
grid on

%%
%    _____           __  _                ______     __    _                          ____  _                _           _                   __     ___                __           _     
%   / ___/___  _____/ /_(_)___  ____     / ____/    / /   (_)___  ___  ____ ______   / __ \(_)______________(_)___ ___  (_)___  ____ _____  / /_   /   |  ____  ____ _/ /_  _______(_)____
%   \__ \/ _ \/ ___/ __/ / __ \/ __ \   / /   (_)  / /   / / __ \/ _ \/ __ `/ ___/  / / / / / ___/ ___/ ___/ / __ `__ \/ / __ \/ __ `/ __ \/ __/  / /| | / __ \/ __ `/ / / / / ___/ / ___/
%  ___/ /  __/ /__/ /_/ / /_/ / / / /  / /____    / /___/ / / / /  __/ /_/ / /     / /_/ / (__  ) /__/ /  / / / / / / / / / / / /_/ / / / / /_   / ___ |/ / / / /_/ / / /_/ (__  ) (__  ) 
% /____/\___/\___/\__/_/\____/_/ /_/   \____(_)  /_____/_/_/ /_/\___/\__,_/_/     /_____/_/____/\___/_/  /_/_/ /_/ /_/_/_/ /_/\__,_/_/ /_/\__/  /_/  |_/_/ /_/\__,_/_/\__, /____/_/____/  
%                                                                                                                                                                    /____/              
%% LDA: Black foam and Car sponge

%% Form tensor with appropriate data

cs_bf_data3D = zeros(2,10,3);
cs_bf_vibs = [vibrations_car_sponge; vibrations_black_foam];
disp(cs_bf_vibs)
cs_bf_pres = [pressure_car_sponge; pressure_black_foam];
disp(cs_bf_pres)
cs_bf_temp = [temperature_car_sponge; temperature_black_foam];
disp(cs_bf_temp)

cs_bf_data3D = cat(3, cs_bf_vibs, cs_bf_pres, cs_bf_temp);

disp(size(cs_bf_data3D))
disp(cs_bf_data3D)

%% Standardise data

% Transpose each slice of the third dimension to form a tensor A of
% dimension 10 x 2 x 3, instead of the original 2 x 10 x 3

A = pagetranspose(cs_bf_data3D);

% Reshape the tensor A to form a matrix with 3 columns, the size of the
% third dimension of A. This happens by stacking the two columns of a single slice of A one after another in a
% single column. As there are 3 slices, you end up with 3 columns that have
% been filled in said fashion.

reshapedData = reshape(A, [], size(A, 3));

% Standardize the data such that each column of reshapedData has a mean of
% 0 and standard deviation of 1.

standardisedData = zscore(reshapedData);

% Reshape carefully to form a tensor of dimensions 2 x 10 x 3

stand1 = standardisedData(:,1);
stand2 = standardisedData(:,2);
stand3 = standardisedData(:,3);

prelimshape1 = reshape(stand1,[10,2]);
prelimshape2 = reshape(stand2,[10,2]);
prelimshape3 = reshape(stand3,[10,2]);

standardisedData = cat(3, prelimshape1, prelimshape2, prelimshape3);
standardisedData = pagetranspose(standardisedData);

disp(size(standardisedData))
disp(standardisedData)

%% Calculating standardised group means for each variable

cs_bf_standardised_vibrations = standardisedData(:,:,1);
disp(cs_bf_standardised_vibrations)
cs_bf_standardised_pressure = standardisedData(:,:,2);
disp(cs_bf_standardised_pressure)
cs_bf_standardised_temperature = standardisedData(:,:,3);
disp(cs_bf_standardised_temperature)

% standardised mean vibrations car sponge
mean_vibs_cs = mean(cs_bf_standardised_vibrations, 2);
mean_vibs_cs = mean_vibs_cs(1);
disp(mean_vibs_cs)

% standardised mean vibrations black foam
mean_vibs_bf = mean(cs_bf_standardised_vibrations, 2);
mean_vibs_bf = mean_vibs_bf(2);
disp(mean_vibs_bf)

% standardised mean pressure car sponge
mean_pres_cs = mean(cs_bf_standardised_pressure, 2);
mean_pres_cs = mean_pres_cs(1);
disp(mean_pres_cs)

% standardised mean pressure black foam
mean_pres_bf = mean(cs_bf_standardised_pressure, 2);
mean_pres_bf = mean_pres_bf(2);
disp(mean_pres_bf)

% standardised mean temperature car sponge
mean_temp_cs = mean(cs_bf_standardised_temperature, 2);
mean_temp_cs = mean_temp_cs(1);
disp(mean_temp_cs)

% standardised mean temperature black foam
mean_temp_bf = mean(cs_bf_standardised_temperature, 2);
mean_temp_bf = mean_temp_bf(2);
disp(mean_temp_bf)

%% forming standardised raw data matrix and vector of group means for class 1 (car sponge) (2D case)

% standardised mean 'pressure vs vibrations' vector

mean_pv_cs = [mean_vibs_cs; mean_pres_cs];

% standardised mean 'pressure vs temperature' vector

mean_pt_cs = [mean_temp_cs; mean_pres_cs];

% standardised mean 'temperature vs vibrations' vector

mean_tv_cs = [mean_vibs_cs; mean_temp_cs];



% standardised raw 'pressure vs vibrations' matrix

pv_cs = [cs_bf_standardised_vibrations(1,:); cs_bf_standardised_pressure(1,:)];

% standardised raw 'pressure vs temperature' matrix

pt_cs = [cs_bf_standardised_temperature(1,:); cs_bf_standardised_pressure(1,:)];

% standardised raw 'temperature vs vibrations' matrix

tv_cs = [cs_bf_standardised_vibrations(1,:); cs_bf_standardised_temperature(1,:)];

%% forming standardised raw data matrix and vector of group means for class 2 (black foam) (2D case)

% standardised mean 'pressure vs vibrations' vector

mean_pv_bf = [mean_vibs_bf; mean_pres_bf];

% standardised mean 'pressure vs temperature' vector

mean_pt_bf = [mean_temp_bf; mean_pres_bf];

% standardised mean 'temperature vs vibrations' vector

mean_tv_bf = [mean_vibs_bf; mean_temp_bf];



% standardised raw 'pressure vs vibrations' matrix

pv_bf = [cs_bf_standardised_vibrations(2,:); cs_bf_standardised_pressure(2,:)];

% standardised raw 'pressure vs temperature' matrix

pt_bf = [cs_bf_standardised_temperature(2,:); cs_bf_standardised_pressure(2,:)];

% standardised raw 'temperature vs vibrations' matrix

tv_bf = [cs_bf_standardised_vibrations(2,:); cs_bf_standardised_temperature(2,:)];


%% computing within class scatter matrix for class 1 (car sponge) (2D case)

% within class scatter matrix 'pressure vs vibrations'

diff1_2d_1 = zeros(2,10);
for i = 1:size(pv_cs,2)
    diff1_2d_1(:,i) = pv_cs(:,i) - mean_pv_cs;
end
disp(diff1_2d_1)

sw1_2d_1 = diff1_2d_1 * diff1_2d_1';
disp('within class scatter matrix "pressure vs vibrations"')
disp(sw1_2d_1)

% within class scatter matrix 'pressure vs temperature'

diff1_2d_2 = zeros(2,10);
for i = 1:size(pt_cs,2)
    diff1_2d_2(:,i) = pt_cs(:,i) - mean_pt_cs;
end
disp(diff1_2d_2)

sw1_2d_2 = diff1_2d_2 * diff1_2d_2';
disp('within class scatter matrix "pressure vs temperature"')
disp(sw1_2d_2)

% within class scatter matrix 'temperature vs vibrations'

diff1_2d_3 = zeros(2,10);
for i = 1:size(tv_cs,2)
    diff1_2d_3(:,i) = tv_cs(:,i) - mean_tv_cs;
end
disp(diff1_2d_3)

sw1_2d_3 = diff1_2d_3 * diff1_2d_3';
disp('within class scatter matrix "temperature vs vibrations"')
disp(sw1_2d_3)

%% computing within class scatter matrix for class 2 (black foam) (2D case)

% within class scatter matrix 'pressure vs vibrations'

diff2_2d_1 = zeros(2,10);
for i = 1:size(pv_bf,2)
    diff2_2d_1(:,i) = pv_bf(:,i) - mean_pv_bf;
end
disp(diff2_2d_1)

sw2_2d_1 = diff2_2d_1 * diff2_2d_1';
disp('within class scatter matrix "pressure vs vibrations"')
disp(sw2_2d_1)

% within class scatter matrix 'pressure vs temperature'

diff2_2d_2 = zeros(2,10);
for i = 1:size(pt_bf,2)
    diff2_2d_2(:,i) = pt_bf(:,i) - mean_pt_bf;
end
disp(diff2_2d_2)

sw2_2d_2 = diff2_2d_2 * diff2_2d_2';
disp('within class scatter matrix "pressure vs temperature"')
disp(sw2_2d_2)

% within class scatter matrix 'temperature vs vibrations'

diff2_2d_3 = zeros(2,10);
for i = 1:size(tv_bf,2)
    diff2_2d_3(:,i) = tv_bf(:,i) - mean_tv_bf;
end
disp(diff2_2d_3)

sw2_2d_3 = diff2_2d_3 * diff2_2d_3';
disp('within class scatter matrix "temperature vs vibrations"')
disp(sw2_2d_3)

%% summing within class scatter matrix for both classes (2D case)

sw_2d_1 = sw1_2d_1 + sw2_2d_1;
disp('within class scatter matrix "pressure vs vibrations"')
disp(sw_2d_1)

sw_2d_2 = sw1_2d_2 + sw2_2d_2;
disp('within class scatter matrix "pressure vs temperature"')
disp(sw_2d_2)

sw_2d_3 = sw1_2d_3 + sw2_2d_3;
disp('within class scatter matrix "temperature vs vibrations"')
disp(sw_2d_3)

%% computing between class scatter matrix (2D case)

diff_means_2d_1 = mean_pv_cs - mean_pv_bf;
sb_2d_1 = diff_means_2d_1 * diff_means_2d_1';
disp('between class scatter matrix "pressure vs vibrations"')
disp(sb_2d_1)

diff_means_2d_2 = mean_pt_cs - mean_pt_bf;
sb_2d_2 = diff_means_2d_2 * diff_means_2d_2';
disp('between class scatter matrix "pressure vs temperature"')
disp(sb_2d_2)

diff_means_2d_3 = mean_tv_cs - mean_tv_bf;
sb_2d_3 = diff_means_2d_3 * diff_means_2d_3';
disp('between class scatter matrix "temperature vs vibrations"')
disp(sb_2d_3)

%% finding the eigenvalues and eigenvectors of sw^(-1)sb (2D case)

lda_mat_2d_1 = sw_2d_1\sb_2d_1;
lda_mat_2d_2 = sw_2d_2\sb_2d_2;
lda_mat_2d_3 = sw_2d_3\sb_2d_3;

% Extract eigenvectors and eigenvalues
[V_lda_mat_2d_1, D_lda_mat_2d_1] = eig(lda_mat_2d_1);
[V_lda_mat_2d_2, D_lda_mat_2d_2] = eig(lda_mat_2d_2);
[V_lda_mat_2d_3, D_lda_mat_2d_3] = eig(lda_mat_2d_3);

disp('Eigenvectors in Columns "pressure vs vibrations"')
disp(V_lda_mat_2d_1)
disp('Eigenvalues along Diagonal "pressure vs vibrations"')
disp(D_lda_mat_2d_1)

disp('Eigenvectors in Columns "pressure vs temperature"')
disp(V_lda_mat_2d_2)
disp('Eigenvalues along Diagonal "pressure vs temperature"')
disp(D_lda_mat_2d_2)

disp('Eigenvectors in Columns "temperature vs vibrations"')
disp(V_lda_mat_2d_3)
disp('Eigenvalues along Diagonal "temperature vs vibrations"')
disp(D_lda_mat_2d_3)


%% forming raw data matrix and vector of means for class 1 (car sponge) (3D case)

% standardised mean 'temperature vs pressure vs vibrations' vector

mean_tpv_cs = [mean_vibs_cs; mean_pres_cs; mean_temp_cs];

% standardised raw 'temperature vs pressure vs vibrations' matrix

tpv_cs = [cs_bf_standardised_vibrations(1,:); cs_bf_standardised_pressure(1,:); cs_bf_standardised_temperature(1,:)];

%% forming raw data matrix and vector of means for class 2 (black foam) (3D case)

% standardised mean 'temperature vs pressure vs vibrations' vector

mean_tpv_bf = [mean_vibs_bf; mean_pres_bf; mean_temp_bf];

% standardised raw 'temperature vs pressure vs vibrations' matrix

tpv_bf = [cs_bf_standardised_vibrations(2,:); cs_bf_standardised_pressure(2,:); cs_bf_standardised_temperature(2,:)];

%% computing within class scatter matrix for class 1 (car sponge) (3D case)

diff1 = zeros(3,10);
for i = 1:size(tpv_cs,2)
    diff1(:,i) = tpv_cs(:,i) - mean_tpv_cs;
end
disp(diff1)

sw1 = diff1 * diff1';
disp(sw1)

%% computing within class scatter matrix for class 2 (black foam) (3D case)

diff2 = zeros(3,10);
for i = 1:size(tpv_bf,2)
    diff2(:,i) = tpv_bf(:,i) - mean_tpv_bf;
end
disp(diff2)

sw2 = diff2 * diff2';
disp(sw2)

%% summing within class scatter matrix for both classes (3D case)

sw = sw1 + sw2;
disp('Within Class Scatter Matrix')
disp(sw)

%% computing between class scatter matrix (3D case)

diff_means = mean_tpv_cs - mean_tpv_bf;
sb = diff_means * diff_means';
disp('Between Class Scatter Matrix')
disp(sb)

%% finding the eigenvalues and eigenvectors of sw^(-1)sb (3D case)

lda_mat = sw\sb;

% Extract eigenvectors and eigenvalues
[V_lda_mat, D_lda_mat] = eig(lda_mat);

disp('Eigenvectors in Columns')
disp(V_lda_mat)
disp('Eigenvalues along Diagonal')
disp(D_lda_mat)


%% Plots including generated LDA Function (2D case)

x1 = linspace(-5,5,100);
x2 = linspace(-5,5,100);
x3 = linspace(-5,5,100);

y1 = (V_lda_mat_2d_1(2,2)/V_lda_mat_2d_1(1,2)) * x1;    % second eigenvector corresponded to largest eigenvalue
y1_perp = ((-1)/(V_lda_mat_2d_1(2,2)/V_lda_mat_2d_1(1,2))) * x1;
y2 = (V_lda_mat_2d_2(2,1)/V_lda_mat_2d_2(1,1)) * x2;    % first eigenvector corresponded to largest eigenvalue
y2_perp = ((-1)/(V_lda_mat_2d_2(2,1)/V_lda_mat_2d_2(1,1))) * x2;
y3 = (V_lda_mat_2d_3(2,2)/V_lda_mat_2d_3(1,2)) * x3;    % second eigenvector corresponded to largest eigenvalue
y3_perp = ((-1)/(V_lda_mat_2d_3(2,2)/V_lda_mat_2d_3(1,2))) * x3;

figure('WindowState', 'maximized')
title = sprintf('Pressure vs Vibration');
sgtitle(title)
scatter(cs_bf_standardised_vibrations(1,:), cs_bf_standardised_pressure(1,:), 50, [0.4940 0.1840 0.5560], "filled")
hold on
scatter(cs_bf_standardised_vibrations(2,:), cs_bf_standardised_pressure(2,:), 50, [0.4660 0.6740 0.1880], "filled")
hold on
scatter(mean_vibs_cs, mean_pres_cs, 100, "green", "filled")
hold on
scatter(mean_vibs_bf, mean_pres_bf, 100, "magenta", "filled")
hold on
plot(x1, y1, 'b-', 'LineWidth', 2)
hold on
plot(x1, y1_perp, 'r--', 'LineWidth', 2)
hold on
xlabel('Vibration')
ylabel('Pressure')
xlim([-2 2])
ylim([-2 2])
% set(gca, 'XTickLabel', [])
% set(gca, 'YTickLabel', [])
legend('Car Sponge', 'Black Foam', 'Car Sponge Mean', 'Black Foam Mean', 'LD', 'Separation Line')
hold off
axis square
grid on

figure('WindowState', 'maximized')
title = sprintf('Pressure vs Temperature');
sgtitle(title)
scatter(cs_bf_standardised_temperature(1,:), cs_bf_standardised_pressure(1,:), 50, [0.4940 0.1840 0.5560], "filled")
hold on
scatter(cs_bf_standardised_temperature(2,:), cs_bf_standardised_pressure(2,:), 50, [0.4660 0.6740 0.1880], "filled")
hold on
scatter(mean_temp_cs, mean_pres_cs, 100, "green", "filled")
hold on
scatter(mean_temp_bf, mean_pres_bf, 100, "magenta", "filled")
hold on
plot(x2, y2, 'b-', 'LineWidth', 2)
hold on
plot(x2, y2_perp, 'r--', 'LineWidth', 2)
hold on
xlabel('Temperature')
ylabel('Pressure')
xlim([-2 2])
ylim([-2 2])
% set(gca, 'XTickLabel', [])
% set(gca, 'YTickLabel', [])
legend('Car Sponge', 'Black Foam', 'Car Sponge Mean', 'Black Foam Mean', 'LD', 'Separation Line')
hold off
axis square
grid on

figure('WindowState', 'maximized')
title = sprintf('Temperature vs Vibration');
sgtitle(title)
scatter(cs_bf_standardised_vibrations(1,:), cs_bf_standardised_temperature(1,:), 50, [0.4940 0.1840 0.5560], "filled")
hold on
scatter(cs_bf_standardised_vibrations(2,:), cs_bf_standardised_temperature(2,:), 50, [0.4660 0.6740 0.1880], "filled")
hold on
scatter(mean_vibs_cs, mean_temp_cs, 100, "green", "filled")
hold on
scatter(mean_vibs_bf, mean_temp_bf, 100, "magenta", "filled")
hold on
plot(x3, y3, 'b-', 'LineWidth', 2)
hold on
plot(x3, y3_perp, 'r--', 'LineWidth', 2)
hold on
xlabel('Vibration')
ylabel('Temperature')
xlim([-2 2])
ylim([-2 2])
% set(gca, 'XTickLabel', [])
% set(gca, 'YTickLabel', [])
legend('Car Sponge', 'Black Foam', 'Car Sponge Mean', 'Black Foam Mean', 'LD', 'Separation Line')
hold off
axis square
grid on

%% Forming Tensors and Reshaping Tensors for Projection (2D case)

tensor_pv = cat(3, cs_bf_standardised_vibrations, cs_bf_standardised_pressure);
disp(size(tensor_pv))

tensor_pt = cat(3, cs_bf_standardised_temperature, cs_bf_standardised_pressure);
disp(size(tensor_pt))

tensor_tv = cat(3, cs_bf_standardised_vibrations, cs_bf_standardised_temperature);
disp(size(tensor_tv))

% Preliminary modification before reshaping
A_1 = pagetranspose(tensor_pv);
disp(size(A_1))
A_2 = pagetranspose(tensor_pt);
disp(size(A_2))
A_3 = pagetranspose(tensor_tv);
disp(size(A_3))

% Reshape tensors to a 2D matrix
% Each slice along the third dimension is treated as a separate variable
reshapedMatrixPV = reshape(A_1, [], size(A_1, 3));
disp(size(reshapedMatrixPV))
reshapedMatrixPT = reshape(A_2, [], size(A_2, 3));
disp(size(reshapedMatrixPT))
reshapedMatrixTV = reshape(A_3, [], size(A_3, 3));
disp(size(reshapedMatrixTV))

%% misc variables for plotting

separation_line_x = zeros(100,1);
separation_line_y = linspace(-2,2,100);
%% projection onto LD1 (2D case)

% "pressure vs vibrations"

feature_vector_pv_1d = zeros(2,1);
feature_vector_pv_1d(:,1) = V_lda_mat_2d_1(:,2);    % second eigenvector corresponded to largest eigenvalue

disp('1D LD1 Feature Vector: "pressure vs vibrations"')
disp(feature_vector_pv_1d)

projected_data = reshapedMatrixPV * feature_vector_pv_1d;

figure('WindowState', 'maximized')
title = sprintf('Projection of Standardised PV, PT and TV Data Sampled at t=%d onto LD1', selected_time_instance);
sgtitle(title)
scatter(projected_data(1:10,1), ones(10,1), 50, [0.4940 0.1840 0.5560], "filled")
hold on
scatter(projected_data(11:20,1), ones(10,1), 50, [0.4660 0.6740 0.1880], "filled")
hold on

% "pressure vs temperature"

feature_vector_pt_1d = zeros(2,1);
feature_vector_pt_1d(:,1) = V_lda_mat_2d_2(:,1);    % first eigenvector corresponded to largest eigenvalue

disp('1D LD1 Feature Vector: "pressure vs temperature"')
disp(feature_vector_pt_1d)

projected_data = reshapedMatrixPT * feature_vector_pt_1d;

scatter(projected_data(1:10,1), zeros(10,1), 50, [0.4940 0.1840 0.5560], "filled")
hold on
scatter(projected_data(11:20,1), zeros(10,1), 50, [0.4660 0.6740 0.1880], "filled")
hold on

% "temperature vs vibrations"

feature_vector_tv_1d = zeros(2,1);
feature_vector_tv_1d(:,1) = V_lda_mat_2d_3(:,2);    % second eigenvector corresponded to largest eigenvalue

disp('1D LD1 Feature Vector: "temperature vs vibrations"')
disp(feature_vector_tv_1d)

projected_data = reshapedMatrixTV * feature_vector_tv_1d;

scatter(projected_data(1:10,1), -1 * ones(10,1), 50, [0.4940 0.1840 0.5560], "filled")
hold on
scatter(projected_data(11:20,1), -1 * ones(10,1), 50, [0.4660 0.6740 0.1880], "filled")
hold on

plot(separation_line_x, separation_line_y, 'r--', 'LineWidth', 2)
hold on

ylim([-2 2])
% xticks([])
yticks([-1, 0, 1])
yticklabels({'TV', 'PT', 'PV'})
legend('Car Sponge', 'Black Foam')
hold off
grid on

%% Finding equation of hyperplane containing LD1 and LD2

% Points on line 1
P1 = [0, 0, 0];
P2 = [V_lda_mat(1,1), V_lda_mat(2,1), V_lda_mat(3,1)];  % first eigenvector corresponded to largest eigenvalue

% Points on line 2
Q1 = [0, 0, 0];
Q2 = [V_lda_mat(1,3), V_lda_mat(2,3), V_lda_mat(3,3)];  % third eigenvector corresponded to second largest eigenvalue 

% Lines
line1 = [P1; P2];
line2 = [Q1; Q2];

% Direction vectors of the lines
V1 = P2 - P1;
V2 = Q2 - Q1;

% Normal vector of the plane
N = cross(V1, V2);

% Choose a point on Line 1 as a point on the plane
P = P1;

% Determine D in the plane equation Ax + By + Cz + D = 0
D = -dot(N, P);

% Display the equation of the plane
disp('Equation of the plane:');
disp(['Ax + By + Cz + D = 0, where A = ', num2str(N(1)), ', B = ', num2str(N(2)), ', C = ', num2str(N(3)), ', D = ', num2str(D)]);

% Create a grid of points
[x, y] = meshgrid(-5:0.1:5, -5:0.1:5);

% Define coefficients of the hyperplane equation
a = N(1);
b = N(2);
c = N(3);
d = D;

% Compute the z-values for the hyperplane
z = (-a * x - b * y - d) / c;

%% Plots including LD1, LD2 and hyperplane containing both LDs

figure('WindowState', 'maximized')
title = sprintf('Temperature vs Pressure vs Vibration');
sgtitle(title)
scatter3(cs_bf_standardised_vibrations(1,:), cs_bf_standardised_pressure(1,:), cs_bf_standardised_temperature(1,:), 50, [0.4940 0.1840 0.5560], "filled")
hold on
scatter3(cs_bf_standardised_vibrations(2,:), cs_bf_standardised_pressure(2,:), cs_bf_standardised_temperature(2,:), 50, [0.4660 0.6740 0.1880], "filled")
hold on
scatter3(mean_vibs_cs, mean_pres_cs, mean_temp_cs, 100, "green", "filled")
hold on
scatter3(mean_vibs_bf, mean_pres_bf, mean_temp_bf, 100, "magenta", "filled")
hold on
patch(surf2patch(x, y, z), 'FaceAlpha', 0.5, 'FaceColor', [0.9290 0.6940 0.1250], 'EdgeColor', 'none');
hold on
plot3(line1(:, 1), line1(:, 2), line1(:, 3), 'b-', 'LineWidth', 2)
hold on
plot3(line2(:, 1), line2(:, 2), line2(:, 3), 'r-', 'LineWidth', 2)
hold on
xlabel('Vibration')
ylabel('Pressure')
zlabel('Temperature')
xlim([-2 2])
ylim([-2 2])
zlim([-2 2])
% set(gca, 'XTickLabel', [])
% set(gca, 'YTickLabel', [])
legend('Car Sponge', 'Black Foam', 'Car Sponge Mean', 'Black Foam Mean', 'Hyperplane', 'LD1', 'LD2')
hold off
axis square
grid on

%% Forming Tensors and Reshaping Tensors for Projection (3D case)

tensor_tpv = cat(3, cs_bf_standardised_vibrations, cs_bf_standardised_pressure, cs_bf_standardised_temperature);
disp(size(tensor_tpv))

% Preliminary modification before reshaping
A_4 = pagetranspose(tensor_tpv);
disp(size(A_4))

% Reshape tensors to a 2D matrix
% Each slice along the third dimension is treated as a separate variable
reshapedMatrixTPV = reshape(A_4, [], size(A_4, 3));
disp(size(reshapedMatrixTPV))

%% misc variables for plotting

separation_line_x = zeros(100,1);
separation_line_y = linspace(-2,2.5,100);
%% projection onto plane spanned by LD1 and LD2 (3D case)

% "temperature vs pressure vs vibrations"

feature_vector_tpv_2d = zeros(3,2);
feature_vector_tpv_2d(:,1) = V_lda_mat(:,1);    % first eigenvector corresponded to largest eigenvalue
feature_vector_tpv_2d(:,2) = V_lda_mat(:,3);    % third eigenvector corresponded to second largest eigenvalue

disp('2D LD1 and LD2 Feature Vector: "temperature vs pressure vs vibrations"')
disp(feature_vector_tpv_2d)

projected_data = reshapedMatrixTPV * feature_vector_tpv_2d;

figure('WindowState', 'maximized')
title = sprintf('Projection of Standardised TPV Data Sampled at t=%d onto Plane Spanned by LD1 and LD2', selected_time_instance);
sgtitle(title)
scatter(projected_data(1:10,1), projected_data(1:10,2), 50, [0.4940 0.1840 0.5560], "filled")
hold on
scatter(projected_data(11:20,1), projected_data(11:20,2), 50, [0.4660 0.6740 0.1880], "filled")
hold on
plot(separation_line_x, separation_line_y, 'r--', 'LineWidth', 2)
hold on
xlabel('LD1')
ylabel('LD2')
% set(gca, 'XTickLabel', [])
% set(gca, 'YTickLabel', [])
legend('Car Sponge', 'Black Foam', 'Separation Line')
hold off
axis square
grid on

%% misc variables for plotting

separation_line_x = zeros(100,1);
separation_line_y = linspace(-2,2,100);
%% projection onto LD1 (3D case)

% "temperature vs pressure vs vibrations"

feature_vector_tpv_1d = zeros(3,1);
feature_vector_tpv_1d(:,1) = V_lda_mat(:,1);

disp('1D LD1 Feature Vector: "temperature vs pressure vs vibrations"')
disp(feature_vector_tpv_1d)

projected_data = reshapedMatrixTPV * feature_vector_tpv_1d;

figure('WindowState', 'maximized')
title = sprintf('Projection of Standardised TPV Data Sampled at t=%d onto LD1', selected_time_instance);
sgtitle(title)
scatter(projected_data(1:10,1), zeros(10,1), 50, [0.4940 0.1840 0.5560], "filled")
hold on
scatter(projected_data(11:20,1), zeros(10,1), 50, [0.4660 0.6740 0.1880], "filled")
hold on
plot(separation_line_x, separation_line_y, 'r--', 'LineWidth', 2)
hold on
ylim([-2 2])
% xticks([])
yticks([0])
yticklabels({'TPV'})
legend('Car Sponge', 'Black Foam', 'Separation Line')
hold off
grid on

%% LDA: Steel Vase and Acrylic

%% Form tensor with appropriate data

sv_ac_data3D = zeros(2,10,3);
sv_ac_vibs = [vibrations_steel_vase; vibrations_acrylic];
disp(sv_ac_vibs)
sv_ac_pres = [pressure_steel_vase; pressure_acrylic];
disp(sv_ac_pres)
sv_ac_temp = [temperature_steel_vase; temperature_acrylic];
disp(sv_ac_temp)

sv_ac_data3D = cat(3, sv_ac_vibs, sv_ac_pres, sv_ac_temp);

disp(size(sv_ac_data3D))
disp(sv_ac_data3D)

%% Standardise data

% Transpose each slice of the third dimension to form a tensor A of
% dimension 10 x 2 x 3, instead of the original 2 x 10 x 3

A = pagetranspose(sv_ac_data3D);

% Reshape the tensor A to form a matrix with 3 columns, the size of the
% third dimension of A. This happens by stacking the two columns of a single slice of A one after another in a
% single column. As there are 3 slices, you end up with 3 columns that have
% been filled in said fashion.

reshapedData = reshape(A, [], size(A, 3));

% Standardize the data such that each column of reshapedData has a mean of
% 0 and standard deviation of 1.

standardisedData = zscore(reshapedData);

% Reshape carefully to form a tensor of dimensions 2 x 10 x 3

stand1 = standardisedData(:,1);
stand2 = standardisedData(:,2);
stand3 = standardisedData(:,3);

prelimshape1 = reshape(stand1,[10,2]);
prelimshape2 = reshape(stand2,[10,2]);
prelimshape3 = reshape(stand3,[10,2]);

standardisedData = cat(3, prelimshape1, prelimshape2, prelimshape3);
standardisedData = pagetranspose(standardisedData);

disp(size(standardisedData))
disp(standardisedData)

%% Calculating standardised group means for each variable

sv_ac_standardised_vibrations = standardisedData(:,:,1);
disp(sv_ac_standardised_vibrations)
sv_ac_standardised_pressure = standardisedData(:,:,2);
disp(sv_ac_standardised_pressure)
sv_ac_standardised_temperature = standardisedData(:,:,3);
disp(sv_ac_standardised_temperature)

% standardised mean vibrations steel vase
mean_vibs_sv = mean(sv_ac_standardised_vibrations, 2);
mean_vibs_sv = mean_vibs_sv(1);
disp(mean_vibs_sv)

% standardised mean vibrations acrylic
mean_vibs_ac = mean(sv_ac_standardised_vibrations, 2);
mean_vibs_ac = mean_vibs_ac(2);
disp(mean_vibs_ac)

% standardised mean pressure steel vase
mean_pres_sv = mean(sv_ac_standardised_pressure, 2);
mean_pres_sv = mean_pres_sv(1);
disp(mean_pres_sv)

% standardised mean pressure acrylic
mean_pres_ac = mean(sv_ac_standardised_pressure, 2);
mean_pres_ac = mean_pres_ac(2);
disp(mean_pres_ac)

% standardised mean temperature steel vase
mean_temp_sv = mean(sv_ac_standardised_temperature, 2);
mean_temp_sv = mean_temp_sv(1);
disp(mean_temp_sv)

% standardised mean temperature acrylic
mean_temp_ac = mean(sv_ac_standardised_temperature, 2);
mean_temp_ac = mean_temp_ac(2);
disp(mean_temp_ac)

%% forming standardised raw data matrix and vector of group means for class 1 (steel vase) (2D case)

% standardised mean 'pressure vs vibrations' vector

mean_pv_sv = [mean_vibs_sv; mean_pres_sv];

% standardised mean 'pressure vs temperature' vector

mean_pt_sv = [mean_temp_sv; mean_pres_sv];

% standardised mean 'temperature vs vibrations' vector

mean_tv_sv = [mean_vibs_sv; mean_temp_sv];



% standardised raw 'pressure vs vibrations' matrix

pv_sv = [sv_ac_standardised_vibrations(1,:); sv_ac_standardised_pressure(1,:)];

% standardised raw 'pressure vs temperature' matrix

pt_sv = [sv_ac_standardised_temperature(1,:); sv_ac_standardised_pressure(1,:)];

% standardised raw 'temperature vs vibrations' matrix

tv_sv = [sv_ac_standardised_vibrations(1,:); sv_ac_standardised_temperature(1,:)];

%% forming standardised raw data matrix and vector of group means for class 2 (acrylic) (2D case)

% standardised mean 'pressure vs vibrations' vector

mean_pv_ac = [mean_vibs_ac; mean_pres_ac];

% standardised mean 'pressure vs temperature' vector

mean_pt_ac = [mean_temp_ac; mean_pres_ac];

% standardised mean 'temperature vs vibrations' vector

mean_tv_ac = [mean_vibs_ac; mean_temp_ac];



% standardised raw 'pressure vs vibrations' matrix

pv_ac = [sv_ac_standardised_vibrations(2,:); sv_ac_standardised_pressure(2,:)];

% standardised raw 'pressure vs temperature' matrix

pt_ac = [sv_ac_standardised_temperature(2,:); sv_ac_standardised_pressure(2,:)];

% standardised raw 'temperature vs vibrations' matrix

tv_ac = [sv_ac_standardised_vibrations(2,:); sv_ac_standardised_temperature(2,:)];


%% computing within class scatter matrix for class 1 (steel vase) (2D case)

% within class scatter matrix 'pressure vs vibrations'

diff1_2d_1 = zeros(2,10);
for i = 1:size(pv_sv,2)
    diff1_2d_1(:,i) = pv_sv(:,i) - mean_pv_sv;
end
disp(diff1_2d_1)

sw1_2d_1 = diff1_2d_1 * diff1_2d_1';
disp('within class scatter matrix "pressure vs vibrations"')
disp(sw1_2d_1)

% within class scatter matrix 'pressure vs temperature'

diff1_2d_2 = zeros(2,10);
for i = 1:size(pt_sv,2)
    diff1_2d_2(:,i) = pt_sv(:,i) - mean_pt_sv;
end
disp(diff1_2d_2)

sw1_2d_2 = diff1_2d_2 * diff1_2d_2';
disp('within class scatter matrix "pressure vs temperature"')
disp(sw1_2d_2)

% within class scatter matrix 'temperature vs vibrations'

diff1_2d_3 = zeros(2,10);
for i = 1:size(tv_sv,2)
    diff1_2d_3(:,i) = tv_sv(:,i) - mean_tv_sv;
end
disp(diff1_2d_3)

sw1_2d_3 = diff1_2d_3 * diff1_2d_3';
disp('within class scatter matrix "temperature vs vibrations"')
disp(sw1_2d_3)

%% computing within class scatter matrix for class 2 (acrylic) (2D case)

% within class scatter matrix 'pressure vs vibrations'

diff2_2d_1 = zeros(2,10);
for i = 1:size(pv_ac,2)
    diff2_2d_1(:,i) = pv_ac(:,i) - mean_pv_ac;
end
disp(diff2_2d_1)

sw2_2d_1 = diff2_2d_1 * diff2_2d_1';
disp('within class scatter matrix "pressure vs vibrations"')
disp(sw2_2d_1)

% within class scatter matrix 'pressure vs temperature'

diff2_2d_2 = zeros(2,10);
for i = 1:size(pt_ac,2)
    diff2_2d_2(:,i) = pt_ac(:,i) - mean_pt_ac;
end
disp(diff2_2d_2)

sw2_2d_2 = diff2_2d_2 * diff2_2d_2';
disp('within class scatter matrix "pressure vs temperature"')
disp(sw2_2d_2)

% within class scatter matrix 'temperature vs vibrations'

diff2_2d_3 = zeros(2,10);
for i = 1:size(tv_ac,2)
    diff2_2d_3(:,i) = tv_ac(:,i) - mean_tv_ac;
end
disp(diff2_2d_3)

sw2_2d_3 = diff2_2d_3 * diff2_2d_3';
disp('within class scatter matrix "temperature vs vibrations"')
disp(sw2_2d_3)

%% summing within class scatter matrix for both classes (2D case)

sw_2d_1 = sw1_2d_1 + sw2_2d_1;
disp('within class scatter matrix "pressure vs vibrations"')
disp(sw_2d_1)

sw_2d_2 = sw1_2d_2 + sw2_2d_2;
disp('within class scatter matrix "pressure vs temperature"')
disp(sw_2d_2)

sw_2d_3 = sw1_2d_3 + sw2_2d_3;
disp('within class scatter matrix "temperature vs vibrations"')
disp(sw_2d_3)

%% computing between class scatter matrix (2D case)

diff_means_2d_1 = mean_pv_sv - mean_pv_ac;
sb_2d_1 = diff_means_2d_1 * diff_means_2d_1';
disp('between class scatter matrix "pressure vs vibrations"')
disp(sb_2d_1)

diff_means_2d_2 = mean_pt_sv - mean_pt_ac;
sb_2d_2 = diff_means_2d_2 * diff_means_2d_2';
disp('between class scatter matrix "pressure vs temperature"')
disp(sb_2d_2)

diff_means_2d_3 = mean_tv_sv - mean_tv_ac;
sb_2d_3 = diff_means_2d_3 * diff_means_2d_3';
disp('between class scatter matrix "temperature vs vibrations"')
disp(sb_2d_3)

%% finding the eigenvalues and eigenvectors of sw^(-1)sb (2D case)

lda_mat_2d_1 = sw_2d_1\sb_2d_1;
lda_mat_2d_2 = sw_2d_2\sb_2d_2;
lda_mat_2d_3 = sw_2d_3\sb_2d_3;

% Extract eigenvectors and eigenvalues
[V_lda_mat_2d_1, D_lda_mat_2d_1] = eig(lda_mat_2d_1);
[V_lda_mat_2d_2, D_lda_mat_2d_2] = eig(lda_mat_2d_2);
[V_lda_mat_2d_3, D_lda_mat_2d_3] = eig(lda_mat_2d_3);

disp('Eigenvectors in Columns "pressure vs vibrations"')
disp(V_lda_mat_2d_1)
disp('Eigenvalues along Diagonal "pressure vs vibrations"')
disp(D_lda_mat_2d_1)

disp('Eigenvectors in Columns "pressure vs temperature"')
disp(V_lda_mat_2d_2)
disp('Eigenvalues along Diagonal "pressure vs temperature"')
disp(D_lda_mat_2d_2)

disp('Eigenvectors in Columns "temperature vs vibrations"')
disp(V_lda_mat_2d_3)
disp('Eigenvalues along Diagonal "temperature vs vibrations"')
disp(D_lda_mat_2d_3)


%% forming raw data matrix and vector of means for class 1 (steel vase) (3D case)

% standardised mean 'temperature vs pressure vs vibrations' vector

mean_tpv_sv = [mean_vibs_sv; mean_pres_sv; mean_temp_sv];

% standardised raw 'temperature vs pressure vs vibrations' matrix

tpv_sv = [sv_ac_standardised_vibrations(1,:); sv_ac_standardised_pressure(1,:); sv_ac_standardised_temperature(1,:)];

%% forming raw data matrix and vector of means for class 2 (acrylic) (3D case)

% standardised mean 'temperature vs pressure vs vibrations' vector

mean_tpv_ac = [mean_vibs_ac; mean_pres_ac; mean_temp_ac];

% standardised raw 'temperature vs pressure vs vibrations' matrix

tpv_ac = [sv_ac_standardised_vibrations(2,:); sv_ac_standardised_pressure(2,:); sv_ac_standardised_temperature(2,:)];

%% computing within class scatter matrix for class 1 (steel vase) (3D case)

diff1 = zeros(3,10);
for i = 1:size(tpv_sv,2)
    diff1(:,i) = tpv_sv(:,i) - mean_tpv_sv;
end
disp(diff1)

sw1 = diff1 * diff1';
disp(sw1)

%% computing within class scatter matrix for class 2 (acrylic) (3D case)

diff2 = zeros(3,10);
for i = 1:size(tpv_ac,2)
    diff2(:,i) = tpv_ac(:,i) - mean_tpv_ac;
end
disp(diff2)

sw2 = diff2 * diff2';
disp(sw2)

%% summing within class scatter matrix for both classes (3D case)

sw = sw1 + sw2;
disp('Within Class Scatter Matrix')
disp(sw)

%% computing between class scatter matrix (3D case)

diff_means = mean_tpv_sv - mean_tpv_ac;
sb = diff_means * diff_means';
disp('Between Class Scatter Matrix')
disp(sb)

%% finding the eigenvalues and eigenvectors of sw^(-1)sb (3D case)

lda_mat = sw\sb;

% Extract eigenvectors and eigenvalues
[V_lda_mat, D_lda_mat] = eig(lda_mat);

disp('Eigenvectors in Columns')
disp(V_lda_mat)
disp('Eigenvalues along Diagonal')
disp(D_lda_mat)


%% Plots including generated LDA Function (2D case)

x1 = linspace(-5,5,100);
x2 = linspace(-5,5,100);
x3 = linspace(-5,5,100);

y1 = (V_lda_mat_2d_1(2,1)/V_lda_mat_2d_1(1,1)) * x1;    % first eigenvector corresponded to largest eigenvalue
y1_perp = ((-1)/(V_lda_mat_2d_1(2,1)/V_lda_mat_2d_1(1,1))) * x1;
y2 = (V_lda_mat_2d_2(2,1)/V_lda_mat_2d_2(1,1)) * x2;    % first eigenvector corresponded to largest eigenvalue
y2_perp = ((-1)/(V_lda_mat_2d_2(2,1)/V_lda_mat_2d_2(1,1))) * x2;
y3 = (V_lda_mat_2d_3(2,2)/V_lda_mat_2d_3(1,2)) * x3;    % second eigenvector corresponded to largest eigenvalue
y3_perp = ((-1)/(V_lda_mat_2d_3(2,2)/V_lda_mat_2d_3(1,2))) * x3;

figure('WindowState', 'maximized')
title = sprintf('Pressure vs Vibration');
sgtitle(title)
scatter(sv_ac_standardised_vibrations(1,:), sv_ac_standardised_pressure(1,:), 50, [0 0.4470 0.7410], "filled")
hold on
scatter(sv_ac_standardised_vibrations(2,:), sv_ac_standardised_pressure(2,:), 50, [0.3010 0.7450 0.9330], "filled")
hold on
scatter(mean_vibs_sv, mean_pres_sv, 100, "green", "filled")
hold on
scatter(mean_vibs_ac, mean_pres_ac, 100, "magenta", "filled")
hold on
plot(x1, y1, 'b-', 'LineWidth', 2)
hold on
plot(x1, y1_perp, 'r--', 'LineWidth', 2)
hold on
xlabel('Vibration')
ylabel('Pressure')
xlim([-2 2])
ylim([-2 2])
% set(gca, 'XTickLabel', [])
% set(gca, 'YTickLabel', [])
legend('Steel Vase', 'Acrylic', 'Steel Vase Mean', 'Acrylic Mean', 'LD', 'Separation Line')
hold off
axis square
grid on

figure('WindowState', 'maximized')
title = sprintf('Pressure vs Temperature');
sgtitle(title)
scatter(sv_ac_standardised_temperature(1,:), sv_ac_standardised_pressure(1,:), 50, [0 0.4470 0.7410], "filled")
hold on
scatter(sv_ac_standardised_temperature(2,:), sv_ac_standardised_pressure(2,:), 50, [0.3010 0.7450 0.9330], "filled")
hold on
scatter(mean_temp_sv, mean_pres_sv, 100, "green", "filled")
hold on
scatter(mean_temp_ac, mean_pres_ac, 100, "magenta", "filled")
hold on
plot(x2, y2, 'b-', 'LineWidth', 2)
hold on
plot(x2, y2_perp, 'r--', 'LineWidth', 2)
hold on
xlabel('Temperature')
ylabel('Pressure')
xlim([-2 2])
ylim([-2 2])
% set(gca, 'XTickLabel', [])
% set(gca, 'YTickLabel', [])
legend('Steel Vase', 'Acrylic', 'Steel Vase Mean', 'Acrylic Mean', 'LD', 'Separation Line')
hold off
axis square
grid on

figure('WindowState', 'maximized')
title = sprintf('Temperature vs Vibration');
sgtitle(title)
scatter(sv_ac_standardised_vibrations(1,:), sv_ac_standardised_temperature(1,:), 50, [0 0.4470 0.7410], "filled")
hold on
scatter(sv_ac_standardised_vibrations(2,:), sv_ac_standardised_temperature(2,:), 50, [0.3010 0.7450 0.9330], "filled")
hold on
scatter(mean_vibs_sv, mean_temp_sv, 100, "green", "filled")
hold on
scatter(mean_vibs_ac, mean_temp_ac, 100, "magenta", "filled")
hold on
plot(x3, y3, 'b-', 'LineWidth', 2)
hold on
plot(x3, y3_perp, 'r--', 'LineWidth', 2)
hold on
xlabel('Vibration')
ylabel('Temperature')
xlim([-2 2])
ylim([-2 2])
% set(gca, 'XTickLabel', [])
% set(gca, 'YTickLabel', [])
legend('Steel Vase', 'Acrylic', 'Steel Vase Mean', 'Acrylic Mean', 'LD', 'Separation Line')
hold off
axis square
grid on

%% Forming Tensors and Reshaping Tensors for Projection (2D case)

tensor_pv = cat(3, sv_ac_standardised_vibrations, sv_ac_standardised_pressure);
disp(size(tensor_pv))

tensor_pt = cat(3, sv_ac_standardised_temperature, sv_ac_standardised_pressure);
disp(size(tensor_pt))

tensor_tv = cat(3, sv_ac_standardised_vibrations, sv_ac_standardised_temperature);
disp(size(tensor_tv))

% Preliminary modification before reshaping
A_1 = pagetranspose(tensor_pv);
disp(size(A_1))
A_2 = pagetranspose(tensor_pt);
disp(size(A_2))
A_3 = pagetranspose(tensor_tv);
disp(size(A_3))

% Reshape tensors to a 2D matrix
% Each slice along the third dimension is treated as a separate variable
reshapedMatrixPV = reshape(A_1, [], size(A_1, 3));
disp(size(reshapedMatrixPV))
reshapedMatrixPT = reshape(A_2, [], size(A_2, 3));
disp(size(reshapedMatrixPT))
reshapedMatrixTV = reshape(A_3, [], size(A_3, 3));
disp(size(reshapedMatrixTV))

%% misc variables for plotting

separation_line_x = zeros(100,1);
separation_line_y = linspace(-2,2,100);
%% projection onto LD1 (2D case)

% "pressure vs vibrations"

feature_vector_pv_1d = zeros(2,1);
feature_vector_pv_1d(:,1) = V_lda_mat_2d_1(:,1);    % first eigenvector corresponded to largest eigenvalue

disp('1D LD1 Feature Vector: "pressure vs vibrations"')
disp(feature_vector_pv_1d)

projected_data = reshapedMatrixPV * feature_vector_pv_1d;

figure('WindowState', 'maximized')
title = sprintf('Projection of Standardised PV, PT and TV Data Sampled at t=%d onto LD1', selected_time_instance);
sgtitle(title)
scatter(projected_data(1:10,1), ones(10,1), 50, [0 0.4470 0.7410], "filled")
hold on
scatter(projected_data(11:20,1), ones(10,1), 50, [0.3010 0.7450 0.9330], "filled")
hold on

% "pressure vs temperature"

feature_vector_pt_1d = zeros(2,1);
feature_vector_pt_1d(:,1) = V_lda_mat_2d_2(:,1);    % first eigenvector corresponded to largest eigenvalue

disp('1D LD1 Feature Vector: "pressure vs temperature"')
disp(feature_vector_pt_1d)

projected_data = reshapedMatrixPT * feature_vector_pt_1d;

scatter(projected_data(1:10,1), zeros(10,1), 50, [0 0.4470 0.7410], "filled")
hold on
scatter(projected_data(11:20,1), zeros(10,1), 50, [0.3010 0.7450 0.9330], "filled")
hold on

% "temperature vs vibrations"

feature_vector_tv_1d = zeros(2,1);
feature_vector_tv_1d(:,1) = V_lda_mat_2d_3(:,2);    % second eigenvector corresponded to largest eigenvalue

disp('1D LD1 Feature Vector: "temperature vs vibrations"')
disp(feature_vector_tv_1d)

projected_data = reshapedMatrixTV * feature_vector_tv_1d;

scatter(projected_data(1:10,1), -1 * ones(10,1), 50, [0 0.4470 0.7410], "filled")
hold on
scatter(projected_data(11:20,1), -1 * ones(10,1), 50, [0.3010 0.7450 0.9330], "filled")
hold on

plot(separation_line_x, separation_line_y, 'r--', 'LineWidth', 2)
hold on

ylim([-2 2])
% xticks([])
yticks([-1, 0, 1])
yticklabels({'TV', 'PT', 'PV'})
legend('Steel Vase', 'Acrylic')
hold off
grid on

%% Finding equation of hyperplane containing LD1 and LD2

% Points on line 1
P1 = [0, 0, 0];
P2 = [V_lda_mat(1,1), V_lda_mat(2,1), V_lda_mat(3,1)];

% Points on line 2
Q1 = [0, 0, 0];
Q2 = [V_lda_mat(1,3), V_lda_mat(2,3), V_lda_mat(3,3)];

% Lines
line1 = [P1; P2];
line2 = [Q1; Q2];

% Direction vectors of the lines
V1 = P2 - P1;
V2 = Q2 - Q1;

% Normal vector of the plane
N = cross(V1, V2);

% Choose a point on Line 1 as a point on the plane
P = P1;

% Determine D in the plane equation Ax + By + Cz + D = 0
D = -dot(N, P);

% Display the equation of the plane
disp('Equation of the plane:');
disp(['Ax + By + Cz + D = 0, where A = ', num2str(N(1)), ', B = ', num2str(N(2)), ', C = ', num2str(N(3)), ', D = ', num2str(D)]);

% Create a grid of points
[x, y] = meshgrid(-5:0.1:5, -5:0.1:5);

% Define coefficients of the hyperplane equation
a = N(1);
b = N(2);
c = N(3);
d = D;

% Compute the z-values for the hyperplane
z = (-a * x - b * y - d) / c;

%% Plots including LD1, LD2 and hyperplane containing both LDs

figure('WindowState', 'maximized')
title = sprintf('Temperature vs Pressure vs Vibration');
sgtitle(title)
scatter3(sv_ac_standardised_vibrations(1,:), sv_ac_standardised_pressure(1,:), sv_ac_standardised_temperature(1,:), 50, [0 0.4470 0.7410], "filled")
hold on
scatter3(sv_ac_standardised_vibrations(2,:), sv_ac_standardised_pressure(2,:), sv_ac_standardised_temperature(2,:), 50, [0.3010 0.7450 0.9330], "filled")
hold on
scatter3(mean_vibs_sv, mean_pres_sv, mean_temp_sv, 100, "green", "filled")
hold on
scatter3(mean_vibs_ac, mean_pres_ac, mean_temp_ac, 100, "magenta", "filled")
hold on
patch(surf2patch(x, y, z), 'FaceAlpha', 0.5, 'FaceColor', [0.9290 0.6940 0.1250], 'EdgeColor', 'none');
hold on
plot3(line1(:, 1), line1(:, 2), line1(:, 3), 'b-', 'LineWidth', 2)
hold on
plot3(line2(:, 1), line2(:, 2), line2(:, 3), 'r-', 'LineWidth', 2)
hold on
xlabel('Vibration')
ylabel('Pressure')
zlabel('Temperature')
xlim([-2 2])
ylim([-2 2])
zlim([-2 2])
% set(gca, 'XTickLabel', [])
% set(gca, 'YTickLabel', [])
legend('Steel Vase', 'Acrylic', 'Steel Vase Mean', 'Acrylic Mean', 'Hyperplane', 'LD1', 'LD2')
hold off
axis square
grid on

%% Forming Tensors and Reshaping Tensors for Projection (3D case)

tensor_tpv = cat(3, sv_ac_standardised_vibrations, sv_ac_standardised_pressure, sv_ac_standardised_temperature);
disp(size(tensor_tpv))

% Preliminary modification before reshaping
A_4 = pagetranspose(tensor_tpv);
disp(size(A_4))

% Reshape tensors to a 2D matrix
% Each slice along the third dimension is treated as a separate variable
reshapedMatrixTPV = reshape(A_4, [], size(A_4, 3));
disp(size(reshapedMatrixTPV))

%% misc variables for plotting

separation_line_x = zeros(100,1);
separation_line_y = linspace(-2,2.5,100);
%% projection onto plane spanned by LD1 and LD2 (3D case)

% "temperature vs pressure vs vibrations"

feature_vector_tpv_2d = zeros(3,2);
feature_vector_tpv_2d(:,1) = V_lda_mat(:,1);    % first eigenvector corresponds to largest eigenvalue
feature_vector_tpv_2d(:,2) = V_lda_mat(:,3);    % third eigenvector corresponds to second largest eigenvalue

disp('2D LD1 and LD2 Feature Vector: "temperature vs pressure vs vibrations"')
disp(feature_vector_tpv_2d)

projected_data = reshapedMatrixTPV * feature_vector_tpv_2d;

figure('WindowState', 'maximized')
title = sprintf('Projection of Standardised TPV Data Sampled at t=%d onto Plane Spanned by LD1 and LD2', selected_time_instance);
sgtitle(title)
scatter(projected_data(1:10,1), projected_data(1:10,2), 50, [0 0.4470 0.7410], "filled")
hold on
scatter(projected_data(11:20,1), projected_data(11:20,2), 50, [0.3010 0.7450 0.9330], "filled")
hold on
plot(separation_line_x, separation_line_y, 'r--', 'LineWidth', 2)
hold on
xlabel('LD1')
ylabel('LD2')
% set(gca, 'XTickLabel', [])
% set(gca, 'YTickLabel', [])
legend('Steel Vase', 'Acrylic', 'Separation Line')
hold off
axis square
grid on

%% misc variables for plotting

separation_line_x = zeros(100,1);
separation_line_y = linspace(-2,2,100);
%% projection onto LD1 (3D case)

% "temperature vs pressure vs vibrations"

feature_vector_tpv_1d = zeros(3,1);
feature_vector_tpv_1d(:,1) = V_lda_mat(:,1);

disp('1D LD1 Feature Vector: "temperature vs pressure vs vibrations"')
disp(feature_vector_tpv_1d)

projected_data = reshapedMatrixTPV * feature_vector_tpv_1d;

figure('WindowState', 'maximized')
title = sprintf('Projection of Standardised TPV Data Sampled at t=%d onto LD1', selected_time_instance);
sgtitle(title)
scatter(projected_data(1:10,1), zeros(10,1), 50, [0 0.4470 0.7410], "filled")
hold on
scatter(projected_data(11:20,1), zeros(10,1), 50, [0.3010 0.7450 0.9330], "filled")
hold on
plot(separation_line_x, separation_line_y, 'r--', 'LineWidth', 2)
hold on
ylim([-2 2])
% xticks([])
yticks([0])
yticklabels({'TPV'})
legend('Steel Vase', 'Acrylic', 'Separation Line')
hold off
grid on

%%
%    _____           __  _                ____       ________           __            _                                __   ________                _ _____            __  _           
%   / ___/___  _____/ /_(_)___  ____     / __ \_    / ____/ /_  _______/ /____  _____(_)___  ____ _   ____ _____  ____/ /  / ____/ /___ ___________(_) __(_)________ _/ /_(_)___  ____ 
%   \__ \/ _ \/ ___/ __/ / __ \/ __ \   / / / (_)  / /   / / / / / ___/ __/ _ \/ ___/ / __ \/ __ `/  / __ `/ __ \/ __  /  / /   / / __ `/ ___/ ___/ / /_/ / ___/ __ `/ __/ / __ \/ __ \
%  ___/ /  __/ /__/ /_/ / /_/ / / / /  / /_/ /    / /___/ / /_/ (__  ) /_/  __/ /  / / / / / /_/ /  / /_/ / / / / /_/ /  / /___/ / /_/ (__  |__  ) / __/ / /__/ /_/ / /_/ / /_/ / / / /
% /____/\___/\___/\__/_/\____/_/ /_/  /_____(_)   \____/_/\__,_/____/\__/\___/_/  /_/_/ /_/\__, /   \__,_/_/ /_/\__,_/   \____/_/\__,_/____/____/_/_/ /_/\___/\__,_/\__/_/\____/_/ /_/ 
%                                                                                         /____/                                                                                       
%% Clustering and Classification: Hierarchical Clustering, Euclidian Distance

%% Standardise Data

% Transpose each slice of the third dimension to form a tensor A of
% dimension 10 x 6 x 3, instead of the original 6 x 10 x 3

disp('data3D')
disp(data3D)
A = pagetranspose(data3D);
disp('A')
disp(A)

% Reshape the tensor A to form a matrix with 3 columns, the size of the
% third dimension of A. This happens by stacking all 6 columns of a single slice of A one after another in a
% single column. As there are 3 slices, you end up with 3 columns that have
% been filled in said fashion.

reshapedData = reshape(A, [], size(A, 3));
disp('reshapedData')
disp(reshapedData)

% Standardize the data such that each column of reshapedData has a mean of
% 0 and standard deviation of 1.

standardisedData = zscore(reshapedData);
disp('standardisedData')
disp(standardisedData)

% Reshape carefully to form a tensor of dimensions 6 x 10 x 3

stand1 = standardisedData(:,1);
stand2 = standardisedData(:,2);
stand3 = standardisedData(:,3);

prelimshape1 = reshape(stand1,[10,6]);
disp('stand1')
disp(stand1)
disp('prelimshape1')
disp(prelimshape1)
prelimshape2 = reshape(stand2,[10,6]);
disp('stand2')
disp(stand2)
disp('prelimshape2')
disp(prelimshape2)
prelimshape3 = reshape(stand3,[10,6]);
disp('stand3')
disp(stand3)
disp('prelimshape3')
disp(prelimshape3)

standardisedData = cat(3, prelimshape1, prelimshape2, prelimshape3);
disp('standardisedData')
disp(standardisedData)
standardisedData = pagetranspose(standardisedData);
disp('standardisedData')
disp(standardisedData)

%% Shape Manipulation

% Preliminary modification before reshaping
B = pagetranspose(standardisedData);

% Reshape standardisedData to a 2D matrix
% Each slice along the third dimension is treated as a separate variable
reshapedMatrixPVT = reshape(B, [], size(B, 3));
disp(reshapedMatrixPVT)
disp(size(reshapedMatrixPVT))

%% Clustering Algorithms

% Perform hierarchical clustering using Euclidean distance and single
% linkage

objs = {'steel vase';'steel vase';'steel vase';'steel vase';'steel vase';
        'steel vase';'steel vase';'steel vase';'steel vase';'steel vase';
        'kitchen sponge';'kitchen sponge';'kitchen sponge';'kitchen sponge';'kitchen sponge';
        'kitchen sponge';'kitchen sponge';'kitchen sponge';'kitchen sponge';'kitchen sponge';
        'flour sack';'flour sack';'flour sack';'flour sack';'flour sack';
        'flour sack';'flour sack';'flour sack';'flour sack';'flour sack';
        'car sponge';'car sponge';'car sponge';'car sponge';'car sponge';
        'car sponge';'car sponge';'car sponge';'car sponge';'car sponge';
        'black foam';'black foam';'black foam';'black foam';'black foam';
        'black foam';'black foam';'black foam';'black foam';'black foam';
        'acrylic';'acrylic';'acrylic';'acrylic';'acrylic';'acrylic';
        'acrylic';'acrylic';'acrylic';'acrylic'};

Z = linkage(reshapedMatrixPVT, 'complete', 'euclidean');

% Display dendrogram
figure('WindowState', 'maximized')
title = sprintf('6 Clusters Generated via Hierarchical Clustering Using Euclidian Distance Metric');
sgtitle(title)
dendrogram(Z, 0, 'ColorThreshold', 2.75, 'Labels', objs);
xlabel('Data Points')
ylabel('Euclidian Distance')

% Defines the maximum number of clusters
MaxClust = 6; 

T = cluster(Z, 'maxclust', MaxClust); % The output T contains cluster assignments of each observation (row of reshapedMatrixPVT)

disp(T)

%% Extract data from T and store in new variables for data visualisation

cluster1 = [];
cluster2 = [];
cluster3 = [];
cluster4 = [];
cluster5 = [];
cluster6 = [];

for i = 1:60
    if T(i,1) == 1
        cluster1 = [cluster1, i];
    elseif T(i,1) == 2
        cluster2 = [cluster2, i];
    elseif T(i,1) == 3
        cluster3 = [cluster3, i];
    elseif T(i,1) == 4
        cluster4 = [cluster4, i];
    elseif T(i,1) == 5
        cluster5 = [cluster5, i];
    elseif T(i,1) == 6
        cluster6 = [cluster6, i];
    end
end

points1 = zeros(size(cluster1,2),3);
for i = 1:3
    for j = 1:size(cluster1,2)
        points1(j,i) = reshapedMatrixPVT(cluster1(j),i);
    end
end

points2 = zeros(size(cluster2,2),3);
for i = 1:3
    for j = 1:size(cluster2,2)
        points2(j,i) = reshapedMatrixPVT(cluster2(j),i);
    end
end

points3 = zeros(size(cluster3,2),3);
for i = 1:3
    for j = 1:size(cluster3,2)
        points3(j,i) = reshapedMatrixPVT(cluster3(j),i);
    end
end

points4 = zeros(size(cluster4,2),3);
for i = 1:3
    for j = 1:size(cluster4,2)
        points4(j,i) = reshapedMatrixPVT(cluster4(j),i);
    end
end

points5 = zeros(size(cluster5,2),3);
for i = 1:3
    for j = 1:size(cluster5,2)
        points5(j,i) = reshapedMatrixPVT(cluster5(j),i);
    end
end

points6 = zeros(size(cluster6,2),3);
for i = 1:3
    for j = 1:size(cluster6,2)
        points6(j,i) = reshapedMatrixPVT(cluster6(j),i);
    end
end

%% producing standardised 3d scatter plot with colours corresponding to clusters

% Standardised 3D Scatter Plot

figure('WindowState', 'maximized')
title = sprintf('6 Clusters Generated via Hierarchical Clustering Using Euclidian Distance Metric');
sgtitle(title)
scatter3(points1(:,1), points1(:,2), points1(:,3), 50, [0 0.4470 0.7410], "filled")
hold on
scatter3(points2(:,1), points2(:,2), points2(:,3), 50, [0.8500 0.3250 0.0980], "filled")
hold on
scatter3(points3(:,1), points3(:,2), points3(:,3), 50, [0.9290 0.6940 0.1250], "filled")
hold on
scatter3(points4(:,1), points4(:,2), points4(:,3), 50, [0.4940 0.1840 0.5560], "filled")
hold on
scatter3(points5(:,1), points5(:,2), points5(:,3), 50, [0.4660 0.6740 0.1880], "filled")
hold on
scatter3(points6(:,1), points6(:,2), points6(:,3), 50, [0.3010 0.7450 0.9330], "filled")
hold on
xlabel('Standardised Vibrations');
ylabel('Standardised Pressure');
zlabel('Standardised Temperature');
legend('Cluster 1', 'Cluster 2', 'Cluster 3', 'Cluster 4', 'Cluster 5', 'Cluster 6')
hold off
axis square

%% Clustering and Classification: Hierarchical Clustering, Chebychev Distance

%% Standardise Data

% Transpose each slice of the third dimension to form a tensor A of
% dimension 10 x 6 x 3, instead of the original 6 x 10 x 3

disp('data3D')
disp(data3D)
A = pagetranspose(data3D);
disp('A')
disp(A)

% Reshape the tensor A to form a matrix with 3 columns, the size of the
% third dimension of A. This happens by stacking all 6 columns of a single slice of A one after another in a
% single column. As there are 3 slices, you end up with 3 columns that have
% been filled in said fashion.

reshapedData = reshape(A, [], size(A, 3));
disp('reshapedData')
disp(reshapedData)

% Standardize the data such that each column of reshapedData has a mean of
% 0 and standard deviation of 1.

standardisedData = zscore(reshapedData);
disp('standardisedData')
disp(standardisedData)

% Reshape carefully to form a tensor of dimensions 6 x 10 x 3

stand1 = standardisedData(:,1);
stand2 = standardisedData(:,2);
stand3 = standardisedData(:,3);

prelimshape1 = reshape(stand1,[10,6]);
disp('stand1')
disp(stand1)
disp('prelimshape1')
disp(prelimshape1)
prelimshape2 = reshape(stand2,[10,6]);
disp('stand2')
disp(stand2)
disp('prelimshape2')
disp(prelimshape2)
prelimshape3 = reshape(stand3,[10,6]);
disp('stand3')
disp(stand3)
disp('prelimshape3')
disp(prelimshape3)

standardisedData = cat(3, prelimshape1, prelimshape2, prelimshape3);
disp('standardisedData')
disp(standardisedData)
standardisedData = pagetranspose(standardisedData);
disp('standardisedData')
disp(standardisedData)

%% Shape Manipulation

% Preliminary modification before reshaping
B = pagetranspose(standardisedData);

% Reshape standardisedData to a 2D matrix
% Each slice along the third dimension is treated as a separate variable
reshapedMatrixPVT = reshape(B, [], size(B, 3));
disp(reshapedMatrixPVT)
disp(size(reshapedMatrixPVT))

%% Clustering Algorithms

% Perform hierarchical clustering using Chebychev distance and single
% linkage

objs = {'steel vase';'steel vase';'steel vase';'steel vase';'steel vase';
        'steel vase';'steel vase';'steel vase';'steel vase';'steel vase';
        'kitchen sponge';'kitchen sponge';'kitchen sponge';'kitchen sponge';'kitchen sponge';
        'kitchen sponge';'kitchen sponge';'kitchen sponge';'kitchen sponge';'kitchen sponge';
        'flour sack';'flour sack';'flour sack';'flour sack';'flour sack';
        'flour sack';'flour sack';'flour sack';'flour sack';'flour sack';
        'car sponge';'car sponge';'car sponge';'car sponge';'car sponge';
        'car sponge';'car sponge';'car sponge';'car sponge';'car sponge';
        'black foam';'black foam';'black foam';'black foam';'black foam';
        'black foam';'black foam';'black foam';'black foam';'black foam';
        'acrylic';'acrylic';'acrylic';'acrylic';'acrylic';'acrylic';
        'acrylic';'acrylic';'acrylic';'acrylic'};

Z = linkage(reshapedMatrixPVT, 'complete', 'chebychev');

% Display dendrogram
figure('WindowState', 'maximized')
title = sprintf('6 Clusters Generated via Hierarchical Clustering Using Chebychev Distance Metric');
sgtitle(title)
dendrogram(Z, 0, 'ColorThreshold', 2.2, 'Labels', objs);
xlabel('Data Points')
ylabel('Chebychev Distance')

% Defines the maximum number of clusters
MaxClust = 6; 

T = cluster(Z, 'maxclust', MaxClust); % The output T contains cluster assignments of each observation (row of reshapedMatrixPVT)

disp(T)

%% Extract data from T and store in new variables for data visualisation

cluster1 = [];
cluster2 = [];
cluster3 = [];
cluster4 = [];
cluster5 = [];
cluster6 = [];

for i = 1:60
    if T(i,1) == 1
        cluster1 = [cluster1, i];
    elseif T(i,1) == 2
        cluster2 = [cluster2, i];
    elseif T(i,1) == 3
        cluster3 = [cluster3, i];
    elseif T(i,1) == 4
        cluster4 = [cluster4, i];
    elseif T(i,1) == 5
        cluster5 = [cluster5, i];
    elseif T(i,1) == 6
        cluster6 = [cluster6, i];
    end
end

points1 = zeros(size(cluster1,2),3);
for i = 1:3
    for j = 1:size(cluster1,2)
        points1(j,i) = reshapedMatrixPVT(cluster1(j),i);
    end
end

points2 = zeros(size(cluster2,2),3);
for i = 1:3
    for j = 1:size(cluster2,2)
        points2(j,i) = reshapedMatrixPVT(cluster2(j),i);
    end
end

points3 = zeros(size(cluster3,2),3);
for i = 1:3
    for j = 1:size(cluster3,2)
        points3(j,i) = reshapedMatrixPVT(cluster3(j),i);
    end
end

points4 = zeros(size(cluster4,2),3);
for i = 1:3
    for j = 1:size(cluster4,2)
        points4(j,i) = reshapedMatrixPVT(cluster4(j),i);
    end
end

points5 = zeros(size(cluster5,2),3);
for i = 1:3
    for j = 1:size(cluster5,2)
        points5(j,i) = reshapedMatrixPVT(cluster5(j),i);
    end
end

points6 = zeros(size(cluster6,2),3);
for i = 1:3
    for j = 1:size(cluster6,2)
        points6(j,i) = reshapedMatrixPVT(cluster6(j),i);
    end
end

%% producing standardised 3d scatter plot with colours corresponding to clusters

% Standardised 3D Scatter Plot

figure('WindowState', 'maximized')
title = sprintf('6 Clusters Generated via Hierarchical Clustering Using Chebychev Distance Metric');
sgtitle(title)
scatter3(points1(:,1), points1(:,2), points1(:,3), 50, [0 0.4470 0.7410], "filled")
hold on
scatter3(points2(:,1), points2(:,2), points2(:,3), 50, [0.8500 0.3250 0.0980], "filled")
hold on
scatter3(points3(:,1), points3(:,2), points3(:,3), 50, [0.9290 0.6940 0.1250], "filled")
hold on
scatter3(points4(:,1), points4(:,2), points4(:,3), 50, [0.4940 0.1840 0.5560], "filled")
hold on
scatter3(points5(:,1), points5(:,2), points5(:,3), 50, [0.4660 0.6740 0.1880], "filled")
hold on
scatter3(points6(:,1), points6(:,2), points6(:,3), 50, [0.3010 0.7450 0.9330], "filled")
hold on
xlabel('Standardised Vibrations');
ylabel('Standardised Pressure');
zlabel('Standardised Temperature');
legend('Cluster 1', 'Cluster 2', 'Cluster 3', 'Cluster 4', 'Cluster 5', 'Cluster 6')
hold off
axis square

%% Bagging

%% Standardise Data

% Transpose each slice of the third dimension to form a tensor A of
% dimension 10 x 6 x 19, instead of the original 6 x 10 x 19

A = pagetranspose(electrodeData3D);
disp(size(A))

% Reshape the tensor A to form a matrix with 19 columns, the size of the
% third dimension of A. This happens by stacking all 6 columns of a single slice of A one after another in a
% single column. As there are 19 slices, you end up with 19 columns that have
% been filled in said fashion.

reshapedData = reshape(A, [], size(A, 3));
disp(size(reshapedData))

% Standardize the data such that each column of reshapedData has a mean of
% 0 and standard deviation of 1.

standardisedData = zscore(reshapedData);

% Reshape carefully to form a tensor of dimensions 6 x 10 x 19

stand1 = standardisedData(:,1);
stand2 = standardisedData(:,2);
stand3 = standardisedData(:,3);
stand4 = standardisedData(:,4);
stand5 = standardisedData(:,5);
stand6 = standardisedData(:,6);
stand7 = standardisedData(:,7);
stand8 = standardisedData(:,8);
stand9 = standardisedData(:,9);
stand10 = standardisedData(:,10);
stand11 = standardisedData(:,11);
stand12 = standardisedData(:,12);
stand13 = standardisedData(:,13);
stand14 = standardisedData(:,14);
stand15 = standardisedData(:,15);
stand16 = standardisedData(:,16);
stand17 = standardisedData(:,17);
stand18 = standardisedData(:,18);
stand19 = standardisedData(:,19);


prelimshape1 = reshape(stand1,[10,6]);
prelimshape2 = reshape(stand2,[10,6]);
prelimshape3 = reshape(stand3,[10,6]);
prelimshape4 = reshape(stand4,[10,6]);
prelimshape5 = reshape(stand5,[10,6]);
prelimshape6 = reshape(stand6,[10,6]);
prelimshape7 = reshape(stand7,[10,6]);
prelimshape8 = reshape(stand8,[10,6]);
prelimshape9 = reshape(stand9,[10,6]);
prelimshape10 = reshape(stand10,[10,6]);
prelimshape11 = reshape(stand11,[10,6]);
prelimshape12 = reshape(stand12,[10,6]);
prelimshape13 = reshape(stand13,[10,6]);
prelimshape14 = reshape(stand14,[10,6]);
prelimshape15 = reshape(stand15,[10,6]);
prelimshape16 = reshape(stand16,[10,6]);
prelimshape17 = reshape(stand17,[10,6]);
prelimshape18 = reshape(stand18,[10,6]);
prelimshape19 = reshape(stand19,[10,6]);


standardisedData = cat(3, prelimshape1, prelimshape2, prelimshape3, prelimshape4, prelimshape5, prelimshape6, prelimshape7, prelimshape8, prelimshape9, prelimshape10, prelimshape11, prelimshape12, prelimshape13, prelimshape14, prelimshape15, prelimshape16, prelimshape17, prelimshape18, prelimshape19);
standardisedData = pagetranspose(standardisedData);

disp(size(standardisedData))
disp(standardisedData)

%% Finding covariance matrix, eigenvectors and eigenvalues of electrode data

% Preliminary modification before reshaping
B = pagetranspose(standardisedData);

% Reshape standardisedData3D to a 2D matrix
% Each slice along the third dimension is treated as a separate variable
reshapedMatrixElectrodes = reshape(B, [], size(B, 3));
disp(size(reshapedMatrixElectrodes))

% Calculate the covariance matrix
covarianceMatrixElectrodes = cov(reshapedMatrixElectrodes);

% Display the result
disp('Covariance Matrix:');
disp(covarianceMatrixElectrodes);

% Extract eigenvectors and eigenvalues
[V_Electrodes, D_Electrodes] = eig(covarianceMatrixElectrodes);

disp('Eigenvectors in Columns')
disp(V_Electrodes)
disp('Eigenvalues along Diagonal')
disp(D_Electrodes)


eigVals = zeros(1,19);

for i = 1:19
    eigVals(1,i) = D_Electrodes(i,i); 
end

disp(eigVals)

%% Producing a Scree Plot

% Principle Components
PC = 1:19;

% Plot Scree Plot
flipped_eigVals = flip(eigVals);
disp(flipped_eigVals)

figure('WindowState', 'maximized')
plot(PC,flipped_eigVals,'-o')
xlabel('Principle Component Number')
xlim([1 19])
ylabel('Eigenvalues')
title = sprintf('Electrode Data Scree Plot');
sgtitle(title)

%% projection onto plane spanned by PC1, PC2 and PC3

% create feature vector

feature_vector_3d = zeros(19,3);
feature_vector_3d(:,1) = V_Electrodes(:,19);
feature_vector_3d(:,2) = V_Electrodes(:,18);
feature_vector_3d(:,3) = V_Electrodes(:,17);

disp('3d feature vector')
disp(feature_vector_3d)

% project data

projected_data = reshapedMatrixElectrodes * feature_vector_3d;
disp(projected_data)
disp(size(projected_data))

% plot on 3D scatter graph

figure('WindowState', 'maximized')
title = sprintf('Projection of Standardised Electrode Data Sampled at t=%d onto Plane Spanned by PC1, PC2 and PC3', selected_time_instance);
sgtitle(title)
scatter3(projected_data(1:10,1), projected_data(1:10,2), projected_data(1:10,3), 50, [0 0.4470 0.7410], "filled")
hold on
scatter3(projected_data(11:20,1), projected_data(11:20,2), projected_data(11:20,3), 50, [0.8500 0.3250 0.0980], "filled")
hold on
scatter3(projected_data(21:30,1), projected_data(21:30,2), projected_data(21:30,3), 50, [0.9290 0.6940 0.1250], "filled")
hold on
scatter3(projected_data(31:40,1), projected_data(31:40,2), projected_data(31:40,3), 50, [0.4940 0.1840 0.5560], "filled")
hold on
scatter3(projected_data(41:50,1), projected_data(41:50,2), projected_data(41:50,3), 50, [0.4660 0.6740 0.1880], "filled")
hold on
scatter3(projected_data(51:60,1), projected_data(51:60,2), projected_data(51:60,3), 50, [0.3010 0.7450 0.9330], "filled")
hold on
xlabel('PC1')
ylabel('PC2')
zlabel('PC3')
% set(gca, 'XTickLabel', [])
% set(gca, 'YTickLabel', [])
% set(gca, 'ZTickLabel', [])
legend('Steel Vase', 'Kitchen Sponge', 'Flour Sack', 'Car Sponge', 'Black Foam', 'Acrylic')
hold off
axis square
grid on

%% Using a 60/40 split for Training/Testing data

rng(8)
objs = {'steel vase';'steel vase';'steel vase';'steel vase';'steel vase';
        'steel vase';'steel vase';'steel vase';'steel vase';'steel vase';
        'kitchen sponge';'kitchen sponge';'kitchen sponge';'kitchen sponge';'kitchen sponge';
        'kitchen sponge';'kitchen sponge';'kitchen sponge';'kitchen sponge';'kitchen sponge';
        'flour sack';'flour sack';'flour sack';'flour sack';'flour sack';
        'flour sack';'flour sack';'flour sack';'flour sack';'flour sack';
        'car sponge';'car sponge';'car sponge';'car sponge';'car sponge';
        'car sponge';'car sponge';'car sponge';'car sponge';'car sponge';
        'black foam';'black foam';'black foam';'black foam';'black foam';
        'black foam';'black foam';'black foam';'black foam';'black foam';
        'acrylic';'acrylic';'acrylic';'acrylic';'acrylic';'acrylic';
        'acrylic';'acrylic';'acrylic';'acrylic'};
[a,b] = size(projected_data);
disp(a)
disp(b)
training_split = 0.6; % training data split
order = randperm(a);
disp(order)
training_dataset = projected_data(order(1:round(training_split * a)),:);
disp(training_dataset)
testing_dataset = projected_data(order(round(training_split * a)+1:end),:);
disp(testing_dataset)
training_labels = objs(order(1:round(training_split * a)),:);
disp(training_labels)
testing_labels = objs(order(round(training_split * a)+1:end),:);
disp(testing_labels)

%%

NumTrees = 30;    % so far, 100 bags seems to be the best balance between enough bagging to reduce probability of error and not too much bagging to the point it results in overfitting, causing misclassifications
Mdl = TreeBagger(NumTrees, training_dataset, training_labels, Method="classification", OOBPrediction="on", PredictorNames=["PC1", "PC2", "PC3"]);
disp(Mdl)

%   initial tree
view(Mdl.Trees{1}, Mode="graph");

% Plot the out-of-bag classification error over the number of grown classification trees.
figure
plot(oobError(Mdl))
xlabel('Number Of Grown Trees');
ylabel('Out-Of-Bag Classification Error');

% the final tree
view(Mdl.Trees{NumTrees}, Mode="graph");

oobLabels = oobPredict(Mdl);
ind = randsample(length(oobLabels),20);
table(training_labels(ind),oobLabels(ind),...
    VariableNames=["TrueLabel" "PredictedLabel"])

% Check Performance with Testing Data 
prediction = Mdl.predict(testing_dataset);
confusion_matrix = confusionmat(testing_labels, prediction);
disp(confusion_matrix)

figure
confusionchart(testing_labels, prediction);

acc = sum(diag(confusion_matrix)) / sum(confusion_matrix(:))*100;
disp(['The accuracy of classification is ', num2str(acc),'%']);

%the best way to increase the performance of current program is to design an 'early stop' mechanism.

