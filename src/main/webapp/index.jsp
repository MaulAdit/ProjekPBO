<!DOCTYPE html>
<html lang="id">

<head>
    <title>Universitas XYZ</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css">


    <link href="css/style.css" rel="stylesheet">

    <style>
    body {
        font-family: 'Poppins', sans-serif;
        color: #333;
    }

    .navbar {
        background-color: rgba(255, 255, 255, 0.95);
        backdrop-filter: blur(10px);
        box-shadow: 0 2px 15px rgba(0,0,0,0.1);
        padding: 15px 0;
    }
    .navbar-brand {
        font-weight: 700;
        color: #1a237e !important; /* Deep Navy */
    }
    .nav-link {
        font-weight: 500;
        color: #444 !important;
        transition: 0.3s;
    }
    .nav-link:hover {
        color: #0d6efd !important;
    }
    .btn-login-nav {
        background: #1a237e;
        color: white;
        padding: 8px 25px;
        border-radius: 50px;
        text-decoration: none;
        transition: 0.3s;
    }
    .btn-login-nav:hover {
        background: #0d47a1;
        color: white;
        box-shadow: 0 4px 12px rgba(26, 35, 126, 0.3);
    }

    /* Section Highlights */
    .text-primary {
        color: #1a237e !important;
    }
    .bg-light {
        background-color: #f0f4f8 !important; /* Softer Blue-Grey Light */
    }

    /* Feature Boxes */
    .feature-box {
        border-radius: 15px;
        transition: 0.3s;
        border: 1px solid rgba(0,0,0,0.05);
    }
    .feature-box:hover {
        transform: translateY(-5px);
        border-color: #0d6efd;
    }
    .icon-circle {
        width: 70px;
        height: 70px;
        background: rgba(13, 110, 253, 0.1);
        display: flex;
        align-items: center;
        justify-content: center;
        border-radius: 50%;
    }

    /* Accordion & Cards */
    .card {
        border-radius: 15px;
    }
    .transition-hover:hover {
        transform: translateY(-10px);
        box-shadow: 0 1rem 3rem rgba(26, 35, 126, 0.15) !important;
        background-color: #ffffff;
    }

    /* Khusus Kartu Aksentuasi (Kartu terakhir di About) */
    .card-accent {
        background: linear-gradient(135deg, #1a237e 0%, #0d6efd 100%);
        color: white !important;
    }
    .card-accent p {
        color: rgba(255,255,255,0.8) !important;
    }

    /* About Section Principals */
    .border-primary {
        border-color: #1a237e !important;
    }
</style>
</head>

<body>

    <nav class="navbar navbar-expand-lg fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#">
                <i class="bi bi-mortarboard-fill text-primary"></i> Universitas XYZ
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto align-items-center">
                    <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="tentang.jsp">Tentang Kita</a></li>



                    <li class="nav-item ms-3">
                        <% if (session.getAttribute("status")==null) { %>
                            <a href="login.jsp" class="btn-login-nav">Login</a>
                            <% } else { %>
                                <% if(session.getAttribute("level").equals("admin")) { %>
                                    <a href="daftar_buku.jsp" class="btn btn-success rounded-pill px-4">Dashboard
                                        Admin</a>
                                    <% } else { %>
                                        <a href="halaman_anggota.jsp"
                                            class="btn btn-success rounded-pill px-4">Dashboard Anggota</a>
                                        <% } %>
                                            <% } %>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div id="carouselExampleCaptions" class="carousel slide">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
                aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="images/campus.jpeg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block"></div>
            </div>
            <div class="carousel-item">
                <img src="images/perpustakaan.jpeg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block"></div>
            </div>
            <div class="carousel-item">
                <img src="images/labor.png" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block"></div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
            data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
            data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

    <section id="fitur" class="py-5 bg-light">
        <div class="container">
            <div class="text-center mb-5">
                <h2 class="fw-bold text-primary">Kenapa Kuliah di Universitas XYZ?</h2>
                <p class="text-muted">Membangun masa depan cerah dengan pendidikan berkualitas dan lingkungan akademik
                    yang inovatif.</p>
            </div>
            <div class="row g-4">
                <div class="col-md-4">
                    <div class="feature-box bg-white shadow-sm h-100 p-4 border-0 text-center">
                        <div class="icon-circle mx-auto mb-3">
                            <i class="bi bi-mortarboard-fill text-primary fs-3"></i>
                        </div>
                        <h4 class="fw-bold">Akreditasi Unggul</h4>
                        <p class="text-muted">Kurikulum berbasis kompetensi industri yang telah terakreditasi nasional
                            dan internasional.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="feature-box bg-white shadow-sm h-100 p-4 border-0 text-center">
                        <div class="icon-circle mx-auto mb-3">
                            <i class="bi bi-building-check text-primary fs-3"></i>
                        </div>
                        <h4 class="fw-bold">Fasilitas Modern</h4>
                        <p class="text-muted">Laboratorium canggih, perpustakaan digital, dan lingkungan kampus yang
                            mendukung kreativitas.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="feature-box bg-white shadow-sm h-100 p-4 border-0 text-center">
                        <div class="icon-circle mx-auto mb-3">
                            <i class="bi bi-briefcase-fill text-primary fs-3"></i>
                        </div>
                        <h4 class="fw-bold">Karier Global</h4>
                        <p class="text-muted">Kerjasama luas dengan perusahaan ternama untuk menjamin prospek karier
                            lulusan yang gemilang.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="manfaat" class="py-5 bg-white">
        <div class="container py-4">
            <div class="row align-items-center">
                <div class="col-lg-6 mb-4 mb-lg-0 text-center">
                    <img src="images/campus.jpeg" alt="Kehidupan Kampus Universitas XYZ"
                        class="img-fluid rounded-4 shadow" style="max-width: 90%;">
                </div>

                <div class="col-lg-6">
                    <h2 class="fw-bold text-primary mb-4">Keunggulan Universitas XYZ</h2>

                    <div class="manfaat-item d-flex align-items-start mb-4">
                        <i class="bi bi-mortarboard-fill manfaat-icon fs-2 text-primary me-3"></i>
                        <div>
                            <h5 class="fw-bold mb-1">Pendidikan Berstandar Global</h5>
                            <p class="text-muted">Kurikulum yang dirancang sesuai kebutuhan industri masa kini dengan
                                pengajar ahli di bidangnya.</p>
                        </div>
                    </div>

                    <div class="manfaat-item d-flex align-items-start mb-4">
                        <i class="bi bi-cpu-fill manfaat-icon fs-2 text-primary me-3"></i>
                        <div>
                            <h5 class="fw-bold mb-1">Fasilitas Berbasis Teknologi</h5>
                            <p class="text-muted">Dukungan laboratorium modern dan ekosistem kampus digital untuk
                                kenyamanan belajar.</p>
                        </div>
                    </div>

                    <div class="manfaat-item d-flex align-items-start">
                        <i class="bi bi-graph-up-arrow manfaat-icon fs-2 text-primary me-3"></i>
                        <div>
                            <h5 class="fw-bold mb-1">Pengembangan Karir & Alumni</h5>
                            <p class="text-muted">Program magang di perusahaan ternama dan jaringan alumni luas yang
                                siap membantu karir Anda.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="about" class="py-5" style="background-color: #f8fbff;">
        <div class="container py-4">
            <div class="row align-items-center g-5">
                <div class="col-lg-6">
                    <h2 class="fw-bold text-dark mb-3 display-6">Sistem Informasi Akademik <br><span
                            class="text-primary">Universitas XYZ</span></h2>
                    <p class="lead text-muted mb-4">Solusi manajemen kampus modern yang mengutamakan struktur kode yang
                        rapi dan efisien.</p>

                    <p class="text-secondary mb-4">
                        Website ini dikembangkan sebagai tugas besar mata kuliah <strong>Pemrograman Berorientasi Objek
                            (PBO)</strong>.
                        Kami menerapkan prinsip utama <em>Object-Oriented Programming</em> untuk menciptakan sistem yang
                        modular:
                    </p>

                    <div class="row g-3 mb-4">
                        <div class="row g-3 mb-4">
                            <div class="col-6">
                                <div class="p-3 border-start border-primary border-3 bg-white shadow-sm h-100">
                                    <div class="d-flex align-items-center mb-1">
                                        <i class="bi bi-shield-lock-fill text-primary me-2"></i>
                                        <span class="fw-bold d-block">Encapsulation</span>
                                    </div>
                                    <small class="text-muted d-block">Keamanan & Pembatasan Data</small>
                                </div>
                            </div>

                            <div class="col-6">
                                <div class="p-3 border-start border-primary border-3 bg-white shadow-sm h-100">
                                    <div class="d-flex align-items-center mb-1">
                                        <i class="bi bi-diagram-3-fill text-primary me-2"></i>
                                        <span class="fw-bold d-block">Inheritance</span>
                                    </div>
                                    <small class="text-muted d-block">Pewarisan Atribut & Method</small>
                                </div>
                            </div>

                            <div class="col-6">
                                <div class="p-3 border-start border-primary border-3 bg-white shadow-sm h-100">
                                    <div class="d-flex align-items-center mb-1">
                                        <i class="bi bi-eye-slash-fill text-primary me-2"></i>
                                        <span class="fw-bold d-block">Abstraction</span>
                                    </div>
                                    <small class="text-muted d-block">Penyembunyian Kompleksitas</small>
                                </div>
                            </div>

                            <div class="col-6">
                                <div class="p-3 border-start border-primary border-3 bg-white shadow-sm h-100">
                                    <div class="d-flex align-items-center mb-1">
                                        <i class="bi bi-layers-fill text-primary me-2"></i>
                                        <span class="fw-bold d-block">Polymorphism</span>
                                    </div>
                                    <small class="text-muted d-block">Fleksibilitas Banyak Bentuk</small>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="row g-3">
                        <div class="col-sm-6">
                            <div class="card border-0 shadow-sm p-4 text-center h-100 transition-hover">
                                <div class="display-5 text-primary mb-2"><i class="bi bi-book"></i></div>
                                <h3 class="fw-bold mb-0">50+</h3>
                                <p class="text-muted small fw-bold mb-0">Mata Kuliah</p>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="card border-0 shadow-sm p-4 text-center h-100 transition-hover">
                                <div class="display-5 text-primary mb-2"><i class="bi bi-people"></i></div>
                                <h3 class="fw-bold mb-0">1K+</h3>
                                <p class="text-muted small fw-bold mb-0">Data Mahasiswa</p>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="card border-0 shadow-sm p-4 text-center h-100 transition-hover">
                                <div class="display-5 text-primary mb-2"><i class="bi bi-award"></i></div>
                                <h3 class="fw-bold mb-0">A+</h3>
                                <p class="text-muted small fw-bold mb-0">Akreditasi Kampus</p>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="card border-0 shadow-sm p-4 text-center h-100 transition-hover">
                                <div class="display-5 text-primary mb-2"><i class="bi bi-cpu"></i></div>
                                <h3 class="fw-bold mb-0">Fast</h3>
                                <p class="text-white-50 small fw-bold mb-0">Optimal Performance</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <%@include file="footer.jsp" %>

        <script src="js/bootstrap.bundle.min.js"></script>
</body>

</html>