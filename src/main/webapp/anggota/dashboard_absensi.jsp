<%-- 
    Document   : dashboard_absensi
    Created on : Jan 17, 2026, 3:50:48?PM
    Author     : ASUS
--%>

<%
    if (session.getAttribute("username") == null
            || !"anggota".equals(session.getAttribute("level"))) {
        response.sendRedirect("../login.jsp");
    }
%>


<!DOCTYPE html>
<html>
    <head>
        <title>Absensi Mahasiswa</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body class="bg-light">

        <nav class="navbar navbar-dark bg-success">
            <div class="container-fluid">
                <span class="navbar-brand">Absensi Mahasiswa</span>
                <a href="../logout.jsp" class="btn btn-light btn-sm">Logout</a>
            </div>
        </nav>

        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-md-5">

                    <div class="card shadow">
                        <div class="card-header bg-success text-white text-center">
                            Form Absensi
                        </div>
                        <div class="card-body">
                            <p class="text-center">
                                NIM: <b><%= session.getAttribute("username")%></b>
                            </p>

                            <form method="post" action="simpan_absensi.jsp">
                                <div class="mb-3">
                                    <label>Status Kehadiran</label>
                                    <select name="status" class="form-select" required>
                                        <option value="">-- Pilih --</option>
                                        <option value="Hadir">Hadir</option>
                                        <option value="Izin">Izin</option>
                                        <option value="Alpha">Alpha</option>
                                    </select>
                                </div>

                                <button class="btn btn-success w-100">
                                    Simpan Absensi
                                </button>
                            </form>
                        </div>
                    </div>

                </div>
            </div>
        </div>

    </body>
</html>


