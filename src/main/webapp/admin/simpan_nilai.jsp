<%-- 
    Document   : simpan_nilai
    Created on : Jan 17, 2026, 6:16:44?PM
    Author     : ASUS
--%>

<%@page import="java.sql.*"%>
<%@include file="/koneksi.jsp"%>

<%    PreparedStatement ps = conn.prepareStatement(
            "INSERT INTO nilai (nim,nilai_angka,nilai_huruf) VALUES (?,?,?)"
    );
    ps.setString(1, request.getParameter("nim"));
    ps.setInt(2, Integer.parseInt(request.getParameter("nilai_angka")));
    ps.setString(3, request.getParameter("nilai_huruf"));
    ps.executeUpdate();

    response.sendRedirect("nilai_admin.jsp");
%>


