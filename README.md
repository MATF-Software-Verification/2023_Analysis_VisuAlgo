# 2023_Analysis_18-stock-app

## Podaci o autoru i projektu
Autor: Nikola Subotić 1029 / 2023

Projekat: VisuAlgo je aplikacija koja ima za cilj da vizualno prikaže rad algoritama. Ideja je da se krećemo kroz lavirint(matricu) od početnog do krajnjeg čvora, pri tom zaobilazeći sve prepreke koje nam se nadju na putu. Svrha aplikacije je da na drugačiji način pomogne u lakšem razumevanju funkcionisanja algoritama.

Link do projekta, grana i heš kod commita: [Projekat](https://gitlab.com/matf-bg-ac-rs/course-rs/projects-2023-2024/VisuAlgo.git), main, 7c5b74118d8aaacbbb5344c274effa23dee61e66

## Alati i uputstvo za pokretanje

Spisak alata:
* clang-tidy
* memcheck
* perf + FlameGraph
* flawfinder
* cachegrind

Svaki od navedenih alata ima u odgovarajućem folderu bash skriptu koja ga pokreće i rezultate izvršavanja. 

## Zaključak

Integracija alata za statičku i dinamičku analizu, kao i profiliranje, pružila je dubok uvid u performanse i sigurnost projekta VisuAlgo.
Otklanjanje stilskih i logičkih nedoslednosti, identifikacija potencijalnih memorijskih propusta, efikasno upoređivanje performansi algoritama i otkrivanje sigurnosnih ranjivosti doprinose poboljšanju kvaliteta i performansi ovog projekta.
Detaljan opis alata može se pronaći u fajlu ProjectAnalysisReport.
