%{
    Operation : signal * h + AWGN + bruit colore


---PARAMS---
sig_mod     [vecteur] signal modul� issu du modulateur
h           [vecteur] fonction de transfert de la ligne

---RETURN---
sig_bruite  [vecteur] signal en sortie de ligne
%}

%snr valeur du SNR souhait� par canal en dB


sig_att = conv2(sig_mod,h)
sig_awgn = awgn(sig_att,snr) 
