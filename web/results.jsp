<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="HW3CSS.css"
        <title>HW-3 JSP</title>
    </head>
    
    <%
        double totalHoursworked = Double.parseDouble (request.getParameter("hoursWorkedinput")); 
        double hourlyPay = Double.parseDouble(request.getParameter("hourlyPayinput"));
        double preTaxdeduction = Double.parseDouble (request.getParameter("pretaxDeductinput"));
        double postTaxdeduction = Double.parseDouble (request.getParameter("posttaxDeductinput")); 
        
        double regularHours;
        double otHours;
        double otPayrate;
        double otPay;
        double regularPay;
        double grossPay;
        double taxAmount; 
               
        if (totalHoursworked > 40){
         regularHours = 40;
         otHours = totalHoursworked - 40; 
         otPayrate = hourlyPay * 1.5;
         otPay = otHours * otPayrate; 
         regularPay = regularHours * hourlyPay;
         grossPay = regularPay + otPay;
        }
        
        else{
            grossPay = totalHoursworked * hourlyPay;
        }
        
        double overtimeHours = totalHoursworked - 40;
        double overtimeHourlyrate = hourlyPay * 1.5; 

        double preTaxpay = grossPay - preTaxdeduction;
        
        if (grossPay < 500){
            taxAmount = preTaxpay * .18; 
        }
         
        else{
            taxAmount = preTaxpay * .22; 
        }
         
        double postTaxpay = (grossPay - preTaxdeduction - taxAmount);
        double netPay = postTaxpay - postTaxdeduction; 
        
        %>
    
    
    <body>
        <h1>Salary Info</h1>
        
        <table border="1">
                
                <tbody>                   
                    <tr>
                        <td>Total Hours Worked:</td>
                        <td><%= totalHoursworked %></td>
                    </tr>
                    
                    <tr>
                        <td>Hourly Rate:</td>
                        <td><%= hourlyPay %></td>
                    </tr>
                    
                    <tr>
                        <td># Hours Overtime:</td>
                        <td><%= overtimeHours  %></td>
                    </tr>
                    
                    <tr>
                        <td>Overtime Hourly Rate:</td>
                        <td><%= overtimeHourlyrate %></td>
                    </tr>
                    
                    <tr>
                        <td>Gross Pay:</td>
                        <td><%= grossPay %></td>
                    </tr>
                    
                    <tr>
                        <td>Pre-Tax Deduction:</td>
                        <td><%= preTaxdeduction %></td>
                    </tr>
                    
                    <tr>
                        <td>Pre-Tax Pay:</td>
                        <td><%= preTaxpay %></td>
                    </tr>
                    
                    <tr>
                        <td>Tax Amount:</td>
                        <td><%= taxAmount %></td>
                    </tr>
                    
                    <tr>
                        <td>Post-Tax Pay:</td>
                        <td><%= postTaxpay %> </td>
                    </tr>
                    
                    <tr>
                        <td>Post-Tax Deduction:</td>
                        <td><%= postTaxdeduction%></td>
                    </tr>
                    
                    <tr>
                        <td>Net Pay:</td>
                        <td><%= netPay %></td>
                    </tr>                   
                    
                </tbody>
                
            </table>
        
    </body>
</html>
