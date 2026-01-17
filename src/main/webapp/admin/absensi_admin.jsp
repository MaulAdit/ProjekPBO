<%-- 
    Document   : absensi_admin
    Created on : Jan 17, 2026, 6:00:54?PM
    Author     : ASUS
--%>

<%@page import="java.sql.*"%>
<%@include file="../koneksi.jsp"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Data Absensi Mahasiswa</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body class="container mt-4">

        <h3>Data Absensi Mahasiswa</h3>

        <table class="table table-bordered table-striped">
            <thead class="table-dark">
                <tr>
                    <th>No</th>
                    <th>NIM</th>
                    <th>Nama</th>
                    <th>Tanggal</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>

                <%
                    Statement st = conn.createStatement();
                    ResultSet rs = st.executeQuery(
                            "SELECT m.nim, m.nama, a.tanggal, a.status "
                            + "FROM absensi a "
                            + "JOIN mahasiswa m ON a.mahasiswa_id = m.id "
                            + "ORDER BY a.tanggal DESC"
                    );

                    int no = 1;
                    while (rs.next()) {
                %>
                <tr>
                    <td><%= no++%></td>
                    <td><%= rs.getString("nim")%></td>
                    <td><%= rs.getString("nama")%></td>
                    <td><%= rs.getDate("tanggal")%></td>
                    <td>
                        <span class="badge 
                              <%= rs.getString("status").equalsIgnoreCase("Hadir") ? "bg-success"
                            : rs.getString("status").equalsIgnoreCase("Izin") ? "bg-warning"
                            : "bg-danger"%>">
                            <%= rs.getString("status")%>
                        </span>
                    </td>
                </tr>
                <%
                    }
                %>

            </tbody>
        </table>

    </body>
</html>

