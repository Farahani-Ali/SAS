data highchol;
	set sashelp.heart;
	where Chol_Status = 'High';
run;

proc print data=highchol;
run;

data eye_tracking;
	infile '/folders/myfolders/sasuser.v94/Eye_Tracking_.csv' dlm=',' firstobs=2;
	input LDiaX REPOSZ RGVECZ BEV $;
run;

title1 'List Data for SASHELP.BASEBALL';
proc sort data=sashelp.baseball  out=work.SortedTable;
	by Team;
run ;

proc print data=work.sortedtable label;

	var Name Team Salary;
	by Team;
run;

proc delete data=work.sortedtable;
run;

