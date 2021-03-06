<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<%@ taglib prefix = "rms" uri = "/WEB-INF/tags/link.tld"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">

  <title>RMS</title>
  <meta name="description" content="Index">
  <meta name="author" content="Mitrais">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css">
  <script defer src="https://code.getmdl.io/1.3.0/material.min.js"></script>
  <rms:link type="stylesheet" href="css/styles.css?v=1.0"/>

  <!--[if lt IE 9]>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script>
  <![endif]-->
</head>

<body>
<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
<header class="mdl-layout__header">
    <div class="mdl-layout__header-row">
      <!-- Title -->
      <span class="mdl-layout-title">RMS: Users Management</span>
      <!-- Add spacer, to align navigation to the right -->
      <div class="mdl-layout-spacer"></div>
      <!-- Navigation. We hide it in small screens. -->
      <nav class="mdl-navigation mdl-layout--large-screen-only">
        <a class="mdl-navigation__link" href="../logout">Log out</a>
      </nav>
    </div>
  </header>
    <div class="mdl-layout mdl-js-layout mdl-color--grey-100 box-center">
    	<main class="mdl-layout__content">
    		<table class="mdl-data-table mdl-js-data-table mdl-data-table--selectable mdl-shadow--2dp" >
              <thead>
                <tr>
                  <th class="mdl-data-table__cell--non-numeric">User Name</th>
                  <th>Password</th>
                </tr>
              </thead>
              <tbody>
              <c:forEach items = "${users}" var="user">
                  <tr>
                    <td class="mdl-data-table__cell--non-numeric"><c:out value = "${user.userName}"/></td>
                    <td><c:out value = "${user.password}"/></td>
                    <td><a href="edit?userId=<c:out value="${user.id}"/>">Update</a></td>
					<td><a href="delete?userId=<c:out value="${user.id}"/>">Delete</a></td>
                  </tr>
              </c:forEach>
              </tbody>
            </table>
    	</main>
    </div>
  <script src="js/scripts.js"></script>
  <script >
  $('button1').click( function() {
      
      alert(
          "The following data would have been submitted to the server: \n\n"
      );
      return false;
  } );
  </script>
  </div>
</body>
</html>
