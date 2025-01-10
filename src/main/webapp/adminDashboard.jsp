<%@ include file="adminheder.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
      <!-- Include Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <style>
        body {
            background-color: #f7f7f7;
            font-family: 'Arial', sans-serif;
            padding-top: 20px;
        }
          h1 {
            color: #459870; /* Stylish Red */
            font-family: 'Arial', sans-serif;
            background-color: #f9f9f9;
            padding: 20px;
            border-radius: 8px;
            text-align: center;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        }
        .table-container {
            width: 80%;
            margin: auto;
            background-color: #ffffff;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        table {
            width: 100%;
            margin-bottom: 20px;
        }
        th {
            background-color: #007BFF;
            color: white;
            text-align: center;
            padding: 10px;
        }
        td {
            text-align: center;
            padding: 8px;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #f1c40f;
            cursor: pointer;
        }
        .table-responsive {
            margin-top: 20px;
        }
    </style>
</head>
<body>

    

    <h1>Registered Users</h1>
    <table class="table table-bordered table-striped table-hover">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Last Name</th>
                        <th>Phone</th>
                        <th>Address</th>
                        <th>City</th>
                        <th>Email</th>
                        <th>Password</th>
                        <th>Oprations</th>
                    </tr>
                </thead>
                <tbody>
                   <c:forEach items="${users}" var="user">
                        <tr>
                            <td>${user.id}</td>
                            <td>${user.name}</td>
                            <td>${user.last}</td>
                            <td>${user.phone}</td>
                            <td>${user.address}</td>
                            <td>${user.city}</td>
                            <td>${user.email}</td>
                            <td>${user.password}</td>
                            <td>
                        <a href="editt?id=${user.id}" class="btn btn-warning">Edit</a>
                        <a href="deletee?id=${user.id}" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this user?')">Delete</a>
                    </td>
                        </tr>
                        
                    </c:forEach>
        </tbody>
    </table>
<%@ include file="footer.jsp" %>
</body>
</html>
