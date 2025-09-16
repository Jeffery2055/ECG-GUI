patientfiles = dir('*.mat');

for n = 1:length(patientfiles)
    Name = patientfiles(n).name(1:4);
    [data.(['p_' Name]).t, data.(['p_' Name]).ecg, ...
        data.(['p_' Name]).Fs] = LoadMITecg(Name);
end

%%
ind = 600;

figure
plot(data.p_100m.t,data.p_100m.ecg)
xlim([ind ind+30])