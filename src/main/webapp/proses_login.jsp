<%-- 
    Document   : proses_login
    Created on : Jan 17, 2026, 2:17:19?PM
    Author     : ASUS
--%>

<%@page import="java.sql.*"%>
<%@include file="koneksi.jsp"%>

<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String level    = request.getParameter("level");

    PreparedStatement ps = conn.prepareStatement(
        "SELECT * FROM users WHERE username=? AND password=? AND level=?"
    );

    ps.setString(1, username);
    ps.setString(2, password);
    ps.setString(3, level);

    ResultSet rs = ps.executeQuery();

    if (rs.next()) {
        session.setAttribute("username", username);
        session.setAttribute("level", level);

        if (level.equals("admin")) {
            response.sendRedirect("admin/dashboard_admin.jsp");
        } else {
            response.sendRedirect("anggota/dashboard_absensi.jsp");
        }
    } else {
        out.println("<script>alert('Login gagal');location='login.jsp';</script>");
    }
%>

