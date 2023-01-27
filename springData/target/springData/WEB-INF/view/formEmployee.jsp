<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Employee</title>
<style>
.error-message {
   color: red;
   font-size:90%;
   font-style: italic;
}
</style>
</head>
<body>

   <h3>${formTitle}</h3>

   <form:form action="saveEmployee" method="POST"
       modelAttribute="employeeForm">

       <form:hidden path="id" />

       <table>
           <tr>
               <td>FirstName</td>
               <td><form:input path="firstName" /></td>
               <td><form:errors path="firstName"
                       class="error-message" /></td>      
           </tr>
           
           <tr>
               <td>Last Name</td>
               <td><form:input path="lastName" /></td>
               <td><form:errors path="lastName"
                       class="error-message" /></td>      
           </tr>
          
			 <tr>
               <td>Date de création</td>
               <td><form:input path="startDate" /></td>
               <td><form:errors path="startDate"
                       class="error-message" /></td>      
           </tr>
			
			<tr>
               <td>Titre</td>
               <td><form:input path="title" /></td>
               <td><form:errors path="title"
                       class="error-message" /></td>      
           </tr>
           
           
           <tr>
               <td>Gender</td>
               <td><form:select path="gender">
                       <form:option value="" label="- Gender -" />
                       <form:option value="M" label="Male" />
                       <form:option value="F" label="Female" />
                   </form:select></td>
               <td><form:errors path="gender" class="error-message" /></td>
           </tr>
           <tr>
               <td>Email</td>
               <td><form:input path="email" /></td>
               <td><form:errors path="email" class="error-message" /></td>
           </tr>
           <tr>
               <td>Position</td>
               <td><form:select path="position">
                       <form:options items="${positionMap}" />
                   </form:select></td>
               <td><form:errors path="position" class="error-message" /></td>
           </tr>

           <tr>
               <td>Skills</td>
               <td><c:forEach items="${skills}" var="skill">
                       <form:checkbox path="skills" value="${skill}" label="${skill}" />
                   </c:forEach>
                </td>
               <td><form:errors path="skills" class="error-message" /></td>
           </tr>

           <tr>
               <td>&nbsp;</td>
               <td><input type="submit" value="Submit" />
                  <a href="${pageContext.request.contextPath}/employeeList">Cancel</a>
               </td>
               <td>&nbsp;</td>
           </tr>
       </table>
   </form:form>

</body>
</html>