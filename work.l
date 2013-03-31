%{
#include <stdio.h>
%} 
/*definiciones*/
int linea=0;
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
Expresion "\""+{Ident}+"\""
Funcion "\""+{Ident}+{Parentesis}"\""
Ident [a-zA-Z]*[0-9]*[a-zA-Z]*
/*fin definiciones*/
%%
base printf("[T_base]");/*Estructura*/
body printf("[T_body]");
head printf("[T_head]");
html printf("[T_html]");
meta printf("[T_meta]");
title printf("[T_title]");
abbr printf("[T_abbr]");/*Texto*/
acronym printf("[T_acronym]");
address printf("[T_address]");
b printf("[T_b]");
bdo printf("[T_bdo]");
big printf("[T_big]");
blockquote printf("[T_blockquote]");
br printf("[T_br]");
cite printf("[T_cite]");
code printf("[T_code]");
del printf("[T_del]");
dfn printf("[T_dfn]");
div printf("[T_div]");
em printf("[T_em]");
h1 printf("[T_h1]");
h2 printf("[T_h2]");
h3 printf("[T_h3]");
h4 printf("[T_h4]");
h5 printf("[T_h5]");
h6 printf("[T_h6]");
hr printf("[T_hr]");
i printf("[T_i]");
ins printf("[T_ins]");
kbd printf("[T_kbd]");
p printf("[T_p]");
pre printf("[T_pre]");
q printf("[T_q]");
samp printf("[T_samp]");
small printf("[T_small]");
span printf("[T_span]");
strong printf("[T_strong]");
sub printf("[T_sub]");
sup printf("[T_sup]");
tt printf("[T_tt]");
var printf("[T_var]");
dd printf("[T_dd]");/*Elementos de lista*/
dl printf("[T_dl]");
dt printf("[T_dt]");
li printf("[T_li]");
ol printf("[T_ol]");
ul printf("[T_ul]");
a printf("[T_a]");/*Vinculacion*/
link printf("[T_link]");
area printf("[T_area]");/*Objetos*/
img printf("[T_img]");
map printf("[T_map]");
object printf("[T_object]");
param printf("[T_param]");
caption printf("[T_caption]");/*Tabla*/
col printf("[T_col]");
colgroup printf("[T_colgroup]");
table printf("[T_table]");
tbody printf("[T_tbody]");
td printf("[T_td]");
tfoot printf("[T_tfoot]");
th printf("[T_th]");
thead printf("[T_thead]");
tr printf("[T_tr]");
button printf("[T_button]");/*Formulario*/
fieldset printf("[T_fieldset]");
form printf("[T_form]");
input printf("[T_input]");
label printf("[T_label]");
legend printf("[T_legend]");
optgroup printf("[T_optgroup]");
option printf("[T_option]");
select printf("[T_select]");
legend printf("[T_textarea]");
noscript printf("[T_noscript]");/* scripting*/
script printf("[T_script]");
href printf("[ATT_href]");/*Atributos*/
class printf("[ATT_class]");
id printf("[ATT_id]");
dir printf("[ATT_dir]");
style printf("[ATT_style]");
xml:lang printf("[ATT_xmllang]");
profile printf("[ATT_profile]");
xmlns printf("[ATT_xmlns]");
content printf("[ATT_content]");
http-equiv printf("[ATT_httpequiv]");
name printf("[ATT_name]");
scheme printf("[ATT_scheme]");
datetime printf("[ATT_datetime]");
accesskey printf("[ATT_accesskey]");
charset printf("[ATT_charset]");
hreflang printf("[ATT_hreflang]");
rel printf("[ATT_rel]");
rev printf("[ATT_rev]");
tabindex printf("[ATT_tabindex]");
type printf("[ATT_type]");
media printf("[ATT_media]");
alt printf("[ATT_alt]");
coords printf("[ATT_coords]");
shape printf("[ATT_shape]");
nohref:nohref printf("[ATT_nohref]");
height printf("[ATT_height]");
longdesc printf("[ATT_longdesc]");
src printf("[ATT_src]");
usemap printf("[ATT_usemap]");
width printf("[ATT_width]");
classic printf("[ATT_classic]");
codebase printf("[ATT_codebase]");
codetype printf("[ATT_codetype]");
data printf("[ATT_data]");
declare:declare printf("[ATT_declare]");
archive printf("[ATT_archive]");
standby printf("[ATT_standby]");
value printf("[ATT_value]");
align printf("[ATT_align]");
{Char} printf("[ATT_char]");
charoff printf("[ATT_charoff]");
valign printf("[ATT_valign]");
borders printf("[ATT_borders]");
frame printf("[ATT_frame]");
rules printf("[ATT_rules]");
summary printf("[ATT_summary]");
axis printf("[ATT_axis]");
colspan printf("[ATT_colspan]");
headers printf("[ATT_headers]");
rowspan printf("[ATT_rowspan]");
scope printf("[ATT_scope]");
disable:disable printf("[ATT_disable]");
accept printf("[ATT_accept]");
charset printf("[ATT_charset]");
action printf("[ATT_action]");
enctype printf("[ATT_enctype]");
method printf("[ATT_method]");
checked:checked printf("[ATT_checked]");
maxlegth printf("[ATT_maxlegth]");
readonly:readonly printf("[ATT_readonly]");
{Size} printf("[ATT_size]");
{DocType} printf("[T_!DOCTYPE]");
{Expresion} printf("[T_EXP]");/*"_valor_"*/
{Funcion} printf("[T_FUNC]"); /*"funcion()"*/
{Ident} printf("[T_IDENT] %s",yytext);
á fprintf(stderr,"Error: Unrecognized character %s",yytext);/*ERRORES*/
à fprintf(stderr,"Error: Unrecognized character %s",yytext);
é fprintf(stderr,"Error: Unrecognized character %s",yytext);
è fprintf(stderr,"Error: Unrecognized character %s",yytext);
í fprintf(stderr,"Error: Unrecognized character %s",yytext);
ì fprintf(stderr,"Error: Unrecognized character %s",yytext);
ó fprintf(stderr,"Error: Unrecognized character %s",yytext);
ò fprintf(stderr,"Error: Unrecognized character %s",yytext);
ú fprintf(stderr,"Error: Unrecognized character %s",yytext);
ù fprintf(stderr,"Error: Unrecognized character %s",yytext);
@ fprintf(stderr,"Error: Unrecognized character %s",yytext);
ñ fprintf(stderr,"Error: Unrecognized character %s",yytext);
[\t\n]+	printf("Tab o espacio");
%%
