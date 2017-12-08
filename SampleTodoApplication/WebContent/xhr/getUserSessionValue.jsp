<%@ page language="java" contentType="text/html; charset=UTF-8"
										
    pageEncoding="UTF-8"%>
<% HttpSession httpSession = request.getSession();
   int userId= (Integer) httpSession.getAttribute("addUser");
   
 %>
 {userId : <%=userId%>}