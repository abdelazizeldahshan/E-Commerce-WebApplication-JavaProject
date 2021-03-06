<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.lang.Math" %>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="generator" content="Hugo 0.88.1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>Shoppy Dashboard</title>

    <%@ include file="../includes/admin-head.jsp" %>
</head>

<body>

<%@ include file="../includes/admin-header.jsp" %>
<div class="container-fluid">
    <div class="row">
        <%@ include file="../includes/admin-sidebar.jsp" %>
        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                <h1 class="h2">Customers</h1>
                <div class="btn-toolbar mb-2 mb-md-0">
                    <div class="btn-group me-2">

                    </div>
                </div>
            </div>

            <div class="table-responsive">
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Name</th>
                        <th scope="col">Email</th>
                        <th scope="col">interests</th>
                        <th scope="col">Date of Birth</th>
                        <th scope="col">job</th>
                        <th scope="col">Address</th>
                        <th scope="col">Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="customer" items="${customers.getCustomerDtoList()}">
                    <tr>
                        <th scope="row">${customer.getId()}</th>
                        <td>${customer.getUsername()}</td>
                        <td>${customer.getEmail()}</td>
                        <td>${customer.getInterests()}</td>
                        <td>${customer.getDob()}</td>
                        <td>${customer.getJob()}</td>
                        <td>${customer.getAddress().getArea()} area , building number ${customer.getAddress().getBuildingNum()} , ${customer.getAddress().getStreet()} , floor number  ${customer.getAddress().getFloorNum()} </td>
                        <td>
                            <a href="customer-orders?id=${customer.getId()}" style="color: #333333">
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-bag pl-1" viewBox="0 0 16 16">
                                    <path d="M8 1a2.5 2.5 0 0 1 2.5 2.5V4h-5v-.5A2.5 2.5 0 0 1 8 1zm3.5 3v-.5a3.5 3.5 0 1 0-7 0V4H1v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4h-3.5zM2 5h12v9a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V5z"/>
                                </svg>
                            </a>
                        </td>
                    </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>

        </main>
    </div>
</div>
<%@ include file="../includes/admin-script.jsp" %>
</body>

</html>