<%-- 
    Document   : edit_nilai
    Created on : Jan 17, 2026, 6:22:35?PM
    Author     : ASUS
--%>

<%@page import="java.sql.*"%>
<%@include file="/koneksi.jsp"%>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    PreparedStatement ps = conn.prepareStatement(
            "SELECT * FROM nilai WHERE id_nilai=?");
    ps.setInt(1, id);
    ResultSet rs = ps.executeQuery();
    rs.next();
%>

<!DOCTYPE html>
<html>
    <head>
        <title>Edit Nilai</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body class="bg-light">

        <div class="container mt-5">
            <form method="post" action="update_nilai.jsp" class="card p-4 shadow">
                <input type="hidden" name="id" value="<%=id%>">

                <label>NIM</label>
                <input type="text" class="form-control mb-3" value="<%=rs.getString("nim")%>" readonly>

                <label>Nilai Angka</label>
                <input type="number" name="nilai_angka" class="form-control mb-3"
                       value="<%=rs.getInt("nilai_angka")%>">

                <label>Nilai Huruf</label>
                <input type="text" name="nilai_huruf" class="form-control mb-3"
                       value="<%=rs.getString("nilai_huruf")%>">

                <button class="btn btn-warning">Update</button>
            </form>
        </div>

    </body>
</html>

