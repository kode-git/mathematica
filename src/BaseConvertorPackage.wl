(* Content-type: application/vnd.wolfram.mathematica *)

(*** Wolfram Notebook File ***)
(* http://www.wolfram.com/nb *)

(* CreatedBy='Mathematica 12.2' *)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       158,          7]
NotebookDataLength[     27622,        597]
NotebookOptionsPosition[     25958,        559]
NotebookOutlinePosition[     26358,        575]
CellTagsIndexPosition[     26315,        572]
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
     RowBox[{"n", "."}]}]}], " ", "*)"}], "\[IndentingNewLine]", 
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
  3.828863430302635*^9, 3.828863433476419*^9}, {3.8291998122784653`*^9, 
  3.829199813007018*^9}},
 CellLabel->
  "In[702]:=",ExpressionUUID->"dc8673ef-990c-4ab4-a413-0ea8a2a2c4a7"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"BeginPackage", "[", "\"\<BaseConvertorPackage`\>\"", "]"}]], "Input",\

 InitializationCell->True,
 CellChangeTimes->{{3.828861912575403*^9, 3.82886193066146*^9}, {
  3.8288623030616407`*^9, 3.828862303811872*^9}, {3.828863270883473*^9, 
  3.828863273964057*^9}},
 CellLabel->
  "In[703]:=",ExpressionUUID->"83ba9a24-105e-453d-9ab2-057fc8b72e8f"],

Cell[BoxData["\<\"BaseConvertorPackage`\"\>"], "Output",
 CellChangeTimes->{{3.8288619253880987`*^9, 3.8288619312236853`*^9}, 
   3.828862313347885*^9, 3.828863054351088*^9, 3.828863209896085*^9, 
   3.8288632440802917`*^9, 3.82886327447279*^9, 3.828863308403469*^9, 
   3.8288633662016153`*^9, {3.8288634125361233`*^9, 3.828863438348412*^9}, 
   3.829020422245496*^9, 3.829021906253648*^9, 3.829022120839266*^9, {
   3.829187234782084*^9, 3.829187234967944*^9}, 3.829191617461318*^9, 
   3.829191900906138*^9, 3.829193157468171*^9, 3.8291936786974*^9, 
   3.82919507090889*^9, 3.829195154848454*^9, 3.8291999370100946`*^9},
 CellLabel->
  "Out[703]=",ExpressionUUID->"67c1c568-ab85-4ccb-8c8c-645c8366500b"]
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
   3.829024297683467*^9}},
 CellLabel->
  "In[704]:=",ExpressionUUID->"9e4ab47b-4075-49ba-8051-48e74256a661"],

Cell[BoxData["\<\"BasePanel[]\\n\\tDefine a table and show the convertion \
from an input base to an output base defined by manipulation tool of the \
panel. The last two parameters are optional and have as default value the \
base 10 and 2\\n\"\>"], "Output",
 CellChangeTimes->{
  3.828863209921342*^9, 3.8288632440861387`*^9, {3.828863308415094*^9, 
   3.82886332241131*^9}, 3.828863366214877*^9, {3.82886341254347*^9, 
   3.828863438354034*^9}, 3.829020422251272*^9, 3.829021906260207*^9, 
   3.8290221208662167`*^9, {3.8291872347888737`*^9, 3.8291872350190897`*^9}, 
   3.8291916175162687`*^9, 3.829191901008649*^9, 3.8291931575535316`*^9, 
   3.829193678742885*^9, 3.829195070927163*^9, 3.829195154855125*^9, 
   3.829199937017391*^9},
 CellLabel->
  "Out[704]=",ExpressionUUID->"93700b18-0854-4139-b9ea-94ad91c2d2bc"]
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
  "In[705]:=",ExpressionUUID->"36c52f8c-b143-44bf-adf6-d9a55d959f3e"],

Cell[BoxData["\<\"BaseConvertor[value, inputBase, outputBase]\\n\\tDefine a \
convertion of value from base inputBase to outputBase with \
some\\n\\tconditions and controls about the value and inputBase/outputBase \
format:\\n\\tvalue must be an integer\\n\\tinputBase and outputBase must be \
integer between 2 and 64\\t\"\>"], "Output",
 CellChangeTimes->{{3.828863351326748*^9, 3.828863366243939*^9}, {
   3.8288634125708838`*^9, 3.828863438380015*^9}, 3.8290204222740726`*^9, 
   3.829021906287076*^9, 3.829022120872067*^9, {3.8291872347950077`*^9, 
   3.829187235026163*^9}, 3.829191617522049*^9, 3.829191901128326*^9, 
   3.8291931575603523`*^9, 3.829193678764759*^9, 3.829195070961483*^9, 
   3.829195154907599*^9, 3.8291999370435553`*^9},
 CellLabel->
  "Out[705]=",ExpressionUUID->"b38ea744-fdf6-4b54-89c1-7764d63bd725"]
}, Open  ]],

Cell[BoxData[
 RowBox[{"\n", "\"\<\>"}]], "Input",
 CellChangeTimes->{{3.828861945258877*^9, 3.828862095540606*^9}, {
   3.8288622274319973`*^9, 3.8288622603711843`*^9}, {3.8288631274032507`*^9, 
   3.828863177069255*^9}, {3.828863216637311*^9, 3.828863234154035*^9}, {
   3.828863279895814*^9, 3.828863292614687*^9}, 3.828863343951037*^9},
 EmphasizeSyntaxErrors->True,
 CellLabel->
  "In[706]:=",ExpressionUUID->"efc5497a-4240-4b55-b31a-e89f04d2ed94"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Begin", "[", "\"\<Private`\>\"", "]"}]], "Code",
 CellChangeTimes->{{3.8288623104913*^9, 3.828862310622814*^9}},
 CellLabel->
  "In[706]:=",ExpressionUUID->"700f309b-d38f-4f21-a2e9-5c63753d2137"],

Cell[BoxData["\<\"Private`\"\>"], "Output",
 CellChangeTimes->{
  3.828863060788678*^9, 3.828863209962535*^9, 3.828863244147821*^9, {
   3.828863303888382*^9, 3.828863308448839*^9}, {3.828863366298032*^9, 
   3.82886343840774*^9}, 3.8290204222790117`*^9, 3.829021906343066*^9, 
   3.829022120896983*^9, {3.8291872348449507`*^9, 3.829187235092498*^9}, 
   3.8291916175282593`*^9, 3.8291919011728888`*^9, 3.8291931576168118`*^9, 
   3.8291936788079033`*^9, 3.82919507097701*^9, 3.829195155014367*^9, 
   3.829199937057239*^9},
 CellLabel->
  "Out[706]=",ExpressionUUID->"f4d594fb-18e1-4c37-b1ab-a9168e8949bd"]
}, Open  ]],

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"BasePanelProject", "[", "]"}], " ", ":=", "\n", "\t", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", "}"}], ",", "\n", "\t\t", 
      RowBox[{"Manipulate", "[", "\n", "\t\t   ", 
       RowBox[{"Value", ",", " ", "\n", "\t\t   ", 
        RowBox[{"{", 
         RowBox[{"Value", ",", "1", ",", "10000", ",", "1"}], "}"}], ",", " ",
         "\n", "\t\t   ", 
        RowBox[{"{", 
         RowBox[{"InputBase", ",", "2", ",", "36", ",", "1"}], "}"}], ",", 
        " ", "\n", "\t\t   ", 
        RowBox[{"{", 
         RowBox[{"OutputBase", ",", "2", ",", "36", ",", "1"}], "}"}], ",", 
        "\n", "\t\t   ", 
        RowBox[{"Button", "[", 
         RowBox[{"\"\<Genera Esercizio\>\"", ",", "True"}], "]"}], ",", "\n", 
        "\t\t   ", 
        RowBox[{"Button", "[", 
         RowBox[{"\"\<Verifica Risultato\>\"", ",", "True"}], "]"}], ",", 
        "\n", "\t\t   ", 
        RowBox[{"Button", "[", 
         RowBox[{"\"\<Mostra Soluzione\>\"", ",", " ", "True"}], "]"}], ",", 
        "\n", "\t\t   ", 
        RowBox[{"Button", "[", 
         RowBox[{"\"\<Pulisci Soluzione\>\"", ",", " ", "True"}], "]"}]}], 
       "\n", "\t       ", "]"}]}], "\n", "    ", "]"}]}], ";"}], "\n", "    ",
   "\n", "    "}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"BaseConvertorProject", "[", 
     RowBox[{"valueNum_", ",", " ", "inputBase_", ",", " ", "outputBase_"}], 
     "]"}], " ", ":=", " ", "\n", "\t", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
       "val", ",", " ", "out", ",", " ", "res", ",", " ", "rest", ",", " ", 
        "result", ",", " ", "strLine"}], "}"}], ",", "\n", "\t", 
      RowBox[{
       RowBox[{"result", " ", "=", " ", 
        RowBox[{"{", "}"}]}], ";", " ", 
       RowBox[{"(*", " ", 
        RowBox[{
        "list", " ", "will", " ", "be", " ", "append", " ", "elements", " ", 
         "and", " ", "put", " ", "it", " ", "in", " ", "a", " ", "column", 
         " ", "function"}], " ", "*)"}], "\n", "\t", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"IntegerQ", "[", "valueNum", "]"}], "&&", 
          RowBox[{"IntegerQ", "[", "inputBase", "]"}], "&&", 
          RowBox[{"IntegerQ", "[", "outputBase", "]"}]}], ",", "\n", "\t\t", 
         RowBox[{"(*", " ", 
          RowBox[{"BaseForm", "[", 
           RowBox[{
            RowBox[{"FromDigits", "[", 
             RowBox[{
              RowBox[{"ToString", "[", "valueNum", "]"}], ",", "inputBase"}], 
             "]"}], ",", "outputBase"}], "]"}], " ", "*)"}], "\n", "\t\t", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{"inputBase", " ", "\[Equal]", " ", "outputBase"}], ",", 
           "\n", "\t\t    ", 
           RowBox[{"(*", " ", 
            RowBox[{
            "than", " ", "result", " ", "is", " ", "equal", " ", "to", " ", 
             "valueNum"}], " ", "*)"}], "\n", "\t\t    ", 
           RowBox[{
           "Message", "[", 
            "\"\<Input Base and OutputBase are the same, value don't change\>\
\"", "]"}], "\n", "\t\t\t", ",", "\n", "\t\t\t", 
           RowBox[{"(*", " ", "else", " ", "*)"}], "\n", "\t\t\t", 
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{"inputBase", " ", "\[Equal]", " ", "10"}], ",", " ", 
             "\n", "\t\t       ", 
             RowBox[{"(*", " ", 
              RowBox[{"10", " ", "TO", " ", "N"}], " ", "*)"}], "\n", 
             "\t\t       ", 
             RowBox[{"Convertor10ToN", "[", 
              RowBox[{"valueNum", ",", " ", "outputBase"}], "]"}], ",", "\n", 
             "\t\t       ", ",", " ", "\n", "\t\t       ", 
             RowBox[{"(*", " ", 
              RowBox[{
              "else", " ", "the", " ", "input", " ", "base", " ", "is", " ", 
               "not", " ", "10"}], " ", "*)"}], "\n", "\t\t       ", 
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{"outputBase", " ", "\[Equal]", " ", "10"}], ",", "\n", 
               "\t\t          ", 
               RowBox[{"(*", " ", 
                RowBox[{"N", " ", "to", " ", "10"}], " ", "*)"}], "\n", 
               "\t\t          ", 
               RowBox[{"ConvertorNTo10", "[", 
                RowBox[{"valueNum", ",", " ", "inputBase"}], "]"}], ",", "\n",
                "\t\t          ", 
               RowBox[{"(*", " ", 
                RowBox[{
                "X", " ", "To", " ", "Y", " ", "with", " ", "X", " ", "and", 
                 " ", "Y", " ", "diff", " ", "10"}], " ", "*)"}], "\n", 
               "\t\t          ", 
               RowBox[{"ConvertorDiff10", "[", 
                RowBox[{
                "valueNum", ",", " ", "inputBase", ",", " ", "outputBase"}], 
                "]"}]}], "\n", "\t\t         ", "]"}]}], "\n", "\t\t      ", 
            "]"}]}], "     ", "\n", "\t\t   ", "]"}], "\n", "\t\t", ",", "\n",
          "\t\t", 
         RowBox[{
         "Message", "[", 
          "\"\<Bases in not between 2 and 36 or values are not integers!\>\"",
           "]"}]}], "\n", "\t\t", "]"}]}]}], "\n", "\t", "]"}]}], ";"}], "\n",
   "\t", "\n", "\t\t   ", "\n", "\t"}], "\n"}], "Code",
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
   3.829197693439569*^9}, {3.829199885778887*^9, 3.829199893357807*^9}},
 CellLabel->
  "In[707]:=",ExpressionUUID->"7d260a63-9de2-47a9-9cab-505ba266263a"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"Internal", " ", "functions"}], " ", "*)"}], "\n", "\n", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"Convertor10ToN", "[", 
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
         "result", ",", " ", "strLine", ",", " ", "restComp"}], "}"}], ",", 
       "\n", "\t\t   ", 
       RowBox[{
        RowBox[{"val", " ", "=", " ", "valueNum"}], ";", "\n", "\t\t   ", 
        RowBox[{"out", " ", "=", " ", "outputBase"}], ";", "\n", "\t\t   ", 
        RowBox[{"res", " ", "=", " ", 
         RowBox[{"Quotient", "[", 
          RowBox[{"val", ",", " ", "out"}], "]"}]}], ";", "\n", "\t\t   ", 
        RowBox[{"rest", " ", "=", " ", 
         RowBox[{"Mod", "[", 
          RowBox[{"val", ",", " ", "out"}], "]"}]}], ";", "\n", "\t\t   ", 
        RowBox[{"restComp", " ", "=", " ", 
         RowBox[{"{", "}"}]}], ";", "\n", "\t\t   ", 
        RowBox[{"result", " ", "=", " ", 
         RowBox[{"{", "}"}]}], ";", "\n", "\t\t   ", 
        RowBox[{"While", "[", 
         RowBox[{
          RowBox[{"res", " ", "\[NotEqual]", " ", "0"}], ",", " ", "\n", 
          "\t\t       ", 
          RowBox[{
           RowBox[{"res", " ", "=", " ", 
            RowBox[{"Quotient", "[", 
             RowBox[{"val", ",", " ", "out"}], "]"}]}], ";", "\n", 
           "\t\t       ", 
           RowBox[{"rest", " ", "=", " ", 
            RowBox[{"Mod", "[", 
             RowBox[{"val", ",", "out"}], "]"}]}], ";", "\n", "\t\t       ", 
           RowBox[{"AppendTo", "[", 
            RowBox[{"restComp", ",", " ", "rest"}], "]"}], ";", "\n", 
           "\t\t       ", 
           RowBox[{"strLine", " ", "=", " ", 
            RowBox[{
             RowBox[{"ToString", "[", "val", "]"}], " ", "<>", " ", 
             "\"\< / \>\"", " ", "<>", " ", 
             RowBox[{"ToString", "[", "out", "]"}], " ", "<>", " ", 
             "\"\< = \>\"", " ", "<>", " ", 
             RowBox[{"ToString", "[", "res", "]"}], " ", "<>", " ", 
             "\"\< R \>\"", " ", "<>", " ", 
             RowBox[{"ToString", "[", "rest", "]"}]}]}], ";", "\n", 
           "\t\t       ", 
           RowBox[{"AppendTo", "[", 
            RowBox[{"result", ",", " ", "strLine"}], "]"}], ";", "\n", 
           "\t\t       ", 
           RowBox[{"AppendTo", "[", 
            RowBox[{"result", ",", " ", "\"\<----------------\>\""}], "]"}], 
           ";", "\n", "\t\t       ", 
           RowBox[{"val", " ", "=", " ", "res"}], ";"}]}], " ", "\n", 
         "\t\t   ", "]"}], ";", "\n", "\t\t   ", 
        RowBox[{"(*", " ", 
         RowBox[{"Print", " ", "section"}], " ", "*)"}], 
        "\[IndentingNewLine]", "                   ", 
        RowBox[{"AppendTo", "[", 
         RowBox[{"result", ",", " ", 
          RowBox[{"StringJoin", "[", 
           RowBox[{"\"\<Result is: \>\"", ",", " ", 
            RowBox[{"ToString", "[", 
             RowBox[{"FromDigits", "[", 
              RowBox[{"Reverse", "[", "restComp", "]"}], "]"}], "]"}]}], 
           "]"}]}], "]"}], ";", "\n", "     ", 
        RowBox[{"Column", "[", "result", "]"}]}]}], "\n", "\t\t   ", 
      "\[IndentingNewLine]", "                 ", "\[IndentingNewLine]", 
      "]"}]}], ";"}], "\n", "\n", "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"ConvertorNTo10", "[", 
      RowBox[{"valueNum2_", ",", " ", "inputBase2_"}], "]"}], ":=", "\n", 
     "   ", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
        "listDigits", ",", " ", "expPos", ",", " ", "result", ",", " ", "i", 
         ",", " ", "resultInt", ",", " ", "size"}], "}"}], ",", " ", "\n", 
       "      ", 
       RowBox[{
        RowBox[{"listDigits", " ", "=", " ", 
         RowBox[{"IntegerDigits", "[", "valueNum2", "]"}]}], ";", 
        RowBox[{"(*", " ", 
         RowBox[{
         "I", " ", "have", " ", "a", " ", "list", " ", "of", " ", "digits"}], 
         " ", "*)"}], "\n", "      ", 
        RowBox[{"size", " ", "=", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"Length", "[", "listDigits", "]"}], "-", "1"}], ")"}]}], 
        ";", "\n", "      ", 
        RowBox[{"expPos", " ", "=", " ", 
         RowBox[{"Reverse", "[", 
          RowBox[{"Range", "[", 
           RowBox[{"0", ",", " ", "size"}], "]"}], "]"}]}], ";", "\n", 
        "      ", 
        RowBox[{"result", " ", "=", " ", 
         RowBox[{"{", "}"}]}], ";", " ", 
        RowBox[{"(*", " ", 
         RowBox[{"List", " ", "of", " ", "strings"}], " ", "*)"}], "\n", 
        "      ", 
        RowBox[{"(*", " ", 
         RowBox[{"Formatting", " ", "expression"}], " ", "*)"}], "\n", 
        "      ", 
        RowBox[{"For", "[", 
         RowBox[{
          RowBox[{"i", " ", "=", " ", "1"}], ",", " ", 
          RowBox[{"i", " ", "<=", " ", "size"}], ",", " ", 
          RowBox[{"i", "++"}], ",", " ", "\n", "           ", 
          RowBox[{
           RowBox[{"AppendTo", "[", 
            RowBox[{"result", ",", " ", 
             RowBox[{
              RowBox[{"ToString", "[", 
               RowBox[{"listDigits", "[", 
                RowBox[{"[", "i", "]"}], "]"}], "]"}], " ", "<>", " ", 
              "\"\<x2^\>\"", " ", "<>", " ", 
              RowBox[{"ToString", "[", 
               RowBox[{"size", " ", "-", "i", " ", "+", " ", "1"}], "]"}], 
              " ", "<>", " ", "\"\< + \>\""}]}], "]"}], ";"}]}], "\n", 
         "         ", "]"}], ";", "\n", "       ", 
        RowBox[{"AppendTo", "[", 
         RowBox[{"result", ",", " ", 
          RowBox[{
           RowBox[{"ToString", "[", 
            RowBox[{"listDigits", "[", 
             RowBox[{"[", 
              RowBox[{"size", " ", "+", " ", "1"}], "]"}], "]"}], "]"}], " ", 
           "<>", " ", "\"\<x2^\>\"", " ", "<>", " ", 
           RowBox[{"ToString", "[", "0", "]"}]}]}], "]"}], ";", "\n", "     ",
         "\n", "      ", 
        RowBox[{"resultInt", " ", "=", " ", 
         RowBox[{"FromDigits", "[", 
          RowBox[{
           RowBox[{"ToString", "[", "valueNum2", "]"}], ",", " ", 
           "inputBase2"}], "]"}]}], ";", "\n", "      ", 
        RowBox[{"AppendTo", "[", 
         RowBox[{"result", ",", " ", 
          RowBox[{"\"\< = \>\"", " ", "<>", " ", 
           RowBox[{"ToString", "[", "resultInt", "]"}]}]}], "]"}], ";", "\n", 
        "      ", 
        RowBox[{"Row", "[", "result", "]"}]}]}], "\n", "      ", "\n", 
      "      ", "\n", "   ", "]"}]}], ";"}], "\n", "   ", "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"ConvertorDiff10", "[", 
      RowBox[{
      "valueNum3_", ",", " ", "inputBase3_", ",", " ", "outputBase3_"}], 
      "]"}], " ", ":=", "\n", "\t", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", "}"}], ",", " ", "\n", "\t", "True"}], "\n", "]"}]}], 
    ";"}]}]}]], "Code",
 CellChangeTimes->CompressedData["
1:eJxTTMoPSmViYGAQBWIQfeSM3PbZ7W8cj5x7tANEu0in8s4B0r94zPlAtPmH
LEkQvXzRayUQXbPijhaINlAI0APRt6ITrED0rtD1DiBaRSXdA0TzcLQGgmhn
3YtRIDr60IdSEJ3/5WsViG5Uru8G0WfMRCaA6Afp6TNB9LpJ9nNBdOGeVYtA
9OT/B5eB6Pv3Hx8C0UKqnMdBdP3ita9BtMIun48g+opzq8hcIF2U/UkCRMfx
eziB6NitUztBtFG4UheItpv2/AGIFrL78AhEq33geQ6iX0sZfwPRE9JqfoPo
PiZBhXlAWrKpyRBE702McQXRfGz3Q0G0hcz/CBCt9TcjAUS3TfyVDqIBKvOz
Gw==
  "],
 CellLabel->
  "In[709]:=",ExpressionUUID->"4bac3604-d82b-4d99-bdb1-74e42b8e69b6"]
},
WindowSize->{Full, Full},
WindowMargins->{{161, Automatic}, {Automatic, 69}},
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
Cell[558, 20, 2141, 52, 278, "Input",ExpressionUUID->"dc8673ef-990c-4ab4-a413-0ea8a2a2c4a7",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[2724, 76, 370, 8, 46, "Input",ExpressionUUID->"83ba9a24-105e-453d-9ab2-057fc8b72e8f",
 InitializationCell->True],
Cell[3097, 86, 707, 10, 34, "Output",ExpressionUUID->"67c1c568-ab85-4ccb-8c8c-645c8366500b"]
}, Open  ]],
Cell[CellGroupData[{
Cell[3841, 101, 688, 13, 131, "Input",ExpressionUUID->"9e4ab47b-4075-49ba-8051-48e74256a661",
 InitializationCell->True],
Cell[4532, 116, 824, 13, 119, "Output",ExpressionUUID->"93700b18-0854-4139-b9ea-94ad91c2d2bc"]
}, Open  ]],
Cell[CellGroupData[{
Cell[5393, 134, 665, 13, 131, "Input",ExpressionUUID->"36c52f8c-b143-44bf-adf6-d9a55d959f3e",
 InitializationCell->True,
 InitializationGroup->True],
Cell[6061, 149, 829, 12, 119, "Output",ExpressionUUID->"b38ea744-fdf6-4b54-89c1-7764d63bd725"]
}, Open  ]],
Cell[6905, 164, 453, 8, 52, "Input",ExpressionUUID->"efc5497a-4240-4b55-b31a-e89f04d2ed94"],
Cell[CellGroupData[{
Cell[7383, 176, 219, 4, 52, "Code",ExpressionUUID->"700f309b-d38f-4f21-a2e9-5c63753d2137"],
Cell[7605, 182, 607, 10, 34, "Output",ExpressionUUID->"f4d594fb-18e1-4c37-b1ab-a9168e8949bd"]
}, Open  ]],
Cell[8227, 195, 10110, 184, 908, "Code",ExpressionUUID->"7d260a63-9de2-47a9-9cab-505ba266263a"],
Cell[18340, 381, 7614, 176, 1003, "Code",ExpressionUUID->"4bac3604-d82b-4d99-bdb1-74e42b8e69b6"]
}
]
*)

