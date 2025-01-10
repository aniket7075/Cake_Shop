<!-- checkout.jsp -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Checkout</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
            background-color: #f4f4f4;
        }
        h1 {
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .total-amount {
            margin-top: 20px;
        }
        .total-amount h3 {
            color: #333;
        }
        button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1>Checkout</h1>
    <h2>Your Cart</h2>
    <c:if test="${cart != null}">
        <table>
            <tr>
                <th>Product Name</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Total</th>
            </tr>
            <c:forEach var="product" items="${cart}">
                <tr>
                    <td>${product.name}</td>
                    <td>${product.price}</td>
                    <td>${product.quantity}</td>
                    <td>${product.price * product.quantity}</td>
                </tr>
            </c:forEach>
        </table>

        <div class="total-amount">
            <h3>Total Amount:  ${totalPrice}</h3>
        </div>

        <form action="/placeOrder" method="post">
            <button type="submit">Place Order</button>
        </form>
    </c:if>

    <c:if test="${cart == null || cart.isEmpty()}">
        <p>Your cart is empty. Please add some items.</p>
        <a href="/dashboard">Go back to the Dashboard</a>
    </c:if>
    <%@ include file="footer.jsp" %>
</body>
</html>
