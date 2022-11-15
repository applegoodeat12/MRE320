%% Z-axis angular velocity comparison

clc;
clear all;
% data from IUM sensor
A1 = [250.13	241.37 186.63 118.41 77.35	107.45	185.13	212.32	140.95	192.66	227.52	177.49	120.71	23.85	21.41	179.66];
A2 = [189.79	189.78	188.89	180.71	191.57	201.4	180.58	112.18	113.86	23.47	250.13	250.13	153.18	145.11	109.52	69.8];
A3 = [115.45	119.8	76.03	90.93	144.38	105.47	64.46	42.44	69.28	90.44	112.53	177.69	171.02	160.25	158.85	175.13];

% True ground;
B1 = [204.95	243	231	196.04	249	243	190.1	123	83.17	115.84	144	204	160.4	168	216.83	219];
B2 = [105	192	178.22	156	195	193.07	189	181.19	189	195	163.37	111	144	226.47	255	258];
B3 = [57	96	124.75	120	118.81	86.11	63	103.96	144	108	41.53	51	75	86.14	117	177];


x = 1:1:16;
for i=1:length(x)

    y1(i) = A1(i);
    y2(i) = B1(i);
    y3(i) = A2(i);
    y4(i) = B2(i);
    y5(i) = A3(i);
    y6(i) = B3(i);
end

subplot(3,1,1)
plot(x,y1,x,y2,'LineWidth',2);
title('Z-axis angular velocity comparison');
xlabel('time/sec')
ylabel('angular velocity')
legend('IUM sensor','True ground');

subplot(3,1,2)
plot(x,y3,x,y4,'LineWidth',2);
xlabel('time/sec')
ylabel('angular velocity')
legend('IUM sensor','True ground');

subplot(3,1,3)
plot(x,y5,x,y6,'LineWidth',2);
xlabel('time/sec')
ylabel('angular velocity')
legend('IUM sensor','True ground');

%% Y-axis angular velocity comparison

clc;
clear all;
% data from IUM sensor
A1 = [150.77	203.78	190.27	138	170.9	105.5	208.35	204.3	180.05	209.57	181.56	209.34	183.2	158.37	134.52	128.66	44.82	40.9];
A2 = [247.43	250.13	250.13	120.6	186.7	61.09	128.86	171.37	250.13	240.5	133.27	250.13	216.89	194.81	215.8	195.68	148.38	96.68];
A3 = [214.09	250.14	250.14	250.14	250.14	202.6	206.93	164.41	203.72	104.4	206.78	183.08	91.17	148.39	151.12	173.12	115.24	82.28];

% True ground;
B1 = [57	63	77.23	171	156	190.1	174	144	142.57	156	228	216.83	193.07	213.86	198	207	190.1	177];
B2 = [130.69	198	246.53	282.18	255	213.86	165	72	50.5	168	261	243.56	183	252	261.39	210	201.98	216.83];
B3 = [145.54	252	330	294.06	291	240	204.95	213	154.46	196.04	210	207.92	198	126	83.17	156	165	151.49];


x = 1:1:18;
for i=1:length(x)

    y1(i) = A1(i);
    y2(i) = B1(i);
    y3(i) = A2(i);
    y4(i) = B2(i);
    y5(i) = A3(i);
    y6(i) = B3(i);
end

subplot(3,1,1)
plot(x,y1,x,y2,'LineWidth',2);
title('Y-axis angular velocity comparison');
xlabel('time/sec')
ylabel('angular velocity')
legend('IUM sensor','True ground');

subplot(3,1,2)
plot(x,y3,x,y4,'LineWidth',2);
xlabel('time/sec')
ylabel('angular velocity')
legend('IUM sensor','True ground');

subplot(3,1,3)
plot(x,y5,x,y6,'LineWidth',2);
xlabel('time/sec')
ylabel('angular velocity')
legend('IUM sensor','True ground');

%% X-axis angular velocity comparison

clc;
clear all;
% data from IUM sensor
A1 = [108.36	125.66	159.33	180.47	154.57	210.5	154.3	180.5	211.59	163.61	164	98.29	129.13	123.97	213.27	206.63];
A2 = [83.56	210.82	224.56	239.9	238.44	250.14	250.14	198.46	211.57	250.14	245.6	205.89	85.16	25.14	187.66	123.89];
A3 = [121.27	250.13	185.68	211.11	250.13	250.13	250.13	250.13	207.71	114.04	224.14	250.13	250.13	174.21	107.49	124.17];

% True ground;
B1 = [102	157.43	103.96	129	163.37	168	144	196.04	174	156	201.98	168	165	136.63	109.9	77.23];
B2 = [42	176.47	222	228	258	291	276.24	180	240	258.15	237.62	204	124.75	222	180	142.57];
B3 = [118.81	255	201	196.04	264	288.12	305.94	312	192	193.07	120	282.18	237	173.53	114	102];


x = 1:1:16;
for i=1:length(x)

    y1(i) = A1(i);
    y2(i) = B1(i);
    y3(i) = A2(i);
    y4(i) = B2(i);
    y5(i) = A3(i);
    y6(i) = B3(i);
end

subplot(3,1,1)
plot(x,y1,x,y2,'LineWidth',2);
title('X-axis angular velocity comparison');
xlabel('time/sec')
ylabel('angular velocity')
legend('IUM sensor','True ground');

subplot(3,1,2)
plot(x,y3,x,y4,'LineWidth',2);
xlabel('time/sec')
ylabel('angular velocity')
legend('IUM sensor','True ground');

subplot(3,1,3)
plot(x,y5,x,y6,'LineWidth',2);
xlabel('time/sec')
ylabel('angular velocity')
legend('IUM sensor','True ground');

%% Z-axis acceleration comparison

clc;
clear all;
% data from IUM sensor
A1 = [1.3	0.88	0.94	0.92	0.91	0.89	0.49	0.86	0.9	0.91	1.04	0.89	0.86	0.88	0.88	0.91];
A2 = [0.86	0.95	0.94	0.99	0.92	0.91	0.9	0.81	0.78	0.91	0.87	0.9	0.91	0.88	0.9	0.91];
A3 = [0.9	0.86	0.89	0.89	0.93	0.9	 0.86	0.9	0.9	0.91	0.88	0.92	0.73	0.86	0.9	0.92];

% True ground;
B1 = [0.21	0.01	0.02	0.14	0.07	0.17	0.07	0.07	0.04	0.13	0.14	0.08	0.12	0.02	0.07	0.02];
B2 = [0.01	0.01	0.01	0.08	0.02	0.11	0.01	0.13	0.02	0.02	0.11	0.04	0.01	0.01	0.03	0.01];
B3 = [0	0.21	0.02	0.01	0.01	0.05	0.03	0.01	0.1	0.11	0.02	0.03	0.07	0.01	0.14	0.08];


x = 1:1:16;
for i=1:length(x)

    y1(i) = A1(i);
    y2(i) = B1(i);
    y3(i) = A2(i);
    y4(i) = B2(i);
    y5(i) = A3(i);
    y6(i) = B3(i);
end

subplot(3,1,1)
plot(x,y1,x,y2,'LineWidth',2);
title('Z-axis acceleration comparison');
xlabel('time/sec')
ylabel('acceleration')
legend('IUM sensor','True ground');

subplot(3,1,2)
plot(x,y3,x,y4,'LineWidth',2);
xlabel('time/sec')
ylabel('acceleration')
legend('IUM sensor','True ground');

subplot(3,1,3)
plot(x,y5,x,y6,'LineWidth',2);
xlabel('time/sec')
ylabel('acceleration')
legend('IUM sensor','True ground');

%% Y-axis acceleration comparison

clc;
clear all;
% data from IUM sensor
A1 = [1.05	0.91	1.06	0.85	0.94	0.97	1.05	1.06	0.99	1	0.98	1.03	1.03	1.01	0.99	1.01	1.02];
A2 = [0.97	0.92	0.91	0.84	1.06	1.01	1.07	0.95	1.04	1.14	0.94	1.07	0.98	1.03	0.99	1.01	0.99];
A3 = [0.95	0.91	0.99	1	0.9	0.91	1.02	0.99	0.95	0.95	1	1	1	0.99	0.99	0.96	1.04];

% True ground;
B1 = [0.08	0.13	0.03	0.01	0.02	0.09	0.03	0.1	0.04	0.07	0.11	0.17	0.04	0.03	0.03	0.07	0.01];
B2 = [0.12	0.01	0.03	0.08	0.1	0.14	0.03	0	0.05	0.08	0.02	0.02	0.02	0.04	0.05	0.09	0];
B3 = [0.22	0.07	0.01	0.02	0.05	0.03	0.01	0.01	0.12	0.05	0.016	0.18	0.14	0.06	0.08	0.03	0.03];


x = 1:1:17;
for i=1:length(x)

    y1(i) = A1(i);
    y2(i) = B1(i);
    y3(i) = A2(i);
    y4(i) = B2(i);
    y5(i) = A3(i);
    y6(i) = B3(i);
end

subplot(3,1,1)
plot(x,y1,x,y2,'LineWidth',2);
title('Y-axis acceleration comparison');
xlabel('time/sec')
ylabel('acceleration')
legend('IUM sensor','True ground');

subplot(3,1,2)
plot(x,y3,x,y4,'LineWidth',2);
xlabel('time/sec')
ylabel('acceleration')
legend('IUM sensor','True ground');

subplot(3,1,3)
plot(x,y5,x,y6,'LineWidth',2);
xlabel('time/sec')
ylabel('acceleration')
legend('IUM sensor','True ground');

%% X-axis acceleration comparison

clc;
clear all;
% data from IUM sensor
A1 = [1.02	1.07	1.05	1.11	0.96	0.81	0.96	1.02	1.03	1.04	0.92	1.08	1.05];
A2 = [0.99	0.96	1.18	1.13	0.98	1.07	0.99	0.95	0.98	1.1	0.93	1.01	1.03];
A3 = [0.98	1.04	1.06	1.01	1.03	1.08	1.01	0.93	1.03	1.02	1.15	1.24	1.02];

% True ground;
B1 = [0.09	0.07	0.01	0.03	0.02	0.05	0.01	0.02	0.05	0.07	0.05	0.08	0];
B2 = [0.05	0.05	0.03	0.12	0.03	0.05	0.05	0.1	 0.04	0.09	0.16	0.02	0.11];
B3 = [0.01	0.1	0.19	0.1	0.07	0.15	0.04	0.22	0.08	0.17	0.01	0.07	0.07];


x = 1:1:13;
for i=1:length(x)

    y1(i) = A1(i);
    y2(i) = B1(i);
    y3(i) = A2(i);
    y4(i) = B2(i);
    y5(i) = A3(i);
    y6(i) = B3(i);
end

subplot(3,1,1)
plot(x,y1,x,y2,'LineWidth',2);
title('X-axis acceleration comparison');
xlabel('time/sec')
ylabel('acceleration')
legend('IUM sensor','True ground');

subplot(3,1,2)
plot(x,y3,x,y4,'LineWidth',2);
xlabel('time/sec')
ylabel('acceleration')
legend('IUM sensor','True ground');

subplot(3,1,3)
plot(x,y5,x,y6,'LineWidth',2);
xlabel('time/sec')
ylabel('acceleration')
legend('IUM sensor','True ground');
