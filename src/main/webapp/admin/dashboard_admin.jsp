<%-- 
    Document   : dashboard_admin
    Created on : Jan 17, 2026, 3:49:19?PM
    Author     : ASUS
--%>

<%
    if (session.getAttribute("username") == null ||
        !"admin".equals(session.getAttribute("level"))) {
        response.sendRedirect("../login.jsp");
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <title>Dashboard Admin</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body class="bg-light">

        <nav class="navbar navbar-dark bg-primary">
            <div class="container-fluid">
                <span class="navbar-brand mb-0 h1">Sistem Absensi</span>
                <a href="../logout.jsp" class="btn btn-light btn-sm">Logout</a>
            </div>
        </nav>

        <div class="container mt-4">
            <h4>Dashboard Admin</h4>
            <p class="text-muted">Login sebagai: <b><%= session.getAttribute("username")%></b></p>
            
            <a href="absensi_admin.jsp" class="btn btn-primary">
                Lihat Data Absensi
            </a>
            
            <a href="nilai_admin.jsp" class="btn btn-success">
                Input Nilai Mahasiswa
            </a>

            <div class="card shadow mt-3">
                <div class="card-header bg-secondary text-white">
                    Data Mahasiswa
                </div>
                <div class="card-body">
                    <table class="table table-bordered table-hover">
                        <thead class="table-light">
                            <tr>
                                <th>No</th>
                                <th>Username / NIM</th>
                                <th>Level</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- DATA NANTI DARI DATABASE -->
                            <tr>
                                <td>1</td>
                                <td>2024001</td>
                                <td>Anggota</td>
                                <td>
                                    <a href="#" class="btn btn-danger btn-sm">Hapus</a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </body>
</html>


