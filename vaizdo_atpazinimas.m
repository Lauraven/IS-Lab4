close all
clear all
clc
%% raidziu pavyzdzio nuskaitymas ir pozymio skaiciavimas
pavadinimas = 'train.jpg';
pozymiai_tinklo_mokymui = pozymiai_raidems_atpazinti(pavadinimas,8);
%% Atpazintuvo kurimas
% pozymiai is celiu masyvo perkeliami i matrica
P = cell2mat(pozymiai_tinklo_mokymui);
% sukuriama teisingu atsakymu matrica: 11 raidziu, 8 eilutes mokymui
T = [eye(11), eye(11), eye(11), eye(11), eye(11), eye(11), eye(11), eye(11)];
% sukuriamas SBF tinklas duotiems P ir T sarysiams
% create an RBF network for classification with 13 neurons, and sigma = 1
tinklas = newrb(P,T,0,1,8);

%% Tinklo patikra | Test of the network (recognizer)
% skaiciuojamas tinklo isejimas nezinomiems pozymiams
P2 = P(:,12:22);
Y2 = sim(tinklas, P2);
% ieskoma, kuriame isejime gauta didziausia reiksme
[a2, b2] = max(Y2);

%% Rezultato atvaizdavimas
% apskaiciuosime raidziu skaiciu - pozymiu P2 stulpeliu skaiciu
raidziu_sk = size(P2,2);
% rezultata saugosime kintamajame 'atsakymas'
atsakymas = [];
for k = 1:raidziu_sk
    switch b2(k)
        case 1
            atsakymas = [atsakymas, 'A'];
        case 2
            atsakymas = [atsakymas, 'B'];
        case 3
            atsakymas = [atsakymas, 'C'];
        case 4
            atsakymas = [atsakymas, 'D'];
        case 5
            atsakymas = [atsakymas, 'E'];
        case 6
            atsakymas = [atsakymas, 'F'];
        case 7
            atsakymas = [atsakymas, 'G'];
        case 8
            atsakymas = [atsakymas, 'H'];
        case 9
            atsakymas = [atsakymas, 'I'];
        case 10
            atsakymas = [atsakymas, 'K'];
        case 11
            atsakymas = [atsakymas, 'J'];
    end
end
% pateikime rezultatà komandiniame lange
disp(atsakymas)
figure(7), text(0.1,0.5,atsakymas,'FontSize',38)
%% zodzio "KADA" pozymio isskyrimas 
pavadinimas = 'test_kada.jpg';
pozymiai_patikrai = pozymiai_raidems_atpazinti(pavadinimas, 1);

%% Raidziu atpazinimas
% pozymiai is celiu masyvo perkeliami i matrica
P2 = cell2mat(pozymiai_patikrai);
% skaiciuojamas tinklo isejimas nezinomiems pozymiams
Y2 = sim(tinklas, P2);
% ieskoma, kuriame isejime gauta didziausia reiksme
[a2, b2] = max(Y2);

%% Rezultato atvaizdavimas | Visualization of result
% apskaiciuosime raidziu skaiciu - pozymiu P2 stulpeliu skaièiu
raidziu_sk = size(P2,2);
% rezultata saugosime kintamajame 'atsakymas'
atsakymas = [];
for k = 1:raidziu_sk
    switch b2(k)
        case 1
            atsakymas = [atsakymas, 'A'];
        case 2
            atsakymas = [atsakymas, 'B'];
        case 3
            atsakymas = [atsakymas, 'C'];
        case 4
            atsakymas = [atsakymas, 'D'];
        case 5
            atsakymas = [atsakymas, 'E'];
        case 6
            atsakymas = [atsakymas, 'F'];
        case 7
            atsakymas = [atsakymas, 'G'];
        case 8
            atsakymas = [atsakymas, 'H'];
        case 9
            atsakymas = [atsakymas, 'I'];
        case 10
            atsakymas = [atsakymas, 'K'];
        case 11
            atsakymas = [atsakymas, 'J'];
    end
end
% pateikime rezultata komandiniame lange
disp(atsakymas)
figure(8), text(0.1,0.5,atsakymas,'FontSize',38), axis off

%% zodzio "FIKCIJA" pozymiu isskyrimas 
pavadinimas = 'test_fikcija.jpg';
pozymiai_patikrai = pozymiai_raidems_atpazinti(pavadinimas, 1);

%% Raidziu atpazinimas
% pozymiai is celiu masyvo perkeliami i matrica
P2 = cell2mat(pozymiai_patikrai);
% skaiciuojamas tinklo isejimas neþinomiems pozymiams
Y2 = sim(tinklas, P2);
% ieskoma, kuriame isejime gauta didziausia reiksme
[a2, b2] = max(Y2);
%% Rezultato atvaizdavimas
% apskaiciuosime raidziu skaiciu - pozymiu P2 stulpeliu skaiciu
raidziu_sk = size(P2,2);
% rezultata saugosime kintamajame 'atsakymas'
atsakymas = [];
for k = 1:raidziu_sk
    switch b2(k)
        case 1
            atsakymas = [atsakymas, 'A'];
        case 2
            atsakymas = [atsakymas, 'B'];
        case 3
            atsakymas = [atsakymas, 'C'];
        case 4
            atsakymas = [atsakymas, 'D'];
        case 5
            atsakymas = [atsakymas, 'E'];
        case 6
            atsakymas = [atsakymas, 'F'];
        case 7
            atsakymas = [atsakymas, 'G'];
        case 8
            atsakymas = [atsakymas, 'H'];
        case 9
            atsakymas = [atsakymas, 'I'];
        case 10
            atsakymas = [atsakymas, 'K'];
        case 11
            atsakymas = [atsakymas, 'J'];
    end
end
% pateikime rezultata komandiniame lange
disp(atsakymas)
figure(9), text(0.1,0.5,atsakymas,'FontSize',38), axis off

