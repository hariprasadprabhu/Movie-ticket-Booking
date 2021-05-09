<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="WebApplication2.Views.Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Seats selected are :<span id="seatsselected">0</span></h1>
             <h1>Total Amount :<span id="total">0</span></h1>
            <input type="button" onclick="payment()" style="width: 14px" value="Pay"/>
            <p id="thanks"></p>
            
        </div>
        
    </form>
     <script rel="javascript" type="text/javascript" src="../Scripts/jquery-3.6.0.min.js"></script>
    <script type="text/javascript">
        document.getElementById("seatsselected").innerHTML = localStorage.getItem("SelectedSeat");
        var seats = localStorage.getItem("SelectedSeat").trim();
        var seat1 = seats.split(" ");
        var total = 0;
        var total = parseInt(localStorage.getItem("totalAmount")) + (seat1.length * 45) //tax 45 per each ticket
        document.getElementById("total").innerHTML = total;
        localStorage.setItem("TotalAmount",total);
        function payment() {
            var seat2 = seat1.join(",")+"";
            
            var JSONObj = {
        showid:"1",
        seatId: seat2,
        isPaid: "1"
    }
    $.ajax({
        type: "POST",
        url: "WebForm1.aspx/UpdateSeatStatus",
        data: JSON.stringify(JSONObj),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: onSuccess,
        failure: function (AjaxResponse) {
           document.getElementById("thanks").innerHTML = "Sorry Something went wrong."
        }
    });
    function onSuccess(AjaxResponse) {
        document.getElementById("thanks").innerHTML = "Thank you Payment Successdull."
    }
        }
    </script>
</body>
</html>
