<%-- 
    Document   : Page1
    Created on : 16 Jul 2024, 2:48:04 pm
    Author     : irfan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mulah Tech</title>
        <style>
            body{
                font-family: arial;
            }
            table {
                border-collapse: collapse;
                width: 20%;
                margin: 0 auto;
            }
            table2 {
                border-collapse: collapse;
                width: 50%;
                margin: 0 auto;
            }
            th, td {
                border: 1px solid black;
                padding: 8px; 
                text-align: center
            }   
            .right{
                text-align: right;
            }
            .left{
                text-align: left;
            }
            h1, h2 {
                text-align: center;
            }
            body {
                display: flex;
                flex-direction: column;
                align-items: center;
            }
        </style>
    </head>
    <body>
        <%
            List<Integer> list = new ArrayList<>(Arrays.asList(41, 18, 21, 63, 2, 53, 5, 57, 60, 93, 28, 3, 90, 39, 80, 88, 49, 60, 26, 28));  
            int alpha = list.get(4) + list.get(19);
            int beta = list.get(15) / list.get(6);
            int charlie = list.get(12) * list.get(11);
            System.out.println(alpha);
            System.out.println(beta);
            System.out.println(charlie);
            session.setAttribute("listIndex", list);
            session.setAttribute("alpha", alpha);
            session.setAttribute("beta", beta);
            session.setAttribute("charlie", charlie);
        %>
        <h1>Mulah Tech Assessment</h1>
        <h2>Table 1</h2>
        <table>
            <thead>
                <tr>
                    <td class="left">Index #</th>
                    <td class="left">Value</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listIndex}" var="A" varStatus="status">
                    <tr>
                        <td class="left">A<c:out value="${status.index + 1}"/></td>
                        <td class="right"><c:out value="${A}"/></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <br>
        <br>
        <h2>Table 2</h2>
        <table class="table2">
            <thead>
                <tr>
                    <th>Category</th>
                    <th>Value</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Alpha</td>
                    <td><c:out value="${alpha}"/></td>
                </tr>
                <tr>
                    <td>Beta</td>
                    <td><c:out value="${beta}"/></td>
                </tr>
                <tr>
                    <td>Charlie</td>
                    <td><c:out value="${charlie}"/></td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
