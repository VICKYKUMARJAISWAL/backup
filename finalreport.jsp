<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FinalReport</title>
</head>
<body>
<%java.util.Date d = new java.util.Date(); %>
<%		HttpSession session1 = request.getSession();
		double literMS = (Double)session.getAttribute("literMS");
		double prate = (Double)session.getAttribute("prate");
		double cardMS =(Double)session.getAttribute("cardMS");
		double oilMS = (Double)session.getAttribute("oilMS");
		double upreceiptMS = (Double)session.getAttribute("upreceiptMS");
		double voucherMS = (Double)session.getAttribute("voucherMS");
		double advancedMS= (Double)session.getAttribute("advancedMS");
		//double totalCashTestedMS = (Double)session.getAttribute("totalCashTestedMS");
		//MS2
		double literMS2 = (Double)session.getAttribute("literMS2");
		double cardMS2 =(Double)session.getAttribute("cardMS2");
		double oilMS2 = (Double)session.getAttribute("oilMS2");
		double upreceiptMS2 = (Double)session.getAttribute("upreceiptMS2");
		double voucherMS2 = (Double)session.getAttribute("voucherMS2");
		double advancedMS2= (Double)session.getAttribute("advancedMS2");
		//double totalCashTestedMS2 = (Double)session.getAttribute("totalCashTestedMS2");
		//MS3
		double literMS3 = (Double)session.getAttribute("literMS3");
		double cardMS3 =(Double)session.getAttribute("cardMS3");
		double oilMS3 = (Double)session.getAttribute("oilMS3");
		double upreceiptMS3 = (Double)session.getAttribute("upreceiptMS3");
		double voucherMS3 = (Double)session.getAttribute("voucherMS3");
		double advancedMS3= (Double)session.getAttribute("advancedMS3");
		//double totalCashTestedMS3 = (Double)session.getAttribute("totalCashTestedMS3");
		//MS4
		double literMS4 = (Double)session.getAttribute("literMS4");
		double cardMS4 =(Double)session.getAttribute("cardMS4");
		double oilMS4 = (Double)session.getAttribute("oilMS4");
		double upreceiptMS4 = (Double)session.getAttribute("upreceiptMS4");
		double voucherMS4 = (Double)session.getAttribute("voucherMS4");
		double advancedMS4= (Double)session.getAttribute("advancedMS4");
		//double totalCashTestedMS4 = (Double)session.getAttribute("totalCashTestedMS4");
		//HSD5
		double literHSD5 = (Double)session.getAttribute("literHSD5");
		double drate = (Double)session.getAttribute("drate");
		double cardHSD5 =(Double)session.getAttribute("cardHSD5");
		double oilHSD5 = (Double)session.getAttribute("oilHSD5");
		double upreceiptHSD5 = (Double)session.getAttribute("upreceiptHSD5");
		double voucherHSD5 = (Double)session.getAttribute("voucherHSD5");
		double advancedHSD5= (Double)session.getAttribute("advancedHSD5");
		//double totalCashTestedHSD5 = (Double)session.getAttribute("totalCashTestedHSD5");
		//HSD6
		double literHSD6 = (Double)session.getAttribute("literHSD6");
		double cardHSD6 =(Double)session.getAttribute("cardHSD6");
		double oilHSD6 = (Double)session.getAttribute("oilHSD6");
		double upreceiptHSD6 = (Double)session.getAttribute("upreceiptHSD6");
		double voucherHSD6 = (Double)session.getAttribute("voucherHSD6");
		double advancedHSD6= (Double)session.getAttribute("advancedHSD6");
		//double totalCashTestedHSD6 = (Double)session.getAttribute("totalCashTestedHSD6");
		//HSD7
		double literHSD7 = (Double)session.getAttribute("literHSD7");
		double cardHSD7 =(Double)session.getAttribute("cardHSD7");
		double oilHSD7 = (Double)session.getAttribute("oilHSD7");
		double upreceiptHSD7 = (Double)session.getAttribute("upreceiptHSD7");
		double voucherHSD7 = (Double)session.getAttribute("voucherHSD7");
		double advancedHSD7= (Double)session.getAttribute("advancedHSD7");
		//double totalCashTestedHSD7 = (Double)session.getAttribute("totalCashTestedHSD7");
		//HSD8
		double literHSD8 = (Double)session.getAttribute("literHSD8");
		double cardHSD8 =(Double)session.getAttribute("cardHSD8");
		double oilHSD8 = (Double)session.getAttribute("oilHSD8");
		double upreceiptHSD8 = (Double)session.getAttribute("upreceiptHSD8");
		double voucherHSD8 = (Double)session.getAttribute("voucherHSD8");
		double advancedHSD8= (Double)session.getAttribute("advancedHSD8");
		//double totalCashTestedHSD8 = (Double)session.getAttribute("totalCashTestedHSD8");
				
		double totalSaleInLtrMS = literMS + literMS2 + literMS3 + literMS4;
	    double totalSaleInLtrHSD = literHSD5 + literHSD6 + literHSD7 + literHSD8;

		double totalSaleInRsMS = totalSaleInLtrMS * prate;
		double totalSaleInRsHSD = totalSaleInLtrHSD * drate; //* rate1;
		double creditCardSaleInRs = cardMS + cardMS2 + cardMS3 + cardMS4 + cardHSD5 + cardHSD6 + cardHSD7 + cardHSD8;//totalHsInRs - card - upreceipt;//totalHsInRs - scard - upreceipt;
		double creditSaleInRsMS = upreceiptMS + upreceiptMS2 + upreceiptMS3 + upreceiptMS4;//totalcash1 = totalMsInRs + totalcash;
		double creditSaleInRsHSD = upreceiptHSD5 + upreceiptHSD6 + upreceiptHSD7 + upreceiptHSD8;
		double cashSaleInRsMS = totalSaleInRsMS - creditSaleInRsMS;// - creditCardSaleInRsMS; //addoil = totalcash1 + oil;
		double cashSaleInRsHSD = totalSaleInRsHSD - creditCardSaleInRs - creditSaleInRsHSD;
		double totalCashSale = cashSaleInRsMS + cashSaleInRsHSD;
		double oilSale = oilMS + oilMS2 + oilMS3 + oilMS4 + oilHSD5 + oilHSD6 + oilHSD7 + oilHSD8;
		double expenses = voucherMS + voucherMS2 + voucherMS3 + voucherMS4 + voucherHSD5 + voucherHSD6 + voucherHSD7 + voucherHSD8;// - expenses;
		double advanced = advancedMS + advancedMS2 + advancedMS3 + advancedMS4 + advancedHSD5 + advancedHSD6 + advancedHSD7 + advancedHSD8;  
		double balance = totalCashSale + oilSale - expenses - advanced;//subadv = subexpenses - adv;
		
		//formatter
		java.text.DecimalFormat df = new java.text.DecimalFormat("#.00");
		double fd = new Double(df.format(totalSaleInRsMS)).doubleValue();
		double fd1 = new Double(df.format(totalSaleInRsHSD)).doubleValue();
		double fd2 = new Double(df.format(creditCardSaleInRs)).doubleValue();
		double fd3 = new Double(df.format(creditSaleInRsMS)).doubleValue();
		double fd4 = new Double(df.format(creditSaleInRsHSD)).doubleValue();
		double fd5 = new Double(df.format(cashSaleInRsMS)).doubleValue();
		double fd6 = new Double(df.format(cashSaleInRsHSD)).doubleValue();
		double fd7 = new Double(df.format(totalCashSale)).doubleValue();
		double fd8 = new Double(df.format(oilSale)).doubleValue();
		double fd9 = new Double(df.format(expenses)).doubleValue();
		double fd10 = new Double(df.format(advanced)).doubleValue();
		//double fd11 = new Double(df.format(balance)).doubleValue();
 	//get values from session
	    int rate = (Integer)session.getAttribute("rate");
		int op= (Integer)session.getAttribute("op");
		int receipts= (Integer)session.getAttribute("receipts");
		int totalstock= (Integer)session.getAttribute("totalstock");
		int sale=(Integer)session.getAttribute("sale");
		
		int rate1= (Integer)session.getAttribute("rate1");
		int op1= (Integer)session.getAttribute("op1");
		int receipts1= (Integer)session.getAttribute("receipts1");
		int totalstock1= (Integer)session.getAttribute("totalstock1");
		int sale1=(Integer)session.getAttribute("sale1");

		int rate2= (Integer)session.getAttribute("rate2");
		int op2= (Integer)session.getAttribute("op2");
		int receipts2 = (Integer)session.getAttribute("receipts2");
		int totalstock2= (Integer)session.getAttribute("totalstock2");
		int sale2=(Integer)session.getAttribute("sale2");
			
		int rate3= (Integer)session.getAttribute("rate3");
		int op3 = (Integer)session.getAttribute("op3");
		int receipts3 = (Integer)session.getAttribute("receipts3");
		int totalstock3 = (Integer)session.getAttribute("totalstock3");
		int sale3=(Integer)session.getAttribute("sale3");
		
		int rate4 = (Integer)session.getAttribute("rate4");
		int op4 = (Integer)session.getAttribute("op4");
		int receipts4= (Integer)session.getAttribute("receipts4");
		int totalstock4 = (Integer)session.getAttribute("totalstock4");
		int sale4=(Integer)session.getAttribute("sale4");
		
		int rate5= (Integer)session.getAttribute("rate5");
		int op5= (Integer)session.getAttribute("op5");
		int receipts5 = (Integer)session.getAttribute("receipts5");
		int totalstock5 = (Integer)session.getAttribute("totalstock5");
		int sale5=(Integer)session.getAttribute("sale5");
			
		int rate6 = (Integer)session.getAttribute("rate6");
		int op6= (Integer)session.getAttribute("op6");
		int receipts6= (Integer)session.getAttribute("receipts6");
		int totalstock6= (Integer)session.getAttribute("totalstock6");
		int sale6=(Integer)session.getAttribute("sale6");
		
		int rate7 = (Integer)session.getAttribute("rate7");
		int op7 = (Integer)session.getAttribute("op7");
		int receipts7= (Integer)session.getAttribute("receipts7");
		int totalstock7= (Integer)session.getAttribute("totalstock7");
		int sale7=(Integer)session.getAttribute("sale7");
		
		int rate8= (Integer)session.getAttribute("rate8");
		int op8= (Integer)session.getAttribute("op8");
		int receipts8= (Integer)session.getAttribute("receipts8");
		int totalstock8= (Integer)session.getAttribute("totalstock8");
		int sale8=(Integer)session.getAttribute("sale8");
				
		int rate9= (Integer)session.getAttribute("rate9");
		int op9 = (Integer)session.getAttribute("op9");
		int receipts9= (Integer)session.getAttribute("receipts9");
		int totalstock9= (Integer)session.getAttribute("totalstock9");
		int sale9=(Integer)session.getAttribute("sale9");
		
		int rate11= (Integer)session.getAttribute("rate11");
		int op11= (Integer)session.getAttribute("op11");
		int receipts11= (Integer)session.getAttribute("receipts11");
		int totalstock11= (Integer)session.getAttribute("totalstock11");
		int sale11=(Integer)session.getAttribute("sale11");
		
		int rate22= (Integer)session.getAttribute("rate22");
		int op22= (Integer)session.getAttribute("op22");
		int receipts22= (Integer)session.getAttribute("receipts22");
		int totalstock22= (Integer)session.getAttribute("totalstock22");
		int sale22=(Integer)session.getAttribute("sale22");
		
		int rate33= (Integer)session.getAttribute("rate33");
		int op33= (Integer)session.getAttribute("op33");
		int receipts33= (Integer)session.getAttribute("receipts33");
		int totalstock33= (Integer)session.getAttribute("totalstock33");
		int sale33=(Integer)session.getAttribute("sale33");
		
		int cl = op - sale;
		int price= rate * sale;
	    int cl1 = op1 - sale1;
		int price1= rate1 * sale1;
        int cl2 = op2 - sale2;
		int price2= rate2 * sale2;
        int cl3 = op3 - sale3;
		int price3= rate3 * sale3;
        int cl4 = op4 - sale4;
		int price4= rate4 * sale4;		
        int cl5 = op5 - sale5;
		int price5= rate5 * sale5;
        int cl6 = op6 - sale6;
		int price6= rate6 * sale6;
        int cl7 = op7 - sale7;
		int price7= rate7 * sale7;
        int cl8 = op8 - sale8;
		int price8= rate8 * sale8;		
        int cl9 = op9 - sale9;
		int price9= rate9 * sale9;
        int cl11 = op11 - sale11;
		int price11= rate11 * sale11;
        int cl22 = op22 - sale22;
		int price22= rate22 * sale22;
        int cl33 = op33 - sale33;
		int price33= rate33 * sale33;
		
		int oiltotal = price + price1 + price2 + price3 + price4 + price5 + price6 + price7 + price8 + price9 + price11 + price22 + price33;
	
		String str= session.getAttribute("cname").toString();
		int eammount= (Integer)session.getAttribute("eammount");
		//
		String str1 =session.getAttribute("cname1").toString();
		int eammount1= (Integer)session.getAttribute("eammount1");
				
		String str2 =session.getAttribute("cname2").toString();
		int eammount2= (Integer)session.getAttribute("eammount2");

		String str3 = session.getAttribute("cname3").toString();
		int eammount3= (Integer)session.getAttribute("eammount3");

		String str4 = session.getAttribute("cname4").toString();
		int eammount4= (Integer)session.getAttribute("eammount4");


		String str5 = session.getAttribute("cname5").toString();
		int eammount5= (Integer)session.getAttribute("eammount5");


		String str6 = session.getAttribute("cname6").toString();
		int eammount6= (Integer)session.getAttribute("eammount6");

		String str7 = session.getAttribute("cname7").toString();
		int eammount7= (Integer)session.getAttribute("eammount7");

		String str8  = session.getAttribute("cname8").toString();
		int eammount8 = (Integer)session.getAttribute("eammount8");


		String str9 = session.getAttribute("cname9").toString();
		int eammount9= (Integer)session.getAttribute("eammount9");

		String str11 = session.getAttribute("cname11").toString();
		int eammount11= (Integer)session.getAttribute("eammount11");

		String str22 = session.getAttribute("cname22").toString();
		int eammount22= (Integer)session.getAttribute("eammount22");

		String str33 = session.getAttribute("cname33").toString();
		int eammount33= (Integer)session.getAttribute("eammount33");

		String str44 = session.getAttribute("cname44").toString();
		int eammount44= (Integer)session.getAttribute("eammount44");
  %>
 <%double balanceRound=Math.round(balance); %>
<font size='4'><u><center> DAILY REPORT </u></font>&nbsp&nbsp<font size='6'><b> Sinhagad Petroleum </b></font><font>&nbsp Gorhe Budruk </font>&nbsp&nbsp&nbsp<font size='4'><b><input type="radio" name='I' value='i'> I&nbsp&nbsp<input type="radio" name='I' value='i'> II</b></font></center><p>
  <table class="print-friendly" border="1" style="background-color:#FFFFCC;border-collapse:collapse;border:1px solid #FFCC00;color:#000000;width:100%" cellpadding="3" cellspacing="3">
	<tr>
		<th></th>
		<th>MS 1+2+3+4</th>
		<th>HSD 5+6+7+8</th>
		<th colspan='2' align='center'>Date  :<font color='green'><%=d %><font></th>
	</tr>
	<tr>
		<td>Total Sale In Ltr.</td>
		<td align ="center"><%=totalSaleInLtrMS%></td>
		<td align ="center"><%=totalSaleInLtrHSD %></td>
		<th colspan='2' align='center'>EXPENCES</th>
		
	</tr>
	<tr>
		<td>Total Sale In Rs.</td>
		<td align ="center"><%=fd%></td>
		<td align ="center"><%=fd1%></td>
		<td align ="center"><%=eammount%></td>
		<td><%=str%></td>
	</tr>
	<tr>
		<td>(-) Credit Card Sale In Rs.</td>
		<td align="center">----</td>
		<td align="center"><%=fd2 %></td>
		<td align="center"><%=eammount1 %></td>
		<td><%=str1 %></td>
	</tr>
	<tr>
		<td>(-) Credit Sale In Rs.</td>
		<td align="center"><%=fd3 %></td>
		<td align="center"><%=fd4 %></td>
		<td align="center"><%=eammount2 %></td>
		<td><%=str2 %></td>
	</tr>
	<tr>
		<td>(=) Cash Sale In Rs.</td>
		<td align="center"><%= fd5%></td>
		<td align="center"><%= fd6%></td>
		<td align="center"><%=eammount3 %></td>
		<td><%=str3 %></td>
	</tr>
	<tr>
		<td>Total Cash Sale</td>
		<td align="center" colspan='2'><%=fd7%></td>
		<td align="center"><%=eammount4 %></td>
		<td><%=str4 %></td>
	</tr>
	<tr>
		<td>(+) Oil Sale</td>
		<td align="center" colspan='2'><%=fd8 %></td>
		<td align="center"><%=eammount5 %></td>
		<td><%=str5 %></td>
	</tr>
	<tr>
		<td>(-) Expences</td>
		<td align="center" colspan='2'><%=fd9 %></td>
		<td align="center"><%=eammount6 %></td>
		<td><%=str6 %></td>
	</tr>
	<tr>
		<td>(-) Advance</td>
		<td align="center" colspan='2'><%=fd10 %></td>
		<td align="center"><%=eammount7 %></td>
		<td ><%=str7 %></td>
	</tr>
	<tr>
		<td>(=) Balance</td>
		<td align="center" colspan='2'><%=balanceRound%></td>
		<td align="center"><%=eammount8%></td>
		<td><%=str8%></td>
	</tr>
</table></p>
OIL SALE
<table class="print-friendly" border="1" style="background-color:#FFFFCC;border-collapse:collapse;border:1px solid #FFCC00;color:#000000;width:100%" cellpadding="3" cellspacing="3">
	<tr>
		<th>Type</th>
		<th>Rate</th>
		<th>Opening Stock</th>
		<th>Receipts</th>
		<th>Total Stock</th>
		<th>Sale</th>
		<th>Closing Stock</th>
		<th>Amount</th>
	</tr>
	<tr>
		<td >2T 40ml.</td>
		<td align='center'><%=rate%></td>
		<td align='center'><%=op%></td>
		<td align='center'><%=receipts%></td>
		<td align='center'><%=totalstock%></td>
		<td align='center'><%=sale%></td>
		<td align='center'><%=cl %></td>
		<td align='center'><%=price%></td>
	</tr>
	<tr>
		<td>Racer 4 1L.</td>
		<td align='center'><%=rate1%></td>
		<td align='center'><%=op1%></td>
		<td align='center'><%=receipts1%></td>
		<td align='center'><%=totalstock1%></td>
		<td align='center'><%=sale1%></td>
		<td align='center'><%=cl1%></td>
		<td align='center'><%=price1%></td>
	</tr>
	<tr>
		<td>Milcy 1L.</td>
		<td align='center'><%=rate2%></td>
		<td align='center'><%=op2%></td>
		<td align='center'><%=receipts2%></td>
		<td align='center'><%=totalstock2%></td>
		<td align='center'><%=sale2%></td>
		<td align='center'><%=cl2%></td>
		<td align='center'><%=price2%></td>
	</tr>
	<tr>
		<td>D. Water 1L.</td>
		<td align='center'><%=rate3%></td>
		<td align='center'><%=op3%></td>
		<td align='center'><%=receipts3%></td>
		<td align='center'><%=totalstock3%></td>
		<td align='center'><%=sale3%></td>
		<td align='center'><%=cl3%></td>
		<td align='center'><%=price3%></td>
	</tr>
	<tr>
		<td>Lal Ghoda 1L.</td>
		<td align='center'><%=rate4%></td>
		<td align='center'><%=op4%></td>
		<td align='center'><%=receipts4%></td>
		<td align='center'><%=totalstock4%></td>
		<td align='center'><%=sale4%></td>
		<td align='center'><%=cl4%></td>
		<td align='center'><%=price4%></td>
	</tr>
	<tr>
		<td>Lal Ghoda 500ML.</td>
		<td align='center'><%=rate5%></td>
		<td align='center'><%=op5%></td>
		<td align='center'><%=receipts5%></td>
		<td align='center'><%=totalstock5%></td>
		<td align='center'><%=sale5%></td>
		<td align='center'><%=cl5%></td>
		<td align='center'><%=price5%></td>
	</tr>
	<tr>
		<td>Racer 2T 500ML.</td>
		<td align='center'><%=rate6%></td>
		<td align='center'><%=op6%></td>
		<td align='center'><%=receipts6%></td>
		<td align='center'><%=totalstock6%></td>
		<td align='center'><%=sale6%></td>
		<td align='center'><%=cl6%></td>
		<td align='center'><%=price6%></td>
	</tr>
	<tr>
		<td>Acid</td>
		<td align='center'><%=rate7%></td>
		<td align='center'><%=op7%></td>
		<td align='center'><%=receipts7%></td>
		<td align='center'><%=totalstock7%></td>
		<td align='center'><%=sale7%></td>
		<td align='center'><%=cl7%></td>
		<td align='center'><%=price7%></td>
	</tr>
	<tr>
		<td>Brake Oil 250ML.</td>
		<td align='center'><%=rate8%></td>
		<td align='center'><%=op8%></td>
		<td align='center'><%=receipts8%></td>
		<td align='center'><%=totalstock8%></td>
		<td align='center'><%=sale8%></td>
		<td align='center'><%=cl8%></td>
		<td align='center'><%=price8%></td>
	</tr>
	<tr>
		<td>Gear Oil 1L.</td>
		<td align='center'><%=rate9%></td>
		<td align='center'><%=op9%></td>
		<td align='center'><%=receipts9%></td>
		<td align='center'><%=totalstock9%></td>
		<td align='center'><%=sale9%></td>
		<td align='center'><%=cl9%></td>
		<td align='center'><%=price9%></td>
	</tr>
	<tr>
		<td>Grease 1/2 Kg.</td>
		<td align='center'><%=rate11%></td>
		<td align='center'><%=op11%></td>
		<td align='center'><%=receipts11%></td>
		<td align='center'><%=totalstock11%></td>
		<td align='center'><%=sale11%></td>
		<td align='center'><%=cl11%></td>
		<td align='center'><%=price11%></td>
	</tr>
	<tr>
		<td>Thanda Raja 1L.</td>
		<td align='center'><%=rate22%></td>
		<td align='center'><%=op22%></td>
		<td align='center'><%=receipts22%></td>
		<td align='center'><%=totalstock22%></td>
		<td align='center'><%=sale22%></td>
		<td align='center'><%=cl22%></td>
		<td align='center'><%=price22%></td>
	</tr>
	<tr>
		<td>Lal Ghoda 5L.</td>
		<td align='center'><%=rate33%></td>
		<td align='center'><%=op33%></td>
		<td align='center'><%=receipts33%></td>
		<td align='center'><%=totalstock33%></td>
		<td align='center'><%=sale33%></td>
		<td align='center'><%=cl33%></td>
		<td align='center'><%=price33%></td>
	</tr>
	<tr>
		<td colspan='7' align='right'>Total</td>
		<td align="center"><%=oiltotal%></td>
	</tr>

</table></p><p>Cash Details</p>
<table border="1" style="background-color:#FFFFCC;border-collapse:collapse;border:1px solid #FFCC00;color:#000000;width:70%;float:left" cellpadding="3" cellspacing="3">
	<tr>
		<td></td>
		<td>Op. Balance</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td></td>
		<td>I Shift Adv.</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td></td>
		<td>I Shift Cash</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td></td>
		<td>II Shift Adv.</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td></td>
		<td>II Shift Cash</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
</table>
</p><p>Deep Details
<table class="print-friendly" border="1" style="background-color:#FFFFCC;border-collapse:collapse;border:1px solid #FFCC00; color:#000000;width:30%;height:14%;float:down;" cellpadding="3" cellspacing="3">
	<tr>
		<th></td>
		<th>MS-1</th>
		<th>HSD-2</th>
		<th>HSD-3</th>
	</tr>
	<tr>
		<td>OP.</td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>Liter</td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>CL.</td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
</table></p><p>
</p><p>Meter Readings
<table class="print-friendly" border="1" style="background-color:#FFFFCC;border-collapse:collapse;border:1px solid #FFCC00;color:#000000;width:100%;margin-top:-2;" cellpadding="3" cellspacing="3">
	<tr>
		<th></th>
		<th>1 MS</th>
		<th>2 MS</th>
		<th>3 MS</th>
		<th>4 MS</th>
		<th>5 HSD</th>
		<th>6 HSD</th>
		<th>7 HSD</th>
		<th>8 HSD</th>
	</tr>
	<tr>
		<td>End</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>Start</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>Testing</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>Total LT.</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>Rate</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>Rs.</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
</table></p>
<style>
@media print {
  * { margin: 0 !important; padding: 0 !important; }
  #controls, .footer, .footerarea{ display: none; }
  html, body {
    /*changing width to 100% causes huge overflow and wrap*/
    height:100%; 
    overflow: hidden;
    background: #FFF; 
    font-size: 11pt;
  }

  .template { width: auto; left:0; top:0; }
  img { width:100%; }
  li { margin: 0 0 10px 20px !important;}
}
</style><br>
<p><center>Prepared by: _________ &nbsp Sign. __________ &nbsp&nbsp&nbsp Checked by: _________ Sign. __________</center></p>
</body>
</html>