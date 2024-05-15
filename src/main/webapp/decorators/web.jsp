<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>EShopper - Bootstrap Shop Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet"> 

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link rel="stylesheet" href="<c:url value='/template/web/lib/owlcarousel/assets/owl.carousel.min.css' />" />

    <!-- Customized Bootstrap Stylesheet -->
    <link rel="stylesheet" href="<c:url value='/template/web/css/style.css' />" />
</head>
<body>
    <!-- header -->
    <%@ include file="/common/web/header.jsp" %>
    <!-- header -->
    
       <div class="container-fluid mb-5">
        <dec:body/>
    </div>

    <!-- footer -->
    <%@ include file="/common/web/footer.jsp" %>
    <!-- footer -->
    
     <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="/template/web/lib/easing/easing.min.js"></script>
    <script src="/template/web/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Contact Javascript File -->
    <script src="/template/webmail/jqBootstrapValidation.min.js"></script>
    <script src="/template/webmail/contact.js"></script>

    <!-- Template Javascript -->
    <script src="/template/web/js/main.js"></script>
    
</body>
</html>
