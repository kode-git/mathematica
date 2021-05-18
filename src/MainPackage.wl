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

UniversalExercise::usage = "UniversalExercise[] crea l'interfaccia per lavorare sull'esercizio universale della conversione di numeri fra basi differenti.";

Begin["Private`"];

(* :constant {List of Characters} Lista dei simboli dallo '0' alla 'z' (0-9|A-Z|a-z) *)
Symbols = Join[Map[ToString, Range[0,9]], ToUpperCase[CharacterRange["a","z"]], CharacterRange["a", "z"]];

(* Ottieni il valore numerico di un simbolo *)
(* :param {Character} symbol - Simbolo da trasformare in valore numerico *)
(* :return {Integer} Valore numerico associato al simbolo passato *)
SymbolToValue[symbol_] := (Position[Symbols, symbol, 1, 1] - 1)[[1]][[1]];

(* Ottieni un simbolo a partire dal suo valore numerico *)
(* :param {Integer} value - Valore numerico del simbolo *)
(* :return {Character} Simbolo associato al valore numerico passato *)
SymbolFromValue[value_] := Symbols[[value + 1]];

(* Effettua la conversione da un numero espresso in una base qualsiasi (tra 2 e 62 compresi) alla base 10, ottenendo le informazioni della conversione *)
(* :param {String} inputValue - Stringa corrispondente al numero in input espresso nella base di input *)
(* :param {Integer} inputBase - Base di input tra 2 e 62 compresi nella quale \[EGrave] espresso il numero in input *)
(* :return {<| result \[Rule] Integer, steps \[Rule] List of Strings |>} Informazioni ottenute durante la conversione *)
ConvertToBase10[inputValue_, inputBase_] := Module[
	{ exponents, figureValues, result, symbolValues, steps },
	(* Calcolo il valore numerico dei simboli *)
	symbolValues = Map[SymbolToValue, Characters[inputValue]];
	(* Calcolo i valori degli esponenti, ovvero le posizioni delle cifre *)
	exponents = Range[Length[symbolValues] - 1, 0, -1];
	(* Calcolo il valore di ogni singola cifra in base alla posizione, moltiplicando il valore del simbolo per la base elevato al valore dell'esponente per quella posizione *)
	figureValues = symbolValues * Map[inputBase^#&, exponents];
	(* Calcolo il risultato sommando assieme i valori finali delle varie cifre *)
	result = Fold[#1 + #2&, 0, figureValues];
	(* Genero i passaggi per la spiegazione guidata dell'esercizio *)
	steps = Table["Prendiamo il simbolo in posizione " <> ToString[exponents[[i]]] <> " che avr\[AGrave] valore numerico pari a " <> ToString[symbolValues[[i]]] <> ": il valore finale di questa posizione sar\[AGrave] il valore del simbolo moltiplicato per il multiplo corretto di " <> ToString[inputBase] <> ", ovvero " <> ToString[symbolValues[[i]]] <> " \[Bullet] " <> ToString[inputBase] <> "^" <> ToString[exponents[[i]]] <> " che sar\[AGrave] uguale a " <> ToString[figureValues[[i]]] <> ";",\[NonBreakingSpace]{i, 1, Length[symbolValues]}];
	Return[<| "result" -> result, "steps" -> steps |>];
];

(* Esegui divisioni consecutive a partire da un numero e ottieni i quozienti finch\[EAcute] non si raggiunge 0 *)
(* :param {Integer} startingValue - Valore di partenza, usato dalla prima divisione *)
(* :param {Integer} divisor - Divisore usato in ogni divisione *)
(* :return {List of Integers} Lista dei quozienti ottenuti ad ogni passo di divisione *)
Quotients[startingValue_, divisor_] := Module[
	{ previousQuotient, result },
	(* Inizializzo il quoziente precedente con il valore di partenza *)
	previousQuotient = startingValue;
	(* Inizializzo l'array del risultato inserendo il valore di partenza *)
	result = {startingValue};
	While[True,
		(* Calcolo il nuovo quoziente a partire da quello precedenti, dividente per il divisore *)
		previousQuotient = Quotient[previousQuotient, divisor];
		(* Ritorno il risultato attuale se il quoziente \[EGrave] 0 *)
		If[previousQuotient == 0, Return[result];];
		(* Aggiungo il quoziente alla lista e continuo le divisioni *)
		AppendTo[result, previousQuotient];
	];
	Return[result];
];

(* Effettua la conversione di un numero da base 10 a una base qualsiasi (tra 2 e 62 compresi), ottenendo le informazioni della conversione *)
(* :param {Integer} inputValue - Numero in input espresso in base 10 da convertire *)
(* :param {Integer} outputBase - Valore della base verso la quale convertire il numero, valore compreso tra 2 e 62 compresi *)
(* :return {<| result \[Rule] String, steps \[Rule] List of Strings |>} Informazioni della conversione *)
ConvertFromBase10[inputValue_, outputBase_] := Module[
	{ quotients, rests, result, steps },
	(* Genero la lista dei quozienti *)
	quotients = Quotients[inputValue, outputBase];
	(* Calcolo la lista dei resti delle divisioni trovando il modulo di ogni quoziente per la base e rimpiazzando il valore numero trovato con il simbolo corretto *)
	rests = Map[SymbolFromValue[Mod[#, outputBase]]&, quotients];
	(* Calcolo il risultato invertendo la lista dei resti *)
	result = StringJoin[Reverse[rests]];
	(* Genero i passaggi per la spiegazione guidata dell'esercizio *)
	steps = Table["Dividi " <> ToString[quotients[[i]]] <> " per " <> ToString[outputBase] <>". Otterrai come resto il simbolo '" <> ToString[rests[[i]]] <> "';", {i, 1, Length[quotients]}];
	Return[<| "result" -> result, "steps" -> steps |>];
];

(* Effettua la conversione di un numero da una base qualsiasi a una base qualsiasi *)
(* :param {String} inputValue - Stringa corrispondente al numero in input espresso nella base di input *)
(* :param {Integer} inputBase - Base di input tra 2 e 62 compresi nella quale \[EGrave] espresso il numero in input *)
(* :param {Integer} outputBase - Valore della base verso la quale convertire il numero, valore compreso tra 2 e 62 compresi *)
(* :return {<| "result" \[Rule] String, "conversionToBase10" \[Rule] <| result \[Rule] String, steps \[Rule] List of Strings |>, "conversionFromBase10" \[Rule] <| result \[Rule] String, steps \[Rule] List of Strings |> |>} *)
ConvertBase[inputValue_, inputBase_, outputBase_] := Module[
	{ conversionToBase10, conversionFromBase10 },
	conversionToBase10 = ConvertToBase10[inputValue, inputBase];
	conversionFromBase10 = ConvertFromBase10[conversionToBase10[["result"]], outputBase];
	Return[<| "result" -> conversionFromBase10[["result"]], "conversionToBase10" -> conversionToBase10, "conversionFromBase10" -> conversionFromBase10 |>];
];

(* Ottieni la stringa del passaggio corrente, se esiste *)
(* :param {List of Strings} steps - Lista dei passaggi *)
(* :param {Integer} index - Indice del passaggio corrente *)
(* :return {String} Ritorna la stringa contenente il passaggio corrente, oppure una stringa di default in caso di indice fuori dal range *)
PrintStep[steps_, index_] := If[
	Length[steps] > 0 && Length[steps] >= index && index > 0,
	Return[ToString[steps[[index]]]];,
	Return["Utilizza le frecce per navigare tra i passaggi!"];
];

(* Genera i passaggi per la conversione verso la base 10 *)
(* :param {<| result \[Rule] Integer, steps \[Rule] List of Strings |>} conversion - Informazioni ottenute durante la conversione *)
(* :return {List of Strings} Ritorna l'elenco dei passaggi sotto forma di lista *)
GenerateStepsToBase10[conversion_] := Module[
	{ steps },
	steps = Join[
		{ "Analizziamo separatamente le cifre del numero;", "Associamo, a partire dalla cifra a destra verso sinistra e iniziando da 0, il numero della posizione di ogni cifra;" },
		conversion[["steps"]],
		{ "Sommiamo insieme i valori delle posizioni ottenuti;", "La somma dei valori, ovvero il numero convertito, equivale a " <> ToString[conversion[["result"]]] <> "." }
	];
	Return[steps];
];

(* Genera i passaggi per la conversione dalla base 10 *)
(* :param {<| result \[Rule] String, steps \[Rule] List of Strings |>} conversion - Informazioni ottenute durante la conversione *)
(* :return {List of Strings} Ritorna l'elenco dei passaggi sotto forma di lista *)
GenerateStepsFromBase10[conversion_] := Module[
	{ steps },
	steps = Join[
		{ "Procedi con le divisioni;" },
		conversion[["steps"]],
		{ "Rileggi i resti ottenuti;", "Inverti l'ordine dei resti;", "Il risultato \[EGrave] la stringa dei resti letti in ordine inverso, cio\[EGrave] '" <> ToString[conversion[["result"]]] <> "'." }
	];
	Return[steps];
];

(* Genera i passaggi per la conversione da una base M a una base N *)
(* :param {<| result \[Rule] String, steps \[Rule] List of Strings |>} conversionToBase10 - Informazioni ottenute durante la conversione verso la base 10 *)
(* :param {<| result \[Rule] String, steps \[Rule] List of Strings |>} conversionFromBase10 - Informazioni ottenute durante la conversione dalla base 10 *)
(* :return {List of Strings} Ritorna l'elenco dei passaggi sotto forma di lista *)
GenerateStepsUniversal[conversionToBase10_, conversionFromBase10_] := Module[
	{ steps, firstSteps = GenerateStepsToBase10[conversionToBase10], secondSteps = GenerateStepsFromBase10[conversionFromBase10] },
	steps = Join[
		{ "Per prima cosa procediamo con la conversione del numero verso la base 10;" },
		firstSteps,
		{ "Ora che abbiamo convertito il numero in base 10, possiamo procedere alla conversione verso la base finale;" },
		secondSteps,
		{ "Il valore ottenuto \[EGrave] il risultato finale della conversione." }
	];
	Return[steps];
];

(* Ottieni i flag degli errori dei possibili valori inseriti come input o output dell'esercizio *)
(* :param {<| inputValue \[Rule] String, inputBase \[Rule] Integer, outputValue \[Rule] String, outputBase \[Rule] Integer |>} exercise - Esercizio da controllare *)
(* :return {<| message \[Rule] String, inputValue \[Rule] Boolean, inputBase \[Rule] Boolean, outputValue \[Rule] Boolean, outputBase \[Rule] Boolean|>} Stringa dell'errore e flags dei singoli errori, dove True indica la presenza di un errore e False l'assenza *)
CheckErrors[exercise_] := Module[
	{ message = "", inputValueError = False, inputBaseError = False, outputValueError = False, outputBaseError = False },
	(* Identifico i singoli flag degli errori *)
	inputBaseError = CheckBaseError[exercise[["inputBase"]]];
	outputBaseError = CheckBaseError[exercise[["outputBase"]]];
	If[inputBaseError == False, inputValueError = CheckValueError[Characters[exercise[["inputValue"]]], exercise[["inputBase"]]]];
	If[outputBaseError == False, outputValueError = CheckValueError[Characters[exercise[["outputValue"]]], exercise[["outputBase"]]]];
	(* Genero la stringa contenente le informazioni sugli errori *)
	If[inputBaseError == True,
		message = "La base di input non \[EGrave] valida! [Valore tra 2 e 62 compresi]";,
		If[inputValueError == True,
			message = "Il valore del numero in input non \[EGrave] valido per la base attuale!"; ];
	];
	If[outputBaseError == True,
		If [message != "", message = message <> "\n"];
		message = message <> "La base di output non \[EGrave] valida! [Valore tra 2 e 62 compresi]";,
		If[outputValueError == True,
			If [message != "", message = message <> "\n"];
			message = message <> "Il valore del numero in output non \[EGrave] valido per la base attuale!"; ];
	];
	
	Return[<| "message" -> message, "inputValue" -> inputValueError, "inputBase" -> inputBaseError, "outputValue" -> outputValueError, "outputBase" -> outputBaseError |>];
];

(* Controlla se il valore di una base \[EGrave] valido, ovvero nell'intervallo 2-62 *)
(* :param {Integer} base - Valore della base da controllare *)
(* :return {Boolean} Ritorna True se \[EGrave] stato rilevato un errore, altrimenti ritorna False *)
CheckBaseError[base_] := If[ base >= 2 && base <= 62, Return[False];, Return[True]; ];

(* Data una base, controlla se un valore in input \[EGrave] un numero valido per quella base *)
(* :param {List of Characters} input - Valore del numero da controllare *)
(* :param {Integer} base - Valore della base nella quale \[EGrave] espresso il numero *)
(* :return {Boolean} Ritorna True se \[EGrave] stato rilevato un errore, altrimenti ritorna False *)
CheckValueError[input_, base_] := Module[
	{ i, symbolsSubset = Symbols[[1;;base]] },
	If[ Length[input] == 0,
		Return[True]; (* Input missing case *)
	];
	For[i = 1, i <= Length[input], i++,
		If[ Length[Position[symbolsSubset, input[[i]]]] != 1,
			Return[True]; (* Invalid input case *)
		];
	];
	Return[False]; (* No errors *)
];
(* Controlla se ci sono errori tra i valori della consegna dell'esercizio *)
(* :param <| message \[Rule] String, inputValue \[Rule] Boolean, inputBase \[Rule] Boolean, outputValue \[Rule] Boolean, outputBase \[Rule] Boolean|>} errors - Stringa dell'errore e flags dei singoli errori *)
(* :return {Boolean} Ritorna True se sono presenti errori, o False se non ci sono *)
HasExerciseError[errors_] := Return[
	errors[["inputValue"]] || errors[["inputBase"]] || errors[["outputBase"]]
];

(* Controlla se due esercizi sono uguali *)
(* :param {<| inputValue \[Rule] String, inputBase \[Rule] Integer, outputBase \[Rule] Integer |>} currentExercise - Esercizio corrente da confrontare *)
(* :param {<| inputValue \[Rule] String, inputBase \[Rule] Integer, outputBase \[Rule] Integer |>} loadedExercise - Esercizio caricato da confrontare *)
(* :return {Boolean} Flag che specifica se i due esercizi sono identici *)
IsSameExercise[currentExercise_, loadedExercise_] := Return[
	currentExercise[["inputValue"]] == loadedExercise[["inputValue"]] &&
	currentExercise[["inputBase"]] == loadedExercise[["inputBase"]] &&
	currentExercise[["outputBase"]] == loadedExercise[["outputBase"]]
];

(* Calcola l'esercizio, ritornando l'esercizio da caricare a schermo *)
(* :param {<| inputValue \[Rule] String, inputBase \[Rule] Integer, outputBase \[Rule] Integer |>} currentExercise - Esercizio corrente da caricare *)
(* :return {<| inputValue \[Rule] String, inputBase \[Rule] Integer, outputBase \[Rule] Integer, conversion \[Rule] <| result \[Rule] String, conversionToBase10 \[Rule] <| result \[Rule] String, steps \[Rule] List of Strings |>, conversionFromBase10 \[Rule] <| result \[Rule] String, steps \[Rule] List of Strings |> |> |>} Esercizio pronto per essere caricato *)
LoadExercise[exercise_] := Return[<|
	"inputValue" -> exercise[["inputValue"]],
	"inputBase" -> exercise[["inputBase"]],
	"outputBase" -> exercise[["outputBase"]],
	"conversion" -> ConvertBase[exercise[["inputValue"]], exercise[["inputBase"]], exercise[["outputBase"]]]
|>];

UniversalExercise[] := DynamicModule[
	{
		errors = <| "message" -> "", "inputValue" -> False, "inputBase" -> False, "outputValue" -> False, "outputBase" -> False |>,
		exercise = <| "inputValue" -> "0", "inputBase" -> 10, "outputValue" -> "", "outputBase" -> 2 |>,
		loadedExercise = LoadExercise[<| "inputValue" -> "0", "inputBase" -> 10, "outputValue" -> "", "outputBase" -> 2 |>],
		steps = { "Crea un nuovo esercizio!" },
		stepNumber = 0
	},
	Grid[{{
		Framed[Grid[{{
			Text[Style["(", FontSize->28]],
			Tooltip[InputField[Dynamic[exercise[["inputValue"]]], String, FieldSize -> Small], "Valore di partenza"],
			Text[Style[")", FontSize->28]],
			Tooltip[InputField[Dynamic[exercise[["inputBase"]]], Number, FieldSize -> Tiny, BaselinePosition -> Top], "Base di partenza"],
			Text[Style["=", FontSize->28]],
			Text[Style["(", FontSize->28]],
			Tooltip[InputField[Dynamic[exercise[["outputValue"]]], String, FieldSize -> Small], "Soluzione finale"],
			Text[Style[")", FontSize->28]],
			Tooltip[InputField[Dynamic[exercise[["outputBase"]]], Number, FieldSize -> Tiny, BaselinePosition -> Top], "Base della soluzione"]
		}}], FrameMargins -> {{50, 50}, {10, 50}}, FrameStyle -> None]}, {
		Grid[{{
			Tooltip[Button["Nuovo esercizio",
				exercise = <| "inputBase" -> RandomInteger[{2, 62}], "inputValue" -> exercise[["inputValue"]], "outputBase" -> RandomInteger[{2, 62}], "outputValue" -> "" |>;
				exercise[["inputValue"]] = ConvertFromBase10[RandomInteger[{0, 500}], exercise[["inputBase"]]][[1]];
				errors = <| "message" -> "", "inputValue" -> False, "inputBase" -> False, "outputValue" -> False, "outputBase" -> False |>;
				loadedExercise = LoadExercise[exercise];
				steps = GenerateStepsUniversal[loadedExercise[["conversion"]][["conversionToBase10"]], loadedExercise[["conversion"]][["conversionFromBase10"]]];
				stepNumber = 0;
			], "Crea un nuovo esercizio"],
			Tooltip[Button["Verifica soluzione", 
				(* Controllo eventuali errori negli input *)
				errors = CheckErrors[exercise];
				(* Aggiorno l'esercizio caricato con i valori correnti se sono senza errori, calcolando il risultato della conversione *)
				If[HasExerciseError[errors] == False && IsSameExercise[exercise, loadedExercise] == False, loadedExercise = LoadExercise[exercise]; steps = GenerateStepsUniversal[loadedExercise[["conversion"]][["conversionToBase10"]], loadedExercise[["conversion"]][["conversionFromBase10"]]]; stepNumber = 0;];
				(* Mostro il messaggio della verifica della soluzione se non ci sono errori di input *)
				If[errors[["message"]] == "",
					If[exercise[["outputValue"]] == loadedExercise[["conversion"]][["result"]],
						MessageDialog["La soluzione inserita \[EGrave] CORRETTA!", WindowTitle -> "Verifica della soluzione"];,
						MessageDialog["La soluzione inserita \[EGrave] SBAGLIATA!", WindowTitle -> "Verifica della soluzione"];
					];
				];
			], "Verifica se la soluzione inserita \[EGrave] corretta"],
			Tooltip[Button["Mostra soluzione",
				(* Controllo eventuali errori negli input *)
				errors = CheckErrors[exercise];
				(* Aggiorno l'esercizio caricato con i valori correnti se sono senza errori, calcolando il risultato della conversione *)
				If[HasExerciseError[errors] == False && IsSameExercise[exercise, loadedExercise] == False, loadedExercise = LoadExercise[exercise]; steps = GenerateStepsUniversal[loadedExercise[["conversion"]][["conversionToBase10"]], loadedExercise[["conversion"]][["conversionFromBase10"]]]; stepNumber = 0;];
				(* Mostro il messaggio della verifica della soluzione se la consegna dell'esercizio \[EGrave] senza errori *)
				If[HasExerciseError[errors] == False,
					MessageDialog["La soluzione corretta \[EGrave]  '" <> loadedExercise[["conversion"]][["result"]] <> "'  .", WindowTitle -> "Verifica della soluzione"];
				];
			], "Mostra la soluzione finale"]
		}}]}, {
			Text[Style[Dynamic[errors[["message"]]], FontColor -> Red]]
		}, {
		Framed[Text[Style["Passaggi:", FontSize -> 26]], FrameMargins -> {{50, 50}, {5, 20}}, FrameStyle -> None]}, {
		Framed[Grid[{{
			Tooltip[Button["<",
				(* Torno allo step precedente, con valore minimo lo 0 *)
				If[stepNumber > 0, stepNumber--, stepNumber = 0];
				(* Controllo eventuali errori negli input *)
				errors = CheckErrors[exercise];
				(* Aggiorno l'esercizio caricato con i valori correnti se sono senza errori, calcolando il risultato della conversione *)
				If[HasExerciseError[errors] == False && IsSameExercise[exercise, loadedExercise] == False, loadedExercise = LoadExercise[exercise]; steps = GenerateStepsUniversal[loadedExercise[["conversion"]][["conversionToBase10"]], loadedExercise[["conversion"]][["conversionFromBase10"]]]; stepNumber = 0;];
				(* Torno allo step di default in caso di errori nella consegna dell'esercizio *)
				If[HasExerciseError[errors], stepNumber = 0;];
			], "Mostra il passaggio precedente"],
			Tooltip[Button[">",
				(* Vado allo step successivo, con valore massimo la dimensione massima degli step calcolati *)
				If[stepNumber < Length[steps], stepNumber++, stepNumber = Length[steps]];
				(* Controllo eventuali errori negli input *)
				errors = CheckErrors[exercise];
				(* Aggiorno l'esercizio caricato con i valori correnti se sono senza errori, calcolando il risultato della conversione *)
				If[HasExerciseError[errors] == False && IsSameExercise[exercise, loadedExercise] == False, loadedExercise = LoadExercise[exercise]; steps = GenerateStepsUniversal[loadedExercise[["conversion"]][["conversionToBase10"]], loadedExercise[["conversion"]][["conversionFromBase10"]]]; stepNumber = 0;];
				(* Torno allo step di default in caso di errori nella consegna dell'esercizio *)
				If[HasExerciseError[errors], stepNumber = 0;];
			], "Mostra il passaggio successivo"]
		}}], FrameMargins -> {{50, 50}, {20, 0}}, FrameStyle -> None]}, {
		Framed[Text[Dynamic[PrintStep[steps, stepNumber]]], FrameMargins -> {{50, 50}, {50, 0}}, FrameStyle -> None]}
	}, ItemSize -> 80, Spacings -> 2, Background -> RGBColor[60,60,60]]
];

End[];
EndPackage[];
