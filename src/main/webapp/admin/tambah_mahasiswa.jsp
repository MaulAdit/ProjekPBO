<%-- 
    Document   : tambah_mahasiswa
    Created on : Jan 17, 2026, 6:13:47?PM
    Author     : ASUS
--%>

<%
    if (session.getAttribute("username") == null
            || !"admin".equals(session.getAttribute("level"))) {
        response.sendRedirect("../login.jsp");
        return;
    }
%>

<form action="proses_tambah_mahasiswa.jsp" method="post">
    <div class="mb-3">
        <label>NIM</label>
        <input type="text" name="username" class="form-control" required>
    </div>

    <div class="mb-3">
        <label>Password</label>
        <input type="password" name="password" class="form-control" required>
    </div>

    <button class="btn btn-primary">Simpan</button>
</form>
