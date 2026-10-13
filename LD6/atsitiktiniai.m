function A = atsitiktiniai(eilutes, stulpeliai, N)
% ATSITIKTINIAI Generuoja atsitiktiniu naturaluju skaiciu masyva.
% A = atsitiktiniai(eilutes, stulpeliai, N)
% eilutes - eiluciu skaicius
% stulpeliai - stulpeliu skaicius
% N - maksimali galima skaiciaus reiksme

A = randi(N, eilutes, stulpeliai);
end