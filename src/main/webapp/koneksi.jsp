<%-- 
    Document   : koneksiDB
    Created on : Jan 17, 2026, 2:13:57?PM
    Author     : ASUS
--%>

<%@page import="java.sql.*"%>
<%
    String url  = "jdbc:postgresql://localhost:5432/sistem_absen";
    String user = "postgres";
    String pass = "password1";

    Connection conn = null;

    try {
        Class.forName("org.postgresql.Driver");
        conn = DriverManager.getConnection(url, user, pass);
    } catch (Exception e) {
        out.println("KONEKSI DB ERROR: " + e.getMessage());
    }
%>

