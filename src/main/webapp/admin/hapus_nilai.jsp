<%-- 
    Document   : hapus_nilai
    Created on : Jan 17, 2026, 6:23:50?PM
    Author     : ASUS
--%>

<%@page import="java.sql.*"%>
<%@include file="/koneksi.jsp"%>

<%
    PreparedStatement ps = conn.prepareStatement(
            "DELETE FROM nilai WHERE id_nilai=?"
    );
    ps.setInt(1, Integer.parseInt(request.getParameter("id")));
    ps.executeUpdate();

    response.sendRedirect("nilai_admin.jsp");
%>

