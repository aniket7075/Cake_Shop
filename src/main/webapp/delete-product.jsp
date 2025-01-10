<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Product</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>

<body>

    <div class="container mt-5">
        <h2>Delete Product</h2>
        <form action="/deleteProduct" method="POST">
            <input type="hidden" name="id" value="${product.id}">
            <p>Are you sure you want to delete the product <strong>${product.name}</strong>?</p>
            <button type="submit" class="btn btn-danger">Delete</button>
            <a href="/list" class="btn btn-secondary">Cancel</a>
        </form>
    </div>

</body>
</html>
