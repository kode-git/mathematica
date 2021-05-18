(* Content-type: application/vnd.wolfram.mathematica *)

(*** Wolfram Notebook File ***)
(* http://www.wolfram.com/nb *)

(* CreatedBy='Mathematica 12.2' *)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       158,          7]
NotebookDataLength[    183047,       3503]
NotebookOptionsPosition[    181627,       3472]
NotebookOutlinePosition[    182056,       3489]
CellTagsIndexPosition[    182013,       3486]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{":", "Title", ":", " ", "BaseConvertorPackage"}], "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{":", "Context", ":", " ", "BaseConvertorPackage`"}], "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
     RowBox[{":", "Author", ":", " ", 
      RowBox[{"Mario", " ", "Sessa"}]}], " ", "&"}], " ", "Francesco", " ", 
    "Natati"}], "*)"}], "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{":", "Summary", ":", " ", 
    RowBox[{
    "Pacchetto", " ", "per", " ", "la", " ", "gestione", " ", "di", " ", 
     "GUI", " ", "di", " ", "conversione", " ", "da", " ", "base", " ", "X", 
     " ", "a", " ", "base", " ", "Y"}]}], "*)"}], "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{":", "Copyright", ":", " ", 
    RowBox[{
     RowBox[{"Alma", " ", "Mater", " ", "Studiorum"}], " ", "-", " ", 
     RowBox[{"Bologna", " ", "2021"}]}]}], "*)"}], "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{":", 
    RowBox[{"Package", " ", "Version"}], ":", " ", "1"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{":", 
    RowBox[{"Mathematica", " ", "Version"}], ":", " ", "12.2"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{":", "History", ":", " ", "\\\\"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{":", "Keywords", ":", " ", "base"}], ",", " ", "conversione", ",",
     " ", "aritmetica", ",", " ", 
    RowBox[{"matematica", " ", "computazionale"}]}], "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{":", "Sources", ":", " ", "\\\\"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{":", "Discussion", ":", " ", "\\\\"}], " ", "*)"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.828861677964623*^9, 3.8288618839748697`*^9}, {
  3.828863430302635*^9, 3.828863433476419*^9}, {3.8291998122784653`*^9, 
  3.829199813007018*^9}, {3.830254762446724*^9, 3.83025483717838*^9}},
 CellLabel->
  "In[848]:=",ExpressionUUID->"dc8673ef-990c-4ab4-a413-0ea8a2a2c4a7"],

Cell[BoxData[
 RowBox[{
  RowBox[{"BeginPackage", "[", "\"\<BaseConvertorPackage`\>\"", "]"}], 
  ";"}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.828861912575403*^9, 3.82886193066146*^9}, {
   3.8288623030616407`*^9, 3.828862303811872*^9}, {3.828863270883473*^9, 
   3.828863273964057*^9}, 3.830183492768435*^9},
 CellLabel->
  "In[849]:=",ExpressionUUID->"83ba9a24-105e-453d-9ab2-057fc8b72e8f"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"UniversalExercisesPanel", "::", "usage"}], " ", "=", " ", 
   "\"\<UniversalExercisePanelProject[]\n    Definisce una tabella e illustra \
la conversione di un valore da una base di input ad una base di output. Il \
tool\n    raffigura una serie di input e di funzionalit\[AGrave] utili per \
poter eseguire un esercizio di conversione in maniera completa.\n    Esiste \
un gruppo di input descritti nel seguente modo: \n     \n    ValoreInput, \
ValoreOutput che raffigurano due stringhe rappresentanti rispettivamente un \
valore iniziale e il valore finale che si vuole ottenere, BaseInput e \
BaseOutput sono altri due campi, invece, che raffigurano le basi, \
rispettivamente, del ValoreInput e ValoreOutput. \n\n    ValoreInput \
\[EGrave] rappresentato da un valore numerico tra 0 e 10.000 espresso in base \
10 o equivalenti in altre basi.\n    BaseInput e BaseOutput sono interi tra 2 \
e 62\n\n    Vi sono poi 4 funzionalit\[AGrave] visibili all'interno della \
interfaccia come bottoni: \n    Genera Esercizio - che inserisce \
randomicamente dei valori per ValoreInput, BaseInput e BaseOutput, \n    \
Mostra Soluzione - che dati i valori di ValoreInput, BaseInput e BaseOutput \
ritorna l'uguaglianza della conversione,\n    Verifica Soluzione - che dati i \
valori di ValoreInput, ValoreOutput, BaseInput e BaseOutput verifica che il \
ValoreInput in BaseInput sia uguale a ValoreOutput in BaseOutput,\n    Mostra \
Procedimento - Esegue l'esercizio sui dati di ValoreInput, BaseInput e \
BaseOutput andando a svolgere l'esercizio ed elencando la procedura fino ad \
arrivare al risultato finale, ossia al valore di output espresso nella base \
BaseOutput specificata in input.\n    Resetta i valori di input all'esempio \
di base - Resetta i valori dei parametri a quelli predefiniti, ossia \
ValoreInput a 2, BaseInput a 10, ValoreOutput a 10 e BaseOutput a 2 \
illustrando nell'output del pannello la soluzione.\n \n\>\""}], 
  ";"}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.828862098345055*^9, 3.828862224016768*^9}, {
   3.828863316784349*^9, 3.8288633176285067`*^9}, 3.828863486946001*^9, {
   3.829024186548792*^9, 3.8290242206783447`*^9}, {3.8290242622273912`*^9, 
   3.829024297683467*^9}, {3.8298765818056793`*^9, 3.829876588903592*^9}, {
   3.829987019156209*^9, 3.8299870202693653`*^9}, 3.8299938767408123`*^9, {
   3.830182994231265*^9, 3.830183040636628*^9}, {3.830246964038669*^9, 
   3.8302469914355793`*^9}, {3.830247034477281*^9, 3.830247197648735*^9}, {
   3.830247560508054*^9, 3.830247615354618*^9}, {3.8302479837258863`*^9, 
   3.830248172306858*^9}, {3.8302485438814087`*^9, 3.8302486089679127`*^9}, {
   3.830248653779326*^9, 3.830248656977539*^9}, {3.830248733790782*^9, 
   3.8302488070778418`*^9}, {3.830252438410375*^9, 3.830252439254681*^9}, {
   3.830253415087675*^9, 3.830253422343486*^9}, {3.830260930413595*^9, 
   3.830261005468392*^9}},
 CellLabel->
  "In[850]:=",ExpressionUUID->"9e4ab47b-4075-49ba-8051-48e74256a661"],

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"DisplayBaseConverterManipulate", "::", "usage"}], " ", "=", " ", 
    "\"\<DisplayBaseConvertorManipulate[value, inputBase, outputBase]\n    La \
funzione esegue la conversione di un valore dato da 'ValoreInput' dalla base \
espressa da 'InputBase' a 'OutputBase' andando a restituire\n    una \
procedura di conversione, elencandone i passi, a secondo di 3 casi:\n    - \
Procedura di conversione di un valore da base 10 a base N\n    - Procedura di \
conversione di un valore da base N a base 10\n    - Procedura di conversione \
di un valore da base N a base M, andando a dividere tale conversione in due \
sotto-procedure, ossia convertire il valore da base N a base 10 e trasformare \
il risultato da base 10 a base M.\n    I parametri della funzione sono di \
seguito: value di tipo Stringa, inputBase e outputBase di tipo interi. Il \
valore di ritorno \[EGrave] una\n    stringa che raffigura il procedimento di \
conversione.\>\""}], ";"}], "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"VerifySolution", "::", "usage"}], " ", "=", " ", 
    "\"\<VerifySolution[valueNum_, inputBase_, outputBase_, valueOut_]\n     \
la funzione verifica se la conversione del valore di 'valueNum' nella base \
espressa da 'inputBase', \n     \[EGrave] uguale a 'valueOut' nella base \
espressa da 'outputBase'. Se l'esito \[EGrave] positivo, ossia quando la \
risposta \[EGrave] corretta, si avr\[AGrave] come stringa di ritorno 'Il \
valore dato in output \[EGrave]: Corretto', in altri casi, invece, sar\
\[AGrave] restituita la stringa 'Il valore dato in output \[EGrave]: \
'Errato'.\n     I parametri della funzione sono definiti come segue: valueNum \
e valueOut sono due stringhe alfanumeriche che devono essere esprimibili come \
valori nelle basi rispettive espresse dagli interi 'inputBase' e \
'outputBase', in caso di errori di formattazione di tale genere, \
verr\[AGrave] data in output la stringa 'Il valore dato in output \[EGrave]: \
'Errato', trattandola come se fosse un semplice caso di errore.\>\""}], ";"}],
   "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"SolveConvertion", "::", "usage"}], " ", "=", " ", 
   "\"\<SolveConvertion[valueNum_, inputBase_, outputBase_]\n   la funzione \
esegue la procedura di conversione del valore 'valueNum' dalla base \
'inputBase' alla base 'outputBase' andando a dare in output una stringa \
rappresentante l'uguaglianza della conversione. I parametri sono 'valueNum' \
che \[EGrave] il valore di partenza espresso come stringa e 'inputBase' e \
'outputBase' interi che rappresentano rispettivamente la base di input e di \
output della conversione.\n\>\""}], ";"}]}], "Input",
 InitializationCell->True,
 InitializationGroup->True,
 CellChangeTimes->CompressedData["
1:eJxTTMoPSmViYGCQAGIQ3XU1UPhX2xtHp9sQWsvaTAdE50ln6oNolfA/3uId
bxz1Mhl9QPTTGR+mgegfZ3+BaQ/h3zMlgLQ8y6Y5INpl0a7U40A6/OB+MP2n
ROL1CyDtUzEXTD/qW66q1PnG0eDJVmMQfXDV8UxVIP2qOjkLREf1TRerBtLH
HBaD6fJTkil1QHoP88EOEP1v9bfN84A0rzTnVhD9ZdmMAyD6BFvbKRA9defG
qyBazMfyEYh2XvviD4jedP0B83wg/aYihgNETyjh5wTRu5huKIDoa4VHVED0
lh+1EQuA9KeWoHwQfe6v2VUQnXbq6zUQPUHk0HsQbXN92icQvUzmsM5CIC38
Id4QRD86s84WRPPIGjmD6HvN292WAeknjIfB9Dbd159PAelFjAZfQDQAo/HR
xA==
  "],
 CellLabel->
  "In[851]:=",ExpressionUUID->"36c52f8c-b143-44bf-adf6-d9a55d959f3e"],

Cell[BoxData[
 RowBox[{
  RowBox[{"Begin", "[", "\"\<Private`\>\"", "]"}], ";"}]], "Code",
 CellChangeTimes->{{3.8288623104913*^9, 3.828862310622814*^9}, 
   3.830183481373807*^9},
 CellLabel->
  "In[854]:=",ExpressionUUID->"700f309b-d38f-4f21-a2e9-5c63753d2137"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", "\n", "\t", 
   RowBox[{
    RowBox[{
     RowBox[{"UniversalExercisesPanel", "[", "]"}], "\n", "\t", "Funzione", 
     " ", "in", " ", "cui", " ", "si", " ", "ha", " ", "un", " ", 
     "Manipulate", " ", "che", " ", "gestisce", " ", "un", " ", 
     RowBox[{"valore", " ", "'"}], 
     RowBox[{"output", "'"}], " ", "tramite", " ", "la", " ", "manipolazione",
      " ", "di", " ", "4", " ", "parametri", " ", "di", " ", 
     RowBox[{"input", ":", " ", "\n", "\t", 
      RowBox[{"'", 
       RowBox[{"ValoreInput", "'"}]}]}]}], ",", " ", 
    RowBox[{"'", 
     RowBox[{"BaseInput", "'"}]}], ",", " ", 
    RowBox[{"'", 
     RowBox[{"BaseOutput", "'"}]}], ",", " ", 
    RowBox[{"'", 
     RowBox[{"ValoreOutput", "'"}], " ", "forniti", " ", "tramite", " ", 
     "campi", " ", "di", " ", "input", " ", "interni", " ", 
     RowBox[{"all", "'"}], "interfaccia", " ", "data", " ", "in", " ", 
     "output", " ", "da", " ", "tale", " ", 
     RowBox[{"funzione", ".", "\n", "\t", "Nella"}], " ", "GUI", " ", "sono", 
     " ", "presenti", " ", "anche", " ", "alcune", " ", "invocazioni", " ", 
     "a", " ", "funzioni", " ", "del", " ", 
     RowBox[{"pacchetto", ":", " ", "\n", "\t", 
      RowBox[{
       RowBox[{"Genera", " ", "Esercizio"}], " ", "-", " ", 
       RowBox[{
       "genera", " ", "randomicamente", " ", "dei", " ", "valori", " ", "ai", 
        " ", "parametri", " ", "di", " ", "input", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"Escluso", " ", "il", " ", "valore", " ", "output"}], ",", 
          " ", 
          RowBox[{
          "ossia", " ", "il", " ", "risultato", " ", "della", " ", 
           "conversione"}]}], ")"}], "\n", "\t", "Mostra", " ", "Soluzione"}],
        " ", "-", " ", 
       RowBox[{
       "Stampa", " ", "la", " ", "stringa", " ", "rappresentante", " ", "la", 
        " ", "soluzione", " ", "del", " ", "problema", " ", "ignorando", " ", 
        "la", " ", 
        RowBox[{"procedura", ".", " ", "Invoca"}], " ", "la", " ", "funzione",
         " ", 
        RowBox[{"interna", " ", "'"}], 
        RowBox[{"SolveConvertion", "'"}], "\n", "\t", "Verifica", " ", 
        "Soluzione"}], " ", "-", " ", 
       RowBox[{
       "Stampa", " ", "due", " ", "messaggi", " ", "che", " ", "fanno", " ", 
        "capire", " ", 
        RowBox[{"all", "'"}], "utente", " ", "se", " ", "il", " ", "valore", 
        " ", "inserito", " ", 
        RowBox[{"all", "'"}], "interno", " ", "del", " ", 
        RowBox[{"campo", " ", "\n", "\t                     ", "'"}], 
        RowBox[{"ValoreOutput", "'"}], " ", "\[EGrave]", " ", "uguale", " ", 
        "al", " ", "valore", " ", "di", " ", "input", " ", "convertito", " ", 
        "alla", " ", "base", " ", "di", " ", 
        RowBox[{
        "output", ".", " ", "\n", "\t                     ", "Invoca"}], " ", 
        "la", " ", "funzione", " ", 
        RowBox[{"interna", " ", "'"}], 
        RowBox[{"VerifySolution", "'"}], " ", "stampando", " ", "il", " ", 
        "suo", " ", "valore", " ", "di", " ", 
        RowBox[{"ritorno", ".", "\n", "\t", "Mostra"}], " ", "Procedimento"}],
        " ", "-", " ", 
       RowBox[{"Stampa", " ", "la", " ", "soluzione", " ", 
        RowBox[{"dell", "'"}], "esercizio", " ", "sui", " ", "valori", " ", 
        "definiti", " ", "nei", " ", "campi", " ", "dei", " ", "Parametri", 
        " ", "andando", " ", "a", " ", "\n", "\t                      ", 
        "spiegarne", " ", "anche", " ", "il", " ", "procedimento", " ", 
        "sotto", " ", "forma", " ", "di", " ", 
        RowBox[{
        "stringa", ".", " ", "\n", "\t                      ", "Invoca"}], 
        " ", "la", " ", "funzione", " ", "DisplayProcedure", " ", "stampando",
         " ", "il", " ", "suo", " ", "valore", " ", "di", " ", 
        RowBox[{"ritorno", ".", "\n", "\t", "Resetta"}], " ", "Campi", " ", 
        "di", " ", "Input"}], " ", "-", " ", 
       RowBox[{
       "Imposta", " ", "i", " ", "valori", " ", "dei", " ", "parametri", " ", 
        "e", " ", 
        RowBox[{"l", "'"}], "output", " ", "alla", " ", "conversione", " ", 
        "di", " ", "esempio", " ", "di", " ", "2", " ", "mod", 
        RowBox[{"(", "10", ")"}], " ", "a", " ", "10", " ", "mod", 
        RowBox[{
         RowBox[{"(", "2", ")"}], ".", "\n", "\t                          ", 
         "Utilizza"}], " ", "la", " ", 
        RowBox[{"funzione", " ", "'"}], 
        RowBox[{
         RowBox[{"SolveConvertion", "[", 
          RowBox[{"2", ",", "10", ",", "2"}], "]"}], "'"}], " ", "andando", 
        " ", "ad", " ", "assegnare", " ", 
        RowBox[{"all", "'"}], "output", " ", "della", " ", "GUI", " ", "il", 
        " ", "suo", " ", "valore", " ", "di", " ", 
        RowBox[{"ritorno", ".", "\n", "\t", "Strumenti"}], " ", 
        "assistivi"}]}], ":", " ", 
      RowBox[{"Data", " ", "la", " ", "complessit\[AGrave]", " ", 
       RowBox[{"dell", "'"}], "interfaccia"}]}]}], ",", " ", 
    RowBox[{
    "al", " ", "passare", " ", "con", " ", "il", " ", "cursore", " ", "del", 
     " ", "mouse", " ", "su", " ", "ogni", " ", "campo", " ", "della", " ", 
     "GUI"}], ",", " ", 
    RowBox[{
    "si", " ", "potr\[AGrave]", " ", "visualizzare", " ", "\n", 
     "\t                     ", "un", " ", "tooltip", " ", "con", " ", 
     "informazioni", " ", "aggiuntive", " ", "in", " ", "modo", " ", "da", 
     " ", "poter", " ", "orientare", " ", 
     RowBox[{"l", "'"}], "utente", " ", "e", " ", "fornire", " ", "strumenti",
      " ", "assistivi", " ", "per", " ", "persone", " ", "con", " ", "\n", 
     "\t                     ", "particolari", " ", "patologie", " ", 
     RowBox[{"memoriche", "."}]}]}], "\n", "\t", "\n", "*)"}], "\n", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"UniversalExercisesPanel", "[", "]"}], " ", ":=", "\n", "\t", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", "}"}], ",", "\n", "\t\t", 
       RowBox[{"Manipulate", "[", 
        RowBox[{"output", ",", "\n", "\t\t        ", 
         RowBox[{"Style", "[", 
          RowBox[{"\"\<Parametri\>\"", ",", " ", "12", ",", " ", "Bold"}], 
          "]"}], ",", "\n", "\t\t        ", "\"\<\>\"", ",", "\n", 
         "\t\t        ", 
         RowBox[{"{", 
          RowBox[{"ValoreInput", ",", " ", "\"\<2\>\"", ",", " ", 
           RowBox[{
            RowBox[{"InputField", "[", 
             RowBox[{"#", ",", " ", "String", ",", " ", 
              RowBox[{
              "FieldHint", " ", "\[Rule]", " ", 
               "\"\<Inserisci un intero\>\""}], ",", " ", 
              RowBox[{"FieldHintStyle", "\[Rule]", 
               RowBox[{"{", 
                RowBox[{"Italic", ",", " ", "Gray", ",", " ", "Medium"}], 
                "}"}]}]}], "]"}], " ", "&"}]}], "}"}], ",", "\n", 
         "\t\t        ", 
         RowBox[{"{", 
          RowBox[{"BaseInput", ",", " ", "2", ",", "62", ",", "1"}], "}"}], 
         ",", "\n", "\t\t        ", 
         RowBox[{"{", 
          RowBox[{
          "ValoreOutput", ",", " ", "\"\<10\>\"", ",", " ", "\n", 
           "\t\t         ", 
           RowBox[{
            RowBox[{"Tooltip", "[", 
             RowBox[{
              RowBox[{"InputField", "[", 
               RowBox[{"#", ",", " ", "String", ",", " ", 
                RowBox[{
                "FieldHint", " ", "\[Rule]", " ", 
                 "\"\<Inserisci un intero\>\""}], ",", " ", 
                RowBox[{"FieldHintStyle", "\[Rule]", 
                 RowBox[{"{", 
                  RowBox[{"Italic", ",", " ", "Gray", ",", " ", "Medium"}], 
                  "}"}]}]}], "]"}], ",", " ", "\n", "\t\t                 ", 
              "\"\<Valore convertito nella base di output\>\"", ",", " ", 
              RowBox[{"TooltipStyle", " ", "\[Rule]", 
               RowBox[{"{", 
                RowBox[{"FontSize", "\[Rule]", "20"}], "}"}]}]}], "]"}], " ", 
            "&"}]}], "}"}], ",", "\n", "\t\t        ", 
         RowBox[{"{", 
          RowBox[{"BaseOutput", ",", " ", "2", ",", "62", ",", "1"}], "}"}], 
         ",", "\n", "                ", "\"\<\>\"", ",", "\n", "\t\t\t\t", 
         RowBox[{"Style", "[", 
          RowBox[{
          "\"\<Funzionalit\[AGrave]\>\"", ",", " ", "12", ",", " ", "Bold"}], 
          "]"}], ",", "\n", "\t\t\t\t", "\"\<\>\"", ",", " ", "\n", 
         "\t\t\t\t", 
         RowBox[{"Tooltip", "[", 
          RowBox[{
           RowBox[{"Button", "[", 
            RowBox[{"\"\<Genera Esercizio\>\"", ",", " ", 
             RowBox[{"(*", " ", 
              RowBox[{
              "Bottone", " ", "di", " ", "generazione", " ", "di", " ", 
               "valori", " ", "randomici", " ", "per", " ", "definire", " ", 
               "un", " ", "nuovo", " ", "esercizio", " ", "nella", " ", 
               "GUI"}], " ", "*)"}], "\n", "\t\t\t\t                ", 
             RowBox[{
              RowBox[{"ValoreInput", "=", 
               RowBox[{"ToString", "[", 
                RowBox[{"RandomInteger", "[", 
                 RowBox[{"{", 
                  RowBox[{"0", ",", "299"}], "}"}], "]"}], "]"}]}], ";", " ", 
              
              RowBox[{"(*", " ", 
               RowBox[{
               "Per", " ", "semplicit\[AGrave]", " ", "i", " ", "casi", " ", 
                "randomici", " ", "vanno", " ", "da", " ", "0", " ", "a", " ",
                 "299"}], " ", "*)"}], "\n", "\t\t\t\t                ", 
              RowBox[{"BaseInput", "=", 
               RowBox[{"RandomInteger", "[", 
                RowBox[{"{", 
                 RowBox[{"2", ",", "62"}], "}"}], "]"}]}], ";", " ", 
              RowBox[{"(*", " ", 
               RowBox[{
               "valore", " ", "randomico", " ", "dato", " ", "alla", " ", 
                "base", " ", "di", " ", "input", " ", 
                RowBox[{"dell", "'"}], "esercizio", " ", "generato"}], " ", 
               "*)"}], "\n", "\t\t\t\t                ", 
              RowBox[{"BaseOutput", "=", 
               RowBox[{"RandomInteger", "[", 
                RowBox[{"{", 
                 RowBox[{"2", ",", "62"}], "}"}], "]"}]}], ";"}]}], "]"}], 
           ",", " ", 
           RowBox[{"(*", " ", 
            RowBox[{
            "valore", " ", "randomico", " ", "dato", " ", "alla", " ", "base",
              " ", "di", " ", "output", " ", 
             RowBox[{"dell", "'"}], "esercizio", " ", "generato"}], " ", 
            "*)"}], " \t       ", "\n", "\t\t\t\t                ", 
           "\"\<Generazione di un esercizio andando a generare un valore per \
il numero di \n                                 input e per la base di Input \
e Output randomicamente\>\"", ",", " ", "\n", 
           "                                 ", 
           RowBox[{"TooltipStyle", " ", "\[Rule]", " ", 
            RowBox[{"{", 
             RowBox[{"FontSize", "\[Rule]", "20"}], "}"}]}]}], "]"}], ",", 
         "\n", "\t\t\t\t", 
         RowBox[{"Tooltip", "[", 
          RowBox[{
           RowBox[{"Button", "[", 
            RowBox[{
            "\"\<Mostra Soluzione\>\"", ",", " ", "\n", 
             "\t\t\t\t               ", 
             RowBox[{
              RowBox[{"output", "=", " ", 
               RowBox[{"SolveConvertion", "[", 
                RowBox[{
                "ValoreInput", ",", " ", "BaseInput", ",", " ", 
                 "BaseOutput"}], "]"}]}], ";"}]}], "\n", 
            "\t\t\t\t               ", "]"}], ",", " ", "\n", 
           "\t\t\t\t        ", "\"\<Mostra la soluzione dell'esercizio\>\"", 
           ",", " ", "\n", "\t\t\t\t        ", 
           RowBox[{"TooltipStyle", " ", "\[Rule]", " ", 
            RowBox[{"{", 
             RowBox[{"FontSize", "\[Rule]", "20"}], "}"}]}]}], "]"}], ",", 
         "\n", "\t\t\t\t", 
         RowBox[{"Tooltip", "[", 
          RowBox[{
           RowBox[{"Button", "[", 
            RowBox[{
            "\"\<Verifica Soluzione\>\"", ",", " ", "\n", 
             "\t\t\t\t               ", 
             RowBox[{"output", "=", 
              RowBox[{"VerifySolution", "[", 
               RowBox[{
               "ValoreInput", ",", " ", "BaseInput", ",", " ", "BaseOutput", 
                ",", " ", "ValoreOutput"}], "]"}]}]}], "\n", 
            "\t\t\t\t              ", "]"}], ",", " ", "\n", 
           "\t\t\t\t        ", 
           "\"\<Verifica se il ValoreOutput \[EGrave] uguale al valore \
convertito dell'esercizio\>\"", ",", " ", "\n", "\t\t\t\t        ", 
           RowBox[{"TooltipStyle", " ", "\[Rule]", " ", 
            RowBox[{"{", 
             RowBox[{"FontSize", "\[Rule]", "20"}], "}"}]}]}], "]"}], ",", 
         "\n", "\t\t\t\t", 
         RowBox[{"Tooltip", "[", 
          RowBox[{
           RowBox[{"Button", "[", 
            RowBox[{
            "\"\<Mostra Procedimento\>\"", ",", " ", "\n", 
             "\t\t\t\t                ", 
             RowBox[{
              RowBox[{"output", "=", " ", 
               RowBox[{"DisplayProcedure", "[", 
                RowBox[{
                "ValoreInput", ",", " ", "BaseInput", ",", " ", 
                 "BaseOutput"}], "]"}]}], ";"}]}], "\n", 
            "\t\t\t\t              ", "]"}], ",", " ", "\n", 
           "\t\t\t\t        ", 
           "\"\<Mostra il procedimento di risoluzione dell'esercizio con \
spiegazione annessa\>\"", ",", " ", "\n", "\t\t\t\t        ", 
           RowBox[{"TooltipStyle", " ", "\[Rule]", " ", 
            RowBox[{"{", 
             RowBox[{"FontSize", "\[Rule]", "20"}], "}"}]}]}], "]"}], ",", 
         "\n", "\t\t\t\t", 
         RowBox[{"Tooltip", "[", 
          RowBox[{
           RowBox[{"Button", "[", 
            RowBox[{
            "\"\<Resetta Campi di Input\>\"", ",", " ", "\n", 
             "\t\t\t\t               ", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"Set", "[", 
                RowBox[{"ValoreInput", ",", "\"\<2\>\""}], "]"}], ";", " ", 
               RowBox[{"Set", "[", 
                RowBox[{"BaseInput", ",", " ", "10"}], "]"}], ";", " ", 
               RowBox[{"Set", "[", 
                RowBox[{"BaseOutput", ",", " ", "2"}], "]"}], ";", " ", 
               RowBox[{"Set", "[", 
                RowBox[{"ValoreOutput", ",", " ", "\"\<10\>\""}], "]"}], ";", 
               " ", "\n", "\t\t\t\t                ", 
               RowBox[{"Set", "[", 
                RowBox[{"output", ",", 
                 RowBox[{"SolveConvertion", "[", 
                  RowBox[{"\"\<2\>\"", ",", "10", ",", "2"}], "]"}]}], "]"}], 
               ";"}], "}"}]}], "\n", "\t\t\t\t               ", "]"}], ",", 
           "\n", "\t\t\t\t       ", 
           "\"\<Resetta i valori di input all'esempio di base\>\"", ",", " ", 
           "\n", "\t\t\t\t       ", 
           RowBox[{"TooltipStyle", " ", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{"FontSize", "\[Rule]", "20"}], "}"}]}]}], "]"}], ",", 
         "\n", "\t\t\t\t", "\"\<\>\"", ",", "\n", "\t\t\t\t", "\"\<\>\"", ",",
          "\n", "\t\t\t\t", 
         RowBox[{"FrameLabel", "\[Rule]", "\"\<Esercizio Universale\>\""}], 
         ",", "\n", "\t\t\t\t", 
         RowBox[{"Initialization", "\[RuleDelayed]", " ", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"BaseInput", " ", "=", " ", "10"}], ";", " ", 
            RowBox[{"BaseOutput", "=", "2"}], ";", " ", 
            RowBox[{"ValoreInput", "=", "\"\<2\>\""}], ";", " ", 
            RowBox[{"ValoreOutput", "=", "\"\<10\>\""}], ";", "\n", 
            "\t\t\t\t                 ", 
            RowBox[{"output", "=", " ", 
             RowBox[{"SolveConvertion", "[", 
              RowBox[{
              "ValoreInput", ",", " ", "BaseInput", ",", " ", "BaseOutput"}], 
              "]"}]}], ";"}], " ", "}"}]}]}], "\n", "\t\t\t\t", "]"}]}], "\n",
       "\t\t\t", "\n", "\t\t", "\n", "    ", "]"}]}], ";"}], "\n", 
   RowBox[{"(*", "\n", "\t", 
    RowBox[{
     RowBox[{
      RowBox[{"DisplayProcedure", "[", 
       RowBox[{"valueNum_", ",", " ", "inputBase_", ",", " ", "outputBase_"}],
        "]"}], "\n", "\t", "Visualizza", " ", "la", " ", "conversione", " ", 
      RowBox[{"di", " ", "'"}], 
      RowBox[{"valueNum", "'"}], " ", "dalla", " ", 
      RowBox[{"base", " ", "'"}], 
      RowBox[{"inputBase", "'"}], " ", "alla", " ", 
      RowBox[{"base", " ", "'"}], 
      RowBox[{"outputBase", "'"}], " ", "andando", " ", "a", " ", "dare", " ",
       "in", " ", "output", " ", "una", " ", "stringa", " ", "con", " ", "i", 
      " ", "risultati", " ", "e", " ", "il", " ", 
      RowBox[{"procedimento", ".", "\n", "\t", "Richiama"}], " ", "3", " ", 
      "tipi", " ", "di", " ", "sottoprocedure", " ", "andando", " ", "a", " ",
       "dividere", " ", "i", " ", "3", " ", "casi", " ", 
      RowBox[{"seguenti", ":", "\n", "\t", 
       RowBox[{
        RowBox[{
        "1.", " ", "Conversione", " ", "da", " ", "base", " ", "10", " ", "a",
          " ", "base", " ", "N"}], "\[NotEqual]", "10"}]}]}], ",", " ", 
     RowBox[{
      RowBox[{"invocando", " ", "la", " ", "funzione", " ", 
       RowBox[{"interna", " ", "'"}], 
       RowBox[{"DisplayConverter10ToN", "'"}], "\n", "\t", "2.", " ", 
       "Conversione", " ", "da", " ", "base", " ", "N"}], "\[NotEqual]", 
      RowBox[{
      "10", " ", "a", " ", "base", " ", "10", " ", "invocando", " ", "la", 
       " ", "funzione", " ", 
       RowBox[{"interna", " ", "'"}], 
       RowBox[{"DisplayConverterNTo10", "'"}], "\n", "\t", "3.", " ", 
       "Conversione", " ", "da", " ", "base", " ", "N"}], "\[NotEqual]", 
      RowBox[{"10", " ", "a", " ", "base", " ", "M"}], "\[NotEqual]", 
      RowBox[{"10", " ", "invocando", " ", "la", " ", "funzione", " ", 
       RowBox[{"interna", " ", "'"}], 
       RowBox[{"DisplayConverterDiff10", "'"}], "\n", "\t", 
       RowBox[{"valueNum_", " ", ":", " ", 
        RowBox[{
        "Il", " ", "valore", " ", "di", " ", "input", " ", "da", " ", 
         "convertire"}]}]}]}], ",", " ", 
     RowBox[{
     "rappresentato", " ", "da", " ", "un", " ", "dato", " ", "di", " ", 
      "tipo", " ", 
      RowBox[{"String", ".", "\n", "\t", 
       RowBox[{"inputBase_", " ", ":", " ", 
        RowBox[{
        "La", " ", "base", " ", "di", " ", "input", " ", "del", " ", "valore",
          " ", "precedente"}]}]}]}], ",", " ", 
     RowBox[{"espresso", " ", "come", " ", 
      RowBox[{"intero", ".", "\n", "\t", 
       RowBox[{"outputBase_", " ", ":", " ", 
        RowBox[{
        "La", " ", "base", " ", "di", " ", "output", " ", "in", " ", "cui", 
         " ", "si", " ", "vuole", " ", "convertire", " ", "il", " ", "valore",
          " ", "di", " ", "input"}]}]}]}], ",", " ", 
     RowBox[{"espresso", " ", "come", " ", 
      RowBox[{"intero", ".", "\n", "\t", 
       RowBox[{"Output", ":", " ", 
        RowBox[{
        "Stringa", " ", "della", " ", "procedura", " ", "della", " ", 
         "conversione", " ", "con", " ", "risultati", " ", "finali", " ", "e",
          " ", 
         RowBox[{"intermedi", "."}]}]}]}]}]}], "\n", "*)"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"DisplayProcedure", "[", 
      RowBox[{"valueNum_", ",", " ", "inputBase_", ",", " ", "outputBase_"}], 
      "]"}], " ", ":=", " ", "\n", "\t", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
        "val", ",", " ", "out", ",", " ", "res", ",", " ", "rest", ",", " ", 
         "result", ",", " ", "strLine"}], "}"}], ",", "\n", "\t", "\n", "\t", 
       
       RowBox[{
        RowBox[{"result", " ", "=", " ", 
         RowBox[{"{", "}"}]}], ";", " ", 
        RowBox[{"(*", " ", 
         RowBox[{
         "Raffigura", " ", "le", " ", "linee", " ", "della", " ", "stringa", 
          " ", "che", " ", "verr\[AGrave]", " ", "data", " ", "in", " ", 
          "output"}], "*)"}], "\n", "\t", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"IntegerQ", "[", "inputBase", "]"}], "&&", 
           RowBox[{"IntegerQ", "[", "outputBase", "]"}], " ", "&&", " ", 
           RowBox[{"outputBase", " ", "<=", " ", "62"}], " ", "&&", " ", 
           RowBox[{"inputBase", " ", "<=", " ", "62"}], " ", "&&", " ", 
           RowBox[{"outputBase", " ", ">=", " ", "2"}], " ", "&&", " ", 
           RowBox[{"inputBase", " ", ">=", " ", "2"}]}], ",", "\n", "\t\t", 
          RowBox[{"(*", " ", 
           RowBox[{
           "Controlli", " ", "di", " ", "formattazione", " ", "dei", " ", 
            "parametri", " ", "di", " ", "input"}], " ", "*)"}], "\n", "\t\t", 
          RowBox[{
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{"inputBase", " ", "\[Equal]", " ", "outputBase"}], ",", 
             "\n", "\t\t    ", 
             RowBox[{"(*", " ", 
              RowBox[{
               RowBox[{
               "basi", " ", "di", " ", "input", " ", "e", " ", "output", " ", 
                "uguali"}], ",", " ", 
               RowBox[{
               "il", " ", "valore", " ", "di", " ", "output", " ", 
                "\[EGrave]", " ", "uguale", " ", "a", " ", "quello", " ", 
                "di", " ", "input"}]}], " ", "*)"}], "\n", "\t\t    ", 
             RowBox[{
             "Return", "[", 
              "\"\<Le basi di input e output sono le stesse, il valore non \
cambia nella conversione\>\"", "]"}], "\n", "\t\t\t", ",", "\n", "\t\t\t", 
             RowBox[{"(*", " ", "else", " ", "*)"}], "\n", "\t\t\t", 
             RowBox[{
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{"inputBase", " ", "\[Equal]", " ", "10"}], ",", " ", 
                "\n", "\t\t       ", 
                RowBox[{"(*", " ", 
                 RowBox[{
                  RowBox[{
                  "Conversione", " ", "da", " ", "base", " ", "10", " ", "a", 
                   " ", "base", " ", "N"}], "\[NotEqual]", "10"}], " ", 
                 "*)"}], "\n", "\t\t       ", 
                RowBox[{
                 RowBox[{"Return", "[", 
                  RowBox[{"DisplayConverter10ToN", "[", 
                   RowBox[{"valueNum", ",", " ", "outputBase"}], "]"}], "]"}],
                  ";"}], "\n", "\t\t       ", ",", " ", "\n", "\t\t       ", 
                RowBox[{"(*", " ", 
                 RowBox[{
                 "else", " ", "la", " ", "base", " ", "di", " ", "input", " ",
                   "\[EGrave]", " ", "diversa", " ", "da", " ", "10"}], " ", 
                 "*)"}], "\n", "\t\t       ", 
                RowBox[{
                 RowBox[{"If", "[", 
                  RowBox[{
                   RowBox[{"outputBase", " ", "\[Equal]", " ", "10"}], ",", 
                   "\n", "\t\t          ", 
                   RowBox[{"(*", " ", 
                    RowBox[{
                    RowBox[{"Conversione", " ", "da", " ", "base", " ", "N"}],
                     "\[NotEqual]", 
                    RowBox[{"10", " ", "a", " ", "base", " ", "10"}]}], " ", 
                    "*)"}], "\n", "\t\t          ", 
                   RowBox[{
                    RowBox[{"Return", "[", 
                    RowBox[{"DisplayConverterNTo10", "[", 
                    RowBox[{"valueNum", ",", " ", "inputBase"}], "]"}], "]"}],
                     ";"}], "\n", "\t\t          ", ",", "\n", 
                   "\t\t          ", 
                   RowBox[{"(*", " ", 
                    RowBox[{
                    RowBox[{"Conversione", " ", "da", " ", "base", " ", "X"}],
                     "\[NotEqual]", 
                    RowBox[{"10", " ", "alla", " ", "base", " ", "Y"}], 
                    "\[NotEqual]", "10"}], " ", "*)"}], "\n", 
                   "\t\t          ", 
                   RowBox[{
                    RowBox[{"Return", "[", 
                    RowBox[{"DisplayConverterDiff10", "[", 
                    RowBox[{
                    "valueNum", ",", " ", "inputBase", ",", " ", 
                    "outputBase"}], "]"}], "]"}], ";"}]}], "\n", 
                  "\t\t         ", "]"}], ";"}]}], "\n", "\t\t      ", "]"}], 
              ";"}]}], "     ", "\n", "\t\t   ", "]"}], ";"}], "\n", "\t\t", 
          ",", "\n", "\t\t", 
          RowBox[{
           RowBox[{
           "Return", "[", 
            "\"\<Format Error: Le basi non sono tra 2 e 62 o il valore non \
\[EGrave] un intero\>\"", "]"}], ";"}]}], "\n", "\t\t", "]"}], ";"}]}], "\n", 
      "\t", "]"}]}], ";"}], "\n", "\n", 
   RowBox[{"(*", "\n", "\t", 
    RowBox[{
     RowBox[{"VerifySolution", "[", 
      RowBox[{
      "valueNum_", ",", " ", "inputBase_", ",", " ", "outputBase_", ",", " ", 
       "valueOut_"}], "]"}], "\n", "\t", "La", " ", "funzione", " ", 
     "converte", " ", "il", " ", 
     RowBox[{"valore", " ", "'"}], 
     RowBox[{"valueNum", "'"}], " ", "dalla", " ", 
     RowBox[{"base", " ", "'"}], 
     RowBox[{"inputBase", "'"}], " ", "alla", " ", 
     RowBox[{"base", " ", "'"}], 
     RowBox[{"outputBase", "'"}], " ", "e", " ", "verifica", " ", "se", " ", 
     "il", " ", "risultato", " ", "sia", " ", "uguale", " ", "o", " ", "meno",
      " ", 
     RowBox[{"a", " ", "'"}], 
     RowBox[{"valueOut", "'"}], " ", "andando", " ", "a", " ", "stampare", 
     " ", "\n", "\t", "una", " ", "stringa", " ", "che", " ", "raffigura", 
     " ", 
     RowBox[{"l", "'"}], "esito", " ", "del", " ", 
     RowBox[{"controllo", ".", "\n", "\t", "La"}], " ", "stringa", " ", "di", 
     " ", "ritorno", " ", "pu\[OGrave]", " ", "avere", " ", "due", " ", 
     RowBox[{"forme", ":", "\n", "\t", 
      RowBox[{
      "1.", " ", "Caso", " ", "di", " ", "risultato", " ", "corretto"}], ":", 
      " ", 
      RowBox[{
      "'", "Il", " ", "valore", " ", "dato", " ", "in", " ", "output", " ", 
       RowBox[{"\[EGrave]", ":", " ", 
        RowBox[{
         RowBox[{"Corretto", "'"}], " ", "\n", "\t", "2.", " ", "Caso", " ", 
         "di", " ", "risultato", " ", "errato"}], ":", " ", 
        RowBox[{
        "'", "Il", " ", "valore", " ", "dato", " ", "in", " ", "output", " ", 
         
         RowBox[{"\[EGrave]", ":", " ", 
          RowBox[{
           RowBox[{"Errato", "'"}], "\n", "\t", "valueNum_"}], " ", ":", " ", 
          
          RowBox[{
          "Stringa", " ", "che", " ", "raffigura", " ", "il", " ", "valore", 
           " ", "di", " ", "input", " ", "da", " ", 
           RowBox[{"convertire", ".", "\n", "\t", 
            RowBox[{"inputBase_", " ", ":", " ", 
             RowBox[{
             "Intero", " ", "che", " ", "raffigura", " ", "la", " ", "base", 
              " ", "di", " ", "input", " ", "da", " ", "cui", " ", "far", " ",
               "partire", " ", "la", " ", "conversione", "\n", "\t", 
              "outputBase_"}], " ", ":", " ", 
             RowBox[{
             "Intero", " ", "che", " ", "raffigura", " ", "la", " ", "base", 
              " ", "di", " ", "output", " ", "da", " ", "cui", " ", 
              "terminare", " ", "la", " ", "conversione"}]}]}]}]}]}]}]}]}]}], 
    "\n", "\t", "\n", "*)"}], "\t", "\n", "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"VerifySolution", "[", 
      RowBox[{
      "valueNum_", ",", " ", "inputBase_", ",", " ", "outputBase_", ",", " ", 
       "valueOut_"}], "]"}], ":=", "\n", "   ", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"first", ",", " ", "second", ",", " ", "outVal"}], "}"}], ",",
        "\n", "      ", 
       RowBox[{
        RowBox[{"outVal", " ", "=", " ", 
         RowBox[{"DeleteCases", "[", 
          RowBox[{
           RowBox[{"Characters", "[", 
            RowBox[{"ToString", "[", "valueOut", "]"}], "]"}], ",", " ", 
           "\"\< \>\""}], "]"}]}], ";", "\n", "      ", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"inputBase", " ", "\[Equal]", " ", "10"}], " ", "||", " ", 
           
           RowBox[{"outputBase", " ", "\[Equal]", " ", "10"}]}], ",", " ", 
          RowBox[{"(*", " ", 
           RowBox[{
           "Controllo", " ", "delle", " ", "basi", " ", "differenti", " ", 
            "o", " ", "uguali", " ", "a", " ", "10", " ", "per", " ", "il", 
            " ", "differente", " ", "calcolo", " ", "del", " ", "risultato", 
            " ", "della", " ", "conversione"}], " ", "*)"}], "\n", "        ", 
          RowBox[{
           RowBox[{"first", " ", "=", " ", 
            RowBox[{"SolveConvertion", "[", 
             RowBox[{
             "valueNum", ",", " ", "inputBase", ",", " ", "outputBase"}], 
             "]"}]}], ";", "\n", "        ", 
           RowBox[{"second", " ", "=", " ", 
            RowBox[{
             RowBox[{"ToString", "[", "valueNum", "]"}], " ", "<>", " ", 
             "\"\< mod(\>\"", " ", "<>", " ", 
             RowBox[{"ToString", "[", "inputBase", "]"}], " ", "<>", " ", 
             "\"\<) = \>\"", " ", "<>", " ", 
             RowBox[{"ToString", "[", "valueOut", "]"}], " ", "<>", " ", 
             "\"\< mod(\>\"", " ", "<>", " ", 
             RowBox[{"ToString", "[", "outputBase", "]"}], " ", "<>", " ", 
             "\"\<)\>\""}]}], ";", "\n", "        ", 
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{"first", " ", "\[Equal]", " ", "second"}], ",", " ", 
             "\n", "           ", 
             RowBox[{
              RowBox[{
              "Return", "[", 
               "\"\<Il valore di output dato \[EGrave]: Corretto\>\"", "]"}], 
              ";"}], "\n", "           ", ",", "\n", "           ", 
             RowBox[{
              RowBox[{
              "Return", "[", 
               "\"\<Il valore di output dato \[EGrave]: Errato\>\"", "]"}], 
              ";"}]}], "\n", "           ", "]"}], ";"}], "\n", "       ", 
          ",", "\n", "       ", 
          RowBox[{
           RowBox[{"first", " ", "=", " ", 
            RowBox[{"SolveConvertion", "[", 
             RowBox[{
             "valueNum", ",", " ", "inputBase", ",", " ", "outputBase"}], 
             "]"}]}], ";", "\n", "       ", 
           RowBox[{"second", " ", "=", " ", 
            RowBox[{
             RowBox[{"ToString", "[", "valueNum", "]"}], " ", "<>", " ", 
             "\"\< mod(\>\"", " ", "<>", " ", 
             RowBox[{"ToString", "[", "inputBase", "]"}], " ", "<>", " ", 
             "\"\<) = \>\"", " ", "<>", " ", 
             RowBox[{"StringRiffle", "[", 
              RowBox[{
               RowBox[{"DeleteCases", "[", 
                RowBox[{
                 RowBox[{"Characters", "[", 
                  RowBox[{"ToString", "[", "valueOut", "]"}], "]"}], ",", 
                 " ", "\"\< \>\""}], "]"}], ",", " ", "\"\<\>\""}], "]"}], 
             " ", "<>", " ", "\"\< mod(\>\"", " ", "<>", " ", 
             RowBox[{"ToString", "[", "outputBase", "]"}], " ", "<>", " ", 
             "\"\<)\>\""}]}], ";", "\n", "       ", 
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{"first", " ", "\[Equal]", " ", "second"}], ",", " ", 
             "\n", "           ", 
             RowBox[{
              RowBox[{
              "Return", "[", 
               "\"\<Il valore di output dato \[EGrave]: Corretto\>\"", "]"}], 
              ";"}], "\n", "           ", ",", "\n", "           ", 
             RowBox[{
              RowBox[{
              "Return", "[", 
               "\"\<Il valore di output dato \[EGrave]: Errato\>\"", "]"}], 
              ";"}]}], "\n", "           ", "]"}], ";"}]}], "\n", "        ", 
         "]"}], ";"}]}], "\n", "   ", "]"}]}], ";"}], "\n", 
   RowBox[{"(*", "\n", "    ", 
    RowBox[{
     RowBox[{"SolveConvertion", "[", 
      RowBox[{"valueNum_", ",", " ", "inputBase_", ",", " ", "outputBase_"}], 
      "]"}], "\n", "\t", "La", " ", "funzione", " ", "converte", " ", "il", 
     " ", 
     RowBox[{"valore", " ", "'"}], 
     RowBox[{"valueNum", "'"}], " ", "dalla", " ", 
     RowBox[{"base", " ", "'"}], 
     RowBox[{"inputBase", "'"}], " ", "alla", " ", 
     RowBox[{"base", " ", "'"}], 
     RowBox[{"outputBase", "'"}], " ", "andando", " ", "a", " ", "dare", " ", 
     "in", " ", "output", " ", "\n", "\t", "La", " ", "stringa", " ", "di", 
     " ", "ritorno", " ", "pu\[OGrave]", " ", "tornare", " ", "un", " ", 
     "risultato", " ", "o", " ", "un", " ", "messaggio", " ", "di", " ", 
     "errore", " ", "di", " ", "formattazione", " ", "in", " ", "caso", " ", 
     "i", " ", "parametri", " ", "non", " ", "\n", "\t", "rispettino", " ", 
     "il", " ", "tipo", " ", 
     RowBox[{"(", 
      RowBox[{"interi", " ", "per", " ", "le", " ", "basi"}], ")"}], " ", "o",
      " ", "il", " ", "formato", " ", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
       "solo", " ", "caratteri", " ", "alfanumerici", " ", "per", " ", "i", 
        " ", "valori", " ", "di", " ", "input"}], ")"}], ".", "\n", "\t", 
      "I"}], " ", "parametri", " ", "della", " ", "funzione", " ", "sono", 
     " ", "i", " ", 
     RowBox[{"seguenti", ":", "\n", "\t", "valueNum_", " ", ":", " ", 
      RowBox[{
      "Stringa", " ", "che", " ", "raffigura", " ", "il", " ", "valore", " ", 
       "di", " ", "input", " ", "da", " ", 
       RowBox[{"convertire", ".", "\n", "\t", 
        RowBox[{"inputBase_", " ", ":", " ", 
         RowBox[{
         "Intero", " ", "che", " ", "raffigura", " ", "la", " ", "base", " ", 
          "di", " ", "input", " ", "da", " ", "cui", " ", "far", " ", 
          "partire", " ", "la", " ", "conversione", "\n", "\t", 
          "outputBase_"}], " ", ":", " ", 
         RowBox[{
         "Intero", " ", "che", " ", "raffigura", " ", "la", " ", "base", " ", 
          "di", " ", "output", " ", "da", " ", "cui", " ", "terminare", " ", 
          "la", " ", "conversione"}]}]}]}]}]}], "\n", "*)"}], "\n", "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"SolveConvertion", "[", 
      RowBox[{"valueNum_", ",", " ", "inputBase_", ",", " ", "outputBase_"}], 
      "]"}], ":=", "\n", "    ", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
        "val", ",", " ", "out", ",", " ", "res", ",", " ", "rest", ",", " ", 
         "strLine", ",", " ", "restComp", ",", " ", "digits", ",", " ", 
         "listLet", ",", " ", "base", ",", " ", "num", ",", " ", "symb", ",", 
         " ", "listChars", ",", " ", "i", ",", " ", "j", ",", " ", "size", 
         ",", " ", "expPos", ",", " ", "listNum", ",", " ", "resultInt"}], 
        "}"}], ",", "\n", "    ", 
       RowBox[{"(*", " ", 
        RowBox[{
        "Collezioni", " ", "utili", " ", "per", " ", "le", " ", 
         "conversioni"}], " ", "*)"}], "\n", "    ", 
       RowBox[{
        RowBox[{"digits", " ", "=", " ", 
         RowBox[{"Range", "[", 
          RowBox[{"0", ",", "9"}], "]"}]}], ";", " ", "\n", "    ", 
        RowBox[{"listLet", " ", "=", " ", 
         RowBox[{"Join", "[", 
          RowBox[{"digits", ",", 
           RowBox[{"ToUpperCase", "[", 
            RowBox[{"CharacterRange", "[", 
             RowBox[{"\"\<a\>\"", ",", "\"\<z\>\""}], "]"}], "]"}], ",", " ", 
           
           RowBox[{"ToLowerCase", "[", 
            RowBox[{"CharacterRange", "[", 
             RowBox[{"\"\<a\>\"", ",", "\"\<z\>\""}], "]"}], "]"}]}], "]"}]}],
         ";", " ", 
        RowBox[{"(*", " ", 
         RowBox[{"vettore", " ", "dei", " ", "valori", " ", 
          RowBox[{"nell", "'"}], 
          RowBox[{"ordine", ":", " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"0", ".."}], "9"}], ",", 
             RowBox[{
              RowBox[{"A", "..."}], "Z"}], ",", 
             RowBox[{
              RowBox[{"a", ".."}], "z"}]}], ")"}]}]}], " ", "*)"}], "\n", 
        "    ", 
        RowBox[{"listNum", " ", "=", " ", 
         RowBox[{"Range", "[", 
          RowBox[{"0", ",", "62"}], "]"}]}], ";", " ", 
        RowBox[{"(*", " ", 
         RowBox[{
         "Vettore", " ", "degli", " ", "indici", " ", "del", " ", "vettore", 
          " ", "dei", " ", "simboli"}], " ", "*)"}], "\n", "    ", 
        RowBox[{"(*", " ", 
         RowBox[{"il", " ", "vettore", " ", "dei", " ", 
          RowBox[{"simboli", " ", "'"}], 
          RowBox[{"symb", "'"}], " ", "si", " ", "differisce", " ", 
          RowBox[{"da", " ", "'"}], 
          RowBox[{"listLet", "'"}], " ", "poich\[EGrave]", " ", "ha", " ", 
          "i", " ", "valori", " ", "interi", " ", "espressi", " ", "in", " ", 
          "stringhe", " ", "per", " ", "\n", "       ", "evitare", " ", 
          "conflitti", " ", "tra", " ", "i", " ", "tipi", " ", "interi", " ", 
          "e", " ", "i", " ", "tipi", " ", "stringa"}], " ", "*)"}], "\n", 
        "    ", 
        RowBox[{"symb", " ", "=", " ", 
         RowBox[{"Join", "[", 
          RowBox[{
           RowBox[{"CharacterRange", "[", 
            RowBox[{"\"\<0\>\"", ",", "\"\<9\>\""}], "]"}], ",", " ", 
           RowBox[{"ToUpperCase", "[", 
            RowBox[{"CharacterRange", "[", 
             RowBox[{"\"\<a\>\"", ",", "\"\<z\>\""}], "]"}], "]"}], ",", " ", 
           
           RowBox[{"ToLowerCase", "[", 
            RowBox[{"CharacterRange", "[", 
             RowBox[{"\"\<a\>\"", ",", "\"\<z\>\""}], "]"}], "]"}]}], "]"}]}],
         ";", " ", "\n", "    ", 
        RowBox[{"(*", " ", 
         RowBox[{
         "Controlliamo", " ", "se", " ", "le", " ", "basi", " ", "sono", " ", 
          "interi"}], " ", "*)"}], "\n", "\t", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"IntegerQ", "[", "inputBase", "]"}], "&&", 
           RowBox[{"IntegerQ", "[", "outputBase", "]"}]}], ",", "\n", "\t", 
          RowBox[{"(*", " ", 
           RowBox[{
           "Controllo", " ", "di", " ", "tipo", " ", "e", " ", "dominio", " ",
             "sui", " ", "valori", " ", "delle", " ", "basi", " ", "e", " ", 
            "di", " ", "compatibilit\[AGrave]", " ", "tra", " ", "base", " ", 
            "di", " ", "input", "  ", "e", " ", "valore", " ", "di", " ", 
            "input"}], " ", "*)"}], "\n", "\t", 
          RowBox[{
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"VerifyBase", "[", 
               RowBox[{"valueNum", ",", " ", "inputBase"}], "]"}], " ", "&&", 
              " ", 
              RowBox[{"outputBase", " ", "<=", " ", "62"}], " ", "&&", " ", 
              RowBox[{"inputBase", " ", "<=", " ", "62"}], " ", "&&", " ", 
              RowBox[{"outputBase", " ", ">=", " ", "2"}], " ", "&&", " ", 
              RowBox[{"inputBase", " ", ">=", " ", "2"}]}], ",", "\n", "\t\t", 
             RowBox[{"(*", " ", 
              RowBox[{
              "Controllo", " ", "se", " ", "le", " ", "due", " ", "basi", " ",
                "siano", " ", "uguali"}], " ", "*)"}], "\n", "\t\t", 
             RowBox[{
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{"inputBase", " ", "\[Equal]", " ", "outputBase"}], 
                ",", "\n", "\t\t    ", 
                RowBox[{"(*", 
                 RowBox[{
                  RowBox[{
                  "Se", " ", "il", " ", "valore", " ", "delle", " ", "basi", 
                   " ", "\[EGrave]", " ", "uguale"}], ",", " ", 
                  RowBox[{
                  "il", " ", "valore", " ", "di", " ", "output", " ", 
                   "\[EGrave]", " ", "uguale", " ", "a", " ", "quello", " ", 
                   "di", " ", "input"}]}], " ", "*)"}], "\n", "\t\t    ", 
                RowBox[{
                 RowBox[{"Return", "[", 
                  RowBox[{
                   RowBox[{"ToString", "[", "valueNum", "]"}], " ", "<>", 
                   " ", "\"\< mod(\>\"", " ", "<>", " ", 
                   RowBox[{"ToString", "[", "inputBase", "]"}], " ", "<>", 
                   " ", "\"\<) = \>\"", " ", "<>", " ", 
                   RowBox[{"ToString", "[", "valueNum", "]"}], " ", "<>", 
                   " ", "\"\< mod(\>\"", " ", "<>", " ", 
                   RowBox[{"ToString", "[", "outputBase", "]"}], " ", "<>", 
                   " ", "\"\<)\>\""}], "]"}], ";"}], "\n", "\t\t\t", ",", 
                "\n", "\t\t\t", 
                RowBox[{"(*", " ", 
                 RowBox[{
                 "altrimenti", " ", "facciamo", " ", "i", " ", "controlli", 
                  " ", "che", " ", "dividono", " ", "i", " ", "vari", " ", 
                  "casi"}], " ", "*)"}], "\n", "\t\t\t", 
                RowBox[{"(*", " ", 
                 RowBox[{
                 "controlliamo", " ", "se", " ", "la", " ", "base", " ", "di",
                   " ", "input", " ", "sia", " ", "10"}], " ", "*)"}], "\n", 
                "\t\t\t", 
                RowBox[{
                 RowBox[{"If", "[", 
                  RowBox[{
                   RowBox[{"inputBase", " ", "\[Equal]", " ", "10"}], ",", 
                   " ", "\n", "\t\t       ", 
                   RowBox[{"(*", " ", 
                    RowBox[{
                    RowBox[{
                    "la", " ", "conversione", " ", "\[EGrave]", " ", "da", 
                    " ", "base", " ", "10", " ", "a", " ", "base", " ", "N"}],
                     ",", " ", 
                    RowBox[{
                    RowBox[{
                    "non", " ", "escludiamo", " ", "la", " ", "base", " ", 
                    "N"}], " ", "=", " ", "10"}]}], " ", "*)"}], "\n", 
                   "\t\t       ", 
                   RowBox[{
                    RowBox[{"val", " ", "=", " ", 
                    RowBox[{"FromDigits", "[", "valueNum", "]"}]}], ";", " ", 
                    
                    RowBox[{"(*", " ", 
                    RowBox[{
                    RowBox[{
                    "Dato", " ", "che", " ", "abbiamo", " ", "controllato", 
                    " ", "tramite", " ", "VerifyBase", " ", "che", " ", "il", 
                    " ", "valore", " ", "\[EGrave]", " ", "esprimibile", " ", 
                    "in", " ", "base", " ", "10"}], ",", " ", 
                    RowBox[{
                    "valueNum", " ", "\[EGrave]", " ", "una", " ", "lista", 
                    " ", "di", " ", "cifre"}]}], " ", "*)"}], "\n", 
                    "\t\t       ", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"val", " ", ">=", " ", "0"}], " ", "&&", " ", 
                    RowBox[{"val", " ", "<=", " ", "10000"}]}], ",", " ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    "controllo", " ", "sui", " ", "valori", " ", "supportati",
                     " ", 
                    RowBox[{"(", 
                    RowBox[{
                    "questo", " ", "controllo", " ", "\[EGrave]", " ", "solo",
                     " ", "per", " ", "non", " ", "inserire", " ", "valori", 
                    " ", "troppo", " ", "difficili"}], ")"}]}], " ", "*)"}], 
                    "\n", "\t\t         ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    "inizializziamo", " ", "i", " ", "valori", " ", 
                    "intermedi", " ", "per", " ", "la", " ", "procedura", " ",
                     "di", " ", "conversione", " ", "da", " ", "base", " ", 
                    "10", " ", "a", " ", "base", " ", "N"}], " ", "*)"}], 
                    "\n", "\t\t          ", 
                    RowBox[{
                    RowBox[{"out", " ", "=", " ", "outputBase"}], ";", " ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    RowBox[{"base", " ", "di", " ", "output"}], " ", "=", " ",
                     "divisore"}], " ", "*)"}], "\n", "\t\t          ", 
                    RowBox[{"res", " ", "=", " ", 
                    RowBox[{"-", "1"}]}], ";", " ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    "quoziente", " ", "di", " ", "ogni", " ", "step"}], " ", 
                    "*)"}], "\n", "\t\t          ", 
                    RowBox[{"restComp", " ", "=", " ", 
                    RowBox[{"{", "}"}]}], ";", " ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    "collezioniamo", " ", "i", " ", "resti", " ", "di", " ", 
                    "ogni", " ", "divisione", " ", 
                    RowBox[{"all", "'"}], "interno", " ", "di", " ", 
                    "restComp"}], " ", "*)"}], "\n", "\n", "\t\t         ", 
                    RowBox[{"While", "[", 
                    RowBox[{
                    RowBox[{"res", " ", "\[NotEqual]", " ", "0"}], ",", "  ", 
                    
                    RowBox[{"(*", " ", 
                    RowBox[{
                    "ciclo", " ", "per", " ", "la", " ", "composizione", " ", 
                    "del", " ", "vettore", " ", "dei", " ", "resti"}], " ", 
                    "*)"}], "\n", "\t\t            ", 
                    RowBox[{
                    RowBox[{"res", " ", "=", " ", 
                    RowBox[{"Quotient", "[", 
                    RowBox[{"val", ",", " ", "out"}], "]"}]}], ";", " ", "\n",
                     "\t\t            ", 
                    RowBox[{"rest", " ", "=", " ", 
                    RowBox[{
                    RowBox[{"Mod", "[", 
                    RowBox[{"val", ",", "out"}], "]"}], " ", "+", " ", 
                    "1"}]}], ";", " ", 
                    RowBox[{"(*", " ", 
                    RowBox[{"Aggiungiamo", " ", "1", " ", "per", " ", 
                    RowBox[{"l", "'"}], "indicizzazione", " ", "nel", " ", 
                    "vettore", " ", "dei", " ", "valori", " ", "dato", " ", 
                    "che", " ", "Mathematica", " ", "ha", " ", "indici", " ", 
                    "da", " ", "1", " ", "a", " ", "N"}], " ", "*)"}], "\n", 
                    "\t\t            ", 
                    RowBox[{"AppendTo", "[", 
                    RowBox[{"restComp", ",", " ", 
                    RowBox[{"ToString", "[", 
                    RowBox[{"Part", "[", 
                    RowBox[{"listLet", ",", " ", "rest"}], "]"}], "]"}]}], 
                    "]"}], ";", " ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    "Il", " ", "valore", " ", "di", " ", "rest", " ", 
                    "\[EGrave]", " ", 
                    RowBox[{"l", "'"}], "indice", " ", "della", " ", "cella", 
                    " ", "contenente", " ", "il", " ", "valore", " ", "del", 
                    " ", "resto", " ", "da", " ", "aggiungere", " ", "a", " ",
                     "RestComp"}], " ", "*)"}], "\n", "\t\t            ", 
                    RowBox[{"val", " ", "=", " ", "res"}], ";"}]}], " ", "\n",
                     "\t\t          ", "]"}], ";", "\n", "\t\t          ", 
                    "\n", "\t\t          ", 
                    RowBox[{"(*", " ", "Output", " ", "*)"}], "\n", 
                    "\t\t          ", 
                    RowBox[{"Return", "[", 
                    RowBox[{
                    RowBox[{"ToString", "[", "valueNum", "]"}], " ", "<>", 
                    " ", "\"\< mod(\>\"", " ", "<>", " ", 
                    RowBox[{"ToString", "[", "inputBase", "]"}], " ", "<>", 
                    " ", "\"\<) = \>\"", " ", "<>", " ", 
                    RowBox[{"Reverse", "[", "restComp", "]"}], " ", "<>", 
                    " ", "\"\< mod(\>\"", " ", "<>", " ", 
                    RowBox[{"ToString", "[", "outputBase", "]"}], " ", "<>", 
                    " ", "\"\<)\>\""}], "]"}], ";"}], "\n", "\t\t          ", 
                    ",", "\n", "\t\t          ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    "Errore", " ", "per", " ", "overflow", " ", "o", " ", 
                    "underflow", " ", "dei", " ", "valori", " ", "di", " ", 
                    "input", " ", "supportati"}], " ", "*)"}], "\n", 
                    "\t\t          ", 
                    RowBox[{
                    "Return", "[", 
                    "\"\<Il numero deve essere un intero positivo compreso \
tra 0 e 10.000 (espresso in base 10)\>\"", "]"}]}], "\n", "\t\t         ", 
                    "]"}], ";"}], ",", " ", "\n", "\t\t       ", 
                   RowBox[{"(*", " ", 
                    RowBox[{
                    "else", " ", "the", " ", "input", " ", "base", " ", "is", 
                    " ", "not", " ", "10"}], " ", "*)"}], "\n", "\t\t       ", 
                   RowBox[{
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"outputBase", " ", "\[Equal]", " ", "10"}], ",", 
                    "\n", "\t\t          ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    RowBox[{"Conversione", " ", "da", " ", "base", " ", "N"}],
                     "\[NotEqual]", 
                    RowBox[{"10", " ", "a", " ", "base", " ", "10"}]}], " ", 
                    "*)"}], "\n", "\t\t          ", 
                    RowBox[{
                    RowBox[{"base", " ", "=", " ", "inputBase"}], ";", " ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    "variabile", " ", "locale", " ", "per", " ", "la", " ", 
                    "base", " ", "di", " ", "input"}], " ", "*)"}], "\n", 
                    "\t\t          ", 
                    RowBox[{"num", " ", "=", " ", "valueNum"}], ";", " ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    "variabile", " ", "locale", " ", "per", " ", "il", " ", 
                    "valore", " ", "di", " ", "input"}], " ", "*)"}], "\n", 
                    " ", "\n", "\t\t          ", "\n", "\t\t          ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    RowBox[{
                    "Controllando", " ", "che", " ", "base", " ", "sia", " ", 
                    "minore", " ", "o", " ", "uguale", " ", "a", " ", "10"}], 
                    ",", " ", 
                    RowBox[{
                    RowBox[{
                    "non", " ", "effettuiamo", " ", "le", " ", "operazioni", 
                    " ", "alfanumerico", " ", "poich\[EGrave]", "\n", 
                    "\t\t          ", "baseInput"}], " ", "\[LessEqual]", " ", 
                    RowBox[{"10", " ", "e", " ", "baseOutput"}], " ", 
                    "\[Equal]", " ", "10"}]}], " ", "*)"}], " ", 
                    "\[IndentingNewLine]", "                  ", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"base", " ", "\[LessEqual]", " ", "10"}], ",", 
                    " ", "\n", "                        ", 
                    RowBox[{
                    RowBox[{"resultInt", " ", "=", " ", 
                    RowBox[{"FromDigits", "[", 
                    RowBox[{
                    RowBox[{"ToString", "[", "num", "]"}], ",", " ", "base"}],
                     "]"}]}], ";", " ", 
                    RowBox[{"(*", " ", 
                    RowBox[{"Conversione", " ", "del", " ", "valore"}], " ", 
                    "*)"}], "\n", "                        ", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"resultInt", " ", ">", " ", "10000"}], " ", "||", 
                    " ", 
                    RowBox[{"resultInt", " ", "<", " ", "0"}]}], ",", "  ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    "Il", " ", "valore", " ", "convertito", " ", "in", " ", 
                    "base", " ", "10", " ", "deve", " ", "essere", " ", "tra",
                     " ", "0", " ", "e", " ", "10.000"}], " ", "*)"}], "\n", 
                    "                           ", 
                    RowBox[{"(*", " ", 
                    RowBox[{"Caso", " ", "errato"}], " ", "*)"}], "\n", 
                    "                            ", 
                    RowBox[{
                    RowBox[{
                    "Return", "[", 
                    "\"\<Il numero deve essere un intero tra 0 e 10.000 in \
base 10 per essere valido\>\"", "]"}], ";"}], "\n", "\t\t                 ", 
                    ",", "\n", "\t\t                   ", 
                    RowBox[{"(*", " ", 
                    RowBox[{"Caso", " ", "corretto"}], " ", "*)"}], "\n", 
                    "                           ", 
                    RowBox[{
                    RowBox[{"Return", "[", 
                    RowBox[{
                    RowBox[{"ToString", "[", "valueNum", "]"}], " ", "<>", 
                    " ", "\"\< mod(\>\"", " ", "<>", " ", 
                    RowBox[{"ToString", "[", "inputBase", "]"}], " ", "<>", 
                    " ", "\"\<) = \>\"", " ", "<>", " ", 
                    RowBox[{"ToString", "[", "resultInt", "]"}], " ", "<>", 
                    " ", "\"\< mod(\>\"", " ", "<>", " ", 
                    RowBox[{"ToString", "[", "outputBase", "]"}], " ", "<>", 
                    " ", "\"\<)\>\""}], "]"}], ";"}]}], "\n", 
                    "                           ", "]"}], ";"}], 
                    "\[IndentingNewLine]", "                   ", ",", 
                    "\[IndentingNewLine]", "\t\t       ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    RowBox[{
                    "Caso", " ", "in", " ", "cui", " ", "la", " ", "base", 
                    " ", "di", " ", "input", " ", "\[EGrave]", " ", 
                    "maggiore", " ", "di", " ", "10"}], ",", " ", 
                    RowBox[{
                    "ossia", " ", "\[EGrave]", " ", "una", " ", "base", " ", 
                    "che", " ", "accetta", " ", "alcuni", " ", 
                    "caratteri"}]}], " ", "*)"}], "\[IndentingNewLine]", 
                    "                ", 
                    RowBox[{
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"VerifyBase", "[", 
                    RowBox[{"num", ",", " ", "base"}], "]"}], ",", 
                    "\[IndentingNewLine]", "                  ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    RowBox[{
                    "andiamo", " ", "a", " ", "prendere", " ", "il", " ", 
                    "valore", " ", "di", " ", "input", " ", "e", " ", "lo", 
                    " ", "trasformiamo", " ", "in", " ", "una", " ", "lista", 
                    " ", "di", " ", "caratteri"}], ",", " ", 
                    RowBox[{"ignorando", " ", "gli", " ", "spazi"}]}], " ", 
                    "*)"}], "\n", "                  ", 
                    RowBox[{
                    RowBox[{"listChars", " ", "=", " ", 
                    RowBox[{"DeleteCases", "[", 
                    RowBox[{
                    RowBox[{"Characters", "[", 
                    RowBox[{"ToString", "[", "num", "]"}], "]"}], ",", " ", 
                    "\"\< \>\""}], "]"}]}], ";", " ", "\[IndentingNewLine]", 
                    "\t             ", 
                    RowBox[{"For", "[", 
                    RowBox[{
                    RowBox[{"i", " ", "=", " ", "1"}], ",", " ", 
                    RowBox[{"i", " ", "<=", " ", 
                    RowBox[{"Length", "[", "listChars", "]"}]}], ",", " ", 
                    RowBox[{"i", "++"}], ",", " ", "\[IndentingNewLine]", 
                    "\t\t\t\t   ", 
                    RowBox[{
                    RowBox[{"For", "[", 
                    RowBox[{
                    RowBox[{"j", " ", "=", " ", "1"}], ",", " ", 
                    RowBox[{"j", " ", "\[LessEqual]", " ", 
                    RowBox[{"Length", "[", "symb", "]"}]}], ",", " ", 
                    RowBox[{"j", "++"}], " ", ",", "\[IndentingNewLine]", 
                    "\t\t\t\t\t  ", 
                    RowBox[{
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"symb", "[", 
                    RowBox[{"[", "j", "]"}], "]"}], "\[Equal]", " ", 
                    RowBox[{"listChars", "[", 
                    RowBox[{"[", "i", "]"}], "]"}]}], ",", " ", 
                    "\[IndentingNewLine]", "\t\t\t\t         ", 
                    RowBox[{"(*", " ", 
                    RowBox[{"Troviamo", " ", 
                    RowBox[{"l", "'"}], "elemento", " ", "nel", " ", 
                    "vettore", " ", "dei", " ", "simboli", " ", 
                    "corrispondente", " ", 
                    RowBox[{"all", "'"}], "elemento", " ", "della", " ", 
                    "lista", " ", "di", " ", "caratteri", " ", "di", " ", 
                    "input", " ", "selezionato"}], " ", "*)"}], 
                    "\[IndentingNewLine]", "\t\t\t\t\t", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    "scambiamo", " ", "il", " ", "valore", " ", "corrente", 
                    " ", 
                    RowBox[{"(", "lettera", ")"}], " ", "con", " ", "il", " ",
                     "suo", " ", "valore", " ", "numerico"}], " ", "*)"}], 
                    "\[IndentingNewLine]", "\t\t\t\t\t", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"listChars", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], " ", "=", " ", 
                    RowBox[{"j", " ", "-", " ", "1"}]}], ";"}], " ", 
                    "\[IndentingNewLine]", "\t\t\t\t\t", ",", " ", 
                    "\[IndentingNewLine]", "\t\t\t\t\t", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    "altrimenti", " ", "si", " ", "scorre", " ", "la", " ", 
                    "lista", " ", "dei", " ", "simboli"}], "*)"}], 
                    "\[IndentingNewLine]", "\t\t\t\t\t", 
                    RowBox[{
                    RowBox[{"listChars", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], ";"}]}], " ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    "istruzione", " ", "che", " ", "ha", " ", "la", " ", 
                    "funzione", " ", "di", " ", "placeholder"}], " ", "*)"}], 
                    "\n", "\t\t\t\t\t    ", "\[IndentingNewLine]", 
                    "\t\t\t\t\t  ", "]"}], ";"}]}], " ", "\n", 
                    "\t                 ", "]"}], ";"}]}], "\n", 
                    "\t\t          ", "]"}], ";", " ", "\[IndentingNewLine]", 
                    "\n", "               ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    RowBox[{
                    "Uscito", " ", "dal", " ", "processo", " ", "di", " ", 
                    "conversione"}], ",", " ", 
                    RowBox[{
                    "abbiamo", " ", "una", " ", "lista", " ", "di", " ", 
                    "caratteri", " ", "composta", " ", "da", " ", "soli", " ",
                     "numeri"}]}], " ", "*)"}], "\[IndentingNewLine]", 
                    "                ", 
                    RowBox[{"resultInt", " ", "=", " ", 
                    RowBox[{"FromDigits", "[", 
                    RowBox[{"listChars", ",", " ", "base"}], "]"}]}], ";", 
                    " ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    RowBox[{
                    "Possiamo", " ", "quindi", " ", "utilizzare", " ", "la", 
                    " ", "built"}], "-", 
                    RowBox[{
                    "in", " ", "FromDigits", " ", "ora", " ", "per", " ", 
                    "trovare", " ", "il", " ", "risultato"}]}], " ", "*)"}], 
                    "\n", "                ", "\n", "                ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    "Stampa", " ", "del", " ", "risultato", " ", "nella", " ",
                     "stringa", " ", "di", " ", "output"}], " ", "*)"}], "\n",
                     "                ", 
                    RowBox[{"Return", "[", 
                    RowBox[{
                    RowBox[{"ToString", "[", "valueNum", "]"}], " ", "<>", 
                    " ", "\"\< mod(\>\"", " ", "<>", " ", 
                    RowBox[{"ToString", "[", "inputBase", "]"}], " ", "<>", 
                    " ", "\"\<) = \>\"", " ", "<>", " ", 
                    RowBox[{"ToString", "[", "resultInt", "]"}], " ", "<>", 
                    " ", "\"\< mod(\>\"", " ", "<>", " ", 
                    RowBox[{"ToString", "[", "outputBase", "]"}], " ", "<>", 
                    " ", "\"\<)\>\""}], "]"}]}], "\[IndentingNewLine]", 
                    "                 ", ",", "\[IndentingNewLine]", 
                    "                 ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    RowBox[{
                    "Caso", " ", "in", " ", "cui", " ", "il", " ", "valore", 
                    " ", "di", " ", "VerifyBase", " ", "\[EGrave]", " ", 
                    "false"}], ",", " ", 
                    RowBox[{
                    "ossia", " ", "quando", " ", "il", " ", "valore", " ", 
                    "di", " ", "input", " ", "non", " ", "\[EGrave]", " ", 
                    "esprimibile", " ", "nella", " ", "base", " ", "di", " ", 
                    "input"}]}], " ", "*)"}], "\[IndentingNewLine]", 
                    "                 ", 
                    RowBox[{
                    RowBox[{
                    "Return", "[", 
                    "\"\<Il numero non \[EGrave] in un formato accettabile \
per la base di input\>\"", "]"}], ";"}]}], "\[IndentingNewLine]", 
                    "                   ", "]"}], ";"}]}], 
                    "\[IndentingNewLine]", "                ", "]"}], ";"}], 
                    "\n", "\t\t          ", ",", "\n", "\t\t          ", "\n",
                     "\t\t          ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    RowBox[{
                    "Conversione", " ", "da", " ", "base", " ", "X", " ", "a",
                     " ", "base", " ", "Y", " ", "con", " ", "X"}], ",", 
                    RowBox[{"Y", " ", "\[NotEqual]", " ", "10"}]}], " ", 
                    "*)"}], "\t           ", "\n", "\t\t           ", 
                    RowBox[{
                    RowBox[{"base", " ", "=", " ", "inputBase"}], ";", "\n", 
                    "\t\t           ", 
                    RowBox[{"num", " ", "=", " ", "valueNum"}], ";", "\n", 
                    " ", "\n", "\t\t          ", "\n", "\t\t          ", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"VerifyBase", "[", 
                    RowBox[{"num", ",", " ", "base"}], "]"}], ",", " ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    "Verifichiamo", " ", "che", " ", "la", " ", "base", " ", 
                    "sia", " ", "idonea", " ", "per", " ", "il", " ", 
                    "valore", " ", "di", " ", "input"}], " ", "*)"}], 
                    "\[IndentingNewLine]", "                   ", 
                    RowBox[{
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"base", " ", "\[LessEqual]", " ", "10"}], " ", 
                    ",", " ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    "condizione", " ", "necessaria", " ", "al", " ", "fine", 
                    " ", "di", " ", "semplificare", " ", "il", " ", 
                    "procedimento", " ", "non", " ", "trattando", " ", "dati",
                     " ", "letterali"}], " ", "*)"}], "\n", 
                    "                         ", 
                    RowBox[{
                    RowBox[{"resultInt", " ", "=", " ", 
                    RowBox[{"FromDigits", "[", 
                    RowBox[{
                    RowBox[{"ToString", "[", "num", "]"}], ",", " ", "base"}],
                     "]"}]}], ";", " ", 
                    RowBox[{"(*", " ", 
                    RowBox[{"Conversione", " ", "del", " ", "valore"}], " ", 
                    "*)"}], "\n", "                        ", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"resultInt", " ", ">", " ", "10000"}], ",", "  ", 
                    
                    RowBox[{"(*", " ", 
                    RowBox[{"verifica", " ", "che", " ", "il", " ", "valore", 
                    " ", "non", " ", "superi", " ", "le", " ", "10.000", " ", 
                    "unit\[AGrave]"}], " ", "*)"}], "\n", 
                    "                           ", 
                    RowBox[{"(*", " ", 
                    RowBox[{"Caso", " ", "di", " ", "errore"}], " ", "*)"}], 
                    "\n", "                            ", 
                    RowBox[{
                    RowBox[{
                    "Return", "[", 
                    "\"\<Il numero deve essere un intero tra 0 e 10.000 in \
base 10 per essere valido\>\"", "]"}], ";"}], "\n", "\t\t                 ", 
                    ",", "\n", "\t\t                   ", 
                    RowBox[{"(*", " ", 
                    RowBox[{"Caso", " ", "di", " ", "successo"}], " ", "*)"}],
                     "\n", "                           ", 
                    RowBox[{
                    RowBox[{"Return", "[", 
                    RowBox[{
                    RowBox[{"ToString", "[", "valueNum", "]"}], " ", "<>", 
                    " ", "\"\< mod(\>\"", " ", "<>", " ", 
                    RowBox[{"ToString", "[", "inputBase", "]"}], " ", "<>", 
                    " ", "\"\<) = \>\"", " ", "<>", " ", 
                    RowBox[{"ToString", "[", "resultInt", "]"}], " ", "<>", 
                    " ", "\"\< mod(\>\"", " ", "<>", " ", 
                    RowBox[{"ToString", "[", "outputBase", "]"}], " ", "<>", 
                    " ", "\"\<)\>\""}], "]"}], ";"}]}], "\n", 
                    "                           ", "]"}], ";"}], 
                    "\[IndentingNewLine]", "                   ", ",", 
                    "\[IndentingNewLine]", "\t\t                ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    RowBox[{
                    "Caso", " ", "in", " ", "cui", " ", "la", " ", "base", 
                    " ", "\[EGrave]", " ", "maggiore", " ", "di", " ", "10"}],
                     ",", " ", 
                    RowBox[{
                    "dobbiamo", " ", "gestire", " ", "la", " ", "conversione",
                     " ", "alfanumerica"}]}], " ", "*)"}], " ", 
                    "\[IndentingNewLine]", "                        ", 
                    RowBox[{
                    RowBox[{"listChars", " ", "=", " ", 
                    RowBox[{"DeleteCases", "[", 
                    RowBox[{
                    RowBox[{"Characters", "[", 
                    RowBox[{"ToString", "[", "num", "]"}], "]"}], ",", " ", 
                    "\"\< \>\""}], "]"}]}], ";", "\n", 
                    "                             ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    "Convertiamo", " ", "lettere", " ", "in", " ", "numeri"}],
                     " ", "*)"}], "\[IndentingNewLine]", 
                    "\t                    ", 
                    RowBox[{"For", "[", 
                    RowBox[{
                    RowBox[{"i", " ", "=", " ", "1"}], ",", " ", 
                    RowBox[{"i", " ", "<=", " ", 
                    RowBox[{"Length", "[", "listChars", "]"}]}], ",", " ", 
                    RowBox[{"i", "++"}], ",", " ", "\[IndentingNewLine]", 
                    "\t\t\t\t           ", 
                    RowBox[{
                    RowBox[{"For", "[", 
                    RowBox[{
                    RowBox[{"j", " ", "=", " ", "1"}], ",", " ", 
                    RowBox[{"j", " ", "\[LessEqual]", " ", 
                    RowBox[{"Length", "[", "symb", "]"}]}], ",", " ", 
                    RowBox[{"j", "++"}], " ", ",", "\[IndentingNewLine]", 
                    "\t\t\t\t\t         ", 
                    RowBox[{
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"symb", "[", 
                    RowBox[{"[", "j", "]"}], "]"}], "\[Equal]", " ", 
                    RowBox[{"listChars", "[", 
                    RowBox[{"[", "i", "]"}], "]"}]}], ",", " ", 
                    "\[IndentingNewLine]", "\t\t\t\t              ", 
                    RowBox[{"(*", " ", 
                    RowBox[{"Troviamo", " ", 
                    RowBox[{"l", "'"}], "elemento", " ", "nel", " ", 
                    "vettore", " ", "dei", " ", "simboli", " ", "uguale", " ",
                     "a", " ", "quello", " ", "che", " ", "stiamo", " ", 
                    "analizzando", " ", "nella", " ", "nostra", " ", "lista", 
                    " ", "di", " ", "caratteri"}], " ", "*)"}], 
                    "\[IndentingNewLine]", "\t\t\t\t\t          ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    "rimpiazzando", " ", "il", " ", "valore", " ", 
                    "letterale", " ", "con", " ", "il", " ", "rispettivo", 
                    " ", "valore", " ", "numerico"}], " ", "*)"}], 
                    "\[IndentingNewLine]", "\t\t\t\t\t           ", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"listChars", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], " ", "=", " ", 
                    RowBox[{"j", " ", "-", " ", "1"}]}], ";"}], " ", 
                    "\[IndentingNewLine]", "\t\t\t\t\t           ", ",", " ", 
                    "\[IndentingNewLine]", "\t\t\t\t\t          ", 
                    RowBox[{"(*", " ", 
                    RowBox[{"istruzione", " ", "di", " ", "placeholder"}], 
                    " ", "*)"}], "\[IndentingNewLine]", 
                    "\t\t\t\t\t          ", 
                    RowBox[{
                    RowBox[{"listChars", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], ";"}]}], "\n", 
                    "\t\t\t\t\t    ", "\[IndentingNewLine]", 
                    "\t\t\t\t\t         ", "]"}], ";"}]}], " ", "\n", 
                    "\t                         ", "]"}], ";"}]}], "\n", 
                    "\t\t                  ", "]"}], ";", " ", 
                    "\[IndentingNewLine]", "\[IndentingNewLine]", 
                    "                       ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    "In", " ", "listChars", " ", "abbiamo", " ", "una", " ", 
                    "lista", " ", "di", " ", "numeri"}], " ", "*)"}], "\n", 
                    "                        ", 
                    RowBox[{"resultInt", " ", "=", " ", 
                    RowBox[{"FromDigits", "[", 
                    RowBox[{"listChars", ",", " ", "base"}], "]"}]}], ";"}]}],
                     " ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    RowBox[{
                    "fine", " ", "del", " ", "primo", " ", "step", " ", 
                    "della", " ", "conversione", " ", "da", " ", "base", " ", 
                    "X", " ", "a", " ", "Y", " ", "con", " ", "X"}], ",", 
                    RowBox[{"Y", " ", "\[NotEqual]", " ", "10"}]}], " ", 
                    "*)"}], "\[IndentingNewLine]", "                        ",
                     "\[IndentingNewLine]", "                   ", "]"}], 
                    ";"}], "\[IndentingNewLine]", "                 ", ",", 
                    "\n", "                  ", 
                    RowBox[{
                    RowBox[{
                    "Return", "[", 
                    "\"\<Format Error: valore non supportato dalla base o \
input con caratteri non compatibili\>\"", "]"}], ";"}]}], 
                    "\[IndentingNewLine]", "                  ", "]"}], ";", 
                    "\n", "                  ", "\n", "\t\t           ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    "Step", " ", "di", " ", "conversione", " ", "da", " ", 
                    "base", " ", "10", " ", "To", " ", "Y"}], " ", "*)"}], 
                    "\n", "\t\t           ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    RowBox[{"L", "'"}], "input", " ", "per", " ", "questa", 
                    " ", "fase", " ", "sarebbe", " ", "il", " ", "resultInt", 
                    " ", "in", " ", "output"}], " ", "*)"}], "\n", 
                    "\t\t           ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    "Ora", " ", "dobbiamo", " ", "convertire", " ", 
                    "resultInt", " ", "da", " ", "base", " ", "10", " ", "a", 
                    " ", "base", " ", "Y"}], " ", "*)"}], "\n", 
                    "\t\t           ", "\n", "\t\t          ", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"resultInt", " ", ">=", " ", "0"}], " ", "&&", 
                    " ", 
                    RowBox[{"resultInt", " ", "<=", " ", "10000"}], " ", "&&",
                     " ", 
                    RowBox[{"IntegerQ", "[", "outputBase", "]"}], " ", "&&", 
                    " ", 
                    RowBox[{"outputBase", " ", ">=", " ", "2"}], " ", "&&", 
                    " ", 
                    RowBox[{"outputBase", " ", "\[LessEqual]", "62"}]}], ",", 
                    "\n", "\t\t         ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    "Variabili", " ", "locali", " ", "utili", " ", "per", " ",
                     "la", " ", "conversione"}], " ", "*)"}], "\n", 
                    "\t\t          ", 
                    RowBox[{
                    RowBox[{"val", " ", "=", " ", "resultInt"}], ";", "\n", 
                    "\t\t          ", 
                    RowBox[{"out", " ", "=", " ", "outputBase"}], ";", "\n", 
                    "\t\t          ", 
                    RowBox[{"res", " ", "=", " ", 
                    RowBox[{"-", "1"}]}], ";", "\n", "\t\t          ", 
                    RowBox[{"restComp", " ", "=", " ", 
                    RowBox[{"{", "}"}]}], ";", "\n", "\t\t   ", "\n", 
                    "\t\t         ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    "Generazione", " ", "della", " ", "stringa", " ", "del", 
                    " ", "procedimento"}], " ", "*)"}], "\n", "\t\t   ", "\n",
                     "\t\t         ", 
                    RowBox[{"While", "[", 
                    RowBox[{
                    RowBox[{"res", " ", "\[NotEqual]", " ", "0"}], ",", "  ", 
                    "\n", "\t\t            ", 
                    RowBox[{
                    RowBox[{"res", " ", "=", " ", 
                    RowBox[{"Quotient", "[", 
                    RowBox[{"val", ",", " ", "out"}], "]"}]}], ";", "\n", 
                    "\t\t            ", 
                    RowBox[{"rest", " ", "=", " ", 
                    RowBox[{
                    RowBox[{"Mod", "[", 
                    RowBox[{"val", ",", "out"}], "]"}], " ", "+", " ", 
                    "1"}]}], ";", " ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    "rest", " ", "verr\[AGrave]", " ", "utilizzato", " ", 
                    "per", " ", 
                    RowBox[{"l", "'"}], "indicizzazione", " ", "della", " ", 
                    "lista", " ", "alfanumerica", " ", "e", " ", "prelevare", 
                    " ", "il", " ", "valore", " ", "numerico", " ", "per", 
                    " ", "associarlo", " ", "al", " ", "resto"}], " ", "*)"}],
                     "\n", "\t\t            ", 
                    RowBox[{"AppendTo", "[", 
                    RowBox[{"restComp", ",", 
                    RowBox[{"ToString", "[", 
                    RowBox[{"Part", "[", 
                    RowBox[{"listLet", ",", " ", "rest"}], "]"}], "]"}]}], 
                    "]"}], ";", " ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    "associazione", " ", "del", " ", "valore", " ", 
                    "numerico", " ", "al", " ", "resto"}], " ", "*)"}], "\n", 
                    "\t\t            ", 
                    RowBox[{"val", " ", "=", " ", "res"}], ";"}]}], " ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    "aggiornamento", " ", "per", " ", "la", " ", "prossima", 
                    " ", "divisione"}], " ", "*)"}], "\n", "\t\t          ", 
                    "]"}], ";", "\n", "\t\t          ", 
                    RowBox[{"Return", "[", 
                    RowBox[{
                    RowBox[{"ToString", "[", "valueNum", "]"}], " ", "<>", 
                    " ", "\"\< mod(\>\"", " ", "<>", " ", 
                    RowBox[{"ToString", "[", "inputBase", "]"}], " ", "<>", 
                    " ", "\"\<) = \>\"", " ", "<>", " ", 
                    RowBox[{"Reverse", "[", "restComp", "]"}], " ", "<>", 
                    " ", "\"\< mod(\>\"", " ", "<>", " ", 
                    RowBox[{"ToString", "[", "outputBase", "]"}], " ", "<>", 
                    " ", "\"\<)\>\""}], "]"}], ";"}], "\n", "\t\t          ", 
                    ",", "\n", "\t\t          ", 
                    RowBox[{
                    "Return", "[", 
                    "\"\<Il numero deve essere un intero positivo compreso \
tra 0 e 10.000 (espresso in base 10), le basi devono essere interi tra 2 e 62 \
e il numero deve essere in base 10\>\"", "]"}]}], "\n", "\t\t         ", 
                    "]"}], ";"}]}], "\n", "\t\t         ", "\n", 
                    "\t\t          ", "\n", "\t\t         ", "]"}], ";"}]}], 
                  "\n", "\t\t      ", "]"}], ";"}]}], "     ", "\n", 
               "\t\t   ", "]"}], ";"}], "\n", "\t\t", ",", "\n", "\t\t", 
             RowBox[{
              RowBox[{
              "Return", "[", 
               "\"\<Format Error: Valore di input non esprimibile nella base \
di input o basi non comprese tra 2 e 62\>\"", "]"}], ";"}]}], "\n", "\t\t", 
            "]"}], ";"}], "\n", "\t\t", ",", " ", "\n", "\t\t", 
          RowBox[{
           RowBox[{
           "Return", "[", 
            "\"\<Format Error: le basi non sono interi o i parametri hanno \
caratteri non supportati\>\"", "]"}], ";"}]}], "\n", "\t\t", "]"}], ";"}]}], 
      "\n", "\t", "]"}]}], ";"}], "\n", "\n", "\n", "      ", "\n", "\t", 
   "\n"}]}]], "Code",
 CellChangeTimes->{{3.8288623490021477`*^9, 3.828862417134672*^9}, {
   3.828862559115164*^9, 3.828862560295457*^9}, {3.8288626174968777`*^9, 
   3.8288626982373857`*^9}, {3.828862738736709*^9, 3.828862835896798*^9}, {
   3.828863014520433*^9, 3.828863020459037*^9}, {3.8288630709923573`*^9, 
   3.828863071288457*^9}, {3.828863105121665*^9, 3.828863122575528*^9}, 
   3.828863237460566*^9, 3.828863296965271*^9, {3.828863359950121*^9, 
   3.828863361466893*^9}, {3.8290190374159107`*^9, 3.8290192079971247`*^9}, {
   3.829019815143512*^9, 3.829019838602909*^9}, {3.8290201173779984`*^9, 
   3.829020120381616*^9}, {3.829020171740335*^9, 3.829020397976673*^9}, {
   3.829020515159178*^9, 3.829020695333703*^9}, {3.829020766902997*^9, 
   3.829020767175626*^9}, {3.8290208123299637`*^9, 3.829020940592771*^9}, {
   3.829021290925803*^9, 3.8290214333828897`*^9}, {3.829021494331662*^9, 
   3.829021510905505*^9}, {3.829021542214316*^9, 3.8290215655974483`*^9}, {
   3.829021604729607*^9, 3.8290216601862288`*^9}, {3.829021757501032*^9, 
   3.829021799953506*^9}, {3.829021889923073*^9, 3.8290218947935762`*^9}, {
   3.829021947971056*^9, 3.8290219741944017`*^9}, {3.829022037002534*^9, 
   3.82902206375419*^9}, {3.82902214072094*^9, 3.829022201536229*^9}, {
   3.829022404384213*^9, 3.8290224205874853`*^9}, {3.829022460226902*^9, 
   3.829022589324686*^9}, {3.829022789538087*^9, 3.829022953642707*^9}, {
   3.829023014304188*^9, 3.829023032717963*^9}, {3.829023090807291*^9, 
   3.829023216858062*^9}, {3.829023389449436*^9, 3.829023423137786*^9}, {
   3.829023458214953*^9, 3.829023669196022*^9}, {3.829023719641465*^9, 
   3.829023851474339*^9}, {3.8290238896135807`*^9, 3.829023952934907*^9}, {
   3.8290240048654623`*^9, 3.829024042755047*^9}, {3.829024165860629*^9, 
   3.829024176220673*^9}, {3.829024679383688*^9, 3.8290247285414047`*^9}, {
   3.829025086070685*^9, 3.8290251381058283`*^9}, {3.829025204811133*^9, 
   3.829025213519374*^9}, {3.829025269842008*^9, 3.829025314323553*^9}, {
   3.829025349878738*^9, 3.829025420785933*^9}, {3.829025472900619*^9, 
   3.829025662747316*^9}, {3.829025741738667*^9, 3.829025813944004*^9}, {
   3.829025886178851*^9, 3.829025942726927*^9}, {3.8290265217866783`*^9, 
   3.8290265506281967`*^9}, {3.829026601821492*^9, 3.829026624436199*^9}, {
   3.8290267873821993`*^9, 3.829026831124312*^9}, {3.8290269561359453`*^9, 
   3.829027043890615*^9}, {3.829027157226611*^9, 3.8290272734367933`*^9}, {
   3.829027728443694*^9, 3.829027849300539*^9}, {3.829027885484631*^9, 
   3.829027901825877*^9}, {3.8290279339646473`*^9, 3.829028075464603*^9}, 
   3.8290281612111883`*^9, {3.829028211787837*^9, 3.829028227670683*^9}, {
   3.829028267267809*^9, 3.829028273647016*^9}, {3.829028332222122*^9, 
   3.829028334029769*^9}, {3.8290291988557987`*^9, 3.8290292131656437`*^9}, {
   3.829029520334593*^9, 3.829029551224649*^9}, {3.8290298099408617`*^9, 
   3.8290298111808*^9}, {3.829187268065186*^9, 3.829187343369308*^9}, {
   3.829187428031342*^9, 3.8291875424381447`*^9}, {3.829187765797092*^9, 
   3.829187779747223*^9}, {3.829187815573348*^9, 3.829187816783017*^9}, {
   3.829187893224104*^9, 3.829188093267795*^9}, {3.829188299178694*^9, 
   3.8291883357227507`*^9}, {3.829188403779402*^9, 3.829188413700861*^9}, {
   3.829188951230507*^9, 3.829188952211317*^9}, {3.829189109946601*^9, 
   3.829189279915209*^9}, {3.829189336840159*^9, 3.829189350313713*^9}, {
   3.829189472043243*^9, 3.829189479069408*^9}, {3.8291897301668873`*^9, 
   3.829189837602336*^9}, {3.829190411554213*^9, 3.829190417770496*^9}, {
   3.8291905064850683`*^9, 3.8291905390303993`*^9}, {3.8291906392484293`*^9, 
   3.829190905727532*^9}, {3.829190964515036*^9, 3.8291909886888237`*^9}, {
   3.8291910489358473`*^9, 3.829191049702162*^9}, {3.82919236028692*^9, 
   3.829192364782233*^9}, 3.8291924619746428`*^9, {3.8291926022927837`*^9, 
   3.8291928001200943`*^9}, {3.82919284363799*^9, 3.829192849310472*^9}, {
   3.8291929451652727`*^9, 3.829192973299808*^9}, {3.829193046777128*^9, 
   3.829193046991482*^9}, {3.829193144073872*^9, 3.829193144886216*^9}, {
   3.829193387315996*^9, 3.829193422561736*^9}, {3.829193496901554*^9, 
   3.8291935015209846`*^9}, {3.829193534620934*^9, 3.8291936724306498`*^9}, {
   3.829194001814773*^9, 3.8291941448435163`*^9}, {3.82919420152354*^9, 
   3.8291942263883047`*^9}, {3.8291942923377333`*^9, 3.829194509352016*^9}, {
   3.829194558644164*^9, 3.829194712705743*^9}, {3.829194838247273*^9, 
   3.829194875334868*^9}, {3.8291949252782803`*^9, 3.8291949448427753`*^9}, {
   3.8291973900593367`*^9, 3.829197390212331*^9}, {3.829197431731647*^9, 
   3.829197435339926*^9}, {3.829197486851676*^9, 3.829197487882225*^9}, {
   3.829197540335451*^9, 3.829197633240019*^9}, {3.8291976639523983`*^9, 
   3.829197693439569*^9}, {3.829199885778887*^9, 3.829199893357807*^9}, {
   3.829447217726225*^9, 3.8294472260905657`*^9}, {3.829447708670559*^9, 
   3.8294477091673717`*^9}, {3.829448404929057*^9, 3.829448420848238*^9}, {
   3.829448457328066*^9, 3.829448457504998*^9}, {3.829448840322358*^9, 
   3.8294488726274223`*^9}, {3.829449972316331*^9, 3.82945000969184*^9}, {
   3.8294504622690887`*^9, 3.829450466060336*^9}, {3.8296229815688868`*^9, 
   3.829623003859782*^9}, {3.829623039429934*^9, 3.829623042455674*^9}, {
   3.8296483692469273`*^9, 3.8296484768954773`*^9}, {3.82972929055343*^9, 
   3.8297293771335077`*^9}, {3.829875118164372*^9, 3.829875132285367*^9}, {
   3.829875199943281*^9, 3.829875307746917*^9}, {3.829875346869238*^9, 
   3.829875355134997*^9}, {3.829875386048612*^9, 3.829875390554682*^9}, {
   3.829875604408551*^9, 3.8298756304183903`*^9}, {3.829875678497983*^9, 
   3.829875736463048*^9}, {3.8298763468606577`*^9, 3.8298763743597603`*^9}, {
   3.829876523029907*^9, 3.829876594359871*^9}, {3.829876637210348*^9, 
   3.8298766966477337`*^9}, {3.829876824885006*^9, 3.829876866356526*^9}, {
   3.829877080741048*^9, 3.829877089264439*^9}, {3.829987023782452*^9, 
   3.829987060682955*^9}, {3.829987117138337*^9, 3.829987154819718*^9}, {
   3.829987205167205*^9, 3.82998720790796*^9}, {3.829987360960309*^9, 
   3.829987390441329*^9}, {3.829987686772588*^9, 3.8299876895673103`*^9}, {
   3.8299877429639893`*^9, 3.829987874726241*^9}, {3.829987914384714*^9, 
   3.829987969703401*^9}, {3.829988021652915*^9, 3.829988112765098*^9}, {
   3.829988196513463*^9, 3.829988246436798*^9}, {3.829988519844406*^9, 
   3.829988607764155*^9}, {3.829988645289154*^9, 3.8299887331080303`*^9}, {
   3.829988775660543*^9, 3.829988905201651*^9}, {3.8299889416565104`*^9, 
   3.829989039271833*^9}, {3.829989116864983*^9, 3.8299891450961113`*^9}, {
   3.82998946481036*^9, 3.829989494005785*^9}, {3.829989614906864*^9, 
   3.82998962608976*^9}, {3.82998965615917*^9, 3.829989789292164*^9}, {
   3.829990031499372*^9, 3.829990034379479*^9}, {3.8299902754154367`*^9, 
   3.829990319466196*^9}, {3.8299903935899467`*^9, 3.829990404046837*^9}, {
   3.829990720254067*^9, 3.82999075143504*^9}, {3.829990789488091*^9, 
   3.8299908095592127`*^9}, {3.829991092156301*^9, 3.829991148359755*^9}, {
   3.829991384070423*^9, 3.8299914346221457`*^9}, {3.829991477082501*^9, 
   3.829991501447563*^9}, {3.829991930244011*^9, 3.829991992705742*^9}, {
   3.829992280612523*^9, 3.829992317798862*^9}, {3.8299923844866467`*^9, 
   3.829992394323341*^9}, {3.8299924838516293`*^9, 3.829992484351246*^9}, {
   3.8299927650299892`*^9, 3.829992769850745*^9}, {3.829993051406242*^9, 
   3.8299930670256987`*^9}, {3.829993482412928*^9, 3.829993517425489*^9}, {
   3.829993650725315*^9, 3.829993665862155*^9}, 3.829993766630733*^9, {
   3.829993965648321*^9, 3.829993992653129*^9}, {3.829994070109379*^9, 
   3.8299940748348293`*^9}, {3.829994138879796*^9, 3.8299942512474537`*^9}, {
   3.829994312463492*^9, 3.829994314373015*^9}, {3.829994759624861*^9, 
   3.829994808676124*^9}, {3.829994894672398*^9, 3.829995028676011*^9}, {
   3.829995129830884*^9, 3.8299951780808163`*^9}, {3.8299955535634212`*^9, 
   3.8299956621076107`*^9}, {3.8299957067859*^9, 3.829995707074259*^9}, {
   3.829995762195113*^9, 3.829995818611186*^9}, {3.829995851517722*^9, 
   3.829995878505273*^9}, {3.829995909069481*^9, 3.829995927344329*^9}, {
   3.829995990668063*^9, 3.829996073576532*^9}, {3.829996187831314*^9, 
   3.829996214116411*^9}, {3.829996539550284*^9, 3.8299965854422293`*^9}, {
   3.829996641863117*^9, 3.8299966439238653`*^9}, {3.829996684863619*^9, 
   3.8299967203615026`*^9}, {3.829997882426169*^9, 3.829997904820067*^9}, {
   3.829997938133519*^9, 3.829997942048032*^9}, {3.82999817413653*^9, 
   3.8299983928262463`*^9}, {3.82999842313179*^9, 3.82999856911158*^9}, {
   3.829998610845191*^9, 3.8299986309434767`*^9}, {3.829998690386367*^9, 
   3.829998782856822*^9}, {3.82999884123074*^9, 3.8299990832880087`*^9}, {
   3.829999459206321*^9, 3.829999462792807*^9}, {3.830000009669096*^9, 
   3.830000014527094*^9}, {3.8300003835720882`*^9, 3.830000397428111*^9}, {
   3.830000429376709*^9, 3.830000438379364*^9}, {3.8300004711512117`*^9, 
   3.8300004794130697`*^9}, {3.830000595544943*^9, 3.8300007219804487`*^9}, {
   3.830000817710437*^9, 3.830000837607163*^9}, {3.830000893486326*^9, 
   3.830001277009659*^9}, {3.830001526529076*^9, 3.8300015935622387`*^9}, {
   3.83000183989671*^9, 3.830001840094927*^9}, {3.830001970601632*^9, 
   3.830002081838862*^9}, {3.8301716246606827`*^9, 3.830171650700251*^9}, {
   3.830171702723311*^9, 3.830171718033478*^9}, {3.830171969441675*^9, 
   3.830172096510206*^9}, {3.8301721596816807`*^9, 3.830172233433503*^9}, {
   3.830172291979411*^9, 3.830172474333406*^9}, {3.830172664431218*^9, 
   3.830172758338674*^9}, {3.830173054927628*^9, 3.830173259564834*^9}, {
   3.830173290778311*^9, 3.830173321956973*^9}, {3.830173399270299*^9, 
   3.8301734238565817`*^9}, {3.830173460329341*^9, 3.830173500751288*^9}, {
   3.830173614624873*^9, 3.8301737345138187`*^9}, {3.830173871941629*^9, 
   3.830173872483664*^9}, {3.8301739058222923`*^9, 3.830173909999501*^9}, {
   3.830173954088091*^9, 3.8301740163343573`*^9}, {3.8301741133102293`*^9, 
   3.830174119058304*^9}, {3.830174179145653*^9, 3.830174181609845*^9}, 
   3.8301744335318127`*^9, {3.830174784028768*^9, 3.830174832139339*^9}, {
   3.830174919261715*^9, 3.830174934349533*^9}, {3.83017497324841*^9, 
   3.830174979846574*^9}, {3.830175039930461*^9, 3.830175047749852*^9}, {
   3.83017508848223*^9, 3.830175094443556*^9}, {3.830175203390854*^9, 
   3.830175217323374*^9}, {3.8301753912813663`*^9, 3.830175432326867*^9}, {
   3.830175503903212*^9, 3.830175516486978*^9}, {3.8301756217021*^9, 
   3.830175671823894*^9}, {3.830175726642164*^9, 3.830175732895549*^9}, {
   3.830175833555883*^9, 3.830175897517582*^9}, {3.830175961844878*^9, 
   3.830175962262557*^9}, {3.8301760298958063`*^9, 3.83017606795865*^9}, {
   3.8301761025637836`*^9, 3.830176117518948*^9}, 3.830176172388579*^9, {
   3.830176219380823*^9, 3.830176229299871*^9}, {3.830176367538822*^9, 
   3.8301763844804277`*^9}, {3.830176500113991*^9, 3.830176506223476*^9}, {
   3.830176553248263*^9, 3.8301765699538307`*^9}, {3.830176695909627*^9, 
   3.830176696172954*^9}, {3.830176829712263*^9, 3.8301768457426043`*^9}, {
   3.8301768880740757`*^9, 3.8301769222991056`*^9}, {3.8301769830533953`*^9, 
   3.830177030293353*^9}, {3.830177086898417*^9, 3.830177120663333*^9}, {
   3.830177193610376*^9, 3.8301771975820704`*^9}, {3.8301774109623413`*^9, 
   3.830177487248231*^9}, {3.8301775381375017`*^9, 3.830177641618951*^9}, {
   3.830177686433957*^9, 3.830177691560649*^9}, {3.830177827782988*^9, 
   3.830177831916213*^9}, {3.830177904825062*^9, 3.830177909862349*^9}, {
   3.830178088772087*^9, 3.830178189900358*^9}, {3.830178257203615*^9, 
   3.8301782794046373`*^9}, {3.830178410123407*^9, 3.830178520831707*^9}, {
   3.830178601035041*^9, 3.830178645779821*^9}, {3.830178854229783*^9, 
   3.830178857512539*^9}, {3.830178889104459*^9, 3.830178892648965*^9}, {
   3.830179045581541*^9, 3.830179046090506*^9}, {3.83017908902568*^9, 
   3.830179092624543*^9}, 3.830179126705179*^9, {3.830179160959588*^9, 
   3.830179164371758*^9}, {3.830179248388048*^9, 3.830179296409849*^9}, {
   3.8301794006845493`*^9, 3.830179454133642*^9}, {3.830179495703909*^9, 
   3.830179503408236*^9}, 3.83017954591086*^9, {3.830179770764492*^9, 
   3.8301798175869827`*^9}, {3.83018074831638*^9, 3.830180751837639*^9}, {
   3.830180823098529*^9, 3.830180843619644*^9}, {3.830180945874577*^9, 
   3.830181000534857*^9}, {3.8301810350226307`*^9, 3.830181289742537*^9}, {
   3.830181504548072*^9, 3.830181511175576*^9}, {3.830181564838642*^9, 
   3.8301815673628683`*^9}, {3.830181632265768*^9, 3.830181716292485*^9}, {
   3.830182026401197*^9, 3.830182076431411*^9}, {3.830182111204879*^9, 
   3.8301821570163517`*^9}, {3.83018347036261*^9, 3.8301834721625423`*^9}, {
   3.830183726069249*^9, 3.830183734447544*^9}, {3.8301838003695793`*^9, 
   3.830183820250701*^9}, {3.83018395330165*^9, 3.830184024206628*^9}, {
   3.830184066217338*^9, 3.830184120975606*^9}, {3.830184347175963*^9, 
   3.830184431687904*^9}, {3.830184537974416*^9, 3.830184539566455*^9}, {
   3.830184601250697*^9, 3.830184603876727*^9}, {3.830184642254487*^9, 
   3.830184643691674*^9}, {3.8301846770999813`*^9, 3.830184827772017*^9}, {
   3.8301848806278563`*^9, 3.8301849741447906`*^9}, {3.8301850226986313`*^9, 
   3.8301852914156*^9}, {3.830185363961494*^9, 3.830185369967946*^9}, {
   3.830185556223299*^9, 3.830185607481052*^9}, {3.830185657988121*^9, 
   3.830185659112184*^9}, {3.83018571089207*^9, 3.830185733590254*^9}, {
   3.830185785298123*^9, 3.830185878101924*^9}, {3.8302284710641623`*^9, 
   3.830228479434866*^9}, {3.8302285240392227`*^9, 3.830228526723877*^9}, {
   3.830228564709156*^9, 3.830228568161343*^9}, {3.830229427903274*^9, 
   3.8302294337532988`*^9}, {3.830229465709598*^9, 3.8302294855737267`*^9}, {
   3.830229678388805*^9, 3.830229722346518*^9}, {3.8302297695518627`*^9, 
   3.830229832521763*^9}, {3.830231945990521*^9, 3.830231958276374*^9}, {
   3.8302319903278933`*^9, 3.830232130823995*^9}, {3.830232201364694*^9, 
   3.830232209774365*^9}, {3.8302322642855043`*^9, 3.830232298295127*^9}, {
   3.830232337614272*^9, 3.8302323419729443`*^9}, {3.830232477239849*^9, 
   3.8302326037276373`*^9}, {3.8302326568946238`*^9, 
   3.8302326848181143`*^9}, {3.830232733331192*^9, 3.830232742307209*^9}, {
   3.830232805644725*^9, 3.83023280583878*^9}, {3.8302328540601482`*^9, 
   3.830232862765254*^9}, {3.830232968580859*^9, 3.830232972467072*^9}, {
   3.8302330033054323`*^9, 3.8302330034850197`*^9}, {3.830233042568285*^9, 
   3.830233105119217*^9}, {3.8302331583758287`*^9, 3.830233162376422*^9}, {
   3.830233240482306*^9, 3.8302332430806313`*^9}, {3.830233386743142*^9, 
   3.830233389222437*^9}, {3.8302335777169437`*^9, 3.830233813509025*^9}, {
   3.830233856096191*^9, 3.830233876495401*^9}, {3.8302339129714003`*^9, 
   3.83023405851056*^9}, {3.830234090543694*^9, 3.830234094141282*^9}, {
   3.830234157048602*^9, 3.830234173437937*^9}, {3.830234369099432*^9, 
   3.830234369214321*^9}, {3.8302345213050947`*^9, 3.830234532268132*^9}, {
   3.830234606342547*^9, 3.830234623042231*^9}, {3.830235276080648*^9, 
   3.8302352970039062`*^9}, {3.830235417211121*^9, 3.830235780418643*^9}, {
   3.830235942348662*^9, 3.830235976520604*^9}, {3.830236016980682*^9, 
   3.83023603242264*^9}, {3.8302360872522182`*^9, 3.830236226782137*^9}, {
   3.830236466168841*^9, 3.830236505782374*^9}, {3.830236573001264*^9, 
   3.83023660304362*^9}, {3.830236638348098*^9, 3.830236673347529*^9}, {
   3.830236703395459*^9, 3.83023670565316*^9}, {3.830236757390704*^9, 
   3.830236789922193*^9}, {3.830236919885559*^9, 3.8302369335584793`*^9}, {
   3.830246754408008*^9, 3.830246774034767*^9}, {3.830250080831039*^9, 
   3.8302501468885593`*^9}, {3.830252449789536*^9, 3.830252915689843*^9}, {
   3.830252956228834*^9, 3.830253002869914*^9}, {3.8302530677385883`*^9, 
   3.830253135082979*^9}, {3.830253252517651*^9, 3.830253289166337*^9}, {
   3.830254116076591*^9, 3.830254594220354*^9}, {3.8302546359221582`*^9, 
   3.830254746402348*^9}, {3.8302549881258583`*^9, 3.830255085816882*^9}, {
   3.830255136795635*^9, 3.8302552994035587`*^9}, {3.830258170553611*^9, 
   3.830258289811735*^9}, {3.830258346534631*^9, 3.830258356042141*^9}, {
   3.8302596748049192`*^9, 3.830259677475031*^9}, {3.830259715167589*^9, 
   3.8302597159081793`*^9}, {3.830259853339705*^9, 3.830259907382433*^9}, {
   3.830260016138825*^9, 3.830260045751679*^9}, {3.830260081118663*^9, 
   3.8302604989049892`*^9}, {3.830260603193288*^9, 3.8302606968428164`*^9}, {
   3.830260730746828*^9, 3.830260917913395*^9}, {3.830261056169858*^9, 
   3.8302611086202*^9}, {3.8302611610133867`*^9, 3.83026116495534*^9}, {
   3.830261726142332*^9, 3.830261857138732*^9}, {3.830261887684032*^9, 
   3.830261963345866*^9}, {3.8302619952237463`*^9, 3.830262117085108*^9}, {
   3.830262147762429*^9, 3.830262263913939*^9}, {3.83026263729569*^9, 
   3.830262681851386*^9}, {3.830262801207718*^9, 3.830263065024996*^9}, {
   3.830263624485078*^9, 3.830263735770193*^9}, {3.830263780762273*^9, 
   3.830263898527*^9}, {3.830263976810217*^9, 3.830263977069066*^9}, {
   3.8302640701636133`*^9, 3.830264285859549*^9}, {3.830264392976071*^9, 
   3.830264398141624*^9}, {3.8302644712922277`*^9, 3.8302645751287527`*^9}, {
   3.830264836638517*^9, 3.8302649633075027`*^9}, {3.830265307037335*^9, 
   3.830265310874773*^9}, {3.830339736408646*^9, 3.830339752100778*^9}, {
   3.830339797193221*^9, 3.830339863957349*^9}, {3.83033989764884*^9, 
   3.830339933733449*^9}, {3.830342360021776*^9, 3.830342364460782*^9}, {
   3.8303429671755466`*^9, 3.830342967722505*^9}},
 CellLabel->
  "In[855]:=",ExpressionUUID->"7d260a63-9de2-47a9-9cab-505ba266263a"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"funzioni", " ", "interne"}], " ", "*)"}], "\n", "\n", 
  RowBox[{"(*", "\n", "\t", 
   RowBox[{
    RowBox[{
     RowBox[{"VerifyBase", "[", 
      RowBox[{"num_", ",", " ", "base_"}], "]"}], " ", "\n", "\t", "La", " ", 
     "funzione", " ", "ritorna", " ", "True", " ", "se", " ", "il", " ", 
     RowBox[{"valore", " ", "'"}], 
     RowBox[{"num", "'"}], " ", "\[EGrave]", " ", "esprimibile", " ", "in", 
     " ", 
     RowBox[{"base", " ", "'"}], 
     RowBox[{"base", "'"}]}], ",", " ", 
    RowBox[{"False", " ", "altrimenti", "\n", "\t", 
     RowBox[{"num_", " ", ":", " ", 
      RowBox[{
      "Valore", " ", "di", " ", "input", " ", "da", " ", "convertire", " ", 
       "\n", "\t", "base_"}], " ", ":", " ", 
      RowBox[{
      "base", " ", "di", " ", "input", " ", "in", " ", "cui", " ", 
       "verificare", " ", "se", " ", "il", " ", "valore", " ", "di", " ", 
       "input", " ", "sia", " ", "esprimibile", " ", "o", " ", "meno"}]}]}]}],
    "\n", "*)"}], "\n", "\n", 
  RowBox[{
   RowBox[{
    RowBox[{"VerifyBase", "[", 
     RowBox[{"num_", ",", " ", "base_"}], "]"}], " ", ":=", 
    "\[IndentingNewLine]", "\t", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
       "listChars", ",", "listNum", ",", " ", "symb", ",", " ", "max", ",", 
        " ", "i", ",", " ", "j"}], "}"}], ",", "\[IndentingNewLine]", "\t", 
      RowBox[{
       RowBox[{"symb", " ", "=", " ", 
        RowBox[{"Join", "[", 
         RowBox[{
          RowBox[{"CharacterRange", "[", 
           RowBox[{"\"\<0\>\"", ",", "\"\<9\>\""}], "]"}], ",", " ", 
          RowBox[{"ToUpperCase", "[", 
           RowBox[{"CharacterRange", "[", 
            RowBox[{"\"\<a\>\"", ",", "\"\<z\>\""}], "]"}], "]"}], ",", " ", 
          RowBox[{"ToLowerCase", "[", 
           RowBox[{"CharacterRange", "[", 
            RowBox[{"\"\<a\>\"", ",", "\"\<z\>\""}], "]"}], "]"}]}], "]"}]}], 
       ";", " ", 
       RowBox[{"(*", " ", 
        RowBox[{"vettore", " ", "dei", " ", "simboli"}], " ", "*)"}], 
       "\[IndentingNewLine]", "\t", 
       RowBox[{"listChars", " ", "=", " ", 
        RowBox[{"DeleteCases", "[", 
         RowBox[{
          RowBox[{"Characters", "[", 
           RowBox[{"ToString", "[", "num", "]"}], "]"}], ",", " ", 
          "\"\< \>\""}], "]"}]}], ";", " ", 
       RowBox[{"(*", " ", 
        RowBox[{
        "trasformiamo", " ", "il", " ", "numero", " ", "di", " ", "input", 
         " ", "in", " ", "una", " ", "lista", " ", "di", " ", "caratteri", 
         " ", "ignorando", " ", "i", " ", "whitespace"}], " ", "*)"}], 
       "\[IndentingNewLine]", "\t", 
       RowBox[{"listNum", " ", "=", " ", 
        RowBox[{"Range", "[", 
         RowBox[{"0", ",", "62"}], "]"}]}], ";", " ", 
       RowBox[{"(*", " ", 
        RowBox[{
        "indici", " ", "del", " ", "vettore", " ", "dei", " ", "simboli"}], 
        " ", "*)"}], "\[IndentingNewLine]", "\t", 
       RowBox[{"max", " ", "=", " ", "base"}], ";", " ", 
       RowBox[{"(*", " ", 
        RowBox[{
        "il", " ", "valore", " ", "della", " ", "base", " ", "identifica", 
         " ", "il", " ", "valore", " ", "massimo", " ", "che", " ", "non", 
         " ", "pu\[OGrave]", " ", "essere", " ", "uguagliato", " ", "o", " ", 
         "superato", " ", "da", " ", "ogni", " ", 
         RowBox[{"cifra", "/", "lettera"}], " ", "della", " ", "base"}], " ", 
        "*)"}], "\n", "\t", 
       RowBox[{"(*", " ", 
        RowBox[{
        "controllo", " ", "della", " ", "lista", " ", "dei", " ", "caratteri",
          " ", "andando", " ", "a", " ", "verificare", " ", "che", " ", 
         "contenga", " ", "solo", " ", "caratteri", " ", "alfanumerici"}], 
        " ", "*)"}], "\[IndentingNewLine]", "\t", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"ContainsAll", "[", 
          RowBox[{"symb", ",", " ", "listChars"}], "]"}], ",", " ", 
         "\[IndentingNewLine]", "\t\t\t", 
         RowBox[{"(*", " ", 
          RowBox[{
          "verifichiamo", " ", "la", " ", "base", " ", "se", " ", "sia", " ", 
           "minore", " ", "o", " ", "uguale", " ", "a", " ", "10", " ", "o", 
           " ", "maggiore", " ", "cosi", " ", "da", " ", "gestire", " ", 
           "solamente", " ", "cifre", " ", "o", " ", "tutti", " ", "i", " ", 
           "caratteri", " ", "alfanumerici"}], " ", "*)"}], 
         "\[IndentingNewLine]", "\t         ", 
         RowBox[{
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"base", " ", "\[LessEqual]", " ", "10"}], ",", 
            "\[IndentingNewLine]", "\t\t\t", 
            RowBox[{"(*", " ", 
             RowBox[{
             "caso", " ", "in", " ", "cui", " ", "la", " ", "base", " ", 
              "\[EGrave]", " ", "numerica"}], " ", "*)"}], "\n", "\t\t\t", 
            RowBox[{"(*", " ", 
             RowBox[{
             "andiamo", " ", "a", " ", "verificare", " ", "che", " ", "le", 
              " ", "cifre", " ", "del", " ", "numero", " ", "siano", " ", 
              "idonee", " ", "per", " ", "la", " ", "base", " ", "di", " ", 
              "input"}], " ", "*)"}], "\[IndentingNewLine]", "\t\t\t", 
            RowBox[{
             RowBox[{"For", "[", 
              RowBox[{
               RowBox[{"i", " ", "=", " ", "1"}], ",", " ", 
               RowBox[{"i", " ", "<=", " ", 
                RowBox[{"Length", "[", "listChars", "]"}]}], ",", " ", 
               RowBox[{"i", "++"}], ",", " ", "\[IndentingNewLine]", 
               "\t\t\t\t", 
               RowBox[{
                RowBox[{"If", "[", " ", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"DigitQ", "[", 
                    RowBox[{"listChars", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], "]"}], "&&", " ", 
                   RowBox[{
                    RowBox[{"FromDigits", "[", 
                    RowBox[{"listChars", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], "]"}], " ", "<", " ", 
                    "max"}]}], ",", "\[IndentingNewLine]", "\t\t\t\t", 
                  RowBox[{"(*", " ", 
                   RowBox[{
                    RowBox[{"esito", " ", "positivo"}], ",", " ", 
                    RowBox[{
                    "si", " ", "passa", " ", "al", " ", "prossimo", " ", 
                    "termine"}]}], " ", "*)"}], "\[IndentingNewLine]", 
                  "\t\t\t\t", ",", " ", "\[IndentingNewLine]", "\t\t\t\t", 
                  RowBox[{"(*", " ", 
                   RowBox[{
                    RowBox[{"esito", " ", "negativo"}], ",", " ", 
                    RowBox[{"si", " ", "ritorna", " ", "False"}]}], " ", 
                   "*)"}], "\[IndentingNewLine]", "\t\t\t\t", 
                  RowBox[{
                   RowBox[{"Return", "[", "False", "]"}], ";"}]}], " ", 
                 "\[IndentingNewLine]", "\t\t\t\t", "]"}], ";"}]}], 
              "\[IndentingNewLine]", "\t\t\t", "]"}], ";", 
             "\[IndentingNewLine]", "\t\t\t", 
             RowBox[{"(*", " ", 
              RowBox[{
               RowBox[{
               "tutte", " ", "le", " ", "cifre", " ", "rispettano", " ", "il",
                 " ", "valore", " ", "massimo", " ", "della", " ", "base"}], 
               ",", " ", 
               RowBox[{
               "quindi", " ", "il", " ", "valore", " ", "\[EGrave]", " ", 
                "esprimibile", " ", "in", " ", 
                RowBox[{"base", " ", "'"}], 
                RowBox[{"base", "'"}]}], ",", " ", 
               RowBox[{"possiamo", " ", "tornare", " ", "True"}]}], " ", 
              "*)"}], "\[IndentingNewLine]", "\t\t\t", 
             RowBox[{"Return", "[", "True", "]"}], ";"}], 
            "\[IndentingNewLine]", "\t\t\t", ",", "\[IndentingNewLine]", 
            "\t\t\t", 
            RowBox[{"(*", " ", 
             RowBox[{
              RowBox[{
              "nel", " ", "caso", " ", "in", " ", "cui", " ", "la", " ", 
               "base", " ", "sia", " ", "maggiore", " ", "di", " ", "10"}], 
              ",", " ", 
              RowBox[{
              "dobbiamo", " ", "considerare", " ", "i", " ", "caratteri", " ",
                "alfanumerici"}]}], " ", "*)"}], "\n", "\t\t\t", 
            RowBox[{"(*", " ", 
             RowBox[{
             "per", " ", "prima", " ", "cosa", " ", "andiamo", " ", "a", " ", 
              "convertire", " ", "i", " ", "caratteri", " ", "nel", " ", 
              "loro", " ", "valore", " ", "numerico"}], " ", "*)"}], 
            "\[IndentingNewLine]", "\t\t\t", 
            RowBox[{
             RowBox[{"For", "[", 
              RowBox[{
               RowBox[{"i", " ", "=", " ", "1"}], ",", " ", 
               RowBox[{"i", " ", "<=", " ", 
                RowBox[{"Length", "[", "listChars", "]"}]}], ",", " ", 
               RowBox[{"i", "++"}], ",", " ", "\[IndentingNewLine]", 
               "\t\t\t\t", 
               RowBox[{
                RowBox[{"For", "[", 
                 RowBox[{
                  RowBox[{"j", " ", "=", " ", "1"}], ",", " ", 
                  RowBox[{"j", " ", "\[LessEqual]", " ", 
                   RowBox[{"Length", "[", "symb", "]"}]}], ",", " ", 
                  RowBox[{"j", "++"}], " ", ",", "\[IndentingNewLine]", 
                  "\t\t\t\t\t", 
                  RowBox[{
                   RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"symb", "[", 
                    RowBox[{"[", "j", "]"}], "]"}], "\[Equal]", " ", 
                    RowBox[{"listChars", "[", 
                    RowBox[{"[", "i", "]"}], "]"}]}], ",", " ", 
                    "\[IndentingNewLine]", "\t\t\t\t     ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    RowBox[{"Trovato", " ", 
                    RowBox[{"l", "'"}], "elemento", " ", "nel", " ", 
                    "vettore", " ", "dei", " ", "simboli", " ", "\n", 
                    "\t\t\t\t     ", "corrispondente", " ", "alla", " ", 
                    "lettera", " ", "presa", " ", "in", " ", 
                    "considerazione"}], ",", " ", 
                    RowBox[{
                    "andiamo", " ", "a", " ", "sostituirla", " ", "con", " ", 
                    "il", " ", "suo", " ", "\n", "\t\t\t\t     ", "valore", 
                    " ", "numerico"}]}], " ", "*)"}], "\[IndentingNewLine]", 
                    "\t\t\t\t\t", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"listChars", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], " ", "=", " ", 
                    RowBox[{"j", " ", "-", " ", "1"}]}], ";"}], " ", 
                    "\[IndentingNewLine]", "\t\t\t\t\t", ",", " ", 
                    "\[IndentingNewLine]", "\t\t\t\t\t", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    "altrimenti", " ", "scorriamo", " ", "al", " ", 
                    "prossimo", " ", "carattere", " ", "del", " ", "vettore", 
                    " ", "dei", " ", "simboli"}], " ", "*)"}], 
                    "\[IndentingNewLine]", "\t\t\t\t\t", 
                    RowBox[{
                    RowBox[{"listChars", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], ";"}]}], 
                    "\[IndentingNewLine]", "\t\t\t\t\t", "]"}], ";"}]}], 
                 "\[IndentingNewLine]", "\t\t\t\t", "]"}], ";"}]}], 
              "\[IndentingNewLine]", "\t\t\t", "]"}], ";", 
             "\[IndentingNewLine]", "\t\t\t", 
             RowBox[{"For", "[", 
              RowBox[{
               RowBox[{"i", " ", "=", " ", "1"}], ",", " ", 
               RowBox[{"i", " ", "<=", " ", 
                RowBox[{"Length", "[", "listChars", "]"}]}], ",", " ", 
               RowBox[{"i", "++"}], ",", " ", "\[IndentingNewLine]", 
               "\t\t\t\t", 
               RowBox[{
                RowBox[{"If", "[", " ", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"listChars", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], "<", " ", "max"}], ",", 
                  "\[IndentingNewLine]", "\t\t\t\t", 
                  RowBox[{"(*", " ", 
                   RowBox[{
                    RowBox[{"esito", " ", "positivo"}], ",", " ", 
                    RowBox[{
                    "si", " ", "passa", " ", "al", " ", "prossimo", " ", 
                    "termine"}]}], " ", "*)"}], "\[IndentingNewLine]", 
                  "\t\t\t\t", ",", " ", "\[IndentingNewLine]", "\t\t\t\t", 
                  RowBox[{"(*", " ", 
                   RowBox[{
                    RowBox[{"esito", " ", "negativo"}], ",", " ", 
                    RowBox[{"si", " ", "ritorna", " ", "False"}]}], " ", 
                   "*)"}], "\[IndentingNewLine]", "\t\t\t\t", 
                  RowBox[{
                   RowBox[{"Return", "[", "False", "]"}], ";"}]}], " ", 
                 "\[IndentingNewLine]", "\t\t\t\t", "]"}], ";"}]}], 
              "\[IndentingNewLine]", "\t\t\t", "]"}], ";", 
             "\[IndentingNewLine]", "\t\t\t", 
             RowBox[{"(*", " ", 
              RowBox[{
              "il", " ", "valore", " ", "\[EGrave]", " ", "esprimibile", " ", 
               "nella", " ", "base", " ", "data", " ", "in", " ", "input"}], 
              " ", "*)"}], "\[IndentingNewLine]", "\t\t\t", 
             RowBox[{"Return", "[", "True", "]"}], ";"}]}], 
           "\[IndentingNewLine]", "\t\t\t", "\[IndentingNewLine]", "\t\t", 
           "]"}], ";"}], "\[IndentingNewLine]", "\t\t", ",", " ", 
         "\[IndentingNewLine]", "\t\t\t", 
         RowBox[{"(*", " ", 
          RowBox[{"errore", " ", "di", " ", "formattazione"}], " ", "*)"}], 
         "\[IndentingNewLine]", "\t\t", 
         RowBox[{
          RowBox[{"Return", "[", "False", "]"}], ";"}]}], "\t\t\t", 
        "\[IndentingNewLine]", "]"}], ";"}]}], "\[IndentingNewLine]", "]"}]}],
    "\n", "\n", "\n", 
   RowBox[{"(*", " ", 
    RowBox[{"Display", " ", "output", " ", "functions"}], " ", "*)"}], "\n", 
   RowBox[{"(*", "\n", "\t", 
    RowBox[{
     RowBox[{"DisplayConvert10ToN", "[", 
      RowBox[{"valueNum_", ",", " ", "outputBase_"}], "]"}], "\n", "\t", "La",
      " ", "funzione", " ", "converte", " ", "il", " ", 
     RowBox[{"valore", " ", "'"}], 
     RowBox[{"valueNum", "'"}], " ", "che", " ", "\[EGrave]", " ", "espresso",
      " ", "in", " ", "base", " ", "10", " ", "alla", " ", "base", " ", 
     "espressa", " ", 
     RowBox[{"da", " ", "'"}], 
     RowBox[{"outputBase", "'"}], " ", "andando", " ", "a", " ", "ritornare", 
     " ", "la", " ", "procedura", " ", "con", " ", "i", " ", "risultati", " ", 
     RowBox[{"annessi", ".", "\n", "\t", 
      RowBox[{"valueNum_", " ", ":", " ", 
       RowBox[{
       "Valore", " ", "in", " ", "base", " ", "10", " ", "che", " ", 
        "bisogna", " ", "convertire", " ", "composta", " ", "da", " ", "una", 
        " ", "stringa", " ", "numerica", "\n", "\t", "outputBase_"}], " ", 
       ":", " ", 
       RowBox[{
       "Base", " ", "di", " ", "output", " ", "espressa", " ", "come", " ", 
        "intero", " ", "tra", " ", "2", " ", "e", " ", "62"}]}]}]}], "\n", 
    "\t", "\n", "*)"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"DisplayConverter10ToN", "[", 
      RowBox[{"valueNum_", ",", " ", "outputBase_"}], "]"}], " ", ":=", " ", 
     "\n", "   ", 
     RowBox[{"(*", " ", 
      RowBox[{"Print", " ", "process", " ", "10", " ", "to", " ", "N"}], " ", 
      "*)"}], "\n", "   ", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
        "val", ",", " ", "out", ",", " ", "res", ",", " ", "rest", ",", " ", 
         "result", ",", " ", "strLine", ",", " ", "restComp", ",", " ", 
         "listLet", ",", " ", "digits", ",", " ", "i"}], "}"}], ",", "\n", 
       "     ", 
       RowBox[{"(*", " ", 
        RowBox[{"Controllo", " ", "di", " ", "input"}], " ", "*)"}], "\n", 
       "     ", 
       RowBox[{
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"VerifyBase", "[", 
           RowBox[{"valueNum", ",", " ", "10"}], "]"}], ",", " ", "\n", 
          "       ", 
          RowBox[{
           RowBox[{"val", " ", "=", " ", 
            RowBox[{"FromDigits", "[", "valueNum", "]"}]}], ";", "\n", 
           "       ", 
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{
              RowBox[{
               RowBox[{"FromDigits", "[", "valueNum", "]"}], " ", ">", " ", 
               "10000"}], " ", "||", " ", 
              RowBox[{"!", 
               RowBox[{"IntegerQ", "[", "outputBase", "]"}]}], " ", "||", " ", 
              RowBox[{
               RowBox[{"FromDigits", "[", "valueNum", "]"}], " ", "<", " ", 
               "0"}], " ", "||", " ", 
              RowBox[{"outputBase", " ", "<", " ", "0"}], " ", "||", " ", 
              RowBox[{"outputBase", " ", ">", " ", "62"}]}], ",", "\n", 
             "\t\t   ", 
             RowBox[{
              RowBox[{
              "Return", "[", 
               "\"\<Il numero deve essere un intero positivo compreso tra 0 e \
10.000 (espresso in base 10), le basi devono essere interi tra 2 e 62 e il \
numero deve essere in base 10\>\"", "]"}], ";"}], "\n", "\t\t   ", ",", "\n", 
             "\t\t   ", 
             RowBox[{
              RowBox[{"out", " ", "=", " ", "outputBase"}], ";", "\n", 
              "\t\t   ", 
              RowBox[{"res", " ", "=", " ", 
               RowBox[{"-", "1"}]}], ";", "\n", "\t\t   ", 
              RowBox[{"restComp", " ", "=", " ", 
               RowBox[{"{", "}"}]}], ";", "\n", "\t\t   ", 
              RowBox[{"digits", " ", "=", " ", 
               RowBox[{"Range", "[", 
                RowBox[{"0", ",", "9"}], "]"}]}], ";", "\n", "\t\t   ", 
              RowBox[{"listLet", " ", "=", " ", 
               RowBox[{"Join", "[", 
                RowBox[{"digits", ",", 
                 RowBox[{"ToUpperCase", "[", 
                  RowBox[{"CharacterRange", "[", 
                   RowBox[{"\"\<a\>\"", ",", "\"\<z\>\""}], "]"}], "]"}], ",",
                  " ", 
                 RowBox[{"ToLowerCase", "[", 
                  RowBox[{"CharacterRange", "[", 
                   RowBox[{"\"\<a\>\"", ",", "\"\<z\>\""}], "]"}], "]"}]}], 
                "]"}]}], ";", "\n", "\t\t   ", 
              RowBox[{"result", " ", "=", " ", 
               RowBox[{"{", "}"}]}], ";", "\n", "\t\t   ", "\n", "\t\t   ", 
              RowBox[{"(*", " ", 
               RowBox[{
               "Procedura", " ", "di", " ", "generazione", " ", "dei", " ", 
                "resti", " ", "data", " ", "dalle", " ", "operazioni", " ", 
                "intermedie", " ", "con", " ", "generazione", " ", "di", " ", 
                "stringa", " ", "di", " ", "output", " ", 
                RowBox[{"in", " ", "'"}], 
                RowBox[{"result", "'"}]}], " ", "*)"}], "\n", "\t\t    ", 
              RowBox[{"While", "[", 
               RowBox[{
                RowBox[{"res", " ", "\[NotEqual]", " ", "0"}], ",", "  ", 
                "\n", "\t\t       ", 
                RowBox[{
                 RowBox[{"res", " ", "=", " ", 
                  RowBox[{"Quotient", "[", 
                   RowBox[{"val", ",", " ", "out"}], "]"}]}], ";", "\n", 
                 "\t\t       ", 
                 RowBox[{"rest", " ", "=", " ", 
                  RowBox[{
                   RowBox[{"Mod", "[", 
                    RowBox[{"val", ",", "out"}], "]"}], " ", "+", " ", 
                   "1"}]}], ";", " ", 
                 RowBox[{"(*", " ", 
                  RowBox[{
                  "Indice", " ", "del", " ", "vettore", " ", "dei", " ", 
                   "simboli", " ", "da", " ", "1", " ", "a", " ", "N"}], " ", 
                  "*)"}], "\n", "\t\t       ", 
                 RowBox[{"AppendTo", "[", 
                  RowBox[{"restComp", ",", 
                   RowBox[{"ToString", "[", 
                    RowBox[{"Part", "[", 
                    RowBox[{"listLet", ",", " ", "rest"}], "]"}], "]"}]}], 
                  "]"}], ";", " ", 
                 RowBox[{"(*", " ", 
                  RowBox[{
                  "valore", " ", "del", " ", "resto", " ", "per", " ", "la", 
                   " ", "divisione", " ", "corrente"}], " ", "*)"}], "\n", 
                 "\t\t       ", 
                 RowBox[{"strLine", " ", "=", " ", 
                  RowBox[{
                   RowBox[{"ToString", "[", "val", "]"}], " ", "<>", " ", 
                   "\"\< / \>\"", " ", "<>", " ", 
                   RowBox[{"ToString", "[", "out", "]"}], " ", "<>", " ", 
                   "\"\< = \>\"", " ", "<>", " ", 
                   RowBox[{"ToString", "[", "res", "]"}], " ", "<>", " ", 
                   "\"\< R \>\"", " ", "<>", " ", 
                   RowBox[{"ToString", "[", 
                    RowBox[{"Mod", "[", 
                    RowBox[{"val", ",", "out"}], "]"}], "]"}], " ", "<>", 
                   " ", "\"\< = \>\"", " ", "<>", " ", 
                   RowBox[{"ToString", "[", 
                    RowBox[{"Part", "[", 
                    RowBox[{"listLet", ",", " ", "rest"}], "]"}], "]"}]}]}], 
                 ";", "\n", "\t\t       ", 
                 RowBox[{"AppendTo", "[", 
                  RowBox[{"result", ",", " ", "strLine"}], "]"}], ";", "\n", 
                 "\t\t       ", 
                 RowBox[{"AppendTo", "[", 
                  RowBox[{"result", ",", " ", "\"\<----------------\>\""}], 
                  "]"}], ";", "\n", "\t\t       ", 
                 RowBox[{"val", " ", "=", " ", "res"}], ";"}]}], " ", "\n", 
               "\t\t   ", "]"}], ";", "\n", "\t\t   ", 
              RowBox[{"(*", " ", 
               RowBox[{"Appending", " ", "del", " ", "risultato"}], " ", 
               "*)"}], "\n", "\t\t   ", 
              RowBox[{"AppendTo", "[", 
               RowBox[{"result", ",", " ", 
                RowBox[{"StringJoin", "[", 
                 RowBox[{"\"\<Il risultato \[EGrave]: \>\"", ",", " ", 
                  RowBox[{"Reverse", "[", "restComp", "]"}]}], "]"}]}], "]"}],
               ";", "\n", "\t\t   ", 
              RowBox[{"(*", " ", 
               RowBox[{
               "Ritorno", " ", "della", " ", "stringa", " ", "di", " ", 
                "output"}], " ", "*)"}], "\n", "            ", 
              RowBox[{"Return", "[", 
               RowBox[{"Column", "[", "result", "]"}], "]"}], ";"}]}], 
            "\[IndentingNewLine]", "\t\t    ", "]"}], ";"}], "\n", "\t\t", 
          ",", "\n", "\t\t   ", 
          RowBox[{"(*", " ", 
           RowBox[{
           "Nel", " ", "caso", " ", "in", " ", "cui", " ", "il", " ", 
            "valore", " ", "di", " ", "input", " ", "non", " ", "sia", " ", 
            "compatibile", " ", "con", " ", "la", " ", "base", " ", "10"}], 
           " ", "*)"}], "\n", "\t\t   ", 
          RowBox[{
           RowBox[{
           "Return", "[", 
            "\"\<Compatible Error: Valore in input non esprimibile nella base \
iniziale o le basi non sono interi tra 2 e 62\>\"", "]"}], ";"}]}], "\n", 
         "\t\t", "]"}], ";"}]}], "\n", "                 ", 
      "\[IndentingNewLine]", "]"}]}], ";"}], "\n", "\n", 
   RowBox[{"(*", "\n", "\t", 
    RowBox[{
     RowBox[{"DisplayConverterNTo10", "[", 
      RowBox[{"num_", ",", " ", "base_"}], "]"}], "\n", "\t", "La", " ", 
     "funzione", " ", "converte", " ", "il", " ", 
     RowBox[{"valore", " ", "'"}], 
     RowBox[{"num", "'"}], " ", "dalla", " ", 
     RowBox[{"base", " ", "'"}], 
     RowBox[{"base", "'"}], " ", "alla", " ", "base", " ", "10", " ", 
     "andando", " ", "a", " ", "ritornare", " ", "la", " ", "procedura", " ", 
     "insieme", " ", "ai", " ", "risultati", " ", 
     RowBox[{"annessi", ".", "\n", "\t", 
      RowBox[{"num_", " ", ":", " ", 
       RowBox[{
       "Valore", " ", "alfanumerico", " ", "da", " ", "convertire", "\n", 
        "\t", "base_"}], " ", ":", " ", 
       RowBox[{
       "base", " ", "di", " ", "input", " ", "in", " ", "cui", " ", 
        "partire"}]}]}]}], "\n", "*)"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"DisplayConverterNTo10", "[", 
      RowBox[{"num_", ",", " ", "base_"}], "]"}], ":=", "\n", "   ", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
        "listChars", ",", " ", "listNum", ",", " ", "symb", ",", " ", 
         "expPos", ",", " ", "result", ",", " ", "i", ",", " ", "j", ",", " ",
          "resultInt", ",", " ", "size"}], "}"}], ",", " ", 
       "\[IndentingNewLine]", "       ", 
       RowBox[{
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"IntegerQ", "[", "base", "]"}], " ", "&&", " ", 
           RowBox[{"VerifyBase", "[", 
            RowBox[{"num", ",", " ", "base"}], "]"}], "&&", 
           RowBox[{"base", "\[GreaterEqual]", "2"}], "&&", 
           RowBox[{"base", "\[LessEqual]", "62"}]}], ",", " ", 
          RowBox[{"(*", " ", 
           RowBox[{
           "controllo", " ", "sulle", " ", "basi", " ", "e", " ", "la", " ", 
            "compatibilit\[AGrave]", " ", "del", " ", "valore"}], " ", "*)"}],
           "\[IndentingNewLine]", "        ", 
          RowBox[{
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{"base", " ", "\[LessEqual]", " ", "10"}], ",", " ", 
             RowBox[{"(*", " ", 
              RowBox[{
              "bel", " ", "caso", " ", "sia", " ", "una", " ", "base", " ", 
               "minore", " ", "di", " ", "10"}], " ", "*)"}], 
             "\[IndentingNewLine]", "         ", 
             RowBox[{
              RowBox[{"listChars", " ", "=", " ", 
               RowBox[{"IntegerDigits", "[", 
                RowBox[{"num", ",", " ", "base"}], "]"}]}], ";", 
              RowBox[{"(*", " ", 
               RowBox[{
                RowBox[{
                "Poich\[EGrave]", " ", "VerifyBase", " ", "\[EGrave]", " ", 
                 "True"}], ",", " ", 
                RowBox[{
                "possiamo", " ", "essere", " ", "sicuri", " ", "che", " ", 
                 "la", " ", "stringa", " ", "abbia", " ", "solo", " ", 
                 "caratteri", " ", "numerici"}]}], " ", "*)"}], "\n", 
              "          ", 
              RowBox[{"size", " ", "=", " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"Length", "[", "listChars", "]"}], "-", "1"}], 
                ")"}]}], ";", " ", 
              RowBox[{"(*", " ", 
               RowBox[{
               "size", " ", "\[EGrave]", " ", "la", " ", "dimensione", " ", 
                "massima", " ", "della", " ", "lista", " ", "dei", " ", 
                "caratteri", " ", "del", " ", "valore", " ", "di", " ", 
                "input"}], " ", "*)"}], "\n", "          ", 
              RowBox[{"expPos", " ", "=", " ", 
               RowBox[{"Reverse", "[", 
                RowBox[{"Range", "[", 
                 RowBox[{"0", ",", " ", "size"}], "]"}], "]"}]}], ";", " ", 
              RowBox[{"(*", " ", 
               RowBox[{
               "rappresenta", " ", "la", " ", "posizione", " ", "degli", " ", 
                "esponenti", " ", "per", " ", "la", " ", "generazione", " ", 
                RowBox[{"dell", "'"}], "espressione", " ", "della", " ", 
                "conversione"}], " ", "*)"}], "\n", "          ", 
              RowBox[{"result", " ", "=", " ", 
               RowBox[{"{", "}"}]}], ";", " ", 
              RowBox[{"(*", " ", 
               RowBox[{
               "lista", " ", "delle", " ", "stringhe", " ", "data", " ", "in",
                 " ", "output"}], " ", "*)"}], "\n", "         ", 
              RowBox[{"(*", " ", 
               RowBox[{"Formattazione", " ", 
                RowBox[{"dell", "'"}], "espressione", " ", "di", " ", 
                "conversione"}], " ", "*)"}], "\n", "          ", 
              RowBox[{"For", "[", 
               RowBox[{
                RowBox[{"i", " ", "=", " ", "1"}], ",", " ", 
                RowBox[{"i", " ", "<=", " ", "size"}], ",", " ", 
                RowBox[{"i", "++"}], ",", " ", "\n", "             ", 
                RowBox[{
                 RowBox[{"AppendTo", "[", 
                  RowBox[{"result", ",", " ", 
                   RowBox[{
                    RowBox[{"ToString", "[", 
                    RowBox[{"listChars", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], "]"}], " ", "<>", " ", 
                    "\"\< x \>\"", " ", "<>", " ", 
                    RowBox[{"ToString", "[", "base", "]"}], " ", "<>", " ", 
                    "\"\<^\>\"", " ", "<>", " ", 
                    RowBox[{"ToString", "[", 
                    RowBox[{"size", " ", "-", "i", " ", "+", " ", "1"}], 
                    "]"}], " ", "<>", " ", "\"\< + \>\""}]}], "]"}], ";"}]}], 
               "                  ", "\n", "              ", "]"}], ";", "\n",
               "             ", 
              RowBox[{"AppendTo", "[", 
               RowBox[{"result", ",", " ", 
                RowBox[{
                 RowBox[{"ToString", "[", 
                  RowBox[{"listChars", "[", 
                   RowBox[{"[", 
                    RowBox[{"size", " ", "+", " ", "1"}], "]"}], "]"}], "]"}],
                  " ", "<>", " ", "\"\< x \>\"", " ", "<>", " ", 
                 RowBox[{"ToString", "[", "base", "]"}], " ", "<>", " ", 
                 "\"\<^\>\"", " ", "<>", " ", 
                 RowBox[{"ToString", "[", "0", "]"}]}]}], "]"}], ";", "\n", 
              "     ", "\n", "             ", 
              RowBox[{"resultInt", " ", "=", " ", 
               RowBox[{"FromDigits", "[", 
                RowBox[{
                 RowBox[{"ToString", "[", "num", "]"}], ",", " ", "base"}], 
                "]"}]}], ";", " ", 
              RowBox[{"(*", " ", 
               RowBox[{
               "il", " ", "risultato", " ", "\[EGrave]", " ", "in", " ", 
                "resultInt"}], " ", "*)"}], "\n", "             ", 
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"resultInt", " ", ">", " ", "10000"}], " ", "||", 
                 " ", 
                 RowBox[{"resultInt", " ", "<", " ", "0"}]}], ",", " ", "\n", 
                "                ", 
                RowBox[{
                 RowBox[{
                 "Return", "[", 
                  "\"\<Il numero deve essere un intero tra 0 e 10.000 in base \
10 per essere valido\>\"", "]"}], ";"}], "\n", "\t\t       ", ",", "\n", 
                "\t\t        ", 
                RowBox[{"(*", " ", 
                 RowBox[{
                 "Se", " ", "il", " ", "valore", " ", "\[EGrave]", " ", "tra",
                   " ", "0", " ", "e", " ", "10000"}], " ", "*)"}], "\n", 
                "                ", 
                RowBox[{
                 RowBox[{"AppendTo", "[", 
                  RowBox[{"result", ",", " ", 
                   RowBox[{"\"\< = \>\"", " ", "<>", " ", 
                    RowBox[{"ToString", "[", "resultInt", "]"}]}]}], "]"}], 
                 ";", "\n", "                ", 
                 RowBox[{"Return", "[", 
                  RowBox[{"Row", "[", "result", "]"}], "]"}], ";"}]}], "\n", 
               "              ", "]"}], ";"}], "\[IndentingNewLine]", 
             "         ", ",", " ", 
             RowBox[{"(*", " ", 
              RowBox[{
               RowBox[{"else", " ", "di", " ", "base"}], " ", "\[LessEqual]", 
               "10"}], " ", "*)"}], "\[IndentingNewLine]", "\t\t", 
             RowBox[{"(*", " ", 
              RowBox[{
              "La", " ", "base", " ", "\[EGrave]", " ", "di", " ", "tipo", 
               " ", "alfanumerico", " ", 
               RowBox[{"(", 
                RowBox[{"superiore", " ", "a", " ", "10"}], ")"}]}], " ", 
              "*)"}], "\[IndentingNewLine]", "              ", 
             RowBox[{
              RowBox[{"listChars", " ", "=", " ", 
               RowBox[{"DeleteCases", "[", 
                RowBox[{
                 RowBox[{"Characters", "[", 
                  RowBox[{"ToString", "[", "num", "]"}], "]"}], ",", " ", 
                 "\"\< \>\""}], "]"}]}], ";", " ", 
              RowBox[{"(*", " ", 
               RowBox[{
               "creiamo", " ", "la", " ", "lista", " ", "dei", " ", 
                "caratteri", " ", "ignorando", " ", "gli", " ", "spazi"}], 
               " ", "*)"}], "\n", "               ", 
              RowBox[{"listNum", " ", "=", " ", 
               RowBox[{"Range", "[", 
                RowBox[{"0", ",", "62"}], "]"}]}], ";", " ", 
              RowBox[{"(*", " ", 
               RowBox[{
               "indici", " ", "del", " ", "vettore", " ", "dei", " ", 
                "simboli"}], " ", "*)"}], "\n", "               ", 
              RowBox[{"symb", " ", "=", " ", 
               RowBox[{"Join", "[", 
                RowBox[{
                 RowBox[{"CharacterRange", "[", 
                  RowBox[{"\"\<0\>\"", ",", "\"\<9\>\""}], "]"}], ",", " ", 
                 RowBox[{"ToUpperCase", "[", 
                  RowBox[{"CharacterRange", "[", 
                   RowBox[{"\"\<a\>\"", ",", "\"\<z\>\""}], "]"}], "]"}], ",",
                  " ", 
                 RowBox[{"ToLowerCase", "[", 
                  RowBox[{"CharacterRange", "[", 
                   RowBox[{"\"\<a\>\"", ",", "\"\<z\>\""}], "]"}], "]"}]}], 
                "]"}]}], ";", " ", 
              RowBox[{"(*", " ", 
               RowBox[{"vettore", " ", "dei", " ", "simboli"}], " ", "*)"}], 
              "\n", "           ", 
              RowBox[{"(*", " ", 
               RowBox[{
               "Processo", " ", "di", " ", "conversione", " ", "da", " ", 
                "lettere", " ", "a", " ", "valori", " ", "numerici"}], "  ", 
               "*)"}], "\[IndentingNewLine]", "\t       ", 
              RowBox[{"For", "[", 
               RowBox[{
                RowBox[{"i", " ", "=", " ", "1"}], ",", " ", 
                RowBox[{"i", " ", "<=", " ", 
                 RowBox[{"Length", "[", "listChars", "]"}]}], ",", " ", 
                RowBox[{"i", "++"}], ",", " ", "\[IndentingNewLine]", 
                "\t\t\t\t", 
                RowBox[{
                 RowBox[{"For", "[", 
                  RowBox[{
                   RowBox[{"j", " ", "=", " ", "1"}], ",", " ", 
                   RowBox[{"j", " ", "\[LessEqual]", " ", 
                    RowBox[{"Length", "[", "symb", "]"}]}], ",", " ", 
                   RowBox[{"j", "++"}], " ", ",", "\[IndentingNewLine]", 
                   "\t\t\t\t\t", 
                   RowBox[{
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"symb", "[", 
                    RowBox[{"[", "j", "]"}], "]"}], "\[Equal]", " ", 
                    RowBox[{"listChars", "[", 
                    RowBox[{"[", "i", "]"}], "]"}]}], ",", " ", 
                    "\[IndentingNewLine]", "\t\t\t\t     ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    RowBox[{
                    "Trovato", " ", "il", " ", "simbolo", " ", 
                    "corrispondente", " ", "alla", " ", "lettera", " ", "in", 
                    " ", "input"}], ",", " ", "\n", "\t\t\t\t     ", 
                    RowBox[{
                    "andiamo", " ", "a", " ", "cambiarlo", " ", "con", " ", 
                    "il", " ", "suo", " ", "valore", " ", "numerico"}]}], " ",
                     "*)"}], "\[IndentingNewLine]", "\t\t\t\t\t", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"listChars", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], " ", "=", " ", 
                    RowBox[{"j", " ", "-", " ", "1"}]}], ";"}], " ", 
                    "\[IndentingNewLine]", "\t\t\t\t\t", ",", " ", 
                    "\[IndentingNewLine]", "\t\t\t\t\t", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    "altrimenti", " ", "scorriamo", " ", "il", " ", "vettore",
                     " ", "dei", " ", "simboli"}], " ", "*)"}], 
                    "\[IndentingNewLine]", "\t\t\t\t\t", 
                    RowBox[{
                    RowBox[{"listChars", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], ";"}]}], "\n", 
                    "\t\t\t\t\t    ", "\[IndentingNewLine]", "\t\t\t\t\t  ", 
                    "]"}], ";"}]}], " ", "\n", "\t              ", "]"}], 
                 ";"}]}], "\n", "\t\t      ", "]"}], ";", " ", 
              "\[IndentingNewLine]", "\[IndentingNewLine]", "              ", 
              
              RowBox[{"(*", " ", 
               RowBox[{
               "nella", " ", "lista", " ", "dei", " ", "caratteri", " ", "di",
                 " ", "input", " ", "ci", " ", "sono", " ", "solo", " ", 
                "valori", " ", "alfanumerici"}], " ", "*)"}], 
              "\[IndentingNewLine]", "              ", 
              RowBox[{"size", " ", "=", " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"Length", "[", "listChars", "]"}], "-", "1"}], 
                ")"}]}], ";", " ", 
              RowBox[{"(*", " ", 
               RowBox[{"dimensione", " ", "della", " ", "lista"}], " ", 
               "*)"}], "\n", "              ", 
              RowBox[{"expPos", " ", "=", " ", 
               RowBox[{"Reverse", "[", 
                RowBox[{"Range", "[", 
                 RowBox[{"0", ",", " ", "size"}], "]"}], "]"}]}], ";", " ", 
              RowBox[{"(*", " ", 
               RowBox[{"ordine", " ", "degli", " ", "esponenti"}], " ", 
               "*)"}], "\n", "              ", 
              RowBox[{"result", " ", "=", " ", 
               RowBox[{"{", "}"}]}], ";", " ", 
              RowBox[{"(*", " ", 
               RowBox[{
               "lista", " ", "delle", " ", "stringhe", " ", "date", " ", "in",
                 " ", "output"}], " ", "*)"}], "\n", "               ", 
              RowBox[{"(*", " ", 
               RowBox[{
               "ora", " ", "abbiamo", " ", "tutte", " ", "le", " ", 
                "informazioni", " ", "per", " ", "poter", " ", "formattare", 
                " ", 
                RowBox[{"l", "'"}], "espressione", " ", "di", " ", 
                "conversione"}], " ", "*)"}], "\n", "               ", 
              RowBox[{"For", "[", 
               RowBox[{
                RowBox[{"i", " ", "=", " ", "1"}], ",", " ", 
                RowBox[{"i", " ", "<=", " ", "size"}], ",", " ", 
                RowBox[{"i", "++"}], ",", " ", "\n", "                   ", 
                RowBox[{
                 RowBox[{"AppendTo", "[", 
                  RowBox[{"result", ",", " ", 
                   RowBox[{
                    RowBox[{"ToString", "[", 
                    RowBox[{"listChars", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], "]"}], " ", "<>", " ", 
                    "\"\< x \>\"", " ", "<>", " ", 
                    RowBox[{"ToString", "[", "base", "]"}], " ", "<>", " ", 
                    "\"\<^\>\"", " ", "<>", " ", 
                    RowBox[{"ToString", "[", 
                    RowBox[{"size", " ", "-", "i", " ", "+", " ", "1"}], 
                    "]"}], " ", "<>", " ", "\"\< + \>\""}]}], "]"}], ";"}]}], 
               "                  ", "\n", "                  ", "]"}], ";", 
              "\n", "               ", 
              RowBox[{"AppendTo", "[", 
               RowBox[{"result", ",", " ", 
                RowBox[{
                 RowBox[{"ToString", "[", 
                  RowBox[{"listChars", "[", 
                   RowBox[{"[", 
                    RowBox[{"size", " ", "+", " ", "1"}], "]"}], "]"}], "]"}],
                  " ", "<>", " ", "\"\< x \>\"", " ", "<>", " ", 
                 RowBox[{"ToString", "[", "base", "]"}], " ", "<>", " ", 
                 "\"\<^\>\"", " ", "<>", " ", 
                 RowBox[{"ToString", "[", "0", "]"}]}]}], "]"}], ";", "\n", 
              "     ", "\n", "               ", 
              RowBox[{"resultInt", " ", "=", " ", 
               RowBox[{"FromDigits", "[", 
                RowBox[{"listChars", ",", " ", "base"}], "]"}]}], ";", " ", 
              RowBox[{"(*", " ", 
               RowBox[{
               "il", " ", "risultato", " ", "\[EGrave]", " ", "dentro", " ", 
                "resultInt"}], " ", "*)"}], "\n", "               ", 
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"resultInt", " ", ">", " ", "10000"}], " ", "||", 
                 " ", 
                 RowBox[{"resultInt", " ", "<", " ", "0"}]}], ",", " ", 
                RowBox[{
                 RowBox[{
                 "Return", "[", 
                  "\"\<Number Error: Il numero in input non risulta essere un \
intero positivo o inferiore a 10.000\>\"", "]"}], ";"}], "\n", 
                "               ", ",", "\n", "               ", 
                RowBox[{
                 RowBox[{"AppendTo", "[", 
                  RowBox[{"result", ",", " ", 
                   RowBox[{"\"\< = \>\"", " ", "<>", " ", 
                    RowBox[{"ToString", "[", "resultInt", "]"}]}]}], "]"}], 
                 ";", "\n", "               ", 
                 RowBox[{"Return", "[", 
                  RowBox[{"Row", "[", "result", "]"}], "]"}], ";"}]}], "\n", 
               "               ", "]"}], ";"}]}], "\[IndentingNewLine]", 
            "           ", "]"}], ";"}], "\[IndentingNewLine]", "           ",
           ",", "\[IndentingNewLine]", "\n", "            ", 
          RowBox[{
           RowBox[{
           "Return", "[", 
            "\"\<Errore di formato: Puoi usare solamente interi positivi o \
lettere supportate per la base di input \n\t\t\t\t\tper i valori e interi tra \
2 e 62 per le basi.\>\"", "]"}], ";"}]}], "\[IndentingNewLine]", "      ", 
         "]"}], ";"}]}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
      "]"}]}], ";"}], "\n", "   ", "\n", 
   RowBox[{"(*", "\n", "\t", 
    RowBox[{
     RowBox[{
      RowBox[{"DisplayConverterDiff10", "[", 
       RowBox[{"valueNum_", ",", "inputBase_", ",", " ", "outputBase_"}], 
       "]"}], "\n", "\t", "La", " ", "funzione", " ", "converte", " ", "il", 
      " ", 
      RowBox[{"valore", " ", "'"}], 
      RowBox[{"valueNum", "'"}], " ", "dalla", " ", 
      RowBox[{"base", " ", "'"}], 
      RowBox[{"inputBase", "'"}], " ", "alla", " ", 
      RowBox[{"base", " ", "'"}], 
      RowBox[{"outputBase", "'"}], " ", "andando", " ", "a", " ", 
      "descrivere", " ", "la", " ", "procedura", " ", "di", " ", 
      "conversione", " ", "e", " ", "a", " ", "stampare", " ", "i", " ", 
      RowBox[{"risultati", ".", "\n", "\t", "Inoltre"}]}], ",", " ", 
     RowBox[{
     "le", " ", "basi", " ", "in", " ", "input", " ", "devono", " ", "essere",
       " ", "diverse", " ", "da", " ", "10.", "\n", "\t", 
      RowBox[{"valueNum_", " ", ":", " ", 
       RowBox[{
       "Valore", " ", "alfanumerico", " ", "da", " ", "convertire", "\n", 
        "\t", "inputBase_"}], " ", ":", " ", 
       RowBox[{
       "Base", " ", "iniziale", " ", "differente", " ", "da", " ", "10", " ", 
        "e", " ", "compresa", " ", "tra", " ", "2", " ", "e", " ", "62", "\n",
         "\t", 
        RowBox[{"outputBase_", " ", ":", " ", 
         RowBox[{
         "Base", " ", "finale", " ", "differente", " ", "da", " ", "10", " ", 
          "e", " ", "compresa", " ", "tra", " ", "2", " ", "e", " ", 
          "62"}]}]}]}]}]}], "\n", "*)"}], "\n", "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"DisplayConverterDiff10", "[", 
      RowBox[{
      "valueNum3_", ",", " ", "inputBase3_", ",", " ", "outputBase3_"}], 
      "]"}], " ", ":=", "\n", "\t", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
        "strOut", ",", " ", "listChars", ",", " ", "listNum", ",", " ", 
         "symb", ",", "i", ",", "j", ",", " ", "result"}], "}"}], ",", " ", 
       "\n", "\t", 
       RowBox[{"(*", " ", 
        RowBox[{"Controlli", " ", "degli", " ", "input"}], " ", "*)"}], "\n", 
       "\t\t", 
       RowBox[{
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"VerifyBase", "[", 
            RowBox[{"valueNum3", ",", " ", "inputBase3"}], "]"}], "&&", 
           RowBox[{"IntegerQ", "[", "inputBase3", "]"}], "&&", 
           RowBox[{"IntegerQ", "[", "outputBase3", "]"}], "&&", 
           RowBox[{"inputBase3", "\[NotEqual]", "10"}], "&&", 
           RowBox[{"outputBase3", "\[NotEqual]", "10"}], "\n", "\t\t\t", "&&", 
           RowBox[{"outputBase3", "\[LessEqual]", "62"}], "&&", 
           RowBox[{"inputBase3", "\[LessEqual]", "62"}], "&&", 
           RowBox[{"outputBase3", "\[GreaterEqual]", "2"}], "&&", 
           RowBox[{"inputBase3", "\[GreaterEqual]", "2"}]}], ",", "\n", 
          "\t\t\t", 
          RowBox[{
           RowBox[{"strOut", " ", "=", " ", 
            RowBox[{"{", "}"}]}], ";", " ", 
           RowBox[{"(*", " ", 
            RowBox[{"stringa", " ", "di", " ", "output"}], " ", "*)"}], "\n", 
           "\t\t\t", 
           RowBox[{"AppendTo", "[", 
            RowBox[{
            "strOut", ",", " ", 
             "\"\<Dopo aver verificato che il numero si trova nella forma \
della base di input,\>\""}], "]"}], ";", "\n", "\t\t\t", 
           RowBox[{"AppendTo", "[", 
            RowBox[{"strOut", ",", " ", 
             RowBox[{
             "\"\<Dobbiamo convertire il numero in base 10 assumendo che sia \
nella base \>\"", " ", "<>", " ", 
              RowBox[{"ToString", "[", "inputBase3", "]"}]}]}], "]"}], ";", 
           " ", "\n", "\t\t\t", 
           RowBox[{"AppendTo", "[", 
            RowBox[{"strOut", ",", " ", "\"\<\>\""}], "]"}], ";", " ", 
           RowBox[{"(*", " ", 
            RowBox[{"linea", " ", "di", " ", "output", " ", "vuota"}], " ", 
            "*)"}], "\n", "\t\t\t", 
           RowBox[{"AppendTo", "[", 
            RowBox[{"strOut", ",", " ", 
             RowBox[{"DisplayConverterNTo10", "[", 
              RowBox[{"valueNum3", ",", " ", "inputBase3"}], "]"}]}], "]"}], 
           ";", " ", 
           RowBox[{"(*", " ", 
            RowBox[{
             RowBox[{"andiamo", " ", "ad", " ", "inserire", " ", 
              RowBox[{"nell", "'"}], "output"}], ",", " ", 
             RowBox[{
              RowBox[{"l", "'"}], "output", " ", "della", " ", "procedura", 
              " ", "di", " ", "conversione", " ", "da", " ", "base", " ", "N",
               " ", "a", " ", "base", " ", "10"}]}], " ", "*)"}], "\n", 
           "\t\t\t", 
           RowBox[{"(*", " ", 
            RowBox[{
            "Andiamo", " ", "a", " ", "trovare", " ", "il", " ", "risultato", 
             " ", "della", " ", "prima", " ", "fase"}], " ", "*)"}], "\n", 
           "\t\t\t", 
           RowBox[{"listChars", " ", "=", " ", 
            RowBox[{"DeleteCases", "[", 
             RowBox[{
              RowBox[{"Characters", "[", 
               RowBox[{"ToString", "[", "valueNum3", "]"}], "]"}], ",", " ", 
              "\"\< \>\""}], "]"}]}], ";", " ", 
           RowBox[{"(*", " ", 
            RowBox[{
            "convertiamo", " ", "la", " ", "stringa", " ", "di", " ", "input",
              " ", "in", " ", "una", " ", "lista", " ", "alfanumerica", " ", 
             "andando", " ", "a", " ", "cancellare", " ", "gli", " ", 
             "spazi"}], " ", "*)"}], "\n", "            ", 
           RowBox[{"listNum", " ", "=", " ", 
            RowBox[{"Range", "[", 
             RowBox[{"0", ",", "62"}], "]"}]}], ";", " ", 
           RowBox[{"(*", " ", 
            RowBox[{
            "indici", " ", "del", " ", "vettore", " ", "dei", " ", 
             "simboli"}], " ", "*)"}], "\n", "            ", 
           RowBox[{"symb", " ", "=", " ", 
            RowBox[{"Join", "[", 
             RowBox[{
              RowBox[{"CharacterRange", "[", 
               RowBox[{"\"\<0\>\"", ",", "\"\<9\>\""}], "]"}], ",", " ", 
              RowBox[{"ToUpperCase", "[", 
               RowBox[{"CharacterRange", "[", 
                RowBox[{"\"\<a\>\"", ",", "\"\<z\>\""}], "]"}], "]"}], ",", 
              " ", 
              RowBox[{"ToLowerCase", "[", 
               RowBox[{"CharacterRange", "[", 
                RowBox[{"\"\<a\>\"", ",", "\"\<z\>\""}], "]"}], "]"}]}], 
             "]"}]}], ";", " ", 
           RowBox[{"(*", " ", 
            RowBox[{"vettore", " ", "dei", " ", "simboli"}], " ", "*)"}], 
           "\n", "            ", 
           RowBox[{"(*", " ", 
            RowBox[{
            "Processo", " ", "di", " ", "conversione", " ", "dei", " ", 
             "valori", " ", "alfanumerici", " ", "nei", " ", "rispettivo", 
             " ", "valore", " ", "numerico"}], " ", "*)"}], "\n", 
           "            ", 
           RowBox[{"For", "[", 
            RowBox[{
             RowBox[{"i", " ", "=", " ", "1"}], ",", " ", 
             RowBox[{"i", " ", "<=", " ", 
              RowBox[{"Length", "[", "listChars", "]"}]}], ",", " ", 
             RowBox[{"i", "++"}], ",", " ", "\[IndentingNewLine]", "\t\t\t\t", 
             RowBox[{
              RowBox[{"For", "[", 
               RowBox[{
                RowBox[{"j", " ", "=", " ", "1"}], ",", " ", 
                RowBox[{"j", " ", "\[LessEqual]", " ", 
                 RowBox[{"Length", "[", "symb", "]"}]}], ",", " ", 
                RowBox[{"j", "++"}], " ", ",", "\[IndentingNewLine]", 
                "\t\t\t\t\t", 
                RowBox[{
                 RowBox[{"If", "[", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"symb", "[", 
                    RowBox[{"[", "j", "]"}], "]"}], "\[Equal]", " ", 
                    RowBox[{"listChars", "[", 
                    RowBox[{"[", "i", "]"}], "]"}]}], ",", " ", 
                   "\[IndentingNewLine]", "\t\t\t\t    ", 
                   RowBox[{"(*", " ", 
                    RowBox[{
                    RowBox[{"se", " ", "troviamo", " ", 
                    RowBox[{"l", "'"}], "elemento", " ", "nel", " ", 
                    "vettore", " ", "dei", " ", "simboli", " ", "uguale", " ",
                     "alla", " ", "lettera", " ", "in", " ", "input"}], ",", 
                    "\n", "\t\t\t\t    ", 
                    RowBox[{
                    "sostituiamo", " ", "tale", " ", "valore", " ", "con", 
                    " ", 
                    RowBox[{"l", "'"}], "indice", " ", "della", " ", "cella", 
                    " ", "\n", "\t\t\t\t    ", "del", " ", "vettore", " ", 
                    "dei", " ", "simboli", " ", "corrente", " ", 
                    RowBox[{"(", 
                    RowBox[{"j", " ", "-", " ", "1"}], ")"}]}], ",", " ", 
                    RowBox[{
                    "ossia", " ", "con", " ", "il", " ", "corrispondente", 
                    "\n", "\t\t\t\t    ", "valore", " ", "numerico"}]}], " ", 
                    "*)"}], "\[IndentingNewLine]", "\t\t\t\t\t", 
                   RowBox[{
                    RowBox[{
                    RowBox[{"listChars", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], " ", "=", " ", 
                    RowBox[{"j", " ", "-", " ", "1"}]}], ";"}], " ", 
                   "\[IndentingNewLine]", "\t\t\t\t\t", ",", " ", 
                   "\[IndentingNewLine]", "\t\t\t\t\t", 
                   RowBox[{"(*", " ", 
                    RowBox[{
                    "altrimenti", " ", "scorriamo", " ", "il", " ", "vettore",
                     " ", "dei", " ", "simboli"}], " ", "*)"}], "\n", 
                   "\t\t\t\t\t", 
                   RowBox[{"(*", " ", 
                    RowBox[{"istruzione", " ", "di", " ", "placeholder"}], 
                    " ", "*)"}], "\[IndentingNewLine]", "\t\t\t\t\t", 
                   RowBox[{
                    RowBox[{"listChars", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], ";"}]}], " ", "\n", 
                  "\t\t\t\t\t    ", "\[IndentingNewLine]", "\t\t\t\t\t  ", 
                  "]"}], ";"}]}], " ", "\n", "\t              ", "]"}], 
              ";"}]}], "\n", "\t\t      ", "]"}], ";", " ", "\n", "\t\t    ", 
           
           RowBox[{"AppendTo", "[", 
            RowBox[{"strOut", ",", " ", "\"\<\>\""}], "]"}], ";", "\n", 
           "\t\t    ", 
           RowBox[{"AppendTo", "[", 
            RowBox[{"strOut", ",", " ", 
             RowBox[{
             "\"\<Il risultato della conversione \[EGrave] \>\"", " ", "<>", 
              " ", 
              RowBox[{"ToString", "[", 
               RowBox[{"FromDigits", "[", 
                RowBox[{"listChars", ",", " ", "inputBase3"}], "]"}], "]"}], 
              " ", "<>", " ", 
              "\"\< che bisogna ora convertirlo nella base \>\"", " ", "<>", 
              " ", 
              RowBox[{"ToString", "[", "outputBase3", "]"}]}]}], "]"}], ";", 
           "\n", "\t\t    ", 
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{
              RowBox[{
               RowBox[{"FromDigits", "[", 
                RowBox[{"listChars", ",", " ", "inputBase3"}], "]"}], " ", 
               ">", " ", "10000"}], " ", "||", " ", 
              RowBox[{
               RowBox[{"FromDigits", "[", 
                RowBox[{"listChars", ",", " ", "inputBase3"}], "]"}], " ", 
               "<", " ", "0"}]}], ",", " ", "\n", "\t\t       ", 
             RowBox[{
              RowBox[{
              "Return", "[", 
               "\"\<Number Error: Il numero in input non risulta essere un \
intero positivo tra 0 e 10.000\>\"", "]"}], ";"}], "\n", "               ", 
             ",", "\n", "\t\t    ", 
             RowBox[{
              RowBox[{"AppendTo", "[", 
               RowBox[{"strOut", ",", " ", "\"\<\>\""}], "]"}], ";", " ", 
              RowBox[{"(*", " ", 
               RowBox[{"linea", " ", "vuota"}], " ", "*)"}], "\n", "\t\t    ", 
              RowBox[{"AppendTo", "[", 
               RowBox[{"strOut", ",", " ", 
                RowBox[{"DisplayConverter10ToN", "[", 
                 RowBox[{
                  RowBox[{"ToString", "[", 
                   RowBox[{"FromDigits", "[", 
                    RowBox[{"listChars", ",", " ", "inputBase3"}], "]"}], 
                   "]"}], ",", " ", "outputBase3"}], "]"}]}], "]"}], ";", 
              "\n", "\t\t\t", 
              RowBox[{"Return", "[", 
               RowBox[{"Column", "[", "strOut", "]"}], "]"}], ";"}]}], "\n", 
            "\t\t\t", "]"}], ";"}], "\n", "\t\t\t", ",", "\n", "\t\t\t", 
          RowBox[{
           RowBox[{
           "Return", "[", 
            "\"\<Il valore iniziale non \[EGrave] nel formato della base di \
input oppure le basi specificate non sono interi positivi diverse da 10 e \
comprese tra 2 e 62\>\"", "]"}], ";"}]}], "\n", "\t\t  ", "]"}], ";"}]}], 
      "\n", "\t", "\n", "]"}]}], ";"}], "\n", "\n", 
   RowBox[{
    RowBox[{"End", "[", "]"}], ";"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{"Fine", " ", "Private", " ", "scope"}], " ", "*)"}], "\n", 
   RowBox[{
    RowBox[{"EndPackage", "[", "]"}], ";", " ", 
    RowBox[{"(*", " ", 
     RowBox[{"Fine", " ", "Package"}], " ", "*)"}], "\n"}]}]}]], "Code",
 CellChangeTimes->{{3.829194168962496*^9, 3.82919418308774*^9}, {
   3.8291948591595783`*^9, 3.829194865720334*^9}, {3.829194955341823*^9, 
   3.829195031363605*^9}, {3.829195094895567*^9, 3.829195122503929*^9}, {
   3.8291952190112123`*^9, 3.8291952694792147`*^9}, {3.8291953312231617`*^9, 
   3.8291954041572323`*^9}, {3.829195478536775*^9, 3.829195695523725*^9}, {
   3.829195735686088*^9, 3.829195867973084*^9}, {3.829195904631689*^9, 
   3.82919597923143*^9}, {3.829196009986655*^9, 3.829196053335503*^9}, {
   3.829196086062448*^9, 3.829196311121078*^9}, {3.829196344285775*^9, 
   3.829196637426208*^9}, {3.8291966823977203`*^9, 3.82919696416453*^9}, {
   3.829196999575616*^9, 3.829197330251876*^9}, {3.829197900678389*^9, 
   3.829197905073144*^9}, {3.82919859923709*^9, 3.829198615507577*^9}, {
   3.829198648404315*^9, 3.829198769597036*^9}, {3.82919881188752*^9, 
   3.829199104531562*^9}, {3.829199244078381*^9, 3.829199402886931*^9}, {
   3.829199534969489*^9, 3.8291995599721947`*^9}, {3.829199619280904*^9, 
   3.829199679830264*^9}, {3.8293638023961067`*^9, 3.8293638967800198`*^9}, {
   3.829364391012425*^9, 3.8293644021037607`*^9}, {3.829364474446056*^9, 
   3.8293644947592707`*^9}, {3.829364525911961*^9, 3.829364546309266*^9}, {
   3.829365828305752*^9, 3.829365912144165*^9}, {3.8293659626113*^9, 
   3.8293660415101767`*^9}, {3.829366113822847*^9, 3.829366233376444*^9}, {
   3.829366282669771*^9, 3.829366314827092*^9}, 3.8293664276537657`*^9, {
   3.829366463843732*^9, 3.829366495476522*^9}, {3.8293666873615513`*^9, 
   3.829366725012026*^9}, {3.829366760963204*^9, 3.829366835918681*^9}, {
   3.829366866137767*^9, 3.829366914567506*^9}, {3.829366956531678*^9, 
   3.829366966556191*^9}, {3.829367000546959*^9, 3.829367009283164*^9}, {
   3.829367073813489*^9, 3.829367081788651*^9}, {3.829367174827717*^9, 
   3.829367177158622*^9}, {3.829367450923916*^9, 3.829367534657469*^9}, {
   3.829367576562233*^9, 3.829367605641781*^9}, {3.829367754684388*^9, 
   3.829367772147072*^9}, {3.829368488035448*^9, 3.829368498085767*^9}, {
   3.8293686400483837`*^9, 3.829368643772258*^9}, {3.8293688194093924`*^9, 
   3.8293688485210037`*^9}, {3.82936891684409*^9, 3.829368918415395*^9}, {
   3.8293689776075687`*^9, 3.8293690306344013`*^9}, {3.8293690634563503`*^9, 
   3.829369087022036*^9}, {3.829369130224872*^9, 3.829369171770543*^9}, 
   3.8293692508311863`*^9, {3.8293698134972963`*^9, 3.8293698564165077`*^9}, {
   3.829370018837224*^9, 3.829370140869082*^9}, {3.829370250599661*^9, 
   3.829370251073039*^9}, {3.829370282851492*^9, 3.829370290790958*^9}, {
   3.829370438364128*^9, 3.829370440526823*^9}, {3.829370567272513*^9, 
   3.829370605917889*^9}, {3.829370854452895*^9, 3.829370897151037*^9}, {
   3.829371037694872*^9, 3.829371038634039*^9}, {3.8293710896025257`*^9, 
   3.8293711571922207`*^9}, {3.829371193245594*^9, 3.829371195605135*^9}, {
   3.8293712258741817`*^9, 3.82937126503102*^9}, {3.8293713310814753`*^9, 
   3.829371360066992*^9}, {3.829371460299644*^9, 3.8293714647495613`*^9}, {
   3.829371526107266*^9, 3.829371585280723*^9}, {3.829371712242136*^9, 
   3.829371712671288*^9}, {3.829371864924239*^9, 3.82937188366155*^9}, {
   3.829371960129963*^9, 3.829372036105852*^9}, {3.829447135184607*^9, 
   3.829447212350308*^9}, {3.829447299488882*^9, 3.829447439778009*^9}, {
   3.8294475639883137`*^9, 3.8294475919715357`*^9}, {3.829447658126463*^9, 
   3.829447663469955*^9}, {3.829447702913994*^9, 3.829447767870178*^9}, {
   3.8294478252329893`*^9, 3.8294478507531757`*^9}, {3.829447883056694*^9, 
   3.8294478868796988`*^9}, {3.829447943071672*^9, 3.8294479449750443`*^9}, {
   3.829447990033094*^9, 3.8294481268489437`*^9}, {3.829448206048484*^9, 
   3.829448278482877*^9}, {3.829448365041285*^9, 3.8294483818416367`*^9}, {
   3.829448687827067*^9, 3.829448690464643*^9}, {3.829449546687018*^9, 
   3.829449621738471*^9}, {3.829449728332053*^9, 3.829449728491273*^9}, {
   3.829449906239362*^9, 3.8294499063308363`*^9}, {3.829450044845997*^9, 
   3.829450098059166*^9}, {3.8294501895973587`*^9, 3.829450220475419*^9}, {
   3.829450312207605*^9, 3.82945034725321*^9}, {3.829450421980953*^9, 
   3.829450422072338*^9}, {3.829450528830838*^9, 3.829450548749803*^9}, {
   3.829619317817923*^9, 3.8296194240467052`*^9}, {3.829619457103979*^9, 
   3.829619457376404*^9}, {3.829619980769723*^9, 3.8296199824405003`*^9}, {
   3.8296202906463823`*^9, 3.829620291473665*^9}, {3.8296204115757103`*^9, 
   3.8296204626589127`*^9}, 3.829620512708766*^9, {3.829620560216395*^9, 
   3.829620562592914*^9}, {3.829620683707933*^9, 3.8296206845274887`*^9}, {
   3.829620832213829*^9, 3.829620881017602*^9}, {3.829621035643607*^9, 
   3.8296210671070147`*^9}, {3.829621221610334*^9, 3.8296212246798143`*^9}, {
   3.82962140130785*^9, 3.829621463679859*^9}, {3.829621498290421*^9, 
   3.829621498589917*^9}, {3.82962154306362*^9, 3.8296215486308947`*^9}, {
   3.829622281660726*^9, 3.829622283231141*^9}, {3.8296229657301064`*^9, 
   3.8296229716922827`*^9}, {3.829623598710095*^9, 3.829623652197987*^9}, {
   3.8296241334177027`*^9, 3.829624184163311*^9}, {3.829624355006941*^9, 
   3.8296243554570427`*^9}, {3.829624385682929*^9, 3.8296243862841988`*^9}, {
   3.829624471119501*^9, 3.829624589578744*^9}, 3.829624714819416*^9, {
   3.829624749647046*^9, 3.8296248405245457`*^9}, {3.829624886956236*^9, 
   3.829624951014646*^9}, {3.8296249872189693`*^9, 3.829624991517354*^9}, {
   3.829625227259445*^9, 3.8296252628320913`*^9}, {3.8296253192175493`*^9, 
   3.8296253461681013`*^9}, {3.8296253811603413`*^9, 3.829625401921142*^9}, {
   3.8296254818258133`*^9, 3.829625534509468*^9}, {3.829625601972301*^9, 
   3.829625625379465*^9}, {3.829648026946237*^9, 3.8296483620406446`*^9}, {
   3.8296484855102863`*^9, 3.829648490072772*^9}, {3.829704569635717*^9, 
   3.829704580227783*^9}, {3.829704618844102*^9, 3.8297046321611443`*^9}, {
   3.829704673012019*^9, 3.8297046768223124`*^9}, {3.82970474406415*^9, 
   3.829704745013565*^9}, {3.829705177857581*^9, 3.829705366635695*^9}, {
   3.829705407751831*^9, 3.829705524074967*^9}, {3.829705783486436*^9, 
   3.8297057866303587`*^9}, {3.8297058252998734`*^9, 3.829705930137869*^9}, {
   3.829705964318577*^9, 3.829706007262823*^9}, {3.8297148659236603`*^9, 
   3.8297149439690647`*^9}, {3.829714985906529*^9, 3.829714996540093*^9}, {
   3.829716380511031*^9, 3.829716604315699*^9}, {3.829716724085518*^9, 
   3.829716724964273*^9}, {3.82971883292743*^9, 3.82971883338165*^9}, {
   3.829729246580467*^9, 3.829729273788392*^9}, {3.829729395764442*^9, 
   3.8297294684432487`*^9}, {3.8298041953381577`*^9, 3.82980420756892*^9}, {
   3.829804264277557*^9, 3.829804336589082*^9}, 3.829804389867712*^9, {
   3.8298044815808764`*^9, 3.829804484380891*^9}, {3.829804530015336*^9, 
   3.8298045833192*^9}, 3.829804613860312*^9, {3.829804647601762*^9, 
   3.829804655950542*^9}, {3.829804696004825*^9, 3.829804704076066*^9}, {
   3.829804740981511*^9, 3.829804763798953*^9}, {3.8298047957691507`*^9, 
   3.829804865935631*^9}, {3.829804905100286*^9, 3.829804961816876*^9}, {
   3.8298050273071527`*^9, 3.8298050767783003`*^9}, {3.829805124873905*^9, 
   3.829805342802238*^9}, {3.829805465320376*^9, 3.829805533805128*^9}, {
   3.829805565515459*^9, 3.829805591988983*^9}, 3.8298057595595427`*^9, {
   3.829805903511491*^9, 3.829806096920516*^9}, {3.829806152618267*^9, 
   3.829806202358283*^9}, {3.829806621189939*^9, 3.829806679389307*^9}, {
   3.829806729701058*^9, 3.829806729947689*^9}, {3.8298067605432253`*^9, 
   3.829807045199657*^9}, {3.8298076084720297`*^9, 3.829807723179206*^9}, {
   3.829808055344487*^9, 3.829808109450338*^9}, {3.8298081582787867`*^9, 
   3.829808169195487*^9}, {3.8298082020133877`*^9, 3.8298084880297937`*^9}, {
   3.829808536129183*^9, 3.82980854025089*^9}, {3.829808595794032*^9, 
   3.829808644087269*^9}, {3.829808711670993*^9, 3.829808716737073*^9}, {
   3.8299898526110477`*^9, 3.8299898623990602`*^9}, {3.829990119385537*^9, 
   3.829990125745232*^9}, {3.829991444985199*^9, 3.82999145051477*^9}, {
   3.829991834992028*^9, 3.829991925770626*^9}, {3.829991998048441*^9, 
   3.829992138808057*^9}, {3.829992361422558*^9, 3.829992363414131*^9}, {
   3.82999239926163*^9, 3.829992437014024*^9}, {3.829992969930266*^9, 
   3.829993041146173*^9}, {3.829993095867486*^9, 3.829993172767035*^9}, {
   3.8299932366683617`*^9, 3.829993270909388*^9}, {3.829993338625265*^9, 
   3.829993443042963*^9}, {3.8299935643791933`*^9, 3.829993641363847*^9}, {
   3.829993763197811*^9, 3.829993764021256*^9}, {3.829994602295066*^9, 
   3.829994635971993*^9}, {3.82999470347351*^9, 3.829994707301907*^9}, {
   3.8299955288639297`*^9, 3.82999553109721*^9}, {3.829995829583455*^9, 
   3.829995833550316*^9}, {3.83017178945424*^9, 3.830171827835607*^9}, {
   3.830183054730502*^9, 3.830183061432989*^9}, {3.83018344678691*^9, 
   3.830183448355051*^9}, {3.8302318568497*^9, 3.830231860210298*^9}, {
   3.830231923612207*^9, 3.830231925275033*^9}, {3.8302583629930887`*^9, 
   3.830258438118194*^9}, {3.830258493447057*^9, 3.830258605089128*^9}, {
   3.830259723841584*^9, 3.8302598397542057`*^9}, {3.830260008442878*^9, 
   3.830260011718259*^9}, {3.8303395056960487`*^9, 3.830339565673717*^9}, {
   3.8303399707795973`*^9, 3.830340489370577*^9}, {3.8303405994507523`*^9, 
   3.830340679517515*^9}, {3.830341785155731*^9, 3.830341973626567*^9}, {
   3.830342405105558*^9, 3.830342654463073*^9}, {3.830342699275721*^9, 
   3.830342946984097*^9}, 3.830343015561987*^9, {3.830343049139268*^9, 
   3.830343119884162*^9}, {3.830343169886424*^9, 3.8303432752430763`*^9}, {
   3.830344391213798*^9, 3.8303447292492943`*^9}, {3.83034480481374*^9, 
   3.830344858929134*^9}, {3.830345007774745*^9, 3.830345082604707*^9}},
 CellLabel->
  "In[859]:=",ExpressionUUID->"4bac3604-d82b-4d99-bdb1-74e42b8e69b6"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"UniversalExercisesPanel", "[", "]"}]], "Input",
 CellChangeTimes->{{3.830180774745928*^9, 3.83018079152355*^9}},
 CellLabel->
  "In[865]:=",ExpressionUUID->"7da74077-e8db-4687-a84c-e6d2500cb92b"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{BaseConvertorPackage`BaseInput$$ = 35, 
    BaseConvertorPackage`BaseOutput$$ = 44, 
    BaseConvertorPackage`ValoreInput$$ = "AAAAA", 
    BaseConvertorPackage`ValoreOutput$$ = "10", Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[
       Style["Parametri", 12, Bold]], Manipulate`Dump`ThisIsNotAControl}, {
      Hold[""], Manipulate`Dump`ThisIsNotAControl}, {
      Hold[BaseConvertorPackage`ValoreInput$$], "2", 
      InputField[#, String, FieldHint -> "Inserisci un intero", 
       FieldHintStyle -> {Italic, Gray, Medium}]& }, {
      Hold[BaseConvertorPackage`BaseInput$$], 2, 62, 1}, {
      Hold[BaseConvertorPackage`ValoreOutput$$], "10", Tooltip[
       InputField[#, String, FieldHint -> "Inserisci un intero", 
        FieldHintStyle -> {Italic, Gray, Medium}], 
       "Valore convertito nella base di output", 
       TooltipStyle -> {FontSize -> 20}]& }, {
      Hold[BaseConvertorPackage`BaseOutput$$], 2, 62, 1}, {
      Hold[""], Manipulate`Dump`ThisIsNotAControl}, {
      Hold[
       Style["Funzionalit\[AGrave]", 12, Bold]], 
      Manipulate`Dump`ThisIsNotAControl}, {
      Hold[""], Manipulate`Dump`ThisIsNotAControl}, {
      Hold[
       Tooltip[
        Button[
        "Genera Esercizio", BaseConvertorPackage`ValoreInput$$ = ToString[
            RandomInteger[{0, 299}]]; 
         BaseConvertorPackage`BaseInput$$ = RandomInteger[{2, 62}]; 
         BaseConvertorPackage`BaseOutput$$ = RandomInteger[{2, 62}]; Null], 
        "Generazione di un esercizio andando a generare un valore per il \
numero di \n                                 input e per la base di Input e \
Output randomicamente", TooltipStyle -> {FontSize -> 20}]], 
      Manipulate`Dump`ThisIsNotAControl}, {
      Hold[
       Tooltip[
        Button[
        "Mostra Soluzione", 
         BaseConvertorPackage`output = 
          BaseConvertorPackage`SolveConvertion[
           BaseConvertorPackage`ValoreInput$$, 
            BaseConvertorPackage`BaseInput$$, 
            BaseConvertorPackage`BaseOutput$$]; Null], 
        "Mostra la soluzione dell'esercizio", 
        TooltipStyle -> {FontSize -> 20}]], 
      Manipulate`Dump`ThisIsNotAControl}, {
      Hold[
       Tooltip[
        Button[
        "Verifica Soluzione", BaseConvertorPackage`output = 
         BaseConvertorPackage`VerifySolution[
          BaseConvertorPackage`ValoreInput$$, 
           BaseConvertorPackage`BaseInput$$, 
           BaseConvertorPackage`BaseOutput$$, 
           BaseConvertorPackage`ValoreOutput$$]], 
        "Verifica se il ValoreOutput \[EGrave] uguale al valore convertito \
dell'esercizio", TooltipStyle -> {FontSize -> 20}]], 
      Manipulate`Dump`ThisIsNotAControl}, {
      Hold[
       Tooltip[
        Button[
        "Mostra Procedimento", 
         BaseConvertorPackage`output = 
          Private`DisplayProcedure[
           BaseConvertorPackage`ValoreInput$$, 
            BaseConvertorPackage`BaseInput$$, 
            BaseConvertorPackage`BaseOutput$$]; Null], 
        "Mostra il procedimento di risoluzione dell'esercizio con spiegazione \
annessa", TooltipStyle -> {FontSize -> 20}]], 
      Manipulate`Dump`ThisIsNotAControl}, {
      Hold[
       Tooltip[
        Button[
        "Resetta Campi di Input", {
         BaseConvertorPackage`ValoreInput$$ = "2"; 
          BaseConvertorPackage`BaseInput$$ = 10; 
          BaseConvertorPackage`BaseOutput$$ = 2; 
          BaseConvertorPackage`ValoreOutput$$ = "10"; 
          BaseConvertorPackage`output = 
           BaseConvertorPackage`SolveConvertion["2", 10, 2]; Null}], 
        "Resetta i valori di input all'esempio di base", 
        TooltipStyle -> {FontSize -> 20}]], 
      Manipulate`Dump`ThisIsNotAControl}, {
      Hold[""], Manipulate`Dump`ThisIsNotAControl}, {
      Hold[""], Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {
    999., {4., 14.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {
       BaseConvertorPackage`BaseInput$$ = 2, 
        BaseConvertorPackage`BaseOutput$$ = 2, 
        BaseConvertorPackage`ValoreInput$$ = "2", 
        BaseConvertorPackage`ValoreOutput$$ = "10"}, 
      "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> BaseConvertorPackage`output, 
      "Specifications" :> {
        Style["Parametri", 12, Bold], "", {
        BaseConvertorPackage`ValoreInput$$, "2", 
         InputField[#, String, FieldHint -> "Inserisci un intero", 
          FieldHintStyle -> {Italic, Gray, Medium}]& }, {
        BaseConvertorPackage`BaseInput$$, 2, 62, 1}, {
        BaseConvertorPackage`ValoreOutput$$, "10", Tooltip[
          
          InputField[#, String, FieldHint -> "Inserisci un intero", 
           FieldHintStyle -> {Italic, Gray, Medium}], 
          "Valore convertito nella base di output", 
          TooltipStyle -> {FontSize -> 20}]& }, {
        BaseConvertorPackage`BaseOutput$$, 2, 62, 1}, "", 
        Style["Funzionalit\[AGrave]", 12, Bold], "", 
        Tooltip[
         Button[
         "Genera Esercizio", BaseConvertorPackage`ValoreInput$$ = ToString[
             RandomInteger[{0, 299}]]; 
          BaseConvertorPackage`BaseInput$$ = RandomInteger[{2, 62}]; 
          BaseConvertorPackage`BaseOutput$$ = RandomInteger[{2, 62}]; Null], 
         "Generazione di un esercizio andando a generare un valore per il \
numero di \n                                 input e per la base di Input e \
Output randomicamente", TooltipStyle -> {FontSize -> 20}], 
        Tooltip[
         Button[
         "Mostra Soluzione", 
          BaseConvertorPackage`output = 
           BaseConvertorPackage`SolveConvertion[
            BaseConvertorPackage`ValoreInput$$, 
             BaseConvertorPackage`BaseInput$$, 
             BaseConvertorPackage`BaseOutput$$]; Null], 
         "Mostra la soluzione dell'esercizio", 
         TooltipStyle -> {FontSize -> 20}], 
        Tooltip[
         Button[
         "Verifica Soluzione", BaseConvertorPackage`output = 
          BaseConvertorPackage`VerifySolution[
           BaseConvertorPackage`ValoreInput$$, 
            BaseConvertorPackage`BaseInput$$, 
            BaseConvertorPackage`BaseOutput$$, 
            BaseConvertorPackage`ValoreOutput$$]], 
         "Verifica se il ValoreOutput \[EGrave] uguale al valore convertito \
dell'esercizio", TooltipStyle -> {FontSize -> 20}], 
        Tooltip[
         Button[
         "Mostra Procedimento", 
          BaseConvertorPackage`output = 
           Private`DisplayProcedure[
            BaseConvertorPackage`ValoreInput$$, 
             BaseConvertorPackage`BaseInput$$, 
             BaseConvertorPackage`BaseOutput$$]; Null], 
         "Mostra il procedimento di risoluzione dell'esercizio con \
spiegazione annessa", TooltipStyle -> {FontSize -> 20}], 
        Tooltip[
         Button[
         "Resetta Campi di Input", {
          BaseConvertorPackage`ValoreInput$$ = "2"; 
           BaseConvertorPackage`BaseInput$$ = 10; 
           BaseConvertorPackage`BaseOutput$$ = 2; 
           BaseConvertorPackage`ValoreOutput$$ = "10"; 
           BaseConvertorPackage`output = 
            BaseConvertorPackage`SolveConvertion["2", 10, 2]; Null}], 
         "Resetta i valori di input all'esempio di base", 
         TooltipStyle -> {FontSize -> 20}], "", ""}, 
      "Options" :> {FrameLabel -> "Esercizio Universale"}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{1480., {314., 323.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({
      BaseConvertorPackage`BaseInput$$ = 10; 
       BaseConvertorPackage`BaseOutput$$ = 2; 
       BaseConvertorPackage`ValoreInput$$ = "2"; 
       BaseConvertorPackage`ValoreOutput$$ = "10"; 
       BaseConvertorPackage`output = 
        BaseConvertorPackage`SolveConvertion[
         BaseConvertorPackage`ValoreInput$$, BaseConvertorPackage`BaseInput$$,
           BaseConvertorPackage`BaseOutput$$]; Null}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{{3.830233169206265*^9, 3.830233183478253*^9}, 
   3.8302332461474237`*^9, 3.830233393410302*^9, 3.830233583016244*^9, 
   3.830233655431192*^9, {3.83023370997456*^9, 3.8302337296454687`*^9}, 
   3.830233820351213*^9, 3.830234065388247*^9, 3.830234100475314*^9, 
   3.830234177554102*^9, 3.830234539180303*^9, 3.830234628073393*^9, 
   3.830235573823615*^9, 3.8302359802313538`*^9, 3.8302360427752647`*^9, 
   3.830236232650983*^9, {3.83023660679842*^9, 3.830236643500228*^9}, 
   3.830236677165344*^9, {3.83023670889948*^9, 3.830236731449176*^9}, {
   3.830236768608898*^9, 3.830236801402872*^9}, {3.8302467799364653`*^9, 
   3.830246803435177*^9}, 3.830249797574541*^9, 3.83025015122567*^9, 
   3.8302617343875217`*^9, {3.830262477130846*^9, 3.8302624795436773`*^9}, {
   3.830262690144821*^9, 3.830262697173023*^9}, 3.830339484086402*^9, 
   3.8303395144525747`*^9, {3.83033964645331*^9, 3.830339647711357*^9}, {
   3.830342957802544*^9, 3.830342988913384*^9}, 3.830343028055663*^9, {
   3.830343136662554*^9, 3.8303431983915873`*^9}, 3.830343301142601*^9, 
   3.830345088168414*^9},
 CellLabel->
  "Out[865]=",ExpressionUUID->"c4057676-8d1d-4ec7-b691-b395a55f92e1"]
}, Open  ]],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.8303405052186127`*^9, 3.830340527157741*^9}, 
   3.830343210070368*^9},
 CellLabel->
  "In[866]:=",ExpressionUUID->"5fa88399-443c-46ef-99b4-f47a0122bad3"]
},
WindowSize->{Full, Full},
WindowMargins->{{275, Automatic}, {1, Automatic}},
Magnification:>1.5 Inherited,
FrontEndVersion->"12.2 for Mac OS X x86 (64-bit) (December 12, 2020)",
StyleDefinitions->"Default.nb",
ExpressionUUID->"7f26ec41-8e8b-4517-994f-9a059d362db7"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[558, 20, 2148, 52, 381, "Input",ExpressionUUID->"dc8673ef-990c-4ab4-a413-0ea8a2a2c4a7",
 InitializationCell->True],
Cell[2709, 74, 413, 9, 70, "Input",ExpressionUUID->"83ba9a24-105e-453d-9ab2-057fc8b72e8f",
 InitializationCell->True],
Cell[3125, 85, 3034, 45, 753, "Input",ExpressionUUID->"9e4ab47b-4075-49ba-8051-48e74256a661",
 InitializationCell->True],
Cell[6162, 132, 3388, 58, 846, "Input",ExpressionUUID->"36c52f8c-b143-44bf-adf6-d9a55d959f3e",
 InitializationCell->True,
 InitializationGroup->True],
Cell[9553, 192, 263, 6, 78, "Code",ExpressionUUID->"700f309b-d38f-4f21-a2e9-5c63753d2137"],
Cell[9819, 200, 96313, 1781, 9620, "Code",ExpressionUUID->"7d260a63-9de2-47a9-9cab-505ba266263a"],
Cell[106135, 1983, 65035, 1261, 7105, "Code",ExpressionUUID->"4bac3604-d82b-4d99-bdb1-74e42b8e69b6"],
Cell[CellGroupData[{
Cell[171195, 3248, 219, 4, 46, "Input",ExpressionUUID->"7da74077-e8db-4687-a84c-e6d2500cb92b"],
Cell[171417, 3254, 9988, 209, 665, "Output",ExpressionUUID->"c4057676-8d1d-4ec7-b691-b395a55f92e1"]
}, Open  ]],
Cell[181420, 3466, 203, 4, 46, "Input",ExpressionUUID->"5fa88399-443c-46ef-99b4-f47a0122bad3"]
}
]
*)

