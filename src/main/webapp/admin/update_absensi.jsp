<%-- 
    Document   : update_absensi
    Created on : Jan 17, 2026, 7:22:10?PM
    Author     : ASUS
--%>

<%@ page import="java.sql.*" %>
<%@ include file="../koneksi.jsp" %>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    String status = request.getParameter("status");

    PreparedStatement ps = conn.prepareStatement(
            "UPDATE absensi SET status=? WHERE id=?"
    );
    ps.setString(1, status);
    ps.setInt(2, id);
    ps.executeUpdate();

    response.sendRedirect("absensi_admin.jsp");
%>

