<%-- 
    Document   : update_mahasiswa
    Created on : Jan 17, 2026, 6:29:11?PM
    Author     : ASUS
--%>

<%@page import="java.sql.*"%>
<%@include file="/koneksi.jsp"%>

<%
    PreparedStatement ps = conn.prepareStatement(
            "UPDATE mahasiswa SET nim=?, nama=?, jurusan=? WHERE id_mahasiswa=?"
    );

    ps.setString(1, request.getParameter("nim"));
    ps.setString(2, request.getParameter("nama"));
    ps.setString(3, request.getParameter("jurusan"));
    ps.setInt(4, Integer.parseInt(request.getParameter("id")));

    ps.executeUpdate();

    response.sendRedirect("mahasiswa.jsp");
%>

