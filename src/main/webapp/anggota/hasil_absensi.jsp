<%-- 
    Document   : hasil_absensi
    Created on : Jan 17, 2026, 5:58:42?PM
    Author     : ASUS
--%>

<%@page import="java.sql.*"%>
<%@include file="/koneksi.jsp"%>

<%
    if (session.getAttribute("username") == null
            || !"anggota".equals(session.getAttribute("level"))) {
        response.sendRedirect("../login.jsp");
        return;
    }

    String nim = session.getAttribute("username").toString();
%>

<!DOCTYPE html>
<html>
    <head>
        <title>Hasil Absensi</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body class="bg-light">

        <nav class="navbar navbar-dark bg-success">
            <div class="container-fluid">
                <span class="navbar-brand">Hasil Absensi Mahasiswa</span>
                <a href="../logout.jsp" class="btn btn-light btn-sm">Logout</a>
            </div>
        </nav>

        <div class="container mt-4">
            <h5>NIM: <b><%= nim%></b></h5>

            <div class="card shadow mt-3">
                <div class="card-body">
                    <table class="table table-bordered table-striped">
                        <thead class="table-success">
                            <tr>
                                <th>No</th>
                                <th>Tanggal</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>

                            <%
                                PreparedStatement ps = conn.prepareStatement(
                                        "SELECT * FROM absensi WHERE nim=? ORDER BY tanggal DESC"
                                );
                                ps.setString(1, nim);
                                ResultSet rs = ps.executeQuery();
                                int no = 1;

                                while (rs.next()) {
                            %>
                            <tr>
                                <td><%= no++%></td>
                                <td><%= rs.getDate("tanggal")%></td>
                                <td><%= rs.getString("status")%></td>
                            </tr>
                            <%
                                }
                            %>

                        </tbody>
                    </table>

                    <a href="dashboard_absensi.jsp" class="btn btn-success">
                        Kembali Absen
                    </a>
                </div>
            </div>
        </div>

    </body>
</html>

