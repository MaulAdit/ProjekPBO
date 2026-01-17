<%-- 
    Document   : hapus_mahasiswa
    Created on : Jan 17, 2026, 6:14:50?PM
    Author     : ASUS
--%>

<%@page import="java.sql.*"%>
<%@include file="../koneksi.jsp"%>

<%    int id = Integer.parseInt(request.getParameter("id"));

    PreparedStatement ps = conn.prepareStatement(
            "DELETE FROM users WHERE id=? AND level='anggota'"
    );
    ps.setInt(1, id);
    ps.executeUpdate();

    response.sendRedirect("dashboard_admin.jsp");
%>




