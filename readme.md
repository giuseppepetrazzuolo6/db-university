# DB univesity schema

Modellizzare la struttura di un database per memorizzare tutti i dati riguardanti una università:

-sono presenti diversi Dipartimenti (es.: Lettere e Filosofia, Matematica, Ingegneria ecc.);
-ogni Dipartimento offre più Corsi di Laurea (es.: Civiltà e Letterature Classiche, Informatica, Ingegneria Elettronica ecc..)
-ogni Corso di Laurea prevede diversi Corsi (es.: Letteratura Latina, Sistemi Operativi 1, Analisi Matematica 2 ecc.);
-ogni Corso può essere tenuto da diversi Insegnanti;
-ogni Corso prevede più appelli d'Esame;
-ogni Studente è iscritto ad un solo Corso di Laurea;
-ogni Studente può iscriversi a più appelli di Esame;

per ogni appello d'Esame a cui lo Studente ha partecipato, è necessario memorizzare il voto ottenuto, anche se non sufficiente.

## Dipartimento

-ID_dipartimento (PK)
-nome

## CorsoDiLaurea

-ID_CorsoLaurea (PK)
-nome
-ID_Dipartimento (FK)

## Corso

-ID_Corso (PK)
-nome
-cfu
-ID_CorsoLaurea (FK)

## Insegnante

-ID_Insegnante (PK)
-nome
-cognome
-email

## AppelloEsame

-ID_Appello (PK)
-data
-ID_Corso (FK)

## Studente

-Matricola (PK)
-nome
-cognome
-data_nascita
-ID_CorsoLaurea (FK)
