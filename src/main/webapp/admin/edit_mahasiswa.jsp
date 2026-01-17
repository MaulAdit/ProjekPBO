<%-- 
    Document   : edit_mahasiswa
    Created on : Jan 17, 2026, 6:28:37?PM
    Author     : ASUS
--%>

<%@page import="java.sql.*"%>
<%@include file="../koneksi.jsp"%>

<%    int id = Integer.parseInt(request.getParameter("id"));
    PreparedStatement ps = conn.prepareStatement(
            "SELECT * FROM users WHERE id=?"
    );
    ps.setInt(1, id);
    ResultSet rs = ps.executeQuery();
    rs.next();
%>

<form action="proses_edit_mahasiswa.jsp" method="post" class="container mt-4">
    <input type="hidden" name="id" value="<%= rs.getInt("id")%>">

    <div class="mb-3">
        <label>NIM</label>
        <input type="text" name="username"
               value="<%= rs.getString("username")%>"
               class="form-control" required>
    </div>

    <button class="btn btn-primary">Update</button>
</form>
