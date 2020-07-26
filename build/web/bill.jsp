<%-- 
    Document   : bill
    Created on : 26 Feb, 2020, 2:17:31 AM
    Author     : lucky borasi
--%>

<%@page import="tour.Dao.getPackageDao"%>
<%@page import="tour.pojo.GetPackage"%>
<%@page import="java.util.Calendar"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="utf-8">
    <title>A simple, clean, and responsive HTML invoice template</title>
    
    <style>
    .invoice-box {
        max-width: 800px;
        margin: auto;
        padding: 30px;
        border: 1px solid #eee;
        box-shadow: 0 0 10px rgba(0, 0, 0, .15);
        font-size: 16px;
        line-height: 24px;
        font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
        color: #555;
    }
    
    .invoice-box table {
        width: 100%;
        line-height: inherit;
        text-align: left;
    }
    
    .invoice-box table td {
        padding: 5px;
        vertical-align: top;
    }
    
    .invoice-box table tr td:nth-child(2) {
        text-align: right;
    }
    
    .invoice-box table tr.top table td {
        padding-bottom: 20px;
    }
    
    .invoice-box table tr.top table td.title {
        font-size: 45px;
        line-height: 45px;
        color: #333;
    }
    
    .invoice-box table tr.information table td {
        padding-bottom: 40px;
    }
    
    .invoice-box table tr.heading td {
        background: #eee;
        border-bottom: 1px solid #ddd;
        font-weight: bold;
    }
    
    .invoice-box table tr.details td {
        padding-bottom: 20px;
    }
    
    .invoice-box table tr.item td{
        border-bottom: 1px solid #eee;
    }
    
    .invoice-box table tr.item.last td {
        border-bottom: none;
    }
    
    .invoice-box table tr.total td:nth-child(2) {
        border-top: 2px solid #eee;
        font-weight: bold;
    }
    
    @media only screen and (max-width: 600px) {
        .invoice-box table tr.top table td {
            width: 100%;
            display: block;
            text-align: center;
        }
        
        .invoice-box table tr.information table td {
            width: 100%;
            display: block;
            text-align: center;
        }
    }
    
    /** RTL **/
    .rtl {
        direction: rtl;
        font-family: Tahoma, 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
    }
    
    .rtl table {
        text-align: right;
    }
    
    .rtl table tr td:nth-child(2) {
        text-align: left;
    }
    </style>
    <!-- jQuery library -->

  
  <script type="text/javascript" src="jscript/jspdf.min.js"></script>
<!-- jsPDF library -->
   
</head>



<%

String name=(String)session.getAttribute("c_name");

int t_cost=Integer.parseInt(request.getAttribute("t_cost").toString());
int h_cost=Integer.parseInt(request.getAttribute("h_cost").toString());
int p_cost=Integer.parseInt(request.getAttribute("p_cost").toString());


//int p_id=Integer.parseInt(request.getAttribute("p_id").toString());
int no_of_people=Integer.parseInt(request.getAttribute("no_of_people").toString());



//getPackageDao dao=new getPackageDao();


//int p_cost=dao.getPackageCost(p_id);

//int total_cost=(p_cost+t_cost+h_cost)*no_of_people;




Calendar cal = Calendar.getInstance();
        java.util.Date utilDate = new java.util.Date(); // your util date
        cal.setTime(utilDate);
        cal.set(Calendar.HOUR_OF_DAY, 0);
        cal.set(Calendar.MINUTE, 0);
        cal.set(Calendar.SECOND, 0);
        cal.set(Calendar.MILLISECOND, 0);
        java.sql.Date sqlDate = new java.sql.Date(cal.getTime().getTime()); // your sql date

%>



<body>
    <div class="invoice-box" id="target">
        
        <table cellpadding="0" cellspacing="0">
            <tr class="top">
                <td colspan="2">
                    <table>
                        <tr>
                            <td class="title">
                                <h4>Newway Tours</h4>
                            </td>
                            
                            <td>
                                <!--Invoice #: 123<br>-->
                                Created: <%out.println(sqlDate);%><br>

                                <!--Due: February 1, 2015-->
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            
            <tr class="information">
                <td colspan="2">
                    <table>
                        <tr>
                            <td>
                                Newway, Inc.<br>
                                Hostel 11 manit<br>
                                Bhopal, INDIA 12345
                            </td>
                            
                            <td>
                                MR. ${c_name}.<br>
                                
                                <!--abhishek@example.com-->
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            
            <tr class="heading">
                <td>
                    Payment Method
                </td>
                
                <td>
                    Credit/Debit card
                </td>
            </tr>
            
            <tr class="item">
                <td>
                    Package Cost
                </td>
                
                <td>
                    ${p_cost} rs
                </td>
            </tr>
            
            <tr class="item">
                <td>
                    Travel Cost
                </td>
                
                <td>
                    ${t_cost} rs
                </td>
            </tr>
            
            <tr class="item">
                <td>
                    Hotel Cost
                </td>
                
                <td>
                    ${h_cost} rs
                </td>
            </tr>
            
            <tr class="item">
                <td>
                    No. of People
                </td>
                
                <td>
                    ${no_of_people}
                </td>
            </tr>
            
            <tr class="heading">
                <td>
                   Total Cost
                </td>
                
                <td>
                    <%=((t_cost + p_cost + h_cost)*no_of_people) %> rs
                </td>
            </tr>
            
          <!--  <tr class="total">
                <td></td>
                
                <td>
                   Total Cost: 23224rs
                </td>
            </tr>-->
        </table>
    </div>
    <div id="editor"></div>

 <a href="javascript:print()">download</a>
 
 
 <h1><a href="yourTour.jsp">YourTour</a></h1>
 <script src="https://html2canvas.hertzen.com/dist/html2canvas.js"></script>
    
    <!-- <script src="../dist/jspdf.js"></script>
    <script src="../dist/jspdf.min.js"></script> -->
    
   
    
 <script>

 	function print(quality = 1) {
        const filename  = 'ThisIsYourPDFFilename.pdf';

        html2canvas(document.querySelector('#target'), 
                                {scale: quality}
                         ).then(canvas => {
            let pdf = new jsPDF('p', 'mm', 'a4');
            pdf.addImage(canvas.toDataURL('image/png'), 'PNG', 0, 0, 211, 298);
            pdf.save(filename);
        });
    }



 </script>   
</body>
</html>