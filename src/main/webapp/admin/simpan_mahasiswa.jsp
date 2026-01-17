<%-- 
    Document   : simpan_mahasiswa
    Created on : Jan 17, 2026, 6:14:22?PM
    Author     : ASUS
--%>

<%@page import="java.sql.*"%>
<%@include file="/koneksi.jsp"%>

<%
    String nim = request.getParameter("nim");
    String nama = request.getParameter("nama");
    String jurusan = request.getParameter("jurusan");

    PreparedStatement ps = conn.prepareStatement(
            "INSERT INTO mahasiswa (nim, nama, jurusan) VALUES (?, ?, ?)"
    );

    ps.setString(1, nim);
    ps.setString(2, nama);
    ps.setString(3, jurusan);
    ps.executeUpdate();

    response.sendRedirect("mahasiswa.jsp");
%>

