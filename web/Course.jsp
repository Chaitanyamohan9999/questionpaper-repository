


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Automatic Question Paper Generator</title>
<link href="css/common.css" rel="stylesheet" type="text/css" />
<style type="text/css">

.sidebarmenu ul{
margin: 0;
padding: 0;
list-style-type: none;
font: bold 13px Verdana;
width: 180px; /* Main Menu Item widths */
border-bottom: 1px solid #ccc;
}
 
.sidebarmenu ul li{
position: relative;
}

/* Top level menu links style */
.sidebarmenu ul li a{
display: block;
overflow: auto; /*force hasLayout in IE7 */
color: white;
text-decoration: none;
padding: 6px;
border-bottom: 1px solid #778;
border-right: 1px solid #778;
}

.sidebarmenu ul li a:link, .sidebarmenu ul li a:visited, .sidebarmenu ul li a:active{
background-color: #FFAB21; /*background of tabs (default state)*/
}

.sidebarmenu ul li a:visited{
color: white;
}

.sidebarmenu ul li a:hover{
background-color: black;
}

/*Sub level menu items */
.sidebarmenu ul li ul{
position: absolute;
width: 170px; /*Sub Menu Items width */
top: 0;
visibility: hidden;
}

.sidebarmenu a.subfolderstyle{
background: url(right.gif) no-repeat 97% 50%;
}

 
/* Holly Hack for IE \*/
* html .sidebarmenu ul li { float: left; height: 1%; }
* html .sidebarmenu ul li a { height: 1%; }
/* End */

</style>
<script type="text/javascript">
	
function fu()
{
 

var c=document.form.domain.options[document.form.domain.selectedIndex].value;
window.location="./Regulation.jsp?"+c;


}
</script>
</head>
<body>
<div id="Container">
<div><img src="images/bb.jpeg" width="1362" height="150" ></div>
<div style="position:absolute; left:30px; top:20px"> </div>
<div style="position:absolute; left:260px;  top:60px"><font size="6"><img src="images/cooltext191952079640160.png" ></font></div>

  
  <!--CONTENT -->
  <div id="Content">
    

 <div style="position:absolute; left:460px; top:180px"> 
  <h1 style="position:absolute; left:160px;"><font size="4">Question Paper Generator</font></h1>
  <br><br>
 <fieldset style="border: 2px #FF9900 solid;">
       <legend><font color="#000099" size="4"><strong>View</strong></font></legend>

	 <%
                                                       String message=request.getParameter("msg");
                                                       if(message!=null && message.equalsIgnoreCase("success"))
                                                       {
                                                               out.println("<script>alert('Paper Saved in D: Drive')</script>");
                                                       }
                                                       if(message!=null && message.equalsIgnoreCase("fail"))
                                                       {
                                                                out.println("<script>alert('Failure')</script>");
                                                       }
                                               %>
		  <table width="366" align="center">
<form method="post" name="form">

<tr>
<td width="163" height="46" class="paragraping"><font size="3">Choose Course</font></td>
<td width="191" class="fielditem"><select name="domain" onChange="fu()">
		<option value="--Select category--">---Select Course Name--</option>
		<option value="PG-D">PG-D</option>
    </select></td>
</tr> 
<tr>
            <td width="101" height="46" class="paragraping"><font size="3">Regulation</font></td>
<td width="172" class="name"><select type="text"  name="sub">
<option>----Select Regulation----</option>
</select></td>
</tr>
<tr>
            <td width="101" height="46" class="paragraping"><font size="3">Branch</font></td>
<td width="172" class="name"><select type="text"  name="title">
<option>------Select Branch------</option>
</select></td>
</tr>
<tr>
            <td width="101" height="46" class="paragraping"><font size="3">Year</font></td>
<td width="172" class="name"><select type="text"  name="types">
<option>--------Select Year-------</option>
</select></td>
</tr>
<tr>
            <td width="101" height="46" class="paragraping"><font size="3">Semister</font></td>
<td width="172" class="name"><select type="text"  name="semister">
<option>-----Select Semister-----</option>
</select></td>
</tr>


</form>

</table>
      </fieldset>          
 </div>
   </div>                                
                     
       

<!--FOOTER--> 

<!--END OF FOOTER--> 
</div>
</body>
</html>
