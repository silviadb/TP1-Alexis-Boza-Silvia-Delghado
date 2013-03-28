%{
#include <stdio.h>
%}
DocType !DOCTYPE
HTML	html
Head head
Title title
Body body
Div div
Hr hr
Paragraph	p
Button	button
TextArea textarea
Tag <
TagClose >
FinalTagClose "</"
CommentOpenTag "<---"
CommentCloseTag "--->"
Equal =
Expresion "\""+{Ident}+"\""
Ident [a-zA-Z]*[0-9]*
Xmlns xmlns
Href href
Id id
Class class
Rows "rows"
Cols cols
Border border
Cellpading cellpading
Size "size"
%%
{DocType} printf("[T_!DOCTYPE]");
{HTML} printf("[T_html]");
{Head} printf("[T_head]");
{Title} printf("[T_title]");
{Body} printf("[T_body]");
{Div} printf("[T_div]");
{Hr} printf("[T_hr]");
{Paragraph} printf("[T_p]");
{Button} printf("[T_button]");
{TextArea} printf("[T_txtarea]");
{Tag} printf("[<]");
{TagClose} printf("[>]");
{FinalTagClose} printf("[</]");
{CommentOpenTag} printf("[<--]");
{CommentCloseTag} printf("[-->]");
{Equal} printf("[=]");
{Xmlns} printf("[ATT_xmlns]");
{Href} printf("[ATT_href]");
{Id} printf("[ATT_id]");
{Class} printf("[ATT_class]");
{Rows} printf("[ATT_rows]");
{Cols} printf("ATT_cols");
{Border} printf("[ATT_border]");
{Cellpading} printf("[ATT_size]");
{Expresion} printf("[T_EXP]");
{Ident} printf("[T_IDENT] %s",yytext);
á fprintf(stderr,"Error: Unrecognized character %s",yytext);
[\t\n]+	
%%
