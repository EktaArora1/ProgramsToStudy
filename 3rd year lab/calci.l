%{
    #include<stdio.h>
    int opr=0;
    float x,y;
    float s=0;
   
%}

%%
([0-9]*[.])?[0-9]+	{cal();}
[+]	{opr=1;}
[-]	{opr=2;}
[*]	{opr=3;}
[/]	{opr=4;}
%%
void cal(){
if(opr==0)
{x=atof(yytext);
}
else
{y=atof(yytext);
}
if(opr==1)
{s=x+y;}
if(opr==2)
{s=x-y;}
if(opr==3){
s=x*y;}
if(opr==4){
s=x/y;}
}
int yywrap(){return 1;}  
int main(){
yylex();
printf("%f",s);
return 0;}

