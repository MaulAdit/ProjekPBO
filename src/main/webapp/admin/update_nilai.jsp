<%-- 
    Document   : update_nilai
    Created on : Jan 17, 2026, 6:23:28?PM
    Author     : ASUS
--%>

<%@page import="java.sql.*"%>
<%@include file="/koneksi.jsp"%>

<%
    PreparedStatement ps = conn.prepareStatement(
            "UPDATE nilai SET nilai_angka=?, nilai_huruf=? WHERE id_nilai=?"
    );
    ps.setInt(1, Integer.parseInt(request.getParameter("nilai_angka")));
    ps.setString(2, request.getParameter("nilai_huruf"));
    ps.setInt(3, Integer.parseInt(request.getParameter("id")));
    ps.executeUpdate();

    response.sendRedirect("nilai_admin.jsp");
%>

