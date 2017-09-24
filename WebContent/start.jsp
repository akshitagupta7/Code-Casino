<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<button type="submit" name="submit" class="btn btn-lg" onclick="opennew('frontpage.jsp');">START</button>
<script type="text/javascript">
  function opennew(url) {
      var win= window.open(url, '','scrollbars=no,menubar=no,resizable=yes,toolbar=no,location=no,status=no');
      }  
  </script>
</html>


