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

## Tabella: Dipartimento

-ID_dipartimento (PK)
-nome
-indirizzo

## Tabella: CorsoDiLaurea

-ID_CorsoLaurea (PK)
-nome
-ID_Dipartimento (FK)

## Tabella: Corso

-ID_Corso (PK)
-nome
-cfu
-ID_CorsoLaurea (FK)

## Tabella: Insegnante

-ID_Insegnante (PK)
-nome
-cognome
-email

## Tabella: AppelloEsame

-ID_Appello (PK)
-data
-ID_Corso (FK)

## Tabella: Studente

-ID_Matricola (PK)
-nome
-cognome
-data_nascita
-ID_CorsoLaurea (FK)

## Tabella pivot: Insegnanti_Corsi

-ID_Insegnante
-ID_Corso

## Tabella pivot: Appelli_Studenti

-ID_Matricola
-ID_Appello
-voto
