<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tentang Kami - Universitas XYZ</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css">
    <link href="css/style.css" rel="stylesheet">

    <style>
        /* --- Root & Reset --- */
        :root {
            --primary-navy: #1a237e;
            --accent-blue: #0d6efd;
            --light-bg: #f8f9fa;
            --text-muted: #6c757d;
            --transition-speed: 0.3s;
        }

        body {
            font-family: 'Poppins', sans-serif;
            color: #333;
            background-color: #fff;
            line-height: 1.6;
        }

        /* --- Navbar --- */
        .navbar {
            background-color: rgba(255, 255, 255, 0.98);
            backdrop-filter: blur(15px);
            box-shadow: 0 2px 20px rgba(0, 0, 0, 0.05);
            padding: 12px 0;
        }

        .navbar-brand {
            font-weight: 700;
            color: var(--primary-navy) !important;
            font-size: 1.4rem;
        }

        .nav-link {
            font-weight: 500;
            color: #444 !important;
            margin: 0 10px;
            transition: var(--transition-speed);
        }

        .nav-link:hover {
            color: var(--accent-blue) !important;
        }

        .btn-login-nav {
            background: var(--primary-navy);
            color: white !important;
            padding: 8px 25px;
            border-radius: 50px;
            text-decoration: none;
            transition: all var(--transition-speed);
            display: inline-block;
        }

        .btn-login-nav:hover {
            background: var(--accent-blue);
            box-shadow: 0 4px 12px rgba(26, 35, 126, 0.2);
            transform: translateY(-1px);
        }

        /* --- Hero/Carousel --- */
        .carousel-item img {
            height: 500px;
            object-fit: cover;
            filter: brightness(0.85);
        }

        /* --- Sections --- */
        .feature-list {
            list-style: none;
            padding: 0;
        }

        .feature-list li {
            margin-bottom: 20px;
        }

        .vision-mission-box {
            background: #fff;
            padding: 30px;
            border-radius: 20px;
            border: 1px solid #eee;
            transition: var(--transition-speed);
        }

        .vision-mission-box:hover {
            border-color: var(--accent-blue);
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.05);
        }

        /* --- Team Section (Custom Grid 5 Kolom) --- */
        @media (min-width: 1200px) {
            .col-xl-custom {
                flex: 0 0 auto;
                width: 20%;
                /* Tetap berderet 5 */
            }
        }

        .team-card {
            background: #fff;
            border-radius: 20px;
            overflow: hidden;
            transition: all 0.4s cubic-bezier(0.165, 0.84, 0.44, 1);
            border: 1px solid #f0f0f0;
            height: 100%;
            margin: 0 auto;
        }

        .team-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 20px 40px rgba(26, 35, 126, 0.12);
            border-color: transparent;
        }

        /* Ukuran foto tetap 75% sesuai kode sebelumnya */
        .image-container {
            position: relative;
            width: 75%;
            padding-top: 75%;
            margin: 25px auto 15px;
            overflow: hidden;
            background-color: #f1f3f5;
            border-radius: 15px;
        }

        .image-container img {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.6s ease;
        }

        .team-card:hover .image-container img {
            transform: scale(1.1);
        }

        .team-overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(26, 35, 126, 0.85);
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 12px;
            opacity: 0;
            transition: var(--transition-speed);
        }

        .team-card:hover .team-overlay {
            opacity: 1;
        }

        .social-icon-btn {
            color: white;
            font-size: 1.2rem;
            transition: var(--transition-speed);
        }

        .social-icon-btn:hover {
            color: #64b5f6;
            transform: scale(1.2);
        }

        /* --- Card Info Text --- */
        .card-body {
            padding: 0 20px 25px !important;
        }

        .member-role {
            display: inline-block;
            font-size: 0.65rem;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 1px;
            color: var(--accent-blue);
            background: rgba(13, 110, 253, 0.08);
            padding: 4px 12px;
            border-radius: 50px;
            margin-bottom: 10px;
        }

        .card-body h6 {
            font-size: 0.95rem;
            font-weight: 700;
            color: var(--primary-navy);
            margin-bottom: 4px;
        }

        .card-body small {
            font-size: 0.8rem;
            letter-spacing: 0.5px;
            color: var(--text-muted);
        }

        /* --- Utility --- */
        .text-primary {
            color: var(--primary-navy) !important;
        }

        .bg-light {
            background-color: var(--light-bg) !important;
        }

        hr.mx-auto {
            height: 4px !important;
            border-radius: 2px;
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
                    <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
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

    <header class="hero-about">
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
    </header>

    <section id="tentang-proyek" class="py-5 bg-white">
        <div class="container py-4">
            <div class="row align-items-center">
                <div class="col-lg-6 mb-4 text-center">
                    <img src="images/perpustakaan.jpeg" alt="Perpustakaan" class="img-fluid rounded-4 shadow"
                        style="max-width: 90%;">
                </div>
                <div class="col-lg-6">
                    <h2 class="fw-bold text-primary mb-3">Universitas <span class="text-dark">XYZ</span></h2>
                    <p class="lead fw-semibold text-secondary">Pusat Kendali Akademik & Absensi Terpadu</p>
                    <p class="text-muted">
                        Platform manajemen pendidikan yang mengintegrasikan data mahasiswa secara
                        <em>real-time</em>,
                        dibangun dengan arsitektur <strong>Java OOP</strong> untuk menjamin skalabilitas dan
                        keamanan.
                    </p>
                    <ul class="feature-list mt-4">
                        <li>
                            <div class="d-flex align-items-center">
                                <i class="bi bi-check2-circle text-success fs-4 me-3"></i>
                                <div><span class="fw-bold d-block">Monitoring Absensi Digital</span><small
                                        class="text-muted">Pelacakan kehadiran otomatis dan aman.</small></div>
                            </div>
                        </li>
                        <li>
                            <div class="d-flex align-items-center">
                                <i class="bi bi-code-slash text-primary fs-4 me-3"></i>
                                <div><span class="fw-bold d-block">Implementasi Clean Code</span><small
                                        class="text-muted">Menerapkan pilar OOP (Encapsulation,
                                        Inheritance).</small></div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <section id="visi-misi" class="py-5 bg-light">
        <div class="container py-4">
            <div class="text-center mb-5">
                <h2 class="fw-bold text-primary">Target dan Tujuan Utama</h2>
                <p class="text-muted">Fokus pada sistem yang terotomasi, aman, dan inklusif.</p>
            </div>
            <div class="row g-4 justify-content-center">
                <div class="col-lg-5">
                    <div class="vision-mission-box h-100 text-center">
                        <h3 class="fw-bold mb-3" style="color: #1a237e;">Visi Strategis</h3>
                        <p class="text-muted">Menjadi pionir dalam pengembangan <strong>Smart Campus</strong> di
                            Indonesia bagi seluruh Mahasiswa Universitas XYZ.</p>
                    </div>
                </div>
                <div class="col-lg-5">
                    <div class="vision-mission-box h-100">
                        <h3 class="fw-bold mb-3 text-center" style="color: #1a237e;">Misi Utama</h3>
                        <div class="small">
                            <p><i class="bi bi-cpu text-primary me-2"></i> <strong>Digitalisasi:</strong>
                                Validasi data real-time.</p>
                            <p><i class="bi bi-speedometer2 text-primary me-2"></i> <strong>Efisiensi:</strong>
                                Akses nilai dalam hitungan detik.</p>
                            <p><i class="bi bi-shield-check text-primary me-2"></i> <strong>Integritas:</strong>
                                Keamanan dengan prinsip Enkapsulasi.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="tim-pengembang" class="py-5">
        <div class="container py-4">
            <div class="text-center mb-5">
                <h6 class="text-primary fw-bold text-uppercase">Expert Team</h6>
                <h2 class="fw-bold" style="color: #1a237e;">Arsitek Sistem Informasi</h2>
                <hr class="mx-auto" style="width: 50px; height: 3px; background: #0d6efd; border: none; opacity: 1;">
            </div>

            <div class="row g-4 justify-content-center">
                <div class="col-sm-6 col-lg-4 col-xl-custom">
                    <div class="team-card text-center">
                        <div class="image-container">
                            <img src="images/orangdua.jpeg" alt="Fiqhul">
                            <div class="team-overlay">
                                <a href="#" class="social-icon-btn"><i class="bi bi-github"></i></a>
                                <a href="#" class="social-icon-btn"><i class="bi bi-linkedin"></i></a>
                            </div>
                        </div>
                        <div class="card-body p-4">
                            <span class="member-role">Project Leader</span>
                            <h6 class="fw-bold mb-1">M. Fiqhul Hakim</h6>
                            <small class="text-muted">0110224106</small>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-lg-4 col-xl-custom">
                    <div class="team-card text-center">
                        <div class="image-container">
                            <img src="images/arkan.jpeg" alt="Revani">
                            <div class="team-overlay">
                                <a href="#" class="social-icon-btn"><i class="bi bi-github"></i></a>
                                <a href="#" class="social-icon-btn"><i class="bi bi-linkedin"></i></a>
                            </div>
                        </div>
                        <div class="card-body p-4">
                            <span class="member-role">UI/UX Designer</span>
                            <h6 class="fw-bold mb-1">Muhammad Arkan Alhakim</h6>
                            <small class="text-muted">0110224041</small>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-lg-4 col-xl-custom">
                    <div class="team-card text-center">
                        <div class="image-container">
                            <img src="images/orangdua.jpeg" alt="Farid">
                            <div class="team-overlay">
                                <a href="#" class="social-icon-btn"><i class="bi bi-github"></i></a>
                                <a href="#" class="social-icon-btn"><i class="bi bi-linkedin"></i></a>
                            </div>
                        </div>
                        <div class="card-body p-4">
                            <span class="member-role">Backend Engineer</span>
                            <h6 class="fw-bold mb-1">Farid Aditya M.</h6>
                            <small class="text-muted">0110224231</small>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-lg-4 col-xl-custom">
                    <div class="team-card text-center">
                        <div class="image-container">
                            <img src="images/aal.jpeg" alt="Asep">
                            <div class="team-overlay">
                                <a href="#" class="social-icon-btn"><i class="bi bi-github"></i></a>
                                <a href="#" class="social-icon-btn"><i class="bi bi-linkedin"></i></a>
                            </div>
                        </div>
                        <div class="card-body p-4">
                            <span class="member-role">Database Architect</span>
                            <h6 class="fw-bold mb-1">Ramadhan Al-Ghifari</h6>
                            <small class="text-muted">0110222137</small>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-lg-4 col-xl-custom">
                    <div class="team-card text-center">
                        <div class="image-container">
                            <img src="images/abyan.jpeg" alt="Anggota 5">
                            <div class="team-overlay">
                                <a href="#" class="social-icon-btn"><i class="bi bi-github"></i></a>
                                <a href="#" class="social-icon-btn"><i class="bi bi-linkedin"></i></a>
                            </div>
                        </div>
                        <div class="card-body p-4">
                            <span class="member-role">Frontend Dev</span>
                            <h6 class="fw-bold mb-1">Abyan Abdulrohman</h6>
                            <small class="text-muted">0110224209</small>
                        </div>
                    </div>
                </div>
            </div>

            <div class="text-center mt-5">
                <div class="d-inline-flex align-items-center p-2 px-4 bg-white rounded-pill shadow-sm">
                    <i class="bi bi-mortarboard-fill text-primary me-2"></i>
                    <span class="small fw-bold text-secondary">Informatics Engineering Class 2024</span>
                </div>
            </div>
        </div>
    </section>

    <%@include file="footer.jsp" %>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>