load('C:\data\2021\03\01\MJ.percPurs_Discrim.154725.v2.mat')
[eyeData, params] = percPurs_smooth(eyeData, stim);

modGainUni=unique(stim.modGain);
nGain=length(modGainUni);

for k =1:nGain
    indGain=stim.modGain==modGainUni(k);
    nTrue(k)=sum(psychData(indGain));
    nTot=sum(indGain);
end


%plot
figure
plot(modGainUni,(nTrue ./nTot))
title('Psychometric curve')
xlabel('modulation velocity/deg/sec')
ylabel('proportion perceived faster')