<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <title>Create New Customer</title>
    <script type="text/javascript">
           
        function saveResult(sMessage) {
            var divStatus = document.getElementById("divStatus");
            divStatus.innerHTML = "Request completed: " + sMessage;            
        }
    
    </script>    
</head>
<body>
    <form method="post" action="SaveCustomer.jsp" target="hiddenFrame">
    <p>Enter customer information to be saved:</p>
    <p>Customer Name: <input type="text" name="txtName" value="" /><br />
    Address: <input type="text" name="txtAddress" value="" /><br />
    City: <input type="text" name="txtCity" value="" /><br />
    State: <input type="text" name="txtState" value="" /><br />
    Zip Code: <input type="text" name="txtZipCode" value="" /><br />
    Phone: <input type="text" name="txtPhone" value="" /><br />
    E-mail: <input type="text" name="txtEmail" value="" /></p>
    <p><input type="submit" value="Save Customer Info" /></p>
    </form>
    <div id="divStatus"></div>
</body>
</html>
