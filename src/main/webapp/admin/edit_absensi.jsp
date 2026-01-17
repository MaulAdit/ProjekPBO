<%-- 
    Document   : edit_absensi
    Created on : Jan 17, 2026, 7:21:20?PM
    Author     : ASUS
--%>

<%@ page import="java.sql.*" %>
<%@ include file="../koneksi.jsp" %>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    Statement st = conn.createStatement();
    ResultSet rs = st.executeQuery(
            "SELECT * FROM absensi WHERE id=" + id
    );
    rs.next();
%>

<h3>Edit Absensi</h3>

<form action="update_absensi.jsp" method="post">
    <input type="hidden" name="id" value="<%=id%>">

    <label>Status</label>
    <select name="status" class="form-control">
        <option <%= rs.getString("status").equals("Hadir") ? "selected" : ""%>>Hadir</option>
        <option <%= rs.getString("status").equals("Izin") ? "selected" : ""%>>Izin</option>
        <option <%= rs.getString("status").equals("Alpha") ? "selected" : ""%>>Alpha</option>
    </select>

    <br>
    <button type="submit" class="btn btn-primary">Update</button>
    <a href="absensi_admin.jsp" class="btn btn-secondary">Batal</a>
</form>

