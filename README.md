
##Sharp at Coding! 

Am folosit HTML && CSS && JS && PHP && MySQL si Bootstrap.
Fisierelor .js le-am schimbat extensia in .tojs

###Despre proiect
---
Proiectul meu este un site de genul PbInfo in care poti vizualiza probleme
de programare ( pe nivele de dificultate ) si poti incarca solutii la acestea.
Orice utilizator cu un cont poate vedea rezultatul solutiilor sale
( scrise in C ). WebServerul primeste codul in C (test.c) il compileaza
si il executa, dupa care trimite rezultatul clientului in  browser.

Am inceput deja sa lucrez si la backend in PHP si MySQL.
Ma gandeam in viitor sa mut baza de date in MongoDB.

###Paginilie proiectului
---
Creare editare cont:
->profile.html
->signup.html

Autentificare:
->login.html

Pagina de start (contine si galerie):
->index.html

Pagina de listare principala:
->problem.html
    Pagina cerinta problema si rezolvare:
    ->solveMe.html

Pagina de administrare probleme: --doar administratorii au acces la aceasta pagina pentru a adauga probleme
->addProblem.html

Pagina acces interzis:
->404.html


###INSTALARE:

Tabelele din MySQL le-am exportat in ./db/algogeek.sql

Pentru ca PHP sa poata compila cu shell_exec() codul primit trebuie sa modificati fisierul ./php/problems/comp.bat
!!!
"C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\Tools\VsDevCmd.bat" 
&& cd C:\xampp\htdocs\PbInfo\php\problems && cl test.c
!!!
1. In loc de "C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\Tools\VsDevCmd.bat" 
adaugati calea unde este VsDevCmd.bat pe calculatorul vostru. ( visual studio developer cmd).
 
2. In loc de C:\xampp\htdocs\PbInfo\php\problems adaugati calea catre directorul
problems din calculatorul vostru.


###Aplicatii:

De asemenea, pagina web este responsive -> am folosit @media
Login-ul in platforma este tratat in php.
Lista de utilizatori in baza de date:
1. UTILIZATOR ADMINISTRATOR
    username: admin
    passwd: admin
2. UTILIZATOR NORMAL
    username: Lucax
    passwd: 1234

Problemele pot fi incarcate doar de catre administratori in baza de date din addProblem.html
Utilizatorii normali care vor incerca sa intre vor fi redirectionati.

Problemele de programare sunt impartite pe 4 categorii pe baza campului 'type' din baza de date.
(clasa 9,10,11,12);
Am incarcat in baza de date probleme pentru clasa 9.


###Flux de utilizare:

Un flux de utilizare al site-ului:
-login cu utilizatorul 1. admin
-deschidere poze din galerie
-intra pe card-ul cu probleme de clasa a 9-a
-vizualizeaza statistici
-intra pe una dintre probleme
-POTI REZOLVA SI TRIMITE rezolvarea catre serverul web


Pentru a vizualiza profilul utilizatorului puteti intra din index.html pe
"Hello `username` go to Profile!"
Paginile principale sunt cele de login si signup. Teoretic nu ar trebui sa poti intra
pe site fara a avea un cont. Voi rezolva pe viitor cu token din php aceasta problema.
Datele locale ale site-ului se salveaza in js in variabila sessionStorage.

Pentru adaugarea unei noi probleme am pagina de template, ulterior la apasarea butonului
adauga problema o sa fie adaugata in baza de date de catre admin => Filtru PHP care sa 
verifice ca utilizatorul care a trimis este administrator(cu tokeni).

In partea de statistici si profil utilizator se vor incarca date dinamic din PHP.