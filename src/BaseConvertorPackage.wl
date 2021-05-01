(* Content-type: application/vnd.wolfram.mathematica *)

(*** Wolfram Notebook File ***)
(* http://www.wolfram.com/nb *)

(* CreatedBy='Mathematica 12.2' *)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       158,          7]
NotebookDataLength[     10629,        259]
NotebookOptionsPosition[      8753,        217]
NotebookOutlinePosition[      9151,        233]
CellTagsIndexPosition[      9108,        230]
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
  "In[118]:=",ExpressionUUID->"dc8673ef-990c-4ab4-a413-0ea8a2a2c4a7"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"BeginPackage", "[", "\"\<BaseConvertorPackage`\>\"", "]"}]], "Input",\

 InitializationCell->True,
 CellChangeTimes->{{3.828861912575403*^9, 3.82886193066146*^9}, {
  3.8288623030616407`*^9, 3.828862303811872*^9}, {3.828863270883473*^9, 
  3.828863273964057*^9}},
 CellLabel->
  "In[119]:=",ExpressionUUID->"83ba9a24-105e-453d-9ab2-057fc8b72e8f"],

Cell[BoxData["\<\"BaseConvertorPackage`\"\>"], "Output",
 CellChangeTimes->{{3.8288619253880987`*^9, 3.8288619312236853`*^9}, 
   3.828862313347885*^9, 3.828863054351088*^9, 3.828863209896085*^9, 
   3.8288632440802917`*^9, 3.82886327447279*^9, 3.828863308403469*^9, 
   3.8288633662016153`*^9, {3.8288634125361233`*^9, 3.828863438348412*^9}},
 CellLabel->
  "Out[119]=",ExpressionUUID->"fb35e24f-159f-477a-a330-8f635499682b"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"BasePanelProject", "::", "usage"}], " ", "=", " ", 
  "\"\<BasePanel[initValue, initInputBase, initOutputBase]\n\tDefine a table \
and show the convertion from initInputBase to initOutputBase\n\tThe last two \
parameters are optional and have as default value the base 10 and 2\n\
\>\""}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.828862098345055*^9, 3.828862224016768*^9}, {
   3.828863316784349*^9, 3.8288633176285067`*^9}, 
   3.828863486946001*^9},ExpressionUUID->"9e4ab47b-4075-49ba-8051-\
48e74256a661"],

Cell[BoxData["\<\"BasePanel[initValue, initInputBase, \
initOutputBase]\\n\\tDefine a table and show the convertion from \
initInputBase to initOutputBase\\n\\tThe last two parameters are optional and \
have as default value the base 10 and 2\\n\"\>"], "Output",
 CellChangeTimes->{
  3.828863209921342*^9, 3.8288632440861387`*^9, {3.828863308415094*^9, 
   3.82886332241131*^9}, 3.828863366214877*^9, {3.82886341254347*^9, 
   3.828863438354034*^9}},
 CellLabel->
  "Out[120]=",ExpressionUUID->"02d78c8a-6767-4b48-9683-5717603abdd2"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"BaseConvertorProject", "::", "usage"}], " ", "=", " ", 
  "\"\<BaseConvertor[value, inputBase, outputBase]\n\tDefine a convertion of \
value from base inputBase to outputBase with some\n\tconditions and controls \
about the value and inputBase/outputBase format:\n\tvalue must be an integer\n\
\tinputBase and outputBase must be integer between 2 and 64\t\>\""}]], "Input",
 InitializationCell->True,
 InitializationGroup->True,
 CellChangeTimes->{{3.828863130557317*^9, 3.828863130558015*^9}, {
  3.828863329694722*^9, 3.8288633552845984`*^9}},
 CellLabel->
  "In[121]:=",ExpressionUUID->"36c52f8c-b143-44bf-adf6-d9a55d959f3e"],

Cell[BoxData["\<\"BaseConvertor[value, inputBase, outputBase]\\n\\tDefine a \
convertion of value from base inputBase to outputBase with \
some\\n\\tconditions and controls about the value and inputBase/outputBase \
format:\\n\\tvalue must be an integer\\n\\tinputBase and outputBase must be \
integer between 2 and 64\\t\"\>"], "Output",
 CellChangeTimes->{{3.828863351326748*^9, 3.828863366243939*^9}, {
  3.8288634125708838`*^9, 3.828863438380015*^9}},
 CellLabel->
  "Out[121]=",ExpressionUUID->"46925f4a-91cd-4cbf-9033-0787e92b93aa"]
}, Open  ]],

Cell[BoxData[
 RowBox[{"\n", "\"\<\>"}]], "Input",
 CellChangeTimes->{{3.828861945258877*^9, 3.828862095540606*^9}, {
   3.8288622274319973`*^9, 3.8288622603711843`*^9}, {3.8288631274032507`*^9, 
   3.828863177069255*^9}, {3.828863216637311*^9, 3.828863234154035*^9}, {
   3.828863279895814*^9, 3.828863292614687*^9}, 3.828863343951037*^9},
 EmphasizeSyntaxErrors->True,
 CellLabel->
  "In[122]:=",ExpressionUUID->"efc5497a-4240-4b55-b31a-e89f04d2ed94"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Begin", "[", "\"\<Private`\>\"", "]"}]], "Code",
 CellChangeTimes->{{3.8288623104913*^9, 3.828862310622814*^9}},
 CellLabel->
  "In[122]:=",ExpressionUUID->"700f309b-d38f-4f21-a2e9-5c63753d2137"],

Cell[BoxData["\<\"Private`\"\>"], "Output",
 CellChangeTimes->{
  3.828863060788678*^9, 3.828863209962535*^9, 3.828863244147821*^9, {
   3.828863303888382*^9, 3.828863308448839*^9}, {3.828863366298032*^9, 
   3.82886343840774*^9}},
 CellLabel->
  "Out[122]=",ExpressionUUID->"8b4af2f1-02d9-446b-95f2-b5b3d91ddf9a"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"BaseConvertorProject", "[", 
   RowBox[{"valueNum_", ",", " ", "inputBase_", ",", " ", "outputBase_"}], 
   "]"}], " ", ":=", " ", "\[IndentingNewLine]", "   ", "True"}]], "Code",
 CellChangeTimes->{{3.8288623490021477`*^9, 3.828862417134672*^9}, {
   3.828862559115164*^9, 3.828862560295457*^9}, {3.8288626174968777`*^9, 
   3.8288626982373857`*^9}, {3.828862738736709*^9, 3.828862835896798*^9}, {
   3.828863014520433*^9, 3.828863020459037*^9}, {3.8288630709923573`*^9, 
   3.828863071288457*^9}, {3.828863105121665*^9, 3.828863122575528*^9}, 
   3.828863237460566*^9, 3.828863296965271*^9, {3.828863359950121*^9, 
   3.828863361466893*^9}},
 CellLabel->
  "In[123]:=",ExpressionUUID->"7d260a63-9de2-47a9-9cab-505ba266263a"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"End", "[", "]"}]], "Code",
 CellChangeTimes->{{3.8288622644326353`*^9, 3.828862278179311*^9}},
 CellLabel->
  "In[124]:=",ExpressionUUID->"db41fcea-04a3-449b-96cf-521508463e94"],

Cell[BoxData["\<\"Private`\"\>"], "Output",
 CellChangeTimes->{
  3.828862278509144*^9, 3.8288623232287807`*^9, 3.828863076067401*^9, 
   3.828863209988764*^9, 3.828863244177288*^9, 3.828863308476502*^9, 
   3.828863366324464*^9, {3.828863400150956*^9, 3.8288634384328527`*^9}},
 CellLabel->
  "Out[124]=",ExpressionUUID->"0833d4dd-3f44-453d-b200-08fdfe03f7d4"]
}, Open  ]],

Cell[BoxData[
 RowBox[{"EndPackage", "[", "]"}]], "Code",
 CellChangeTimes->{{3.828862267484659*^9, 3.828862283178052*^9}},
 CellLabel->
  "In[125]:=",ExpressionUUID->"8b973a99-d59a-4319-956b-bb5397f6ef18"]
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
Cell[3330, 89, 426, 6, 34, "Output",ExpressionUUID->"fb35e24f-159f-477a-a330-8f635499682b"]
}, Open  ]],
Cell[CellGroupData[{
Cell[3793, 100, 562, 11, 110, "Input",ExpressionUUID->"9e4ab47b-4075-49ba-8051-48e74256a661",
 InitializationCell->True],
Cell[4358, 113, 534, 9, 98, "Output",ExpressionUUID->"02d78c8a-6767-4b48-9683-5717603abdd2"]
}, Open  ]],
Cell[CellGroupData[{
Cell[4929, 127, 663, 12, 131, InheritFromParent,ExpressionUUID->"36c52f8c-b143-44bf-adf6-d9a55d959f3e",
 InitializationCell->True,
 InitializationGroup->True],
Cell[5595, 141, 538, 8, 119, "Output",ExpressionUUID->"46925f4a-91cd-4cbf-9033-0787e92b93aa"]
}, Open  ]],
Cell[6148, 152, 453, 8, 52, "Input",ExpressionUUID->"efc5497a-4240-4b55-b31a-e89f04d2ed94"],
Cell[CellGroupData[{
Cell[6626, 164, 219, 4, 52, "Code",ExpressionUUID->"700f309b-d38f-4f21-a2e9-5c63753d2137"],
Cell[6848, 170, 314, 6, 34, "Output",ExpressionUUID->"8b4af2f1-02d9-446b-95f2-b5b3d91ddf9a"]
}, Open  ]],
Cell[7177, 179, 761, 13, 72, "Code",ExpressionUUID->"7d260a63-9de2-47a9-9cab-505ba266263a"],
Cell[CellGroupData[{
Cell[7963, 196, 201, 4, 52, "Code",ExpressionUUID->"db41fcea-04a3-449b-96cf-521508463e94"],
Cell[8167, 202, 361, 6, 34, "Output",ExpressionUUID->"0833d4dd-3f44-453d-b200-08fdfe03f7d4"]
}, Open  ]],
Cell[8543, 211, 206, 4, 52, "Code",ExpressionUUID->"8b973a99-d59a-4319-956b-bb5397f6ef18"]
}
]
*)

