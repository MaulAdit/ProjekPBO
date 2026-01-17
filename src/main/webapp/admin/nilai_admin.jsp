<%-- 
    Document   : nilai_admin
    Created on : Jan 17, 2026, 6:11:13?PM
    Author     : ASUS
--%>

<%@page import="java.sql.*"%>
<%@include file="/koneksi.jsp"%>
<%    if (!"admin".equals(session.getAttribute("level"))) {
        response.sendRedirect("../login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <title>Data Nilai</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body class="bg-light">

        <div class="container mt-4">
            <h4>Data Nilai Mahasiswa</h4>

            <a href="tambah_nilai.jsp" class="btn btn-primary mb-3">+ Tambah Nilai</a>

            <table class="table table-bordered">
                <thead class="table-dark">
                    <tr>
                        <th>No</th><th>NIM</th><th>Angka</th><th>Huruf</th><th>Aksi</th>
                    </tr>
                </thead>
                <tbody>

                    <%
                        Statement st = conn.createStatement();
                        ResultSet rs = st.executeQuery("SELECT * FROM nilai ORDER BY id_nilai");
                        int no = 1;
                        while (rs.next()) {
                    %>
                    <tr>
                        <td><%=no++%></td>
                        <td><%=rs.getString("nim")%></td>
                        <td><%=rs.getInt("nilai_angka")%></td>
                        <td><%=rs.getString("nilai_huruf")%></td>
                        <td>
                            <a href="edit_nilai.jsp?id=<%=rs.getInt("id_nilai")%>" class="btn btn-warning btn-sm">Edit</a>
                            <a href="hapus_nilai.jsp?id=<%=rs.getInt("id_nilai")%>"
                               onclick="return confirm('Hapus nilai?')"
                               class="btn btn-danger btn-sm">Hapus</a>
                        </td>
                    </tr>
                    <% }%>

                </tbody>
            </table>

            <a href="dashboard_admin.jsp" class="btn btn-secondary">Kembali</a>
        </div>
    </body>
</html>

