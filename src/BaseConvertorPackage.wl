(* Content-type: application/vnd.wolfram.mathematica *)

(*** Wolfram Notebook File ***)
(* http://www.wolfram.com/nb *)

(* CreatedBy='Mathematica 12.2' *)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       158,          7]
NotebookDataLength[    147229,       2807]
NotebookOptionsPosition[    145557,       2770]
NotebookOutlinePosition[    145984,       2787]
CellTagsIndexPosition[    145941,       2784]
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
  "In[1666]:=",ExpressionUUID->"dc8673ef-990c-4ab4-a413-0ea8a2a2c4a7"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"BeginPackage", "[", "\"\<BaseConvertorPackage`\>\"", "]"}]], "Input",\

 InitializationCell->True,
 CellChangeTimes->{{3.828861912575403*^9, 3.82886193066146*^9}, {
  3.8288623030616407`*^9, 3.828862303811872*^9}, {3.828863270883473*^9, 
  3.828863273964057*^9}},
 CellLabel->
  "In[1667]:=",ExpressionUUID->"83ba9a24-105e-453d-9ab2-057fc8b72e8f"],

Cell[BoxData["\<\"BaseConvertorPackage`\"\>"], "Output",
 CellChangeTimes->{{3.8288619253880987`*^9, 3.8288619312236853`*^9}, 
   3.828862313347885*^9, 3.828863054351088*^9, 3.828863209896085*^9, 
   3.8288632440802917`*^9, 3.82886327447279*^9, 3.828863308403469*^9, 
   3.8288633662016153`*^9, {3.8288634125361233`*^9, 3.828863438348412*^9}, 
   3.829020422245496*^9, 3.829021906253648*^9, 3.829022120839266*^9, {
   3.829187234782084*^9, 3.829187234967944*^9}, 3.829191617461318*^9, 
   3.829191900906138*^9, 3.829193157468171*^9, 3.8291936786974*^9, 
   3.82919507090889*^9, 3.829195154848454*^9, 3.8291999370100946`*^9, {
   3.829363722814807*^9, 3.829363722901814*^9}, {3.829447274354781*^9, 
   3.829447274450078*^9}, 3.829619323213194*^9, {3.8296257411716843`*^9, 
   3.829625741305622*^9}, 3.829704584112108*^9, {3.829875098682187*^9, 
   3.8298750987925587`*^9}, 3.8299869781540747`*^9, 3.829987035553053*^9, 
   3.829987161542314*^9, 3.829987212691042*^9, {3.829988723292386*^9, 
   3.829988738031794*^9}, 3.829988784385125*^9, 3.829988860940482*^9, 
   3.82998891009752*^9, 3.8299891507227*^9, {3.8299894761030684`*^9, 
   3.829989502308887*^9}, {3.8299896427345047`*^9, 3.829989690117031*^9}, {
   3.829989772075674*^9, 3.829989794256609*^9}, {3.8299898672033987`*^9, 
   3.829989870767108*^9}, 3.8299900433577633`*^9, 3.829990130162668*^9, 
   3.829990329177829*^9, 3.8299904098090754`*^9, 3.829991127850398*^9, 
   3.829992490024069*^9, 3.829992777839416*^9, 3.829993076211521*^9, 
   3.829993447746089*^9, 3.829993521797317*^9, 3.829993674577464*^9, 
   3.829994319398818*^9, 3.829996096256329*^9, 3.8299962208889227`*^9, 
   3.829996589638791*^9, 3.829996725132834*^9, 3.829999097772977*^9, 
   3.830000405818541*^9, 3.83000048395463*^9, 3.8300012847944098`*^9, 
   3.83000160069978*^9, 3.830002087441877*^9, 3.830002133610693*^9, {
   3.83017152320304*^9, 3.830171523343128*^9}, {3.830171632418763*^9, 
   3.830171656645101*^9}, 3.830171722669381*^9, 3.8301718369945087`*^9, 
   3.830172242624501*^9, 3.830172325487711*^9, {3.830172479337256*^9, 
   3.830172480917012*^9}, 3.8301729971116*^9, 3.8301735233677397`*^9, 
   3.830173623403686*^9, 3.8301736590906467`*^9, 3.830173768982974*^9, 
   3.830173877795092*^9, {3.8301739126381273`*^9, 3.830173917054779*^9}, 
   3.830174022957127*^9, {3.830174706144519*^9, 3.830174725251796*^9}, 
   3.830174838388163*^9, 3.830174937396338*^9, 3.830174983403844*^9, 
   3.8301750513572817`*^9, 3.830175220224279*^9, 3.8301754361005697`*^9, 
   3.83017551900422*^9, 3.830175629576038*^9, 3.830175675651215*^9, {
   3.8301757370551157`*^9, 3.830175758873468*^9}, {3.830175893175024*^9, 
   3.8301759008196707`*^9}, 3.830175967389271*^9, {3.830176063678711*^9, 
   3.8301760712830887`*^9}, 3.830176128244512*^9, 3.830176175220213*^9, 
   3.830176390895994*^9, 3.830176509557605*^9, 3.830176574619935*^9, 
   3.83017670502985*^9, {3.830176850617694*^9, 3.830176877592507*^9}, 
   3.830176927066677*^9, 3.830177034057899*^9, 3.830177127601355*^9, 
   3.8301772035635977`*^9, 3.830177458632862*^9, 3.830177491920422*^9, {
   3.830177559677144*^9, 3.8301775842416573`*^9}, 3.830177645358951*^9, 
   3.830177695325425*^9, 3.83017783545059*^9, 3.830177915601552*^9, 
   3.830178219688993*^9, 3.8301782858866787`*^9, {3.830178640211255*^9, 
   3.8301786558924437`*^9}, 3.830178860614249*^9, 3.830178895132967*^9, 
   3.830179049131876*^9, 3.830179132513239*^9, 3.83017916869415*^9, 
   3.8301793002887287`*^9, 3.830179409495243*^9, {3.830179440740155*^9, 
   3.830179461317246*^9}, 3.830179508631381*^9, 3.830179550492168*^9, 
   3.830179821084586*^9, 3.830180848306535*^9, 3.830181297652274*^9, 
   3.830182047380352*^9, 3.830182083496567*^9},
 CellLabel->
  "Out[1667]=",ExpressionUUID->"d49ff7b4-3ced-47dd-a7f6-2768cad82f1a"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"UniversalExercisesPanel", "::", "usage"}], " ", "=", " ", 
   "\"\<UniversalExercisePanelProject[]\n\tDefine a table and show the \
convertion from an input base to an output base defined by manipulation tool \
of the panel. The last two parameters are optional and have as default value \
the base 10 and 2\n\>\""}], ";"}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.828862098345055*^9, 3.828862224016768*^9}, {
   3.828863316784349*^9, 3.8288633176285067`*^9}, 3.828863486946001*^9, {
   3.829024186548792*^9, 3.8290242206783447`*^9}, {3.8290242622273912`*^9, 
   3.829024297683467*^9}, {3.8298765818056793`*^9, 3.829876588903592*^9}, {
   3.829987019156209*^9, 3.8299870202693653`*^9}, 3.8299938767408123`*^9},
 CellLabel->
  "In[1668]:=",ExpressionUUID->"9e4ab47b-4075-49ba-8051-48e74256a661"],

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"DisplayBaseConverterManipulate", "::", "usage"}], " ", "=", " ", 
    "\"\<DisplayBaseConvertorManipulate[value, inputBase, outputBase]\n\t\
Define a convertion of value from base inputBase to outputBase with some\n\t\
conditions and controls about the value and inputBase/outputBase format:\n\t\
value must be an integer\n\tinputBase and outputBase must be integer between \
2 and 62\t\>\""}], ";"}], "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"SolveConvertion", "::", "usage"}], " ", "=", " ", 
   "\"\<SolveConvertion[valueNum_, inputBase_, outputBase_]\n   Define the \
result of the convertion of valueNum in base 'inputBase' to 'outputBase' \n   \
with no showing the logic procedure behind the convertion itself \>\""}], 
  ";"}]}], "Input",
 InitializationCell->True,
 InitializationGroup->True,
 CellChangeTimes->{{3.828863130557317*^9, 3.828863130558015*^9}, {
  3.828863329694722*^9, 3.8288633552845984`*^9}, {3.8294472638856373`*^9, 
  3.8294472640440893`*^9}, {3.829447863518664*^9, 3.8294478638376427`*^9}, {
  3.8294499358461037`*^9, 3.829449957563003*^9}, {3.829807917832308*^9, 
  3.829807917992351*^9}, {3.8298765687642803`*^9, 3.8298765729209347`*^9}, {
  3.8299937732361917`*^9, 3.829993885684105*^9}, {3.830000462239594*^9, 
  3.830000467108876*^9}, {3.830175924736127*^9, 3.830175925101657*^9}},
 CellLabel->
  "In[1669]:=",ExpressionUUID->"36c52f8c-b143-44bf-adf6-d9a55d959f3e"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.828861945258877*^9, 3.828862095540606*^9}, {
   3.8288622274319973`*^9, 3.8288622603711843`*^9}, {3.8288631274032507`*^9, 
   3.828863177069255*^9}, {3.828863216637311*^9, 3.828863234154035*^9}, {
   3.828863279895814*^9, 3.828863292614687*^9}, 3.828863343951037*^9, {
   3.82971505228514*^9, 3.8297150524560432`*^9}},
 CellLabel->
  "In[1671]:=",ExpressionUUID->"efc5497a-4240-4b55-b31a-e89f04d2ed94"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Begin", "[", "\"\<Private`\>\"", "]"}]], "Code",
 CellChangeTimes->{{3.8288623104913*^9, 3.828862310622814*^9}},
 CellLabel->
  "In[1672]:=",ExpressionUUID->"700f309b-d38f-4f21-a2e9-5c63753d2137"],

Cell[BoxData["\<\"Private`\"\>"], "Output",
 CellChangeTimes->{
  3.828863060788678*^9, 3.828863209962535*^9, 3.828863244147821*^9, {
   3.828863303888382*^9, 3.828863308448839*^9}, {3.828863366298032*^9, 
   3.82886343840774*^9}, 3.8290204222790117`*^9, 3.829021906343066*^9, 
   3.829022120896983*^9, {3.8291872348449507`*^9, 3.829187235092498*^9}, 
   3.8291916175282593`*^9, 3.8291919011728888`*^9, 3.8291931576168118`*^9, 
   3.8291936788079033`*^9, 3.82919507097701*^9, 3.829195155014367*^9, 
   3.829199937057239*^9, {3.829363722840633*^9, 3.829363722973757*^9}, {
   3.82944727438414*^9, 3.829447274529767*^9}, 3.829619323250823*^9, {
   3.8296257412044277`*^9, 3.8296257414044447`*^9}, 3.8297045841485023`*^9, {
   3.829875098722763*^9, 3.829875098825247*^9}, 3.82998697834797*^9, 
   3.8299870356792192`*^9, 3.82998716162047*^9, 3.829987212740505*^9, {
   3.829988723390622*^9, 3.8299887380926247`*^9}, 3.8299887844920263`*^9, 
   3.829988861034812*^9, 3.8299889102145157`*^9, 3.829989150773065*^9, {
   3.829989476186344*^9, 3.8299895024004097`*^9}, {3.8299896428023367`*^9, 
   3.829989690172658*^9}, {3.829989772198667*^9, 3.829989794308688*^9}, {
   3.8299898672924757`*^9, 3.829989870819819*^9}, 3.829990043443234*^9, 
   3.829990130246189*^9, 3.829990329227268*^9, 3.8299904098963013`*^9, 
   3.829991127900717*^9, 3.829992490089674*^9, 3.8299927778934593`*^9, 
   3.829993076305909*^9, 3.8299934478018293`*^9, 3.8299935218513412`*^9, 
   3.829993674629703*^9, 3.8299943194439793`*^9, 3.8299960963066072`*^9, 
   3.829996220934594*^9, 3.829996589691752*^9, 3.829996725180337*^9, 
   3.829999097821578*^9, 3.830000405873757*^9, 3.830000484002697*^9, 
   3.830001284884981*^9, 3.830001600754369*^9, 3.830002087492344*^9, 
   3.8300021336721773`*^9, {3.830171523243658*^9, 3.830171523381653*^9}, {
   3.8301716324567003`*^9, 3.8301716566845093`*^9}, 3.8301717227054567`*^9, 
   3.830171837027713*^9, 3.830172242660589*^9, 3.8301723255226593`*^9, {
   3.8301724793738317`*^9, 3.830172480961954*^9}, 3.8301729971471*^9, 
   3.8301735234035673`*^9, 3.830173623439804*^9, 3.830173659129222*^9, 
   3.830173769041218*^9, 3.83017387783076*^9, {3.830173912677964*^9, 
   3.830173917090191*^9}, 3.830174022995245*^9, {3.8301747061847*^9, 
   3.830174725316114*^9}, 3.8301748384325314`*^9, 3.830174937435546*^9, 
   3.8301749834396057`*^9, 3.830175051398354*^9, 3.830175220260189*^9, 
   3.830175436139254*^9, 3.830175519041419*^9, 3.830175629616089*^9, 
   3.830175675688241*^9, {3.8301757370919123`*^9, 3.8301757589139233`*^9}, {
   3.830175893214507*^9, 3.830175900864111*^9}, 3.830175967437002*^9, {
   3.830176063713758*^9, 3.830176071322692*^9}, 3.830176128344507*^9, 
   3.8301761752601957`*^9, 3.830176390933639*^9, 3.8301765096012087`*^9, 
   3.830176574659342*^9, 3.830176705067429*^9, {3.830176850654148*^9, 
   3.8301768776107817`*^9}, 3.830176927104129*^9, 3.830177034095373*^9, 
   3.830177127638667*^9, 3.830177203606678*^9, 3.830177458701836*^9, 
   3.830177491967732*^9, {3.830177559716464*^9, 3.830177584278034*^9}, 
   3.830177645398671*^9, 3.830177695365858*^9, 3.830177835518895*^9, 
   3.83017791563881*^9, 3.830178219728127*^9, 3.830178285928219*^9, {
   3.8301786402478724`*^9, 3.830178655936788*^9}, 3.830178860654497*^9, 
   3.830178895175129*^9, 3.8301790491699038`*^9, 3.8301791325497293`*^9, 
   3.83017916873125*^9, 3.830179300327236*^9, 3.830179409536516*^9, {
   3.830179440758683*^9, 3.830179461355276*^9}, 3.8301795086722183`*^9, 
   3.830179550530456*^9, 3.830179821127383*^9, 3.8301808483447742`*^9, 
   3.830181297694681*^9, 3.830182047420206*^9, 3.830182083516144*^9},
 CellLabel->
  "Out[1672]=",ExpressionUUID->"92be9dd0-4fed-4523-a8b6-0367f4161d84"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", "\n", "\t", 
   RowBox[{
    RowBox[{"BasePanelProject", "[", "]"}], "\n", "\t", "This", " ", 
    "function", " ", "display", " ", "the", " ", "panel", " ", "and", " ", 
    "data", " ", "input", " ", "manipulation", " ", "of", " ", "the", " ", 
    "universe", " ", "exercises"}], "\n", "*)"}], "\n", "\n", 
  RowBox[{"(*", " ", "\n", 
   RowBox[{
    RowBox[{"Problema", ":", " ", 
     RowBox[{
     "Non", " ", "accetta", " ", "input", " ", "di", " ", "tipo", " ", 
      "String", " ", "che", " ", "iniziano", " ", "per", " ", "1", " ", 
      RowBox[{"(", 
       RowBox[{"Come", " ", "1", "P"}], ")"}], " ", "andando", " ", "ad", " ",
       "eliminare", " ", "automaticamente", " ", "il", " ", "carattere", " ", 
      "1"}]}], ",", " ", "\n", 
    RowBox[{
     RowBox[{"Esempio", ":", " ", 
      RowBox[{"1", "P"}]}], " ", "\[Rule]", " ", "P"}], ",", " ", 
    RowBox[{
     RowBox[{"1", "A22"}], " ", "\[Rule]", " ", "A22"}]}], " ", "\n", "*)"}], 
  "\n", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"UniversalExercisesPanel", "[", "]"}], " ", ":=", "\n", "\t", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", "}"}], ",", "\n", "\t\t", 
       RowBox[{"Manipulate", "[", 
        RowBox[{"output", ",", "\n", "\t\t\t\t", 
         RowBox[{"{", 
          RowBox[{"ValoreInput", ",", " ", "2"}], "}"}], ",", "\n", 
         "\t\t\t\t", 
         RowBox[{"{", 
          RowBox[{"BaseInput", ",", "10"}], "}"}], ",", "\n", "\t\t\t\t", 
         RowBox[{"{", 
          RowBox[{"BaseOutput", ",", "2"}], "}"}], ",", "\n", "\t\t\t\t", 
         RowBox[{"{", 
          RowBox[{"ValoreOutput", ",", " ", "10"}], "}"}], ",", "\n", 
         "\t\t\t\t", 
         RowBox[{"(*", " ", 
          RowBox[{
          "Input", " ", "value", " ", "is", " ", "between", " ", "0", " ", 
           "and", " ", "299", " ", "because", " ", "299", " ", "in", " ", 
           "base", " ", "62", " ", 
           RowBox[{"(", 
            RowBox[{"The", " ", "max", " ", "one"}], ")"}], " ", "is", " ", 
           "the", " ", "latest", " ", "integer", " ", "value", " ", "minor", 
           " ", "than", " ", "10.000", " ", "in", " ", "base", " ", "10"}], 
          "  ", "*)"}], "\n", "\t\t\t\t", 
         RowBox[{"(*", " ", 
          RowBox[{
           RowBox[{"We", " ", "can", " ", "assume"}], ",", " ", "anyway", ",",
            " ", 
           RowBox[{
           "value", " ", "more", " ", "than", " ", "299", " ", "but"}], ",", 
           " ", 
           RowBox[{
           "in", " ", "case", " ", "of", " ", "base", " ", "convertion", " ", 
            "to", " ", "10"}], ",", " ", 
           RowBox[{
           "the", " ", "value", " ", "must", " ", "be", " ", "inferior", " ", 
            "than", " ", "10.000", " ", "in", " ", "base", " ", "10", " ", 
            "or", "\n", "\t\t\t\t", "will", " ", "be", " ", "appear", " ", 
            "a", " ", "message", " ", "of", " ", "error", " ", "inside", " ", 
            "the", " ", "output", " ", "of", " ", "the", " ", 
            "Manipulate"}]}], " ", "*)"}], "\n", "\t\t\t\t", 
         RowBox[{"Button", "[", 
          RowBox[{"\"\<Genera Campi\>\"", ",", " ", 
           RowBox[{
            RowBox[{"ValoreInput", "=", 
             RowBox[{"RandomInteger", "[", 
              RowBox[{"{", 
               RowBox[{"0", ",", "299"}], "}"}], "]"}]}], ";", " ", 
            RowBox[{"BaseInput", "=", 
             RowBox[{"RandomInteger", "[", 
              RowBox[{"{", 
               RowBox[{"10", ",", "62"}], "}"}], "]"}]}], ";", " ", 
            RowBox[{"BaseOutput", "=", 
             RowBox[{"RandomInteger", "[", 
              RowBox[{"{", 
               RowBox[{"10", ",", "62"}], "}"}], "]"}]}], ";"}]}], "]"}], ",",
          " ", "\n", "\t\t\t\t", 
         RowBox[{"Button", "[", 
          RowBox[{"\"\<Mostra Soluzione\>\"", ",", " ", 
           RowBox[{
            RowBox[{"output", "=", " ", 
             RowBox[{"SolveConvertion", "[", 
              RowBox[{
              "ValoreInput", ",", " ", "BaseInput", ",", " ", "BaseOutput"}], 
              "]"}]}], ";"}]}], "]"}], ",", " ", "\n", "\t\t\t\t", 
         RowBox[{"Button", "[", 
          RowBox[{"\"\<Verifica Soluzione\>\"", ",", " ", 
           RowBox[{"output", "=", 
            RowBox[{"VerifySolution", "[", 
             RowBox[{
             "ValoreInput", ",", " ", "BaseInput", ",", " ", "BaseOutput", 
              ",", " ", "ValoreOutput"}], "]"}]}]}], "]"}], ",", " ", "\n", 
         "\t\t\t\t", 
         RowBox[{"Button", "[", 
          RowBox[{"\"\<Mostra Procedimento\>\"", ",", " ", 
           RowBox[{
            RowBox[{"output", "=", " ", 
             RowBox[{"DisplayBaseConverterManipulate", "[", 
              RowBox[{
              "ValoreInput", ",", " ", "BaseInput", ",", " ", "BaseOutput"}], 
              "]"}]}], ";"}]}], "]"}], ",", " ", "\n", "\t\t\t\t", 
         RowBox[{"Button", "[", 
          RowBox[{"\"\<Resetta Campi\>\"", ",", " ", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"Set", "[", 
              RowBox[{"ValoreInput", ",", "2"}], "]"}], ";", " ", 
             RowBox[{"Set", "[", 
              RowBox[{"BaseInput", ",", " ", "10"}], "]"}], ";", " ", 
             RowBox[{"Set", "[", 
              RowBox[{"BaseOutput", ",", " ", "2"}], "]"}], ";", " ", 
             RowBox[{"Set", "[", 
              RowBox[{"ValoreOutput", ",", " ", "10"}], "]"}], ";", " ", "\n",
              "\t\t\t\t       ", 
             RowBox[{"Set", "[", 
              RowBox[{"output", ",", 
               RowBox[{"SolveConvertion", "[", 
                RowBox[{"2", ",", "10", ",", "10"}], "]"}]}], "]"}], ";"}], 
            "}"}]}], "]"}], ",", "\n", "\t\t\t\t", 
         RowBox[{"(*", " ", 
          RowBox[{
          "void", " ", "line", " ", "for", " ", "output", " ", "position"}], 
          " ", "*)"}], "\n", "\t\t\t\t", "\"\<\>\"", ",", "\n", "\t\t\t\t", 
         "\"\<\>\"", ",", "\n", "\t\t\t\t", "\"\<\>\"", ",", "\n", "\t\t\t\t", 
         RowBox[{"FrameLabel", "\[Rule]", "\"\<Esercizio Universale\>\""}], 
         ",", "\n", "\t\t\t\t", 
         RowBox[{"Initialization", "\[RuleDelayed]", " ", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"output", "=", " ", 
             RowBox[{"SolveConvertion", "[", 
              RowBox[{
              "ValoreInput", ",", " ", "BaseInput", ",", " ", "BaseOutput"}], 
              "]"}]}], ";"}], "}"}]}]}], "\n", "\t\t\t\t", "]"}]}], "\n", 
      "\t\t\t", "\n", "\t\t", "\n", "    ", "]"}]}], ";"}], "\n", "    ", 
   "\n", "\n", "\n", "\n", 
   RowBox[{"(*", "\n", "\t", 
    RowBox[{
     RowBox[{"DisplayBaseConverterProject", "[", 
      RowBox[{"valueNum_", ",", " ", "inputBase_", ",", " ", "outputBase_"}], 
      "]"}], "\n", "\t", 
     RowBox[{"valueNum_", " ", ":", " ", 
      RowBox[{
      "The", " ", "value", " ", "to", " ", "convert", "\n", "\t", 
       "inputBase_"}], " ", ":", " ", 
      RowBox[{
      "The", " ", "input", " ", "base", " ", "of", " ", "the", " ", 
       "valueNum", " ", "representation", "\n", "\t", 
       RowBox[{"outputBase_", " ", ":", " ", 
        RowBox[{
        "The", " ", "output", " ", "base", " ", "that", " ", "we", " ", 
         "want", " ", "to", " ", "be", " ", "convert", " ", "the", " ", 
         "valueNum_"}]}]}]}]}], "\n", "*)"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"DisplayBaseConverterManipulate", "[", 
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
         "list", " ", "will", " ", "be", " ", "append", " ", "elements", " ", 
          "and", " ", "put", " ", "it", " ", "in", " ", "a", " ", "column", 
          " ", "function"}], " ", "*)"}], "\n", "\t", 
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
           RowBox[{"BaseForm", "[", 
            RowBox[{
             RowBox[{"FromDigits", "[", 
              RowBox[{
               RowBox[{"ToString", "[", "valueNum", "]"}], ",", "inputBase"}],
               "]"}], ",", "outputBase"}], "]"}], " ", "*)"}], "\n", "\t\t", 
          RowBox[{
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{"inputBase", " ", "\[Equal]", " ", "outputBase"}], ",", 
             "\n", "\t\t    ", 
             RowBox[{"(*", " ", 
              RowBox[{
              "than", " ", "result", " ", "is", " ", "equal", " ", "to", " ", 
               "valueNum"}], " ", "*)"}], "\n", "\t\t    ", 
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
                 RowBox[{"10", " ", "TO", " ", "N"}], " ", "*)"}], "\n", 
                "\t\t       ", 
                RowBox[{
                 RowBox[{"Return", "[", 
                  RowBox[{"DisplayConverter10ToN", "[", 
                   RowBox[{"valueNum", ",", " ", "outputBase"}], "]"}], "]"}],
                  ";"}], "\n", "\t\t       ", ",", " ", "\n", "\t\t       ", 
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
                    RowBox[{"N", " ", "to", " ", "10"}], " ", "*)"}], "\n", 
                   "\t\t          ", 
                   RowBox[{
                    RowBox[{"Return", "[", 
                    RowBox[{"DisplayConverterNTo10", "[", 
                    RowBox[{"valueNum", ",", " ", "inputBase"}], "]"}], "]"}],
                     ";"}], "\n", "\t\t          ", ",", "\n", 
                   "\t\t          ", 
                   RowBox[{"(*", " ", 
                    RowBox[{
                    "base", " ", "X", " ", "To", " ", "base", " ", "Y", " ", 
                    "with", " ", "X", " ", "and", " ", "Y", " ", "different", 
                    " ", "to", " ", "10"}], " ", "*)"}], "\n", 
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
       "valueOut_"}], "]"}], "\n", "\t", 
     RowBox[{"valueNum_", " ", ":", " ", 
      RowBox[{"Value", " ", "to", " ", "convert", "\n", "\t", "inputBase_"}], 
      " ", ":", " ", 
      RowBox[{"Initial", " ", "base", " ", "of", " ", "valueNum_", "\n", "\t", 
       RowBox[{"outputBase_", " ", ":", " ", 
        RowBox[{
        "Base", " ", "to", " ", "convert", " ", "the", " ", "valueNum_", "\n",
          "\t", "This", " ", "function", "  ", "convert", " ", "the", " ", 
         "valueNum", " ", "from", " ", "the", " ", "inputBase_", " ", "to", 
         " ", "outputBase_", " ", "and", " ", "show", " ", "if", " ", "the", 
         " ", "result", " ", "is", " ", "equal", " ", "or", " ", "not", " ", 
         "to", " ", "valueOut", "\n", "\t", "Return", " ", "string", " ", 
         "is"}], ":", " ", 
        "\"\<Il valore in output \[EGrave]: Corretto/Errato\>\""}]}]}]}], 
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
        RowBox[{
        "first", ",", " ", "second", ",", " ", "base", ",", " ", "num", ",", 
         " ", "symb", ",", " ", "listChars", ",", " ", "restComp", ",", " ", 
         "listNum", ",", " ", "i", ",", "j", ",", " ", "resultInt", ",", " ", 
         "val", ",", " ", "out", ",", " ", "res", ",", " ", "listLet", ",", 
         " ", "rest", ",", " ", "digits", ",", " ", "result", ",", " ", 
         "outVal"}], "}"}], ",", "\n", "      ", 
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
           
           RowBox[{"outputBase", " ", "\[Equal]", " ", "10"}]}], ",", "\n", 
          "        ", 
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
      "]"}], "\n", "\t", 
     RowBox[{"valueNum_", " ", ":", " ", 
      RowBox[{"Value", " ", "to", " ", "convert", "\n", "\t", "inputBase_"}], 
      " ", ":", " ", 
      RowBox[{"Initial", " ", "base", " ", "of", " ", "valueNum_", "\n", "\t", 
       RowBox[{"outputBase_", " ", ":", " ", 
        RowBox[{
        "Base", " ", "to", " ", "convert", " ", "the", " ", "valueNum_", "\n",
          "\t", "This", " ", "function", "  ", "convert", " ", "the", " ", 
         "valueNum", " ", "from", " ", "the", " ", "inputBase_", " ", "to", 
         " ", "outputBase_", " ", "and", " ", "show", " ", "only", " ", "the",
          " ", "result"}]}]}]}]}], "\n", "*)"}], "\n", "\n", 
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
         "result", ",", " ", "strLine", ",", " ", "restComp", ",", " ", 
         "digits", ",", " ", "listLet", ",", " ", "base", ",", " ", "num", 
         ",", " ", "symb", ",", " ", "listChars", ",", " ", "i", ",", " ", 
         "j", ",", " ", "size", ",", " ", "expPos", ",", " ", "listNum", ",", 
         " ", "resultInt"}], "}"}], ",", "\n", "\t", 
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
          RowBox[{"VerifyBase", "[", 
           RowBox[{"valueNum", ",", " ", "inputBase"}], "]"}], ",", "\n", 
          "\t", 
          RowBox[{
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
              RowBox[{"BaseForm", "[", 
               RowBox[{
                RowBox[{"FromDigits", "[", 
                 RowBox[{
                  RowBox[{"ToString", "[", "valueNum", "]"}], ",", 
                  "inputBase"}], "]"}], ",", "outputBase"}], "]"}], " ", 
              "*)"}], "\n", "\t\t", 
             RowBox[{
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{"inputBase", " ", "\[Equal]", " ", "outputBase"}], 
                ",", "\n", "\t\t    ", 
                RowBox[{"(*", " ", 
                 RowBox[{
                 "than", " ", "result", " ", "is", " ", "equal", " ", "to", 
                  " ", "valueNum"}], " ", "*)"}], "\n", "\t\t    ", 
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
                RowBox[{"(*", " ", "else", " ", "*)"}], "\n", "\t\t\t", 
                RowBox[{
                 RowBox[{"If", "[", 
                  RowBox[{
                   RowBox[{"inputBase", " ", "\[Equal]", " ", "10"}], ",", 
                   " ", "\n", "\t\t       ", 
                   RowBox[{"(*", " ", 
                    RowBox[{"10", " ", "TO", " ", "N"}], " ", "*)"}], "\n", 
                   "\t\t       ", 
                   RowBox[{
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"valueNum", " ", ">=", " ", "0"}], " ", "&&", " ", 
                    RowBox[{"valueNum", " ", "<=", " ", "10000"}], " ", "&&", 
                    " ", 
                    RowBox[{"IntegerQ", "[", "outputBase", "]"}], " ", "&&", 
                    " ", 
                    RowBox[{"outputBase", " ", ">=", " ", "2"}], " ", "&&", 
                    " ", 
                    RowBox[{"outputBase", " ", "\[LessEqual]", "62"}]}], ",", 
                    "\n", "\t\t         ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    "Procedure", " ", "of", " ", "convertion", " ", "with", 
                    " ", "correct", " ", "result", " ", "will", " ", "be", 
                    " ", "here"}], " ", "*)"}], "\n", "\t\t          ", 
                    RowBox[{
                    RowBox[{"val", " ", "=", " ", "valueNum"}], ";", "\n", 
                    "\t\t          ", 
                    RowBox[{"out", " ", "=", " ", "outputBase"}], ";", "\n", 
                    "\t\t          ", 
                    RowBox[{"res", " ", "=", " ", 
                    RowBox[{"-", "1"}]}], ";", "\n", "\t\t          ", 
                    RowBox[{"restComp", " ", "=", " ", 
                    RowBox[{"{", "}"}]}], ";", "\n", "\t\t          ", 
                    RowBox[{"digits", " ", "=", " ", 
                    RowBox[{"Range", "[", 
                    RowBox[{"0", ",", "9"}], "]"}]}], ";", "\n", 
                    "\t\t          ", 
                    RowBox[{"listLet", " ", "=", " ", 
                    RowBox[{"Join", "[", 
                    RowBox[{"digits", ",", 
                    RowBox[{"ToUpperCase", "[", 
                    RowBox[{"CharacterRange", "[", 
                    RowBox[{"\"\<a\>\"", ",", "\"\<z\>\""}], "]"}], "]"}], 
                    ",", " ", 
                    RowBox[{"ToLowerCase", "[", 
                    RowBox[{"CharacterRange", "[", 
                    RowBox[{"\"\<a\>\"", ",", "\"\<z\>\""}], "]"}], "]"}]}], 
                    "]"}]}], ";", "\n", "\t\t          ", 
                    RowBox[{"result", " ", "=", " ", 
                    RowBox[{"{", "}"}]}], ";", "\n", "\t\t   ", "\n", 
                    "\t\t         ", 
                    RowBox[{"(*", " ", 
                    RowBox[{"Base", " ", "Procedure"}], " ", "*)"}], "\n", 
                    "\t\t   ", "\n", "\t\t         ", 
                    RowBox[{"While", "[", 
                    RowBox[{
                    RowBox[{"res", " ", "\[NotEqual]", " ", "0"}], ",", "  ", 
                    "\n", "\t\t         ", 
                    RowBox[{"(*", " ", 
                    RowBox[{"to", " ", "check"}], " ", "*)"}], "\n", 
                    "\t\t            ", 
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
                    RowBox[{
                    "1", " ", "is", " ", "for", " ", "Mathematica", " ", 
                    "indexing", " ", "1", " ", "to", " ", "N", " ", "and", 
                    " ", "not", " ", "0", " ", "to", " ", "N"}], " ", "-", 
                    " ", "1"}], " ", "*)"}], "\n", "\t\t            ", 
                    RowBox[{"AppendTo", "[", 
                    RowBox[{"restComp", ",", 
                    RowBox[{"ToString", "[", 
                    RowBox[{"Part", "[", 
                    RowBox[{"listLet", ",", " ", "rest"}], "]"}], "]"}]}], 
                    "]"}], ";", "\n", "\t\t            ", 
                    RowBox[{"val", " ", "=", " ", "res"}], ";"}]}], " ", "\n",
                     "\t\t          ", "]"}], ";", "\n", "\t\t          ", 
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
                    RowBox[{"N", " ", "to", " ", "10"}], " ", "*)"}], "\n", 
                    "\t\t          ", 
                    RowBox[{
                    RowBox[{"base", " ", "=", " ", "inputBase"}], ";", "\n", 
                    "\t\t          ", 
                    RowBox[{"num", " ", "=", " ", "valueNum"}], ";", "\n", 
                    " ", "\n", "\t\t          ", "\n", "\t\t          ", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"IntegerQ", "[", "base", "]"}], " ", "&&", " ", 
                    RowBox[{"VerifyBase", "[", 
                    RowBox[{"num", ",", " ", "base"}], "]"}], "&&", 
                    RowBox[{"base", "\[GreaterEqual]", "2"}], "&&", 
                    RowBox[{"base", "\[LessEqual]", "62"}]}], ",", 
                    "\[IndentingNewLine]", "                   ", 
                    RowBox[{
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"base", " ", "\[LessEqual]", " ", "10"}], " ", "&&",
                     " ", 
                    RowBox[{"IntegerQ", "[", "num", "]"}]}], " ", ",", "\n", 
                    "                         ", 
                    RowBox[{
                    RowBox[{"resultInt", " ", "=", " ", 
                    RowBox[{"FromDigits", "[", 
                    RowBox[{
                    RowBox[{"ToString", "[", "num", "]"}], ",", " ", "base"}],
                     "]"}]}], ";", "\n", "                        ", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"resultInt", " ", ">", " ", "10000"}], ",", " ", 
                    "\n", "                            ", 
                    RowBox[{
                    RowBox[{
                    "Return", "[", 
                    "\"\<Il numero deve essere un intero tra 0 e 10.000 in \
base 10 per essere valido\>\"", "]"}], ";"}], "\n", "\t\t                 ", 
                    ",", "\n", "                           ", 
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
                    RowBox[{"else", " ", "of", " ", "base"}], " ", 
                    "\[LessEqual]", " ", "10"}], " ", "&&", " ", 
                    RowBox[{"IntegerQ", "[", "num", "]"}]}], " ", "*)"}], 
                    "\[IndentingNewLine]", "                ", 
                    RowBox[{
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"VerifyBase", "[", 
                    RowBox[{"num", ",", " ", "base"}], "]"}], ",", 
                    "\[IndentingNewLine]", "                  ", 
                    RowBox[{
                    RowBox[{"listChars", " ", "=", " ", 
                    RowBox[{"DeleteCases", "[", 
                    RowBox[{
                    RowBox[{"Characters", "[", 
                    RowBox[{"ToString", "[", "num", "]"}], "]"}], ",", " ", 
                    "\"\< \>\""}], "]"}]}], ";", "\n", "                   ", 
                    
                    RowBox[{"listNum", " ", "=", " ", 
                    RowBox[{"Range", "[", 
                    RowBox[{"0", ",", "62"}], "]"}]}], ";", " ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    RowBox[{"list", " ", "of", " ", "numbers", " ", 
                    RowBox[{"listChars", "[", 
                    RowBox[{"Part", "[", 
                    RowBox[{"ListNum", ",", "10"}], "]"}], "]"}]}], " ", "=", 
                    " ", 
                    RowBox[{"'", 
                    RowBox[{"A", "'"}]}]}], " ", "*)"}], "\n", 
                    "                   ", 
                    RowBox[{"symb", " ", "=", " ", 
                    RowBox[{"Join", "[", 
                    RowBox[{
                    RowBox[{"CharacterRange", "[", 
                    RowBox[{"\"\<0\>\"", ",", "\"\<9\>\""}], "]"}], ",", " ", 
                    
                    RowBox[{"ToUpperCase", "[", 
                    RowBox[{"CharacterRange", "[", 
                    RowBox[{"\"\<a\>\"", ",", "\"\<z\>\""}], "]"}], "]"}], 
                    ",", " ", 
                    RowBox[{"ToLowerCase", "[", 
                    RowBox[{"CharacterRange", "[", 
                    RowBox[{"\"\<a\>\"", ",", "\"\<z\>\""}], "]"}], "]"}]}], 
                    "]"}]}], ";", "\n", "                  ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    "Convert", " ", "letters", " ", "in", " ", "digits"}], 
                    " ", "*)"}], "\[IndentingNewLine]", "\t             ", 
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
                    RowBox[{"We", " ", "found", " ", "the", " ", "element"}], 
                    " ", "*)"}], "\[IndentingNewLine]", "\t\t\t\t\t", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    "We", " ", "replace", " ", "the", " ", "element", " ", 
                    "with", " ", "the", " ", "number"}], " ", "*)"}], 
                    "\[IndentingNewLine]", "\t\t\t\t\t", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"listChars", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], " ", "=", " ", 
                    RowBox[{"j", " ", "-", " ", "1"}]}], ";"}], " ", 
                    "\[IndentingNewLine]", "\t\t\t\t\t", ",", " ", 
                    "\[IndentingNewLine]", "\t\t\t\t\t", 
                    RowBox[{"(*", " ", 
                    RowBox[{"do", " ", "nothing"}], " ", "*)"}], 
                    "\[IndentingNewLine]", "\t\t\t\t\t", 
                    RowBox[{
                    RowBox[{"listChars", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], ";"}]}], "\n", 
                    "\t\t\t\t\t    ", "\[IndentingNewLine]", "\t\t\t\t\t  ", 
                    "]"}], ";"}]}], " ", "\n", "\t                 ", "]"}], 
                    ";"}]}], "\n", "\t\t          ", "]"}], ";", " ", 
                    "\[IndentingNewLine]", "\[IndentingNewLine]", 
                    "               ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    "We", " ", "have", " ", "in", " ", "listChars", " ", 
                    "letters", " ", "converted", " ", "with", " ", "the", " ",
                     "correct", " ", "integer", " ", "value"}], " ", "*)"}], 
                    "\n", "                ", 
                    RowBox[{"resultInt", " ", "=", " ", 
                    RowBox[{"FromDigits", "[", 
                    RowBox[{"listChars", ",", " ", "base"}], "]"}]}], ";", 
                    "\n", "                ", 
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
                    RowBox[{"Else", " ", "of", " ", 
                    RowBox[{"VerifyBase", "[", 
                    RowBox[{"num", ",", " ", "base"}], "]"}]}], " ", "*)"}], 
                    "\[IndentingNewLine]", "           ", 
                    "\[IndentingNewLine]", "                 ", 
                    RowBox[{
                    RowBox[{
                    "Return", "[", 
                    "\"\<Il numero non \[EGrave] in un formato accettabile \
per la base di input\>\"", "]"}], ";"}]}], "\[IndentingNewLine]", 
                    "                   ", "]"}], ";"}]}], 
                    "\[IndentingNewLine]", "                ", "]"}], ";"}], 
                    "\[IndentingNewLine]", "             ", ",", "\n", 
                    "                  ", 
                    RowBox[{
                    RowBox[{
                    "Return", "[", 
                    "\"\<Errore di formato: Puoi usare solamente interi \
positivi o lettere supportate per la base di input \n\t\t\t\t\tper i valori e \
interi tra 2 e 62 per le basi.\>\"", "]"}], ";"}]}], "\[IndentingNewLine]", 
                    "                  ", "]"}], ";"}], "\n", 
                    "\t\t          ", "\n", "\t\t          ", ",", "\n", 
                    "\t\t          ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    "base", " ", "X", " ", "To", " ", "base", " ", "Y", " ", 
                    "with", " ", "X", " ", "and", " ", "Y", " ", "different", 
                    " ", "to", " ", "10"}], " ", "*)"}], "\n", 
                    "\t\t          ", "\n", "\t\t           ", 
                    RowBox[{"(*", " ", 
                    RowBox[{"Base", " ", "X", " ", "to", " ", "10"}], " ", 
                    "*)"}], "\n", "\t\t           ", "\n", "\t\t           ", 
                    
                    RowBox[{
                    RowBox[{"base", " ", "=", " ", "inputBase"}], ";", "\n", 
                    "\t\t           ", 
                    RowBox[{"num", " ", "=", " ", "valueNum"}], ";", "\n", 
                    " ", "\n", "\t\t          ", "\n", "\t\t          ", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"IntegerQ", "[", "base", "]"}], " ", "&&", " ", 
                    RowBox[{"VerifyBase", "[", 
                    RowBox[{"num", ",", " ", "base"}], "]"}], "&&", 
                    RowBox[{"base", "\[GreaterEqual]", "2"}], "&&", 
                    RowBox[{"base", "\[LessEqual]", "62"}]}], ",", 
                    "\[IndentingNewLine]", "                   ", 
                    RowBox[{
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"base", " ", "\[LessEqual]", " ", "10"}], " ", "&&",
                     " ", 
                    RowBox[{"IntegerQ", "[", "num", "]"}]}], " ", ",", "\n", 
                    "                         ", 
                    RowBox[{
                    RowBox[{"resultInt", " ", "=", " ", 
                    RowBox[{"FromDigits", "[", 
                    RowBox[{
                    RowBox[{"ToString", "[", "num", "]"}], ",", " ", "base"}],
                     "]"}]}], ";", "\n", "                        ", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"resultInt", " ", ">", " ", "10000"}], ",", " ", 
                    "\n", "                            ", 
                    RowBox[{
                    RowBox[{
                    "Return", "[", 
                    "\"\<Il numero deve essere un intero tra 0 e 10.000 in \
base 10 per essere valido\>\"", "]"}], ";"}], "\n", "\t\t                 ", 
                    ",", "\n", "                           ", 
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
                    RowBox[{"else", " ", "of", " ", "base"}], " ", 
                    "\[LessEqual]", " ", "10"}], " ", "&&", " ", 
                    RowBox[{"IntegerQ", "[", "num", "]"}]}], " ", "*)"}], 
                    "\[IndentingNewLine]", "                        ", 
                    RowBox[{
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"VerifyBase", "[", 
                    RowBox[{"num", ",", " ", "base"}], "]"}], ",", 
                    "\[IndentingNewLine]", "                           ", 
                    RowBox[{
                    RowBox[{"listChars", " ", "=", " ", 
                    RowBox[{"DeleteCases", "[", 
                    RowBox[{
                    RowBox[{"Characters", "[", 
                    RowBox[{"ToString", "[", "num", "]"}], "]"}], ",", " ", 
                    "\"\< \>\""}], "]"}]}], ";", "\n", 
                    "                            ", 
                    RowBox[{"listNum", " ", "=", " ", 
                    RowBox[{"Range", "[", 
                    RowBox[{"0", ",", "62"}], "]"}]}], ";", " ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    RowBox[{"list", " ", "of", " ", "numbers", " ", 
                    RowBox[{"listChars", "[", 
                    RowBox[{"Part", "[", 
                    RowBox[{"ListNum", ",", "10"}], "]"}], "]"}]}], " ", "=", 
                    " ", 
                    RowBox[{"'", 
                    RowBox[{"A", "'"}]}]}], " ", "*)"}], "\n", 
                    "                            ", 
                    RowBox[{"symb", " ", "=", " ", 
                    RowBox[{"Join", "[", 
                    RowBox[{
                    RowBox[{"CharacterRange", "[", 
                    RowBox[{"\"\<0\>\"", ",", "\"\<9\>\""}], "]"}], ",", " ", 
                    
                    RowBox[{"ToUpperCase", "[", 
                    RowBox[{"CharacterRange", "[", 
                    RowBox[{"\"\<a\>\"", ",", "\"\<z\>\""}], "]"}], "]"}], 
                    ",", " ", 
                    RowBox[{"ToLowerCase", "[", 
                    RowBox[{"CharacterRange", "[", 
                    RowBox[{"\"\<a\>\"", ",", "\"\<z\>\""}], "]"}], "]"}]}], 
                    "]"}]}], ";", "\n", "                             ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    "Convert", " ", "letters", " ", "in", " ", "digits"}], 
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
                    RowBox[{"We", " ", "found", " ", "the", " ", "element"}], 
                    " ", "*)"}], "\[IndentingNewLine]", 
                    "\t\t\t\t\t          ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    "We", " ", "replace", " ", "the", " ", "element", " ", 
                    "with", " ", "the", " ", "number"}], " ", "*)"}], 
                    "\[IndentingNewLine]", "\t\t\t\t\t           ", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"listChars", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], " ", "=", " ", 
                    RowBox[{"j", " ", "-", " ", "1"}]}], ";"}], " ", 
                    "\[IndentingNewLine]", "\t\t\t\t\t           ", ",", " ", 
                    "\[IndentingNewLine]", "\t\t\t\t\t          ", 
                    RowBox[{"(*", " ", 
                    RowBox[{"do", " ", "nothing"}], " ", "*)"}], 
                    "\[IndentingNewLine]", "\t\t\t\t\t          ", 
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
                    "We", " ", "have", " ", "in", " ", "listChars", " ", 
                    "letters", " ", "converted", " ", "with", " ", "the", " ",
                     "correct", " ", "integer", " ", "value"}], " ", "*)"}], 
                    "\n", "                        ", 
                    RowBox[{"resultInt", " ", "=", " ", 
                    RowBox[{"FromDigits", "[", 
                    RowBox[{"listChars", ",", " ", "base"}], "]"}]}], ";"}], 
                    " ", 
                    RowBox[{"(*", " ", 
                    RowBox[{"the", " ", "final", " ", "result", " ", "of", 
                    " ", "this", " ", "phase"}], " ", "*)"}], 
                    "\[IndentingNewLine]", "                        ", ",", 
                    " ", "\[IndentingNewLine]", "                       ", 
                    RowBox[{"(*", " ", 
                    RowBox[{"Else", " ", "of", " ", 
                    RowBox[{"VerifyBase", "[", 
                    RowBox[{"num", ",", " ", "base"}], "]"}]}], " ", "*)"}], 
                    "\[IndentingNewLine]", "           ", 
                    "\[IndentingNewLine]", "                       ", 
                    RowBox[{
                    RowBox[{
                    "Return", "[", 
                    "\"\<Il numero non \[EGrave] in un formato accettabile \
per la base di input\>\"", "]"}], ";"}]}], "\[IndentingNewLine]", 
                    "                        ", "]"}], ";"}]}], 
                    "\[IndentingNewLine]", "                   ", "]"}], 
                    ";"}], "\[IndentingNewLine]", "                 ", ",", 
                    "\n", "                  ", 
                    RowBox[{
                    RowBox[{
                    "Return", "[", 
                    "\"\<Errore di formato: Puoi usare solamente interi \
positivi o lettere supportate per la base di input \n\t\t\t\t\tper i valori e \
interi tra 2 e 62 per le basi.\>\"", "]"}], ";"}]}], "\[IndentingNewLine]", 
                    "                  ", "]"}], ";", "\n", "\t\t           ",
                     "\n", "\t\t           ", "\n", "\t\t           ", 
                    RowBox[{"(*", " ", 
                    RowBox[{"Base", " ", "10", " ", "To", " ", "Y"}], " ", 
                    "*)"}], "\n", "\t\t           ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    RowBox[{"If", " ", "you", " ", "are", " ", "here"}], ",", 
                    " ", 
                    RowBox[{
                    "the", " ", "resultInt", " ", "value", " ", "is", " ", 
                    "the", " ", "current", " ", "value", " ", "converted", 
                    " ", "in", " ", "base", " ", "10", " ", "from", " ", 
                    "base", " ", "X"}]}], " ", "*)"}], "\n", 
                    "\t\t           ", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    "Now", " ", "we", " ", "need", " ", "to", " ", "convert", 
                    " ", "it", " ", "to", " ", "base", " ", "Y"}], " ", 
                    "*)"}], "\n", "\t\t          ", "\n", "\t\t          ", 
                    "\n", "\t\t          ", 
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
                    "Procedure", " ", "of", " ", "convertion", " ", "with", 
                    " ", "correct", " ", "result", " ", "will", " ", "be", 
                    " ", "here"}], " ", "*)"}], "\n", "\t\t          ", 
                    RowBox[{
                    RowBox[{"val", " ", "=", " ", "resultInt"}], ";", "\n", 
                    "\t\t          ", 
                    RowBox[{"out", " ", "=", " ", "outputBase"}], ";", "\n", 
                    "\t\t          ", 
                    RowBox[{"res", " ", "=", " ", 
                    RowBox[{"-", "1"}]}], ";", "\n", "\t\t          ", 
                    RowBox[{"restComp", " ", "=", " ", 
                    RowBox[{"{", "}"}]}], ";", "\n", "\t\t          ", 
                    RowBox[{"digits", " ", "=", " ", 
                    RowBox[{"Range", "[", 
                    RowBox[{"0", ",", "9"}], "]"}]}], ";", "\n", 
                    "\t\t          ", 
                    RowBox[{"listLet", " ", "=", " ", 
                    RowBox[{"Join", "[", 
                    RowBox[{"digits", ",", 
                    RowBox[{"ToUpperCase", "[", 
                    RowBox[{"CharacterRange", "[", 
                    RowBox[{"\"\<a\>\"", ",", "\"\<z\>\""}], "]"}], "]"}], 
                    ",", " ", 
                    RowBox[{"ToLowerCase", "[", 
                    RowBox[{"CharacterRange", "[", 
                    RowBox[{"\"\<a\>\"", ",", "\"\<z\>\""}], "]"}], "]"}]}], 
                    "]"}]}], ";", "\n", "\t\t          ", 
                    RowBox[{"result", " ", "=", " ", 
                    RowBox[{"{", "}"}]}], ";", "\n", "\t\t   ", "\n", 
                    "\t\t         ", 
                    RowBox[{"(*", " ", 
                    RowBox[{"Base", " ", "Procedure"}], " ", "*)"}], "\n", 
                    "\t\t   ", "\n", "\t\t         ", 
                    RowBox[{"While", "[", 
                    RowBox[{
                    RowBox[{"res", " ", "\[NotEqual]", " ", "0"}], ",", "  ", 
                    "\n", "\t\t         ", 
                    RowBox[{"(*", " ", 
                    RowBox[{"to", " ", "check"}], " ", "*)"}], "\n", 
                    "\t\t            ", 
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
                    RowBox[{
                    "1", " ", "is", " ", "for", " ", "Mathematica", " ", 
                    "indexing", " ", "1", " ", "to", " ", "N", " ", "and", 
                    " ", "not", " ", "0", " ", "to", " ", "N"}], " ", "-", 
                    " ", "1"}], " ", "*)"}], "\n", "\t\t            ", 
                    RowBox[{"AppendTo", "[", 
                    RowBox[{"restComp", ",", 
                    RowBox[{"ToString", "[", 
                    RowBox[{"Part", "[", 
                    RowBox[{"listLet", ",", " ", "rest"}], "]"}], "]"}]}], 
                    "]"}], ";", "\n", "\t\t            ", 
                    RowBox[{"val", " ", "=", " ", "res"}], ";"}]}], " ", "\n",
                     "\t\t          ", "]"}], ";", "\n", "\t\t          ", 
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
               "\"\<Format Error: Le basi non sono tra 2 e 62 o il valore non \
\[EGrave] un intero\>\"", "]"}], ";"}]}], "\n", "\t\t", "]"}], ";"}], "\n", 
          "\t\t", ",", " ", "\n", "\t\t", 
          RowBox[{
           RowBox[{
           "Return", "[", 
            "\"\<Format Error: Il valore di input inserito non \[EGrave] \
esprimibile nella base di input\>\"", "]"}], ";"}]}], "\n", "\t\t", "]"}], 
        ";"}]}], "\n", "\t", "]"}]}], ";"}], "\n", "\n", "\n", "      ", "\n",
    "\t", "\n"}]}]], "Code",
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
   3.830182132947125*^9}},ExpressionUUID->"7d260a63-9de2-47a9-9cab-\
505ba266263a"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"Internal", " ", "functions"}], " ", "*)"}], "\n", "\n", "\n", 
  RowBox[{"(*", " ", 
   RowBox[{"Logic", " ", "internal", " ", "functions"}], " ", "*)"}], "\n", 
  "\n", 
  RowBox[{"(*", "\n", "\t", 
   RowBox[{
    RowBox[{
     RowBox[{"VerifyBase", "[", 
      RowBox[{"num_", ",", " ", "base_"}], "]"}], " ", "\n", "\t", 
     RowBox[{"num_", " ", ":", " ", 
      RowBox[{"Value", " ", "to", " ", "verify", "\n", "\t", "base_"}], " ", 
      ":", " ", 
      RowBox[{
      "Base", " ", "to", " ", "check", " ", "if", " ", "value", " ", "is", 
       " ", "or", " ", "not", " ", "in", " ", "its", " ", "representation", 
       "\n", "\t", "This", " ", "function", " ", "check", " ", "if", " ", 
       "num_", " ", "is", " ", "in", " ", "base_", " ", "format"}]}]}], ",", 
    " ", 
    RowBox[{"if", " ", "it", " ", "is", " ", "return", " ", "true"}], ",", 
    " ", 
    RowBox[{"else", " ", "return", " ", "false"}]}], "\n", "*)"}], "\n", "\n", 
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
        " ", "i", ",", " ", "j"}], "}"}], ",", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"(*", " ", 
       RowBox[{
       "It", " ", "is", " ", "the", " ", "list", " ", "of", " ", "symbols", 
        " ", "availables", " ", "in", " ", "a", " ", "base", " ", "between", 
        " ", "2", " ", "and", " ", "62"}], " ", "*)"}], "\t", 
      "\[IndentingNewLine]", "\t", 
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
       ";", "\[IndentingNewLine]", 
       RowBox[{"(*", " ", 
        RowBox[{
        "Splitting", " ", "the", " ", "num", " ", "in", " ", "a", " ", "list",
          " ", "of", " ", "characters"}], " ", "*)"}], "\[IndentingNewLine]", 
       "\t", 
       RowBox[{"listChars", " ", "=", " ", 
        RowBox[{"DeleteCases", "[", 
         RowBox[{
          RowBox[{"Characters", "[", 
           RowBox[{"ToString", "[", "num", "]"}], "]"}], ",", " ", 
          "\"\< \>\""}], "]"}]}], ";", " ", 
       RowBox[{"(*", " ", 
        RowBox[{
        "deleting", " ", "whitespaces", " ", "from", " ", "the", " ", "list", 
         " ", "of", " ", "characters"}], " ", "*)"}], "\[IndentingNewLine]", 
       "\t", 
       RowBox[{"listNum", " ", "=", " ", 
        RowBox[{"Range", "[", 
         RowBox[{"0", ",", "62"}], "]"}]}], ";", " ", 
       RowBox[{"(*", " ", 
        RowBox[{
         RowBox[{"list", " ", "of", " ", "numbers", " ", 
          RowBox[{"listChars", "[", 
           RowBox[{"Part", "[", 
            RowBox[{"ListNum", ",", "10"}], "]"}], "]"}]}], " ", "=", " ", 
         RowBox[{"'", 
          RowBox[{"A", "'"}]}]}], " ", "*)"}], "\[IndentingNewLine]", "\t", 
       RowBox[{"max", " ", "=", " ", "base"}], ";", " ", 
       RowBox[{"(*", " ", 
        RowBox[{
        "max", " ", "digit", " ", "that", " ", "can", " ", "be", " ", 
         "defined", " ", "for", " ", "the", " ", "value", " ", 
         RowBox[{"of", " ", "'"}], 
         RowBox[{"num", "'"}], " ", "variable"}], " ", "*)"}], 
       "\[IndentingNewLine]", 
       RowBox[{"(*", " ", 
        RowBox[{
         RowBox[{
          RowBox[{
          "If", " ", "the", " ", "list", " ", "of", " ", "characters", " ", 
           "contains", " ", "only", " ", "symbols", " ", "0"}], "-", "9"}], 
         ",", " ", 
         RowBox[{"A", "-", 
          RowBox[{"Z", " ", "and", " ", "a"}], "-", "z"}], ",", " ", 
         RowBox[{"than", " ", "is", " ", "in", " ", "correct", " ", "form"}], 
         ",", " ", 
         RowBox[{"else", " ", "is", " ", "a", " ", "format", " ", "error"}]}],
         " ", "*)"}], "\[IndentingNewLine]", "\t", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"ContainsAll", "[", 
          RowBox[{"symb", ",", " ", "listChars"}], "]"}], ",", " ", 
         "\[IndentingNewLine]", "\t\t\t", 
         RowBox[{"(*", " ", 
          RowBox[{
          "Good", " ", "format", " ", "composed", " ", "by", " ", "letters", 
           " ", "or", " ", "digits"}], " ", "*)"}], "\[IndentingNewLine]", 
         "\t         ", 
         RowBox[{
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"base", " ", "\[LessEqual]", " ", "10"}], ",", 
            "\[IndentingNewLine]", "\t\t\t", 
            RowBox[{"(*", 
             RowBox[{
             "Check", " ", "digits", " ", "and", " ", "that", " ", "the", " ",
               "digit", " ", "is", " ", "less", " ", "than", " ", "base"}], 
             " ", "*)"}], "\[IndentingNewLine]", "\t\t\t", 
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
                   RowBox[{"Do", " ", "nothing"}], " ", "*)"}], 
                  "\[IndentingNewLine]", "\t\t\t\t", ",", " ", 
                  "\[IndentingNewLine]", "\t\t\t\t", 
                  RowBox[{"(*", " ", 
                   RowBox[{
                   "Some", " ", "character", " ", "of", " ", "input", " ", 
                    "value", " ", "is", " ", "not", " ", "a", " ", "digit", 
                    " ", "or", " ", "is", " ", "a", " ", "digit", " ", "not", 
                    " ", "less", " ", "than", " ", "the", " ", "base", " ", 
                    "value"}], " ", "*)"}], "\[IndentingNewLine]", "\t\t\t\t", 
                  RowBox[{
                   RowBox[{"Return", "[", "False", "]"}], ";"}]}], " ", 
                 "\[IndentingNewLine]", "\t\t\t\t", "]"}], ";"}]}], 
              "\[IndentingNewLine]", "\t\t\t", "]"}], ";", 
             "\[IndentingNewLine]", "\t\t\t", 
             RowBox[{"(*", " ", 
              RowBox[{
              "Value", " ", "is", " ", "in", " ", "the", " ", "base", " ", 
               "form"}], " ", "*)"}], "\[IndentingNewLine]", "\t\t\t", 
             RowBox[{"Return", "[", "True", "]"}], ";"}], 
            "\[IndentingNewLine]", "\t\t\t", ",", "\[IndentingNewLine]", 
            "\t\t\t", 
            RowBox[{"(*", " ", 
             RowBox[{"Convert", " ", "letters", " ", "in", " ", "digits"}], 
             " ", "*)"}], "\[IndentingNewLine]", "\t\t\t", 
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
                    "\[IndentingNewLine]", "\t\t\t\t         ", 
                    RowBox[{"(*", " ", 
                    RowBox[{"We", " ", "found", " ", "the", " ", "element"}], 
                    " ", "*)"}], "\[IndentingNewLine]", "\t\t\t\t\t", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    "We", " ", "replace", " ", "the", " ", "element", " ", 
                    "with", " ", "the", " ", "number"}], " ", "*)"}], 
                    "\[IndentingNewLine]", "\t\t\t\t\t", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"listChars", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], " ", "=", " ", 
                    RowBox[{"j", " ", "-", " ", "1"}]}], ";"}], " ", 
                    "\[IndentingNewLine]", "\t\t\t\t\t", ",", " ", 
                    "\[IndentingNewLine]", "\t\t\t\t\t", 
                    RowBox[{"(*", " ", 
                    RowBox[{"do", " ", "nothing"}], " ", "*)"}], 
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
                   RowBox[{"Do", " ", "nothing"}], " ", "*)"}], 
                  "\[IndentingNewLine]", "\t\t\t\t", ",", " ", 
                  "\[IndentingNewLine]", "\t\t\t\t", 
                  RowBox[{"(*", " ", 
                   RowBox[{
                   "Some", " ", "character", " ", "of", " ", "input", " ", 
                    "value", " ", "is", " ", "not", " ", "a", " ", "digit", 
                    " ", "or", " ", "is", " ", "a", " ", "digit", " ", "not", 
                    " ", "less", " ", "than", " ", "the", " ", "base", " ", 
                    "value"}], " ", "*)"}], "\[IndentingNewLine]", "\t\t\t\t", 
                  RowBox[{
                   RowBox[{"Return", "[", "False", "]"}], ";"}]}], " ", 
                 "\[IndentingNewLine]", "\t\t\t\t", "]"}], ";"}]}], 
              "\[IndentingNewLine]", "\t\t\t", "]"}], ";", 
             "\[IndentingNewLine]", "\t\t\t", 
             RowBox[{"(*", " ", 
              RowBox[{
              "Value", " ", "is", " ", "in", " ", "the", " ", "base", " ", 
               "form"}], " ", "*)"}], "\[IndentingNewLine]", "\t\t\t", 
             RowBox[{"Return", "[", "True", "]"}], ";"}]}], 
           "\[IndentingNewLine]", "\t\t\t", "\[IndentingNewLine]", "\t\t", 
           "]"}], ";"}], "\[IndentingNewLine]", "\t\t", ",", " ", 
         "\[IndentingNewLine]", "\t\t\t", 
         RowBox[{"(*", " ", 
          RowBox[{"Format", " ", "Error"}], " ", "*)"}], 
         "\[IndentingNewLine]", "\t\t", 
         RowBox[{
          RowBox[{"Return", "[", "False", "]"}], ";"}]}], "\t\t\t", 
        "\[IndentingNewLine]", "]"}], ";"}]}], "\[IndentingNewLine]", "]"}]}],
    "\n", "\n", "\n", 
   RowBox[{"(*", " ", 
    RowBox[{"Display", " ", "output", " ", "functions"}], " ", "*)"}], "\n", 
   RowBox[{"(*", "\n", "\t", 
    RowBox[{
     RowBox[{
      RowBox[{"DisplayConvert10ToN", "[", 
       RowBox[{"valueNum_", ",", " ", "outputBase_"}], "]"}], "\n", "\t", 
      RowBox[{"Valuenum_", " ", ":", " ", 
       RowBox[{
       "It", " ", "is", " ", "the", " ", "value", " ", "to", " ", "convert", 
        " ", "between", " ", "0", " ", "and", " ", "10.000", " ", "expressed",
         " ", "in", " ", "base", " ", "10", "\n", "\t", "outputBase_"}], " ", 
       ":", " ", 
       RowBox[{
       "It", " ", "is", " ", "the", " ", "base", " ", "to", " ", "convert", 
        " ", "the", " ", "value"}]}]}], ",", " ", 
     RowBox[{
     "it", " ", "would", " ", "be", " ", "between", " ", "2", " ", "and", " ",
       "62", "\n", "\t", "The", " ", "function", " ", "convert", " ", "the", 
      " ", "num_", " ", "from", " ", "base", " ", "10", " ", "to", " ", 
      "base", " ", "defined", " ", "by", " ", "base_", " ", "variable", " ", 
      "and", " ", "display", " ", "result", " ", "with", " ", "final", " ", 
      RowBox[{"result", "."}]}]}], "\n", "\t", "\n", "*)"}], "\n", 
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
        RowBox[{"Input", " ", "controls", " ", "\n", "\t    ", 
         RowBox[{"TODO", ":", " ", 
          RowBox[{
          "Divide", " ", "the", " ", "controls", " ", "and", " ", "check", 
           " ", "messages"}]}]}], "\n", "      ", "*)"}], "\n", "     ", 
       RowBox[{
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"!", 
            RowBox[{"IntegerQ", "[", "valueNum", "]"}]}], " ", "||", " ", 
           RowBox[{"valueNum", " ", ">=", " ", "10000000"}], " ", "||", " ", 
           RowBox[{"!", 
            RowBox[{"IntegerQ", "[", "outputBase", "]"}]}], " ", "||", " ", 
           RowBox[{"valueNum", " ", "<", " ", "0"}], " ", "||", " ", 
           RowBox[{"outputBase", " ", "<", " ", "0"}], " ", "||", " ", 
           RowBox[{"outputBase", " ", ">", " ", "62"}], " ", "||", " ", 
           RowBox[{"!", 
            RowBox[{"VerifyBase", "[", 
             RowBox[{"valueNum", ",", " ", "10"}], "]"}]}]}], ",", "\n", 
          "\t\t   ", 
          RowBox[{
           RowBox[{
           "Return", "[", 
            "\"\<Il numero deve essere un intero positivo compreso tra 0 e \
10.000 (espresso in base 10), le basi devono essere interi tra 2 e 62 e il \
numero deve essere in base 10\>\"", "]"}], ";"}], "\n", "\t\t   ", ",", "\n", 
          "\t\t   ", "\n", "\t\t   ", 
          RowBox[{
           RowBox[{"val", " ", "=", " ", "valueNum"}], ";", "\n", "\t\t   ", 
           RowBox[{"out", " ", "=", " ", "outputBase"}], ";", "\n", "\t\t   ", 
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
             "]"}]}], ";", " ", "\n", "\t\t   ", 
           RowBox[{"(*", " ", 
            RowBox[{
             RowBox[{
             "alphabet", " ", "of", " ", "the", " ", "base", " ", "from", " ",
               "base", " ", "2", " ", "to", " ", "base", " ", "61"}], ",", 
             " ", "\n", "\t\t   ", 
             RowBox[{"0", " ", "-", " ", 
              RowBox[{
              "9", " ", "base", " ", "2", " ", "to", " ", "10", " ", "\n", 
               "\t\t   ", "A"}], " ", "-", " ", 
              RowBox[{
              "Z", " ", "base", " ", "11", " ", "to", " ", "36", "\n", 
               "\t\t   ", "a"}], " ", "-", " ", 
              RowBox[{"z", " ", "base", " ", "37", " ", "to", " ", "61"}]}]}],
             "\n", "\t\t   ", "*)"}], "\n", "\t\t   ", "\n", "\t\t   ", 
           RowBox[{"result", " ", "=", " ", 
            RowBox[{"{", "}"}]}], ";", "\n", "\t\t   ", "\n", "\t\t   ", 
           RowBox[{"(*", " ", 
            RowBox[{"Base", " ", "Procedure"}], " ", "*)"}], "\n", "\t\t   ", 
           "\n", "\t\t    ", 
           RowBox[{"While", "[", 
            RowBox[{
             RowBox[{"res", " ", "\[NotEqual]", " ", "0"}], ",", "  ", "\n", 
             "\t\t    ", 
             RowBox[{"(*", " ", 
              RowBox[{"to", " ", "check"}], " ", "*)"}], "\n", "\t\t       ", 
             
             RowBox[{
              RowBox[{"res", " ", "=", " ", 
               RowBox[{"Quotient", "[", 
                RowBox[{"val", ",", " ", "out"}], "]"}]}], ";", "\n", 
              "\t\t       ", 
              RowBox[{"rest", " ", "=", " ", 
               RowBox[{
                RowBox[{"Mod", "[", 
                 RowBox[{"val", ",", "out"}], "]"}], " ", "+", " ", "1"}]}], 
              ";", " ", 
              RowBox[{"(*", " ", 
               RowBox[{
                RowBox[{
                "1", " ", "is", " ", "for", " ", "Mathematica", " ", 
                 "indexing", " ", "1", " ", "to", " ", "N", " ", "and", " ", 
                 "not", " ", "0", " ", "to", " ", "N"}], " ", "-", " ", "1"}],
                " ", "*)"}], "\n", "\t\t       ", 
              RowBox[{"AppendTo", "[", 
               RowBox[{"restComp", ",", 
                RowBox[{"ToString", "[", 
                 RowBox[{"Part", "[", 
                  RowBox[{"listLet", ",", " ", "rest"}], "]"}], "]"}]}], 
               "]"}], ";", "\n", "\t\t       ", 
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
                  RowBox[{"val", ",", "out"}], "]"}], "]"}], " ", "<>", " ", 
                "\"\< = \>\"", " ", "<>", " ", 
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
           RowBox[{"AppendTo", "[", 
            RowBox[{"result", ",", " ", 
             RowBox[{"StringJoin", "[", 
              RowBox[{"\"\<Il risultato \[EGrave]: \>\"", ",", " ", 
               RowBox[{"Reverse", "[", "restComp", "]"}]}], "]"}]}], "]"}], 
           ";", "\n", "\n", "\t\t   ", "\n", "\t\t   ", 
           RowBox[{"(*", " ", 
            RowBox[{"Print", " ", "section"}], " ", "*)"}], "\n", 
           "            ", 
           RowBox[{"Return", "[", 
            RowBox[{"Column", "[", "result", "]"}], "]"}], ";"}]}], 
         "\[IndentingNewLine]", "\t\t  ", "]"}], ";"}]}], 
      "\[IndentingNewLine]", "                 ", "\n", "]"}]}], ";"}], "\n", 
   "\n", "\n", 
   RowBox[{"(*", "\n", "\t", 
    RowBox[{
     RowBox[{"DisplayConverterNTo10", "[", 
      RowBox[{"num_", ",", " ", "base_"}], "]"}], "\n", "\t", 
     RowBox[{"num_", " ", ":", " ", 
      RowBox[{
      "It", " ", "is", " ", "the", " ", "value", " ", "to", " ", "convert", 
       " ", "\n", "\t", "base_"}], " ", ":", " ", 
      RowBox[{
      "It", " ", "is", " ", "the", " ", "base", " ", "to", " ", "convert", 
       " ", "the", " ", "value", "\n", "\t", "The", " ", "function", " ", 
       "convert", " ", "the", " ", "num_", " ", "from", " ", "the", " ", 
       "input", " ", "base", " ", "defined", " ", "by", " ", "base_", " ", 
       "variable", " ", "to", " ", "base", " ", "10", " ", "and", " ", 
       "display", " ", "the", " ", "procedure", " ", "with", " ", "final", 
       " ", "result", " ", "and", " ", "display", " ", "result", " ", "with", 
       " ", "final", " ", "result"}]}]}], "\n", "*)"}], "\n", 
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
           RowBox[{"base", "\[LessEqual]", "62"}]}], ",", 
          "\[IndentingNewLine]", "        ", 
          RowBox[{
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"base", " ", "\[LessEqual]", " ", "10"}], " ", "&&", 
              " ", 
              RowBox[{"IntegerQ", "[", "num", "]"}]}], " ", ",", 
             "\[IndentingNewLine]", "         ", 
             RowBox[{
              RowBox[{"listChars", " ", "=", " ", 
               RowBox[{"IntegerDigits", "[", 
                RowBox[{"num", ",", " ", "base"}], "]"}]}], ";", 
              RowBox[{"(*", " ", 
               RowBox[{
               "I", " ", "have", " ", "a", " ", "list", " ", "of", " ", 
                "digits"}], " ", "*)"}], "\n", "          ", 
              RowBox[{"size", " ", "=", " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"Length", "[", "listChars", "]"}], "-", "1"}], 
                ")"}]}], ";", "\n", "          ", 
              RowBox[{"expPos", " ", "=", " ", 
               RowBox[{"Reverse", "[", 
                RowBox[{"Range", "[", 
                 RowBox[{"0", ",", " ", "size"}], "]"}], "]"}]}], ";", "\n", 
              "          ", 
              RowBox[{"result", " ", "=", " ", 
               RowBox[{"{", "}"}]}], ";", " ", 
              RowBox[{"(*", " ", 
               RowBox[{"List", " ", "of", " ", "strings"}], " ", "*)"}], "\n",
               "         ", 
              RowBox[{"(*", " ", 
               RowBox[{"Formatting", " ", "expression"}], " ", "*)"}], "\n", 
              "          ", 
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
                "]"}]}], ";", "\n", "             ", 
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{"resultInt", " ", ">", " ", "10000"}], ",", " ", "\n",
                 "                ", 
                RowBox[{
                 RowBox[{
                 "Return", "[", 
                  "\"\<Il numero deve essere un intero tra 0 e 10.000 in base \
10 per essere valido\>\"", "]"}], ";"}], "\n", "\t\t       ", ",", "\n", 
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
             "         ", ",", "\[IndentingNewLine]", "\t\t", 
             RowBox[{"(*", " ", 
              RowBox[{
               RowBox[{
                RowBox[{"else", " ", "of", " ", "base"}], " ", "\[LessEqual]",
                 " ", "10"}], " ", "&&", " ", 
               RowBox[{"IntegerQ", "[", "num", "]"}]}], " ", "*)"}], 
             "\[IndentingNewLine]", "           ", 
             RowBox[{
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{"VerifyBase", "[", 
                 RowBox[{"num", ",", " ", "base"}], "]"}], ",", 
                "\[IndentingNewLine]", "              ", 
                RowBox[{
                 RowBox[{"listChars", " ", "=", " ", 
                  RowBox[{"DeleteCases", "[", 
                   RowBox[{
                    RowBox[{"Characters", "[", 
                    RowBox[{"ToString", "[", "num", "]"}], "]"}], ",", " ", 
                    "\"\< \>\""}], "]"}]}], ";", "\n", "               ", 
                 RowBox[{"listNum", " ", "=", " ", 
                  RowBox[{"Range", "[", 
                   RowBox[{"0", ",", "62"}], "]"}]}], ";", " ", 
                 RowBox[{"(*", " ", 
                  RowBox[{
                   RowBox[{"list", " ", "of", " ", "numbers", " ", 
                    RowBox[{"listChars", "[", 
                    RowBox[{"Part", "[", 
                    RowBox[{"ListNum", ",", "10"}], "]"}], "]"}]}], " ", "=", 
                   " ", 
                   RowBox[{"'", 
                    RowBox[{"A", "'"}]}]}], " ", "*)"}], "\n", 
                 "               ", 
                 RowBox[{"symb", " ", "=", " ", 
                  RowBox[{"Join", "[", 
                   RowBox[{
                    RowBox[{"CharacterRange", "[", 
                    RowBox[{"\"\<0\>\"", ",", "\"\<9\>\""}], "]"}], ",", " ", 
                    
                    RowBox[{"ToUpperCase", "[", 
                    RowBox[{"CharacterRange", "[", 
                    RowBox[{"\"\<a\>\"", ",", "\"\<z\>\""}], "]"}], "]"}], 
                    ",", " ", 
                    RowBox[{"ToLowerCase", "[", 
                    RowBox[{"CharacterRange", "[", 
                    RowBox[{"\"\<a\>\"", ",", "\"\<z\>\""}], "]"}], "]"}]}], 
                   "]"}]}], ";", "\n", "               ", 
                 RowBox[{"(*", " ", 
                  RowBox[{
                  "Convert", " ", "letters", " ", "in", " ", "digits"}], " ", 
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
                    "\[IndentingNewLine]", "\t\t\t\t         ", 
                    RowBox[{"(*", " ", 
                    RowBox[{"We", " ", "found", " ", "the", " ", "element"}], 
                    " ", "*)"}], "\[IndentingNewLine]", "\t\t\t\t\t", 
                    RowBox[{"(*", " ", 
                    RowBox[{
                    "We", " ", "replace", " ", "the", " ", "element", " ", 
                    "with", " ", "the", " ", "number"}], " ", "*)"}], 
                    "\[IndentingNewLine]", "\t\t\t\t\t", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"listChars", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], " ", "=", " ", 
                    RowBox[{"j", " ", "-", " ", "1"}]}], ";"}], " ", 
                    "\[IndentingNewLine]", "\t\t\t\t\t", ",", " ", 
                    "\[IndentingNewLine]", "\t\t\t\t\t", 
                    RowBox[{"(*", " ", 
                    RowBox[{"do", " ", "nothing"}], " ", "*)"}], 
                    "\[IndentingNewLine]", "\t\t\t\t\t", 
                    RowBox[{
                    RowBox[{"listChars", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], ";"}]}], "\n", 
                    "\t\t\t\t\t    ", "\[IndentingNewLine]", "\t\t\t\t\t  ", 
                    "]"}], ";"}]}], " ", "\n", "\t              ", "]"}], 
                    ";"}]}], "\n", "\t\t      ", "]"}], ";", " ", 
                 "\[IndentingNewLine]", "\[IndentingNewLine]", 
                 "              ", 
                 RowBox[{"(*", " ", 
                  RowBox[{
                  "We", " ", "have", " ", "in", " ", "listChars", " ", 
                   "letters", " ", "converted", " ", "with", " ", "the", " ", 
                   "correct", " ", "integer", " ", "value"}], " ", "*)"}], 
                 "\[IndentingNewLine]", "              ", 
                 RowBox[{"size", " ", "=", " ", 
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{"Length", "[", "listChars", "]"}], "-", "1"}], 
                   ")"}]}], ";", "\n", "                                    ", 
                 RowBox[{"expPos", " ", "=", " ", 
                  RowBox[{"Reverse", "[", 
                   RowBox[{"Range", "[", 
                    RowBox[{"0", ",", " ", "size"}], "]"}], "]"}]}], ";", 
                 "\n", "                                    ", 
                 RowBox[{"result", " ", "=", " ", 
                  RowBox[{"{", "}"}]}], ";", " ", 
                 RowBox[{"(*", " ", 
                  RowBox[{"List", " ", "of", " ", "strings"}], " ", "*)"}], 
                 "\n", "                                    ", 
                 RowBox[{"(*", " ", 
                  RowBox[{"Formatting", " ", "expression"}], " ", "*)"}], 
                 "\n", "                                    ", 
                 RowBox[{"For", "[", 
                  RowBox[{
                   RowBox[{"i", " ", "=", " ", "1"}], ",", " ", 
                   RowBox[{"i", " ", "<=", " ", "size"}], ",", " ", 
                   RowBox[{"i", "++"}], ",", " ", "\n", 
                   "                                        ", 
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
                  "                  ", "\n", 
                  "                                          ", "]"}], ";", 
                 "\n", "                                     ", 
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
                  "     ", "\n", "                                     ", 
                 RowBox[{"resultInt", " ", "=", " ", 
                  RowBox[{"FromDigits", "[", 
                   RowBox[{"listChars", ",", " ", "base"}], "]"}]}], ";", 
                 "\n", "                                     ", 
                 RowBox[{"AppendTo", "[", 
                  RowBox[{"result", ",", " ", 
                   RowBox[{"\"\< = \>\"", " ", "<>", " ", 
                    RowBox[{"ToString", "[", "resultInt", "]"}]}]}], "]"}], 
                 ";", "\n", "                                      ", 
                 RowBox[{"Return", "[", 
                  RowBox[{"Row", "[", "result", "]"}], "]"}], ";"}], 
                "\[IndentingNewLine]", "\[IndentingNewLine]", 
                "\[IndentingNewLine]", "\[IndentingNewLine]", "         ", 
                ",", "\[IndentingNewLine]", "          ", 
                RowBox[{"(*", " ", 
                 RowBox[{"Else", " ", "of", " ", 
                  RowBox[{"VerifyBase", "[", 
                   RowBox[{"num", ",", " ", "base"}], "]"}]}], " ", "*)"}], 
                "\[IndentingNewLine]", "           ", "\[IndentingNewLine]", 
                "            ", 
                RowBox[{
                 RowBox[{
                 "Return", "[", 
                  "\"\<Il numero non \[EGrave] in un formato accettabile per \
la base di input\>\"", "]"}], ";"}]}], "\[IndentingNewLine]", 
               "               ", "]"}], ";"}]}], "\[IndentingNewLine]", 
            "           ", "]"}], ";"}], "\[IndentingNewLine]", "      ", ",",
           "\[IndentingNewLine]", "\n", "            ", 
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
     RowBox[{"DisplayConverterDiff10", "[", 
      RowBox[{"valueNum_", ",", "inputBase_", ",", " ", "outputBase_"}], 
      "]"}], "\n", "\t", 
     RowBox[{"valueNum_", " ", ":", " ", 
      RowBox[{"Value", " ", "to", " ", "convert", "\n", "\t", "inputBase_"}], 
      " ", ":", " ", 
      RowBox[{"Initial", " ", "base", " ", "of", " ", "valueNum_", "\n", "\t", 
       RowBox[{"outputBase_", " ", ":", " ", 
        RowBox[{
        "Base", " ", "to", " ", "convert", " ", "the", " ", "valueNum_", "\n",
          "\t", "This", " ", "function", "  ", "convert", " ", "the", " ", 
         "valueNum", " ", "from", " ", "the", " ", "inputBase_", " ", "to", 
         " ", "outputBase_", " ", "with", " ", "both", " ", "values", " ", 
         "different", " ", "from", " ", "10", " ", "and", " ", "display", " ",
          "the", " ", "procedure", " ", "with", " ", "final", " ", 
         "result"}]}]}]}]}], "\n", "\n", "*)"}], "\n", "\n", 
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
       "\n", "\t\t", 
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
            RowBox[{"{", "}"}]}], ";", "\n", "\t\t\t", 
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
            RowBox[{"void", " ", "line"}], " ", "*)"}], "\n", "\t\t\t", 
           RowBox[{"AppendTo", "[", 
            RowBox[{"strOut", ",", " ", 
             RowBox[{"DisplayConverterNTo10", "[", 
              RowBox[{"valueNum3", ",", " ", "inputBase3"}], "]"}]}], "]"}], 
           ";", "\n", "\t\t\t", 
           RowBox[{"(*", " ", 
            RowBox[{
            "now", " ", "we", " ", "need", " ", "the", " ", "input", " ", 
             "for", " ", "Converter10ToN", " ", "calculated", " ", "as", " ", 
             "ConverterNTo10", " ", "do", " ", "but", " ", "with", " ", "no", 
             " ", "string", " ", "formatting"}], " ", "*)"}], "\n", "\t\t\t", 
           
           RowBox[{"(*", " ", 
            RowBox[{
             RowBox[{
             "We", " ", "need", " ", "the", " ", "number", " ", "in", " ", 
              "list", " ", "of", " ", "characters"}], ",", " ", 
             RowBox[{
             "the", " ", "list", " ", "of", " ", "numbers", " ", "associated",
               " ", "with", " ", "letters", " ", "and", " ", "the", " ", 
              "symbols", " ", "list"}]}], " ", "*)"}], "\n", "\t\t\t", 
           RowBox[{"(*", " ", 
            RowBox[{
            "We", " ", "will", " ", "mantain", " ", "in", " ", "result", " ", 
             "the", " ", "temporal", " ", "convertion"}], " ", "*)"}], "\n", 
           "\t\t\t", 
           RowBox[{"listChars", " ", "=", " ", 
            RowBox[{"DeleteCases", "[", 
             RowBox[{
              RowBox[{"Characters", "[", 
               RowBox[{"ToString", "[", "valueNum3", "]"}], "]"}], ",", " ", 
              "\"\< \>\""}], "]"}]}], ";", "\n", "            ", 
           RowBox[{"listNum", " ", "=", " ", 
            RowBox[{"Range", "[", 
             RowBox[{"0", ",", "62"}], "]"}]}], ";", " ", 
           RowBox[{"(*", " ", 
            RowBox[{
             RowBox[{"list", " ", "of", " ", "numbers", " ", 
              RowBox[{"listChars", "[", 
               RowBox[{"Part", "[", 
                RowBox[{"ListNum", ",", "10"}], "]"}], "]"}]}], " ", "=", " ", 
             RowBox[{"'", 
              RowBox[{"A", "'"}]}]}], " ", "*)"}], "\n", "            ", 
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
             "]"}]}], ";", "\n", "            ", 
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
                   "\[IndentingNewLine]", "\t\t\t\t         ", 
                   RowBox[{"(*", " ", 
                    RowBox[{"We", " ", "found", " ", "the", " ", "element"}], 
                    " ", "*)"}], "\[IndentingNewLine]", "\t\t\t\t\t", 
                   RowBox[{"(*", " ", 
                    RowBox[{
                    "We", " ", "replace", " ", "the", " ", "element", " ", 
                    "with", " ", "the", " ", "number"}], " ", "*)"}], 
                   "\[IndentingNewLine]", "\t\t\t\t\t", 
                   RowBox[{
                    RowBox[{
                    RowBox[{"listChars", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], " ", "=", " ", 
                    RowBox[{"j", " ", "-", " ", "1"}]}], ";"}], " ", 
                   "\[IndentingNewLine]", "\t\t\t\t\t", ",", " ", 
                   "\[IndentingNewLine]", "\t\t\t\t\t", 
                   RowBox[{"(*", " ", 
                    RowBox[{"do", " ", "nothing"}], " ", "*)"}], 
                   "\[IndentingNewLine]", "\t\t\t\t\t", 
                   RowBox[{
                    RowBox[{"listChars", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], ";"}]}], "\n", 
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
           RowBox[{"AppendTo", "[", 
            RowBox[{"strOut", ",", " ", "\"\<\>\""}], "]"}], ";", " ", 
           RowBox[{"(*", " ", 
            RowBox[{"void", " ", "line"}], " ", "*)"}], "\n", "\t\t    ", 
           RowBox[{"AppendTo", "[", 
            RowBox[{"strOut", ",", " ", 
             RowBox[{"DisplayConverter10ToN", "[", 
              RowBox[{
               RowBox[{"FromDigits", "[", 
                RowBox[{"listChars", ",", " ", "inputBase3"}], "]"}], ",", 
               " ", "outputBase3"}], "]"}]}], "]"}], ";", "\n", "\t\t\t", 
           RowBox[{"Return", "[", 
            RowBox[{"Column", "[", "strOut", "]"}], "]"}], ";"}], "\n", 
          "\t\t\t", ",", "\n", "\t\t\t", 
          RowBox[{
           RowBox[{
           "Return", "[", 
            "\"\<Il valore iniziale non \[EGrave] nel formato della base di \
input oppure le basi specificate non sono interi positivi diverse da 10 e \
comprese tra 2 e 62\>\"", "]"}], ";"}]}], "\n", "\t\t  ", "]"}], ";"}]}], 
      "\n", "\t", "\n", "]"}]}], ";"}], "\n", "\n", "\n"}]}]], "Code",
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
   3.829995833550316*^9}, {3.83017178945424*^9, 3.830171827835607*^9}},
 CellLabel->
  "In[1677]:=",ExpressionUUID->"4bac3604-d82b-4d99-bdb1-74e42b8e69b6"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"UniversalExercisesPanel", "[", "]"}]], "Input",
 CellChangeTimes->{{3.830180774745928*^9, 3.83018079152355*^9}},
 CellLabel->
  "In[1681]:=",ExpressionUUID->"7da74077-e8db-4687-a84c-e6d2500cb92b"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{Private`BaseInput$$ = 10, Private`BaseOutput$$ = 2, 
    Private`ValoreInput$$ = 2, Private`ValoreOutput$$ = 10, Typeset`show$$ = 
    True, Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[Private`ValoreInput$$], 2}, {
      Hold[Private`BaseInput$$], 10}, {
      Hold[Private`BaseOutput$$], 2}, {
      Hold[Private`ValoreOutput$$], 10}, {
      Hold[
       Button[
       "Genera Campi", Private`ValoreInput$$ = RandomInteger[{0, 299}]; 
        Private`BaseInput$$ = RandomInteger[{10, 62}]; 
        Private`BaseOutput$$ = RandomInteger[{10, 62}]; Null]], 
      Manipulate`Dump`ThisIsNotAControl}, {
      Hold[
       Button[
       "Mostra Soluzione", 
        Private`output = 
         BaseConvertorPackage`SolveConvertion[
          Private`ValoreInput$$, Private`BaseInput$$, Private`BaseOutput$$]; 
        Null]], Manipulate`Dump`ThisIsNotAControl}, {
      Hold[
       Button[
       "Verifica Soluzione", Private`output = 
        Private`VerifySolution[
         Private`ValoreInput$$, Private`BaseInput$$, Private`BaseOutput$$, 
          Private`ValoreOutput$$]]], Manipulate`Dump`ThisIsNotAControl}, {
      Hold[
       Button[
       "Mostra Procedimento", 
        Private`output = 
         BaseConvertorPackage`DisplayBaseConverterManipulate[
          Private`ValoreInput$$, Private`BaseInput$$, Private`BaseOutput$$]; 
        Null]], Manipulate`Dump`ThisIsNotAControl}, {
      Hold[
       Button[
       "Resetta Campi", {
        Private`ValoreInput$$ = 2; Private`BaseInput$$ = 10; 
         Private`BaseOutput$$ = 2; Private`ValoreOutput$$ = 10; 
         Private`output = ""; Null}]], Manipulate`Dump`ThisIsNotAControl}, {
      Hold[""], Manipulate`Dump`ThisIsNotAControl}, {
      Hold[""], Manipulate`Dump`ThisIsNotAControl}, {
      Hold[""], Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {
    0., {0., 10.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {
       Private`BaseInput$$ = 10, Private`BaseOutput$$ = 2, 
        Private`ValoreInput$$ = 2, Private`ValoreOutput$$ = 10}, 
      "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Private`output, 
      "Specifications" :> {{Private`ValoreInput$$, 2}, {
        Private`BaseInput$$, 10}, {Private`BaseOutput$$, 2}, {
        Private`ValoreOutput$$, 10}, 
        Button[
        "Genera Campi", Private`ValoreInput$$ = RandomInteger[{0, 299}]; 
         Private`BaseInput$$ = RandomInteger[{10, 62}]; 
         Private`BaseOutput$$ = RandomInteger[{10, 62}]; Null], 
        Button[
        "Mostra Soluzione", 
         Private`output = 
          BaseConvertorPackage`SolveConvertion[
           Private`ValoreInput$$, Private`BaseInput$$, Private`BaseOutput$$]; 
         Null], 
        Button[
        "Verifica Soluzione", Private`output = 
         Private`VerifySolution[
          Private`ValoreInput$$, Private`BaseInput$$, Private`BaseOutput$$, 
           Private`ValoreOutput$$]], 
        Button[
        "Mostra Procedimento", 
         Private`output = 
          BaseConvertorPackage`DisplayBaseConverterManipulate[
           Private`ValoreInput$$, Private`BaseInput$$, Private`BaseOutput$$]; 
         Null], 
        Button[
        "Resetta Campi", {
         Private`ValoreInput$$ = 2; Private`BaseInput$$ = 10; 
          Private`BaseOutput$$ = 2; Private`ValoreOutput$$ = 10; 
          Private`output = ""; Null}], "", "", ""}, 
      "Options" :> {FrameLabel -> "Esercizio Universale"}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{407., {232., 241.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({
      Private`output = 
        BaseConvertorPackage`SolveConvertion[
         Private`ValoreInput$$, Private`BaseInput$$, Private`BaseOutput$$]; 
       Null}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{{3.830180783317498*^9, 3.8301807920369053`*^9}, 
   3.83018084843536*^9, 3.830181297767005*^9, 3.830182047494729*^9, 
   3.830182083587216*^9},
 CellLabel->
  "Out[1681]=",ExpressionUUID->"d449a139-9ff0-4c8b-9911-42640893dada"]
}, Open  ]]
},
WindowSize->{1878, 780},
WindowMargins->{{0, Automatic}, {Automatic, 58}},
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
Cell[558, 20, 2142, 52, 381, "Input",ExpressionUUID->"dc8673ef-990c-4ab4-a413-0ea8a2a2c4a7",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[2725, 76, 371, 8, 70, "Input",ExpressionUUID->"83ba9a24-105e-453d-9ab2-057fc8b72e8f",
 InitializationCell->True],
Cell[3099, 86, 3774, 53, 69, "Output",ExpressionUUID->"d49ff7b4-3ced-47dd-a7f6-2768cad82f1a"]
}, Open  ]],
Cell[6888, 142, 860, 15, 164, "Input",ExpressionUUID->"9e4ab47b-4075-49ba-8051-48e74256a661",
 InitializationCell->True],
Cell[7751, 159, 1500, 27, 319, "Input",ExpressionUUID->"36c52f8c-b143-44bf-adf6-d9a55d959f3e",
 InitializationCell->True,
 InitializationGroup->True],
Cell[9254, 188, 451, 7, 46, "Input",ExpressionUUID->"efc5497a-4240-4b55-b31a-e89f04d2ed94"],
Cell[CellGroupData[{
Cell[9730, 199, 220, 4, 78, "Code",ExpressionUUID->"700f309b-d38f-4f21-a2e9-5c63753d2137"],
Cell[9953, 205, 3694, 52, 69, "Output",ExpressionUUID->"92be9dd0-4fed-4523-a8b6-0367f4161d84"]
}, Open  ]],
Cell[13662, 260, 70065, 1293, 8663, "Code",ExpressionUUID->"7d260a63-9de2-47a9-9cab-505ba266263a"],
Cell[83730, 1555, 56645, 1091, 7329, "Code",ExpressionUUID->"4bac3604-d82b-4d99-bdb1-74e42b8e69b6"],
Cell[CellGroupData[{
Cell[140400, 2650, 220, 4, 46, "Input",ExpressionUUID->"7da74077-e8db-4687-a84c-e6d2500cb92b"],
Cell[140623, 2656, 4918, 111, 535, "Output",ExpressionUUID->"d449a139-9ff0-4c8b-9911-42640893dada"]
}, Open  ]]
}
]
*)

