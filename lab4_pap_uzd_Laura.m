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

% sukuriamas daugiasluoksnis perceptronas (MLP)
tinklas = feedforwardnet(10, 'trainbr');
tinklas.divideFcn = '';
tinklas = train(tinklas,P,T);

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
% pateikime rezultata komandiniame lange
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
raidziu_sk = size(P2,2);
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
disp(atsakymas)
figure(8), text(0.1,0.5,atsakymas,'FontSize',38), axis off

%% zodzio "FIKCIJA" pozymiu isskyrimas 
pavadinimas = 'test_fikcija.jpg';
pozymiai_patikrai = pozymiai_raidems_atpazinti(pavadinimas, 1);

%% Raidziu atpazinimas
P2 = cell2mat(pozymiai_patikrai);
Y2 = sim(tinklas, P2);
[a2, b2] = max(Y2);
%% Rezultato atvaizdavimas
raidziu_sk = size(P2,2);
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
disp(atsakymas)
figure(9), text(0.1,0.5,atsakymas,'FontSize',38), axis off