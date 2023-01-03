<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Title</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  <style>
    .switch {
      position: relative;
      display: inline-block;
      width: 60px;
      height: 34px;
    }

    .switch input {
      opacity: 0;
      width: 0;
      height: 0;
    }

    .slider {
      position: absolute;
      cursor: pointer;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      background-color: #ccc;
      -webkit-transition: .4s;
      transition: .4s;
    }

    .slider:before {
      position: absolute;
      content: "";
      height: 26px;
      width: 26px;
      left: 4px;
      bottom: 4px;
      background-color: white;
      -webkit-transition: .4s;
      transition: .4s;
    }

    input:checked + .slider {
      background-color: #2196F3;
    }

    input:focus + .slider {
      box-shadow: 0 0 1px #2196F3;
    }

    input:checked + .slider:before {
      -webkit-transform: translateX(26px);
      -ms-transform: translateX(26px);
      transform: translateX(26px);
    }

    /* Rounded sliders */
    .slider.round {
      border-radius: 34px;
    }

    .slider.round:before {
      border-radius: 50%;
    }
    th, td {
      text-align: center;
    }
    img {
      border-radius: 50%; height: 200px; padding: 5px; width: 200px;
    }
  </style>
</head>
<body>
<a href="/showAdmin" >Back To Show Admin</a>
<section class="intro">
  <form>
    <div class="gradient-custom-1 h-100">
      <div class="mask d-flex align-items-center h-100">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-12">
              <div class="table-responsive bg-white">
                <table class="table mb-0">
                  <thead>
                  <tr>
                    <th scope="col" >Id</th>
                    <th scope="col" >Full Name</th>
                    <th scope="col" >Password</th>
                    <th scope="col" >Email</th>
                    <th scope="col" >Address</th>
                    <th scope="col" >Phone</th>
                    <th scope="col" >Img</th>
                    <th scope="col" >Edit</th>
                    <th scope="col" >Delete</th>
                  </tr>
                  </thead>
                  <tbody>
                  <c:forEach var="acc" items="${accounts}">
                    <tr>
                      <td>${acc.id}</td>
                      <td>${acc.username}</td>
                      <td>${acc.password}</td>
                      <td>${acc.email}</td>
                      <td>${acc.address}</td>
                      <td>${acc.phone}</td>
                      <td><img src="${acc.img}"></td>
                      <td><a href="/adminEditAccount?id=${acc.id}" class="btn btn-warning" >Edit</a></td>
                      <c:if test="${acc.id == 1}"><td></td></c:if>
                      <c:if test="${acc.id != 1 }"> <td><a href="/adminDeleteAccount?id=${acc.id}" class="btn btn-danger">Delete</a></td></c:if>
                    </tr>
                  </c:forEach>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </form>
</section>
</body>
</html>

