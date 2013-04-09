%{
#include <stdio.h>
#include <math.h>
int T_identificador = 0;/*valor default 0(no tag) y 1(tag)*/
%} 
/*definiciones*/

DocType !DOCTYPE
Size size
Char char
Tag <
TagClose >
FinalTagClose "</"
CommentOpenTag "<--"
CommentCloseTag "-->"
Equal =
Parentesis "()"
/*Arreglar esto*/
Ident  [a-z,A-Z,0-9,".",":",",","/","\-","_",'\\']+
Expresion "\""+{Ident}+"\""
Funcion "\""+{Ident}+{Parentesis}"\""

/*fin definiciones*/
%%
xml {if(T_identificador == 1) printf("[T_xml]");}
base {if(T_identificador == 1) printf("[T_base]");}/*Estructura*/
body {if(T_identificador == 1) printf("[T_body]");}
head {if(T_identificador == 1) printf("[T_head]");}
html {if(T_identificador == 1) printf("[T_html]");}
meta {if(T_identificador == 1) printf("[T_meta]");}
title {if(T_identificador == 1) printf("[T_title]");}
abbr {if(T_identificador == 1) printf("[T_abbr]");}/*Texto*/
acronym {if(T_identificador == 1) printf("[T_acronym]");}
address {if(T_identificador == 1) printf("[T_address]");}
b {if(T_identificador == 1) printf("[T_b]");}
bdo {if(T_identificador == 1) printf("[T_bdo]");}
big {if(T_identificador == 1) printf("[T_big]");}
blockquote {if(T_identificador == 1) printf("[T_blockquote]");}
br {if(T_identificador == 1) printf("[T_br]");}
cite {if(T_identificador == 1) printf("[T_cite]");}
code {if(T_identificador == 1) printf("[T_code]");}
del {if(T_identificador == 1) printf("[T_del]");}
dfn {if(T_identificador == 1) printf("[T_dfn]");}
div {if(T_identificador == 1) printf("[T_div]");}
em {if(T_identificador == 1) printf("[T_em]");}
h1 {if(T_identificador == 1) printf("[T_h1]");}
h2 {if(T_identificador == 1) printf("[T_h2]");}
h3 {if(T_identificador == 1) printf("[T_h3]");}
h4 {if(T_identificador == 1) printf("[T_h4]");}
h5 {if(T_identificador == 1) printf("[T_h5]");}
h6 {if(T_identificador == 1) printf("[T_h6]");}
hr {if(T_identificador == 1) printf("[T_hr]");}
i {if(T_identificador == 1) printf("[T_i]");}
ins {if(T_identificador == 1) printf("[T_ins]");}
kbd {if(T_identificador == 1) printf("[T_kbd]");}
p {if(T_identificador == 1) printf("[T_p]");}
pre {if(T_identificador == 1) printf("[T_pre]");}
q {if(T_identificador == 1) printf("[T_q]");}
samp {if(T_identificador == 1) printf("[T_samp]");}
small {if(T_identificador == 1) printf("[T_small]");}
span {if(T_identificador == 1) printf("[T_span]");}
strong {if(T_identificador == 1) printf("[T_strong]");}
sub {if(T_identificador == 1) printf("[T_sub]");}
sup {if(T_identificador == 1) printf("[T_sup]");}
tt {if(T_identificador == 1) printf("[T_tt]");}
var {if(T_identificador == 1) printf("[T_var]");}
dd {if(T_identificador == 1) printf("[T_dd]");}/*Elementos de lista*/
dl {if(T_identificador == 1) printf("[T_dl]");}
dt {if(T_identificador == 1) printf("[T_dt]");}
li {if(T_identificador == 1) printf("[T_li]");}
ol {if(T_identificador == 1) printf("[T_ol]");}
ul {if(T_identificador == 1) printf("[T_ul]");}
a {if(T_identificador == 1) printf("[T_a]");}/*Vinculacion*/
link {if(T_identificador == 1) printf("[T_link]");}
area {if(T_identificador == 1) printf("[T_area]");}/*Objetos*/
img {if(T_identificador == 1) printf("[T_img]");}
map {if(T_identificador == 1) printf("[T_map]");}
object {if(T_identificador == 1) printf("[T_object]");}
param {if(T_identificador == 1) printf("[T_param]");}
caption {if(T_identificador == 1) printf("[T_caption]");}/*Tabla*/
col {if(T_identificador == 1) printf("[T_col]");}
colgroup {if(T_identificador == 1) printf("[T_colgroup]");}
table {if(T_identificador == 1) printf("[T_table]");}
tbody {if(T_identificador == 1) printf("[T_tbody]");}
td {if(T_identificador == 1) printf("[T_td]");}
tfoot {if(T_identificador == 1) printf("[T_tfoot]");}
th {if(T_identificador == 1) printf("[T_th]");}
thead {if(T_identificador == 1) printf("[T_thead]");}
tr {if(T_identificador == 1) printf("[T_tr]");}
button {if(T_identificador == 1) printf("[T_button]");}/*Formulario*/
fieldset {if(T_identificador == 1) printf("[T_fieldset]");}
form {if(T_identificador == 1) printf("[T_form]");}
input {if(T_identificador == 1) printf("[T_input]");}
label {if(T_identificador == 1) printf("[T_label]");}
legend {if(T_identificador == 1) printf("[T_legend]");}
optgroup {if(T_identificador == 1) printf("[T_optgroup]");}
option {if(T_identificador == 1) printf("[T_option]");}
select {if(T_identificador == 1) printf("[T_select]");}
textarea {if(T_identificador == 1) printf("[T_textarea]");}
noscript {if(T_identificador == 1) printf("[T_noscript]");}/* scripting*/
script {if(T_identificador == 1) printf("[T_script]");}
href {if(T_identificador == 1) printf("[ATT_href]");}/*Atributos*/
version {if(T_identificador == 1) printf("[ATT_version]");}
class {if(T_identificador == 1) printf("[ATT_class]");}
PUBLIC {if(T_identificador == 1) printf("[ATT_PUBLIC]");}
id {if(T_identificador == 1) printf("[ATT_id]");}
dir {if(T_identificador == 1) printf("[ATT_dir]");}
style {if(T_identificador == 1) printf("[ATT_style]");}
xml:lang {if(T_identificador == 1) printf("[ATT_xmllang]");}
profile {if(T_identificador == 1) printf("[ATT_profile]");}
xmlns {if(T_identificador == 1) printf("[ATT_xmlns]");}
content {if(T_identificador == 1) printf("[ATT_content]");}
http-equiv {if(T_identificador == 1) printf("[ATT_httpequiv]");}
name {if(T_identificador == 1) printf("[ATT_name]");}
scheme {if(T_identificador == 1) printf("[ATT_scheme]");}
datetime {if(T_identificador == 1) printf("[ATT_datetime]");}
accesskey {if(T_identificador == 1) printf("[ATT_accesskey]");}
charset {if(T_identificador == 1) printf("[ATT_charset]");}
hreflang {if(T_identificador == 1) printf("[ATT_hreflang]");}
rel {if(T_identificador == 1) printf("[ATT_rel]");}
rev {if(T_identificador == 1) printf("[ATT_rev]");}
tabindex {if(T_identificador == 1) printf("[ATT_tabindex]");}
type {if(T_identificador == 1) printf("[ATT_type]");}
media {if(T_identificador == 1) printf("[ATT_media]");}
alt {if(T_identificador == 1) printf("[ATT_alt]");}
coords {if(T_identificador == 1) printf("[ATT_coords]");}
shape {if(T_identificador == 1) printf("[ATT_shape]");}
nohref:nohref {if(T_identificador == 1) printf("[ATT_nohref]");}
height {if(T_identificador == 1) printf("[ATT_height]");}
longdesc {if(T_identificador == 1) printf("[ATT_longdesc]");}
src {if(T_identificador == 1) printf("[ATT_src]");}
usemap {if(T_identificador == 1) printf("[ATT_usemap]");}
width {if(T_identificador == 1) printf("[ATT_width]");}
classic {if(T_identificador == 1) printf("[ATT_classic]");}
codebase {if(T_identificador == 1) printf("[ATT_codebase]");}
codetype {if(T_identificador == 1) printf("[ATT_codetype]");}
data {if(T_identificador == 1) printf("[ATT_data]");}
declare:declare {if(T_identificador == 1) printf("[ATT_declare]");}
archive {if(T_identificador == 1) printf("[ATT_archive]");}
standby {if(T_identificador == 1) printf("[ATT_standby]");}
value {if(T_identificador == 1) printf("[ATT_value]");}
align {if(T_identificador == 1) printf("[ATT_align]");}
{Char} {if(T_identificador == 1) printf("[ATT_char]");}
charoff {if(T_identificador == 1) printf("[ATT_charoff]");}
valign {if(T_identificador == 1) printf("[ATT_valign]");}
borders {if(T_identificador == 1) printf("[ATT_borders]");}
frame {if(T_identificador == 1) printf("[ATT_frame]");}
rules {if(T_identificador == 1) printf("[ATT_rules]");}
summary {if(T_identificador == 1) printf("[ATT_summary]");}
axis {if(T_identificador == 1) printf("[ATT_axis]");}
colspan {if(T_identificador == 1) printf("[ATT_colspan]");}
headers {if(T_identificador == 1) printf("[ATT_headers]");}
rowspan {if(T_identificador == 1) printf("[ATT_rowspan]");}
scope {if(T_identificador == 1) printf("[ATT_scope]");}
disable:disable {if(T_identificador == 1) printf("[ATT_disable]");}
accept {if(T_identificador == 1) printf("[ATT_accept]");}
action {if(T_identificador == 1) printf("[ATT_action]");}
enctype {if(T_identificador == 1) printf("[ATT_enctype]");}
method {if(T_identificador == 1) printf("[ATT_method]");}
checked:checked {if(T_identificador == 1) printf("[ATT_checked]");}
maxlegth {if(T_identificador == 1) printf("[ATT_maxlegth]");}
lang {if(T_identificador == 1) printf("[ATT_lang]");}
readonly:readonly {if(T_identificador == 1) printf("[ATT_readonly]");}
{Tag}	{T_identificador=1;printf("[<]");}
{TagClose} {T_identificador=0;printf("[>]");}
{FinalTagClose}  {T_identificador=1; printf("[</]");}
{CommentOpenTag} {T_identificador=1;printf("[<--]");}
CommentCloseTag  {T_identificador=0;printf("[-->]");}
{Equal} printf("[=]");
{Parentesis} printf("[()]");
"?" {if(T_identificador == 1) printf("[?]");}
{Size} {if(T_identificador == 1) printf("[ATT_size]");}
{DocType} {if(T_identificador == 1) printf("[T_!DOCTYPE]");}
{Expresion} printf("[T_EXP] %s",yytext);
{Funcion} printf("[T_FUNC] %s",yytext); 
{Ident} printf("[T_IDENT] %s",yytext);
á fprintf(stderr,"Error: Unrecognized character: %s at line: %d\n",yytext,yylineno);/*ERRORES*/
à fprintf(stderr,"Error: Unrecognized character: %s at line: %d\n",yytext,yylineno);
é fprintf(stderr,"Error: Unrecognized character: %s at line: %d\n",yytext,yylineno);
è fprintf(stderr,"Error: Unrecognized character: %s at line: %d\n",yytext,yylineno);
í fprintf(stderr,"Error: Unrecognized character: %s at line: %d\n",yytext,yylineno);
ì fprintf(stderr,"Error: Unrecognized character: %s at line: %d\n",yytext,yylineno);
ó fprintf(stderr,"Error: Unrecognized character: %s at line: %d\n",yytext,yylineno);
ò fprintf(stderr,"Error: Unrecognized character: %s at line: %d\n",yytext,yylineno);
ú fprintf(stderr,"Error: Unrecognized character: %s at line: %d\n",yytext,yylineno);
ù fprintf(stderr,"Error: Unrecognized character: %s at line: %d\n",yytext,yylineno);
@ fprintf(stderr,"Error: Unrecognized character: %s at line: %d\n",yytext,yylineno);
ñ fprintf(stderr,"Error: Unrecognized character: %s at line: %d\n",yytext,yylineno);
[\t\n]+
" " ;/*AL parecer el t no toma los espacios solo los tabs*/
. fprintf(stderr,"Error: Unrecognized character: %s at line: %d\n",yytext,yylineno);
%%
int main() {
 yylex();
 return 1;
}
