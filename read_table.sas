data highchol;
	set sashelp.heart;
	where Chol_Status = 'High';
run;

proc print data=highchol;
run;

data test eye_tracking;
	infile '/folders/myfolders/sasuser.v94/Eye_Tracking_.csv' dlm=',' firstobs=2;
	input LDiaX REPOSZ RGVECZ BEV $;
run;
