while(1)
disp("Please Choose Your Option : 1.Antenna Power Calculation Formulas 2.Test Option");
o = input("please Enter The Number of Your option : ");
switch(o)
    case 1
        disp("Loss = Power input / Power Output  ");
disp("Total Gain = (amplifier gain)db -(filter gain)db -(loss of antenna)");
disp("Total Power Radiated By Antenna = Power Input dBm +(Amplifier gain)db - (filter gain)dB - (Loss of Antenna)dB");
Pin = input("Please Enter The Power Input W : ");
Pout = input("Please Enter The Power Output W : ");
amp = input("Please Enter the amplifier gain db : ");
fi = input("Please Enter The filter gain db : ");

LogPLoss = Pin * 1000;
PdBm = log10(LogPLoss);
b = PdBm *10;

Loss = Pin / Pout;
Lossdb = log10(Loss);
a =Lossdb * 10;
disp("Your Loss Eqaul By : ");
disp(a);

TG = (amp) - (fi) - (a);
disp("Your Total Gain Equal By : ");
disp(TG);

TP = b + (amp) - (fi) - (a);
disp("Your Total Power Radiated By Antenna Equal By : ");
disp(TP);
    case 2
        disp("It's Test Option");
    otherwise
        disp("You have entered Wrong Number");
end
end


