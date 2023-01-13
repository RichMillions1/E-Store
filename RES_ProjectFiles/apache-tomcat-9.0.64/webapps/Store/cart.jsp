<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Basket</title>
    <link rel="stylesheet" type="text/css" href="css/public.css">
    <style type="text/css">
       table {
            border-collapse: collapse;
        }

        .threeboder {
            border: 1px solid #5B96D0;
        }

        .trow {
            border-right: 1px solid #5B96D0;
            border-bottom: 1px solid #5A96D6;
        }

        .theader {
            background-color: #A5D3FF;
            font-size: 14px;
            border-right: 1px solid #5B96D0;
            border-bottom: 1px solid #5A96D6;
        }
    </style>

   <script>
        function calc(rowid, quantityInput) {

            quantity = quantityInput.value
            if (isNaN(quantity)) {
                alert("Not a valid value!");
                quantityInput.value = 0;
                quantity = quantityInput.value
                quantityInput.focus();
                // return;
            }
            // Unit price id
            var price_id = 'price_' + rowid;
            // Unit price
            var price = parseFloat(document.getElementById(price_id).innerText);

            // Subtotal id
            var subtotal_id = 'subtotal_' + rowid;
            // Subtotal (before update)
            subtotal1 = parseFloat(document.getElementById(subtotal_id).innerText);
            //Rounded and retained to two decimal places
            subtotal1 = subtotal1.toFixed(2);
            document.getElementById(subtotal_id).innerText = quantity * price;
            // Subtotal (after update)
            subtotal2 = parseFloat(document.getElementById(subtotal_id).innerText);
            // Total
            total = parseFloat(document.getElementById('total').innerText);
            // Calculated totals
            total = total - subtotal1 + subtotal2;
            //Rounded and retained to two decimal places
            total = total.toFixed(2);
            //Total update
            document.getElementById('total').innerText = total;

        }
    </script>

</head>

<body>
<table width="100%" border="0" align="center">
    <tr>
        <td width="616"><img src="images/Logo1.png"  /></td>
        <td width="734" align="right"><img src="images/mycar1.jpg" align="absmiddle" /> <a href="controller?action=cart">&nbsp;Basket</a>
             | <a href="controller?action=list">Products list</a>| <a href="controller?action=logout">Logout</a></td>
    </tr>
</table>
<hr width="100%"/>
<div class="text3" align="center">Your chosen item</div>
<br>
<form action="controller" method="post">
    <table width="100%" border="0" align="center" class="threeboder">
        <tr bgcolor="#A5D3FF">
            <td height="50" align="center" class="theader">Product name</td>
            <td width="8%" align="center" class="theader">Quantity</td>
            <td width="15%" align="center" class="theader">Unit price</td>
            <td width="15%" align="center" class="theader">Subtotal</td>
        </tr>
        <c:forEach var="row" items="${cart}">
            <tr>
                <td height="50" align="left" class="trow">&nbsp;&nbsp;${row.goodsname}</td>
                <td align="center" class="trow">
                    <input name="quantity_${row.goodsid}" type="text" value="${row.quantity}" onblur="calc(${row.goodsid}, this)"/>
                </td>
                <td align="center" class="trow">&yen;<span id="price_${row.goodsid}">${row.price}</span></td>
                <td align="center" class="trow">&yen;<span id="subtotal_${row.goodsid}">${row.price * row.quantity}</span>
                </td>
            </tr>
        </c:forEach>

        <tr>
            <td height="50" colspan="5" align="right">Total: &#8364;<span id="total">${total}</span>&nbsp;&nbsp;</td>
        </tr>
    </table>
    <br>
    <<div align="center">
        <c:if test="${not empty cart}">
            <input type="image" src="images/submit_order.png" border="0">&nbsp;&nbsp;
        </c:if>
    </div>
    <input type="hidden" name="action" value="sub_ord">
</form>
<div class="footer">
    <hr width="100%"/>
    © RES Online 2022 ©
</div>
</body>
</html>
