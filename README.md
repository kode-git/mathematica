# Base Changing in Mathematica

<p>
        <img src="https://img.shields.io/static/v1?label=build&message=passing&color=%3CCOLOR%3E" alt="alternatetext">
	<img src="https://img.shields.io/badge/state-closed-red" alt="alternatetext">
	<img src="https://img.shields.io/badge/version-1.0%20-blue" alt="alternatetext">
  <img src="https://img.shields.io/badge/notebook-Mathematica 14.2-yellow" alt="alternatetext">
  <img src="https://img.shields.io/badge/package-Mathematica 14.2-white" alt="alternatetext">
</p>

Progetto per l'esame di Matematica Computazionale A.A. 2020/2021 basato sulla definizione di package e di un Notebook interattivo programmato interamente in Mathematica 14.2 con tecnologie assistive per la comprensione di persone con dislessia.


## Caratteristiche Package

Il progetto prevede l'implementazione di un Notebook e di un Package affiliato per la definizione di procedure ad-hoc programmate in Mathematica per la gestione della parte interattiva all'interno del notebook stesso.
La struttura del package segue le linee guida definite in Mathematica, la funzione visibile esternamente è la seguente:

```
(* ::Package:: *)

(* :Title: MainPackage *)
(* :Context: MainPackage` *)
(* :Author: Francesco Natati, Mario Sessa *)
(* :Summary: All base conversion functionalities used by the notebook. *)
(* :Copyright: Alma Mater Studiorum - Bologna 2021*)
(* :Package Version: 1 *)
(* :Mathematica Version: 12.2 *)
(* :History: \\ *)
(* :Keywords: base, conversion*)
(* :Sources: \\ *)
(* :Discussion: \\ *)
BeginPackage["MainPackage`"];

UniversalExercise::usage = "UniversalExercise[] crea l'interfaccia per lavorare sull'esercizio universale della conversione di numeri fra basi differenti (con basi dal valore compreso tra 2 e 62).";

Begin["`Private`"];

(* ... *)

End[];
EndPackage[];


```

## Caratteristiche Notebook

Il notebook fornisce un indice ben definito che divide il contenuto in 2 sezioni principali:
<ul>
  <li> <b> Parte Teorica: </b> In cui poter definire come si gestisce il Notebook, le regole di conversione e spiegazione di procedure complesse per il cambio di base con particolare attenzione per le basi 2 e 16.
  </li><li> <b> Parte Pratica: </b> In cui poter sperimentare attraverso l'esercizio universale una conversione vera e propria. All'interno dell'esercizio è possibile generare i dati randomicamente, verificare le soluzioni, leggere i passaggi effettuati e resettarne i campi. </li>
 </ul>
 

## Esercizio Universale

<img width=80% src="/src/resources/img/universal_exercise_guide.png"></img>

## Autori

<ul>
  <li> Francesco Natati (@projectnatz) </li>
  <li> Mario Sessa (@kode-git) </li>
</ul>

## Licenza 

&copy; Apache License Version 2.0, January 2004

