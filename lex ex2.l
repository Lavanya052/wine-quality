

%{
#include<stdio.h>
int v=0,c=0;
%}
%%
[aeiou AEIOU] V++;
[a-z A-Z] c++;
%%
int yywrap()
{
return 1;
}
void main()
{
printf("Enter the string");
yylex();
printf("number of vowels %d",v);
printf("number of constants %d",c);
}
