function sig_bruite=ligne(sig_mod,h)
%{
    Operation : signal * h + AWGN + bruit colore


---PARAMS---
sig_mod     [vecteur]   signal modul� issu du modulateur
h           [vecteur]   fonction de transfert de la ligne

---RETURN---
sig_bruite  [vecteur] signal en sortie de ligne

%}


snr=6;

sig_att = conv2(sig_mod,h);
t=0:1:607;
sig_bruite = awgn(sig_att,snr);%+16*sin(1e5*t);
