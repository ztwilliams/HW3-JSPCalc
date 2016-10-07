<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="HW3CSS.css"
        <title>HW-3 JSP</title>
    </head>
    <body>
        <h1>Simple Salary Calculator</h1>
        
        <form name="salaryInput" action="results.jsp" method="post">
            
            <table>
                
                <tbody>                   
                    <tr>
                        <td>Hours Worked:</td>
                        <td><input type="text" name="hoursWorkedinput" value="" size="23" required ></td>
                    </tr>
                    
                    <tr>
                        <td>Hourly Pay:</td>
                        <td><input type="text" name="hourlyPayinput" value="" size="23" required ></td>
                    </tr>
                    
                    <tr>
                        <td>Pre-Tax Deduction:</td>
                        <td><input type="text" name="pretaxDeductinput" value="" size="23" required ></td>
                    </tr>
                    
                    <tr>
                        <td>Post-Tax Deduction:</td>
                        <td><input type="text" name="posttaxDeductinput" value="" size="23" required ></td>
                    </tr>
                </tbody>
                
            </table>
            
            <input type="reset" value="Clear" id="clear">
            <input type="submit" value="Submit" id="submit">
            
        </form>
    </body>
</html>
