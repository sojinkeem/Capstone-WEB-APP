<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script>
Now = new Date();
NowDay = Now.getDate();
NowMonth = Now.getMonth();
NowYear = Now.getYear();
if (NowYear < 2000) NowYear += 1900; 

function WriteYearOptions(YearsBehind) {
  line = "";
  for (i=0; i<YearsBehind; i++) {
    line += "<option value='";
    line += NowYear - i;
    line += "'>"
    line += NowYear - i;
    line += "년</option>";
  } return line;
}

function WriteDaysOptions(DaysAhead) {
	line = "";
	for (i=0; i<DaysAhead; i++) {
		d = 1+i;
		line += "<option value='";
		line += d;
		line += "'>"
		line += d;
	    line += "일</option>";
	  } return line;
}

function monthDay(sMonth) {
	var target = document.getElementById("selectedDay");
	
	switch(sMonth) {
		case "Jan":
		case "Mar":
		case "May":
		case "Jul":
		case "Aug":
		case "Oct":
		case "Dec":
			var opt = WriteDaysOptions(31);
			break;
		case "Apr":
		case "Jun":
		case "Sep":
		case "Nov":
			var opt = WriteDaysOptions(30);
			break;
		case "Feb":
			var opt = WriteDaysOptions(28);
			break;
	}
	
	target.appendChild(opt);

}

</script>

<title>HealthU :: 회원가입</title>
</head>
<body onLoad="SetToToday('FirstSelect');">
	<%@include file="header.jsp"%>

	<header class="bg-primary text-black text-center">
		<section class="page-section portfolio" id="portfolio">
			<div class="container d-flex align-items-center flex-column">
			<h1>회원가입</h1>
			</div>
			
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-burn"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			
			<div class="container table-responsive control-group">
				<div class="row form-group floating-label-form-group controls mb-0 pb-2">
					<table style="margin-left: auto; margin-right: auto;">
						<tr style="border: 10px solid transparent">
						<td style="text-align:right"> <h5 style="display:inline"> 이름ㅤ </h5> </td>
						<td> <input type="text" class="form-control" 
								style="background-color: white; width:250px;"> </td>
						</tr>
					
						<tr style="border: 10px solid transparent">
						<td style="text-align:right"> <h5 style="display:inline"> IDㅤ </h5> </td>
						<td> <input type="text" class="form-control" 
								style="background-color: white; width:250px;"> </td>
						</tr>
						
						<tr style="border: 10px solid transparent">
						<td style="text-align:right"> <h5 style="display:inline"> PWㅤ </h5> </td>
						<td> <input type="password" class="form-control" 
								style="background-color: white; width:250px;"> </td>
						</tr>
						
						<tr style="border: 10px solid transparent">
						<td style="text-align:right"> <h5 style="display:inline"> 성별ㅤ </h5> </td>
						<td> <form class="form-inline"><div class="form-group">
						<input type="radio"name="gender" class="form-control" value="female"> ㅤ여ㅤㅤ 
						<input type="radio" name="gender" class="form-control" value="male"> ㅤ남ㅤㅤ
						</div></form></td>
						</tr>
						
						<tr style="border: 10px solid transparent">
						<td style="text-align:right"><h5 style="display:inline">생년월일ㅤ</h5></td>
						<td>	
						<FORM name="Form1">
						<select name="selectYear" id="selectedYear" style="width: 100px;">
							<option value=""> 년도 </option>
							<script>
               					document.write(WriteYearOptions(72));
       						</script>
                    		
                		</select>
							
						<select name="selectMonth" id="selectedMonth" 
							style="width: 70px;" onchange="monthDay(this.value)">
					        <option value=""> 월 </option>
					        <option value="Jan">1월</option>
					        <option value="Feb">2월</option>
					        <option value="Mar">3월</option>
					        <option value="Apr">4월</option>
					        <option value="May">5월</option>
					        <option value="Jun">6월</option>
					        <option value="Jul">7월</option>
					        <option value="Aug">8월</option>
					        <option value="Sep">9월</option>
					        <option value="Oct">10월</option>
					        <option value="Nov">11월</option>
					        <option value="Dec">12월</option>
					     </select>
					     
					     <select name="selectDay" id="selectedDay" style="width: 70px;">
					        <option value=""> 일 </option>
					        <script>
					        	//monthDay()
               					
       						</script>
					        
					      </select>
					      </FORM> 
						</td>
						</tr>
					</table>
					
				</div>
			</div>
			
		</section>
	</header>
</body>
</html>