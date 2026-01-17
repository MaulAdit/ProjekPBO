<%-- 
    Document   : simpan_absensi
    Created on : Jan 17, 2026, 7:00:45?PM
    Author     : ASUS
--%>

<%@page import="java.sql.*"%>
<%@include file="../koneksi.jsp"%>

<%
    // Ambil mahasiswa_id dari session
    Integer mahasiswaId = (Integer) session.getAttribute("id_mahasiswa");

    if (mahasiswaId == null) {
        response.sendRedirect("dashboard_absensi.jsp?status=sukses");
        return;
    }

    String status = request.getParameter("status");

    PreparedStatement ps = conn.prepareStatement(
            "INSERT INTO absensi (mahasiswa_id, tanggal, status) VALUES (?, CURRENT_DATE, ?)"
    );
    ps.setInt(1, mahasiswaId);
    ps.setString(2, status);

    ps.executeUpdate();

    response.sendRedirect("dashboard_absensi.jsp?msg=success");
%>

