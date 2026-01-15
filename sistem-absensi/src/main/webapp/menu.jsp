<style>
  .navbar-nav .nav-link {
    border-bottom: 2px solid transparent;
    transition: all 0.3s ease-in-out;
    padding-bottom: 5px;
  }

  .navbar-nav .nav-link:hover,
  .navbar-nav .nav-link.active {
    border-bottom: 2px solid white;
  }

  .dropdown-menu .dropdown-item {
    border-bottom: none;
  }
</style>

<nav class="navbar navbar-expand-lg bg-primary" data-bs-theme="dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp">STT-NF</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">

      <!-- Menu kiri -->
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="index.jsp?halaman=home">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="index.jsp?halaman=profile">Profile</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="index.jsp?halaman=contact">Contact Us</a>
        </li>
      </ul>

      <!-- Menu kanan (Login / User) -->
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
        <% if (session.getAttribute("USER")==null) { %>
          <li class="nav-item">
            <a href="index.jsp?halaman=login" class="nav-link">Login</a>
          </li>
        <% } else { %>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
              aria-expanded="false">
              Hello, <%= session.getAttribute("USERNAME") %>
            </a>
            <ul class="dropdown-menu dropdown-menu-end">
              <li><a class="dropdown-item" href="">Profile</a></li>
              <li><a class="dropdown-item" href="">Change Password</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="logout.jsp">Logout</a></li>
            </ul>
          </li>
        <% } %>
      </ul>

    </div>
  </div>
</nav>
