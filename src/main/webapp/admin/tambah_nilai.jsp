<%-- 
    Document   : tambah_nilai
    Created on : Jan 17, 2026, 6:21:48?PM
    Author     : ASUS
--%>

<%@page import="java.sql.*"%>
<%@include file="/koneksi.jsp"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Tambah Nilai</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body class="bg-light">

        <div class="container mt-5">
            <form method="post" action="simpan_nilai.jsp" class="card p-4 shadow">

                <label>NIM</label>
                <select name="nim" class="form-select mb-3" required>
                    <%
                        Statement st = conn.createStatement();
                        ResultSet rs = st.executeQuery("SELECT nim FROM mahasiswa");
                        while (rs.next()) {
                    %>
                    <option value="<%=rs.getString("nim")%>"><%=rs.getString("nim")%></option>
                    <% }%>
                </select>

                <label>Nilai Angka</label>
                <input type="number" name="nilai_angka" class="form-control mb-3" required>

                <label>Nilai Huruf</label>
                <select name="nilai_huruf" class="form-select mb-3">
                    <option>A</option><option>B</option><option>C</option><option>D</option><option>E</option>
                </select>

                <button class="btn btn-primary">Simpan</button>
            </form>
        </div>

    </body>
</html>

