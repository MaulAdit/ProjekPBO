<%-- 
    Document   : mahasiswa
    Created on : Jan 17, 2026, 6:11:00?PM
    Author     : ASUS
--%>

<%@page import="java.sql.*"%>
<%@include file="/koneksi.jsp"%>

<%    if (session.getAttribute("username") == null
            || !"admin".equals(session.getAttribute("level"))) {
        response.sendRedirect("../login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <title>Data Mahasiswa</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body class="bg-light">

        <div class="container mt-4">
            <h4>Data Mahasiswa</h4>

            <a href="tambah_mahasiswa.jsp" class="btn btn-primary mb-3">
                + Tambah Mahasiswa
            </a>

            <table class="table table-bordered table-hover">
                <thead class="table-dark">
                    <tr>
                        <th>No</th>
                        <th>NIM</th>
                        <th>Nama</th>
                        <th>Jurusan</th>
                        <th width="180">Aksi</th>
                    </tr>
                </thead>
                <tbody>

                    <%
                        Statement st = conn.createStatement();
                        ResultSet rs = st.executeQuery("SELECT * FROM mahasiswa ORDER BY id_mahasiswa");
                        int no = 1;
                        while (rs.next()) {
                    %>
                    <tr>
                        <td><%= no++%></td>
                        <td><%= rs.getString("nim")%></td>
                        <td><%= rs.getString("nama")%></td>
                        <td><%= rs.getString("jurusan")%></td>
                        <td>
                            <!-- EDIT -->
                            <a href="edit_mahasiswa.jsp?id=<%= rs.getInt("id_mahasiswa")%>"
                               class="btn btn-warning btn-sm">
                                Edit
                            </a>

                            <!-- HAPUS -->
                            <a href="hapus_mahasiswa.jsp?id=<%= rs.getInt("id_mahasiswa")%>"
                               onclick="return confirm('Yakin hapus mahasiswa ini?')"
                               class="btn btn-danger btn-sm">
                                Hapus
                            </a>
                        </td>
                    </tr>
                    <%
                        }
                    %>

                </tbody>
            </table>

            <a href="dashboard_admin.jsp" class="btn btn-secondary">Kembali</a>
        </div>

    </body>
</html>
