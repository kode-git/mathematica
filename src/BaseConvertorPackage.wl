(* Content-type: application/vnd.wolfram.mathematica *)

(*** Wolfram Notebook File ***)
(* http://www.wolfram.com/nb *)

(* CreatedBy='Mathematica 12.2' *)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       158,          7]
NotebookDataLength[     24467,        541]
NotebookOptionsPosition[     21559,        485]
NotebookOutlinePosition[     21957,        501]
CellTagsIndexPosition[     21914,        498]
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
    "This", " ", "is", " ", "the", " ", "package", " ", "to", " ", 
     "estabilish", " ", "the", " ", "logic", " ", "for", " ", "changing", " ",
      "the", " ", "base", " ", "from", " ", "n", " ", "to", " ", "base", " ", 
     "10", " ", "and", " ", "10", " ", "to", " ", "base", " ", 
     RowBox[{"n", ".", " ", "The"}], " ", "base", " ", "supported", " ", "is",
      " ", "more", " ", "than", " ", "BaseForm", " ", "and", " ", "we", " ", 
     "can", " ", "define", " ", "at", " ", "least", " ", "63", " ", 
     "different", " ", "bases", " ", "from", " ", "2", " ", "to", " ", 
     "64"}]}], " ", "*)"}], "\[IndentingNewLine]", 
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
    RowBox[{":", "Keywords", ":", " ", "base"}], ",", " ", "convertor"}], 
   "*)"}], "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{":", "Sources", ":", " ", "\\\\"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{":", "Discussion", ":", " ", "\\\\"}], " ", "*)"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.828861677964623*^9, 3.8288618839748697`*^9}, {
  3.828863430302635*^9, 3.828863433476419*^9}},
 CellLabel->
  "In[116]:=",ExpressionUUID->"dc8673ef-990c-4ab4-a413-0ea8a2a2c4a7"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"BeginPackage", "[", "\"\<BaseConvertorPackage`\>\"", "]"}]], "Input",\

 InitializationCell->True,
 CellChangeTimes->{{3.828861912575403*^9, 3.82886193066146*^9}, {
  3.8288623030616407`*^9, 3.828862303811872*^9}, {3.828863270883473*^9, 
  3.828863273964057*^9}},
 CellLabel->
  "In[117]:=",ExpressionUUID->"83ba9a24-105e-453d-9ab2-057fc8b72e8f"],

Cell[BoxData["\<\"BaseConvertorPackage`\"\>"], "Output",
 CellChangeTimes->{{3.8288619253880987`*^9, 3.8288619312236853`*^9}, 
   3.828862313347885*^9, 3.828863054351088*^9, 3.828863209896085*^9, 
   3.8288632440802917`*^9, 3.82886327447279*^9, 3.828863308403469*^9, 
   3.8288633662016153`*^9, {3.8288634125361233`*^9, 3.828863438348412*^9}, 
   3.829020422245496*^9, 3.829021906253648*^9, 3.829022120839266*^9},
 CellLabel->
  "Out[117]=",ExpressionUUID->"8a8b9988-26fc-448f-ba1a-bcef0c847550"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"BasePanelProject", "::", "usage"}], " ", "=", " ", 
  "\"\<BasePanel[]\n\tDefine a table and show the convertion from an input \
base to an output base defined by manipulation tool of the panel. The last \
two parameters are optional and have as default value the base 10 and 2\n\
\>\""}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.828862098345055*^9, 3.828862224016768*^9}, {
   3.828863316784349*^9, 3.8288633176285067`*^9}, 3.828863486946001*^9, {
   3.829024186548792*^9, 3.8290242206783447`*^9}, {3.8290242622273912`*^9, 
   3.829024297683467*^9}},ExpressionUUID->"9e4ab47b-4075-49ba-8051-\
48e74256a661"],

Cell[BoxData["\<\"BasePanel[initValue, initInputBase, \
initOutputBase]\\n\\tDefine a table and show the convertion from \
initInputBase to initOutputBase\\n\\tThe last two parameters are optional and \
have as default value the base 10 and 2\\n\"\>"], "Output",
 CellChangeTimes->{
  3.828863209921342*^9, 3.8288632440861387`*^9, {3.828863308415094*^9, 
   3.82886332241131*^9}, 3.828863366214877*^9, {3.82886341254347*^9, 
   3.828863438354034*^9}, 3.829020422251272*^9, 3.829021906260207*^9, 
   3.8290221208662167`*^9},
 CellLabel->
  "Out[118]=",ExpressionUUID->"4c7b6027-7739-4b11-b2c4-59637f7558a9"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"BaseConvertorProject", "::", "usage"}], " ", "=", " ", 
  "\"\<BaseConvertor[value, inputBase, outputBase]\n\tDefine a convertion of \
value from base inputBase to outputBase with some\n\tconditions and controls \
about the value and inputBase/outputBase format:\n\tvalue must be an integer\n\
\tinputBase and outputBase must be integer between 2 and 64\t\>\""}]], "Input",\

 InitializationCell->True,
 InitializationGroup->True,
 CellChangeTimes->{{3.828863130557317*^9, 3.828863130558015*^9}, {
  3.828863329694722*^9, 3.8288633552845984`*^9}},
 CellLabel->
  "In[119]:=",ExpressionUUID->"36c52f8c-b143-44bf-adf6-d9a55d959f3e"],

Cell[BoxData["\<\"BaseConvertor[value, inputBase, outputBase]\\n\\tDefine a \
convertion of value from base inputBase to outputBase with \
some\\n\\tconditions and controls about the value and inputBase/outputBase \
format:\\n\\tvalue must be an integer\\n\\tinputBase and outputBase must be \
integer between 2 and 64\\t\"\>"], "Output",
 CellChangeTimes->{{3.828863351326748*^9, 3.828863366243939*^9}, {
   3.8288634125708838`*^9, 3.828863438380015*^9}, 3.8290204222740726`*^9, 
   3.829021906287076*^9, 3.829022120872067*^9},
 CellLabel->
  "Out[119]=",ExpressionUUID->"a3a3538c-1b28-49c8-98aa-b3094ae345b6"]
}, Open  ]],

Cell[BoxData[
 RowBox[{"\n", "\"\<\>"}]], "Input",
 CellChangeTimes->{{3.828861945258877*^9, 3.828862095540606*^9}, {
   3.8288622274319973`*^9, 3.8288622603711843`*^9}, {3.8288631274032507`*^9, 
   3.828863177069255*^9}, {3.828863216637311*^9, 3.828863234154035*^9}, {
   3.828863279895814*^9, 3.828863292614687*^9}, 3.828863343951037*^9},
 CellLabel->
  "In[120]:=",ExpressionUUID->"efc5497a-4240-4b55-b31a-e89f04d2ed94"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Begin", "[", "\"\<Private`\>\"", "]"}]], "Code",
 CellChangeTimes->{{3.8288623104913*^9, 3.828862310622814*^9}},
 CellLabel->
  "In[120]:=",ExpressionUUID->"700f309b-d38f-4f21-a2e9-5c63753d2137"],

Cell[BoxData["\<\"Private`\"\>"], "Output",
 CellChangeTimes->{
  3.828863060788678*^9, 3.828863209962535*^9, 3.828863244147821*^9, {
   3.828863303888382*^9, 3.828863308448839*^9}, {3.828863366298032*^9, 
   3.82886343840774*^9}, 3.8290204222790117`*^9, 3.829021906343066*^9, 
   3.829022120896983*^9},
 CellLabel->
  "Out[120]=",ExpressionUUID->"bea530c7-1a4d-48aa-8f1e-1310a4281bac"]
}, Open  ]],

Cell[BoxData[{
 RowBox[{
  RowBox[{"BasePanelProject", "[", "]"}], " ", ":=", "\n", "\t", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", "}"}], ",", "\n", "\t\t", 
    RowBox[{"Manipulate", "[", "\n", "\t\t   ", 
     RowBox[{
      RowBox[{
       RowBox[{"ToString", "[", "Value", "]"}], "<>", " ", "\"\<(mod \>\"", 
       " ", "<>", " ", 
       RowBox[{"ToString", "[", "InputBase", "]"}], " ", "<>", " ", 
       "\"\<) = \>\"", " ", "<>", " ", "\n", "\t\t   ", 
       RowBox[{"ToString", "[", 
        RowBox[{"BaseConvertorProject", "[", 
         RowBox[{"Value", ",", "InputBase", ",", "OutputBase"}], "]"}], "]"}],
        " ", "<>", " ", "\"\<(mod \>\"", " ", "<>", " ", 
       RowBox[{"ToString", "[", "OutputBase", "]"}], " ", "<>", " ", 
       "\"\<)\>\""}], ",", " ", "\n", "\t\t   ", 
      RowBox[{"{", 
       RowBox[{"Value", ",", "1", ",", "10000", ",", "1"}], "}"}], ",", " ", 
      "\n", "\t\t   ", 
      RowBox[{"{", 
       RowBox[{"InputBase", ",", "2", ",", "36", ",", "1"}], "}"}], ",", " ", 
      "\n", "\t\t   ", 
      RowBox[{"{", 
       RowBox[{"OutputBase", ",", "2", ",", "36", ",", "1"}], "}"}], ",", 
      "\n", "\t\t   ", 
      RowBox[{"Button", "[", 
       RowBox[{"\"\<Genera Esercizio\>\"", ",", "True"}], "]"}], ",", "\n", 
      "\t\t   ", 
      RowBox[{"Button", "[", 
       RowBox[{"\"\<Verifica Risultato\>\"", ",", "True"}], "]"}], ",", "\n", 
      "\t\t   ", 
      RowBox[{"Button", "[", 
       RowBox[{"\"\<Mostra Soluzione\>\"", ",", " ", "True"}], "]"}], ",", 
      "\n", "\t\t   ", 
      RowBox[{"Button", "[", 
       RowBox[{"\"\<Pulisci Soluzione\>\"", ",", " ", "True"}], "]"}], ",", 
      "\n", "\t\t   ", 
      RowBox[{"Button", "[", 
       RowBox[{"\"\<Visualizza Steps\>\"", ",", " ", "True"}], "]"}], ",", 
      " ", 
      RowBox[{"LabelStyle", "\[Rule]", 
       RowBox[{"Directive", "[", 
        RowBox[{"Black", ",", "Italic", ",", "Medium"}], "]"}]}]}], "\n", 
     "\t", "\n", "\t\t", "]"}]}], "\n", "    ", "]"}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"BaseConvertorProject", "[", 
    RowBox[{"valueNum_", ",", " ", "inputBase_", ",", " ", "outputBase_"}], 
    "]"}], " ", ":=", " ", "\n", "\t", 
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", "}"}], ",", "\n", "\t", 
     RowBox[{"If", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"IntegerQ", "[", "valueNum", "]"}], "&&", 
        RowBox[{"IntegerQ", "[", "inputBase", "]"}], "&&", 
        RowBox[{"IntegerQ", "[", "outputBase", "]"}], "&&", "\n", "\t\t", 
        RowBox[{"Between", "[", 
         RowBox[{"inputBase", ",", 
          RowBox[{"{", 
           RowBox[{"2", ",", "36"}], "}"}]}], "]"}], "&&", 
        RowBox[{"Between", "[", 
         RowBox[{"outputBase", ",", 
          RowBox[{"{", 
           RowBox[{"2", ",", "36"}], "}"}]}], "]"}]}], ",", "\n", "\t\t", 
       RowBox[{"BaseForm", "[", 
        RowBox[{
         RowBox[{"FromDigits", "[", 
          RowBox[{
           RowBox[{"ToString", "[", "valueNum", "]"}], ",", "inputBase"}], 
          "]"}], ",", "outputBase"}], "]"}], ",", " ", "\n", "\t\t", 
       RowBox[{
       "Message", "[", 
        "\"\<Bases in not between 2 and 36 or values are not integers!\>\"", 
        "]"}]}], "\n", "\t\t", "]"}]}], "\n", "\t", "]"}]}], "\n", 
  "\n"}], "\n"}], "Code",
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
   3.8290298111808*^9}},ExpressionUUID->"7d260a63-9de2-47a9-9cab-\
505ba266263a"],

Cell[BoxData[" "], "Input",
 CellChangeTimes->{
  3.8290295251982193`*^9},ExpressionUUID->"6884bec5-ac1d-4c2e-a090-\
9de620f6e740"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"End", "[", "]"}]], "Code",
 CellChangeTimes->{{3.8288622644326353`*^9, 3.828862278179311*^9}},
 CellLabel->
  "In[122]:=",ExpressionUUID->"db41fcea-04a3-449b-96cf-521508463e94"],

Cell[BoxData["\<\"Private`\"\>"], "Output",
 CellChangeTimes->{
  3.828862278509144*^9, 3.8288623232287807`*^9, 3.828863076067401*^9, 
   3.828863209988764*^9, 3.828863244177288*^9, 3.828863308476502*^9, 
   3.828863366324464*^9, {3.828863400150956*^9, 3.8288634384328527`*^9}, 
   3.82902042228776*^9, {3.829021898409171*^9, 3.829021906368021*^9}, 
   3.829022120905765*^9},
 CellLabel->
  "Out[122]=",ExpressionUUID->"836b2bc8-001d-4892-8f31-39a747598819"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"EndPackage", "[", "]"}]], "Code",
 CellChangeTimes->{{3.828862267484659*^9, 3.828862283178052*^9}},
 CellLabel->
  "In[271]:=",ExpressionUUID->"8b973a99-d59a-4319-956b-bb5397f6ef18"],

Cell[BoxData[
 TemplateBox[{
  "EndPackage", "noctx", "\"No previous context defined.\"", 2, 271, 26, 
   17800715396607968009, "Local"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.8290277542493677`*^9},
 CellLabel->
  "During evaluation of \
In[271]:=",ExpressionUUID->"194dca43-98c8-4328-90e7-c272cbb2c5fa"],

Cell[BoxData[
 RowBox[{"EndPackage", "[", "]"}]], "Output",
 CellChangeTimes->{3.829027754258374*^9},
 CellLabel->
  "Out[271]=",ExpressionUUID->"d8708b4e-9d8b-4164-a56d-e1c3b3dfa9b6"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"BasePanelProject", "[", "]"}]], "Input",
 CellChangeTimes->{{3.829020406307723*^9, 3.829020478917224*^9}, {
   3.8290205568746347`*^9, 3.829020558594668*^9}, {3.829020706932959*^9, 
   3.829020795242866*^9}, {3.82902122083549*^9, 3.829021271719493*^9}, 
   3.8290214778962097`*^9, {3.829021825218642*^9, 3.829021861605412*^9}, 
   3.8290221032433577`*^9, {3.829022208668679*^9, 3.829022233014722*^9}, {
   3.829022428136636*^9, 3.829022441697166*^9}, {3.829022474516514*^9, 
   3.8290224798479433`*^9}, {3.8290225552963343`*^9, 
   3.8290226103895903`*^9}, {3.829022962002804*^9, 3.829022979420349*^9}, {
   3.829023038627039*^9, 3.829023064661821*^9}, {3.8290232452933273`*^9, 
   3.8290232653720827`*^9}, {3.8290234037888737`*^9, 3.82902344796947*^9}, {
   3.829023842058425*^9, 3.8290238647000637`*^9}, {3.82902402805459*^9, 
   3.829024034400998*^9}, {3.829025294388631*^9, 3.829025305689537*^9}},
 CellLabel->
  "In[310]:=",ExpressionUUID->"f351f401-6814-4f47-b4ee-944b3c84f1c1"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`InputBase$$ = 2, $CellContext`OutputBase$$ =
     2, Value$$ = 1, Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{
      Hold[Value$$], 1, 10000, 1}, {
      Hold[$CellContext`InputBase$$], 2, 36, 1}, {
      Hold[$CellContext`OutputBase$$], 2, 36, 1}, {
      Hold[
       Button["Genera Esercizio", True]], Manipulate`Dump`ThisIsNotAControl}, {
      Hold[
       Button["Verifica Risultato", True]], 
      Manipulate`Dump`ThisIsNotAControl}, {
      Hold[
       Button["Mostra Soluzione", True]], Manipulate`Dump`ThisIsNotAControl}, {
      Hold[
       Button["Pulisci Soluzione", True]], 
      Manipulate`Dump`ThisIsNotAControl}, {
      Hold[
       Button["Visualizza Steps", True]], Manipulate`Dump`ThisIsNotAControl}},
     Typeset`size$$ = {95., {24.548934936523438`, 12.791915893554688`}}, 
    Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = True}, 
    
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`InputBase$$ = 2, $CellContext`OutputBase$$ = 
        2, Value$$ = 1}, "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> StringJoin[
        ToString[Value$$], "(mod ", 
        ToString[$CellContext`InputBase$$], ") = ", 
        ToString[
         BaseConvertorPackage`BaseConvertorProject[
         Value$$, $CellContext`InputBase$$, $CellContext`OutputBase$$]], 
        "(mod ", 
        ToString[$CellContext`OutputBase$$], ")"], 
      "Specifications" :> {{
        Value$$, 1, 10000, 1}, {$CellContext`InputBase$$, 2, 36, 
         1}, {$CellContext`OutputBase$$, 2, 36, 1}, 
        Button["Genera Esercizio", True], 
        Button["Verifica Risultato", True], 
        Button["Mostra Soluzione", True], 
        Button["Pulisci Soluzione", True], 
        Button["Visualizza Steps", True]}, 
      "Options" :> {LabelStyle -> Directive[
          GrayLevel[0], Italic, Medium]}, "DefaultOptions" :> {}],
     ImageSizeCache->{429., {139., 144.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{{3.829022562022347*^9, 3.829022564557789*^9}, {
   3.8290225963942633`*^9, 3.82902261090914*^9}, {3.829022957949073*^9, 
   3.829022979747058*^9}, {3.829023034633461*^9, 3.8290230651697893`*^9}, {
   3.829023096450293*^9, 3.8290231224291687`*^9}, {3.829023202377859*^9, 
   3.8290232658454113`*^9}, {3.829023395572835*^9, 3.829023448296321*^9}, {
   3.82902384311117*^9, 3.8290238651563807`*^9}, 3.829023975857238*^9, {
   3.8290240263320417`*^9, 3.8290240349873333`*^9}, {3.829025299031451*^9, 
   3.829025306023089*^9}, {3.829025423688819*^9, 3.829025427344635*^9}, 
   3.8290255688489027`*^9, {3.829025625320771*^9, 3.829025665343223*^9}, 
   3.829025738035369*^9, 3.829025817536599*^9, 3.829025947274486*^9, 
   3.829026283978155*^9, 3.829026534614429*^9, {3.829026940510147*^9, 
   3.829026944120489*^9}, 3.829026981553952*^9, {3.8290270173552227`*^9, 
   3.82902704881039*^9}, 3.8290271795085573`*^9, {3.8290277576019793`*^9, 
   3.82902780801793*^9}, 3.829027852469771*^9, 3.829027910021131*^9, {
   3.829028051320767*^9, 3.8290280863883133`*^9}, 3.829028188937355*^9, 
   3.829028244780342*^9, {3.829028339796872*^9, 3.829028342448818*^9}, {
   3.8290292046259937`*^9, 3.829029216811988*^9}},
 CellLabel->
  "Out[310]=",ExpressionUUID->"ea5ec1c7-6ab6-4d2f-96a3-762ff1aa7bc0"]
}, Open  ]],

Cell[BoxData[""], "Input",
 CellChangeTimes->{3.829022054347528*^9, 3.8290221129365873`*^9, 
  3.829029815221883*^9, 3.82903371109748*^9},
 CellLabel->
  "In[314]:=",ExpressionUUID->"c6603f1a-04de-4931-8cb9-220e49e2beed"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.829033712981441*^9, 
  3.829033713874751*^9}},ExpressionUUID->"54d151be-f2df-420c-8803-\
80ea9f416807"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.829021927378693*^9, 3.8290219342829647`*^9}, 
   3.8290221124050817`*^9},
 CellLabel->
  "In[126]:=",ExpressionUUID->"27d5b3ff-db8d-4c0c-bcde-05948bb2863f"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.829021949707025*^9, 3.829021960959194*^9}, 
   3.829022110764844*^9},
 CellLabel->
  "In[127]:=",ExpressionUUID->"c4017ba4-8b4a-45df-bd68-ebe3a2ed94ff"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.829022107549349*^9, 3.829022107659553*^9}},
 CellLabel->
  "In[128]:=",ExpressionUUID->"c752de2d-9f14-4f09-8b08-399c3c397af4"]
},
WindowSize->{808, 911},
WindowMargins->{{158, Automatic}, {Automatic, 64}},
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
Cell[558, 20, 2374, 55, 299, "Input",ExpressionUUID->"dc8673ef-990c-4ab4-a413-0ea8a2a2c4a7",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[2957, 79, 370, 8, 46, "Input",ExpressionUUID->"83ba9a24-105e-453d-9ab2-057fc8b72e8f",
 InitializationCell->True],
Cell[3330, 89, 496, 7, 34, "Output",ExpressionUUID->"8a8b9988-26fc-448f-ba1a-bcef0c847550"]
}, Open  ]],
Cell[CellGroupData[{
Cell[3863, 101, 662, 12, 131, "Input",ExpressionUUID->"9e4ab47b-4075-49ba-8051-48e74256a661",
 InitializationCell->True],
Cell[4528, 115, 606, 10, 98, "Output",ExpressionUUID->"4c7b6027-7739-4b11-b2c4-59637f7558a9"]
}, Open  ]],
Cell[CellGroupData[{
Cell[5171, 130, 665, 13, 131, "Input",ExpressionUUID->"36c52f8c-b143-44bf-adf6-d9a55d959f3e",
 InitializationCell->True,
 InitializationGroup->True],
Cell[5839, 145, 611, 9, 119, "Output",ExpressionUUID->"a3a3538c-1b28-49c8-98aa-b3094ae345b6"]
}, Open  ]],
Cell[6465, 157, 423, 7, 52, "Input",ExpressionUUID->"efc5497a-4240-4b55-b31a-e89f04d2ed94"],
Cell[CellGroupData[{
Cell[6913, 168, 219, 4, 52, "Code",ExpressionUUID->"700f309b-d38f-4f21-a2e9-5c63753d2137"],
Cell[7135, 174, 386, 7, 34, "Output",ExpressionUUID->"bea530c7-1a4d-48aa-8f1e-1310a4281bac"]
}, Open  ]],
Cell[7536, 184, 6292, 120, 547, "Code",ExpressionUUID->"7d260a63-9de2-47a9-9cab-505ba266263a"],
Cell[13831, 306, 131, 3, 30, "Input",ExpressionUUID->"6884bec5-ac1d-4c2e-a090-9de620f6e740"],
Cell[CellGroupData[{
Cell[13987, 313, 201, 4, 52, "Code",ExpressionUUID->"db41fcea-04a3-449b-96cf-521508463e94"],
Cell[14191, 319, 458, 8, 34, "Output",ExpressionUUID->"836b2bc8-001d-4892-8f31-39a747598819"]
}, Open  ]],
Cell[CellGroupData[{
Cell[14686, 332, 206, 4, 52, "Code",ExpressionUUID->"8b973a99-d59a-4319-956b-bb5397f6ef18"],
Cell[14895, 338, 328, 8, 24, "Message",ExpressionUUID->"194dca43-98c8-4328-90e7-c272cbb2c5fa"],
Cell[15226, 348, 184, 4, 34, "Output",ExpressionUUID->"d8708b4e-9d8b-4164-a56d-e1c3b3dfa9b6"]
}, Open  ]],
Cell[CellGroupData[{
Cell[15447, 357, 1008, 15, 30, "Input",ExpressionUUID->"f351f401-6814-4f47-b4ee-944b3c84f1c1"],
Cell[16458, 374, 4116, 80, 302, "Output",ExpressionUUID->"ea5ec1c7-6ab6-4d2f-96a3-762ff1aa7bc0"]
}, Open  ]],
Cell[20589, 457, 221, 4, 30, "Input",ExpressionUUID->"c6603f1a-04de-4931-8cb9-220e49e2beed"],
Cell[20813, 463, 152, 3, 30, "Input",ExpressionUUID->"54d151be-f2df-420c-8803-80ea9f416807"],
Cell[20968, 468, 205, 4, 30, "Input",ExpressionUUID->"27d5b3ff-db8d-4c0c-bcde-05948bb2863f"],
Cell[21176, 474, 201, 4, 30, InheritFromParent,ExpressionUUID->"c4017ba4-8b4a-45df-bd68-ebe3a2ed94ff"],
Cell[21380, 480, 175, 3, 30, InheritFromParent,ExpressionUUID->"c752de2d-9f14-4f09-8b08-399c3c397af4"]
}
]
*)

