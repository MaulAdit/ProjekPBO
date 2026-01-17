<style>
    .footer-custom {
        background-color: #1a1d20 !important;
        color: #dee2e6 !important;
        padding-top: 60px;
        padding-bottom: 20px;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    .footer-title {
        color: #ffffff !important;
        font-weight: 600;
        margin-bottom: 25px;
        position: relative;
        padding-bottom: 12px;
        text-transform: uppercase;
        font-size: 1rem;
        letter-spacing: 1px;
    }

    .footer-title::after {
        content: '';
        position: absolute;
        left: 0;
        bottom: 0;
        width: 40px;
        height: 3px;
        background-color: #0d6efd;
    }

    .footer-link {
        color: #adb5bd !important;
        text-decoration: none;
        transition: all 0.3s ease;
        display: block;
        margin-bottom: 8px;
    }

    .footer-link:hover {
        color: #0d6efd !important;
        padding-left: 8px;
    }

    .social-icon {
        transition: all 0.3s ease;
        border-color: rgba(255,255,255,0.1) !important;
    }

    .social-icon:hover {
        background-color: #0d6efd !important;
        border-color: #0d6efd !important;
        transform: translateY(-3px);
    }
    
    .contact-item i {
        width: 25px;
    }
</style>

<footer class="footer-custom">
    <div class="container">
        <div class="row g-4 mb-5">
            <div class="col-lg-4 col-md-6">
                <div class="mb-4">
                    <a class="navbar-brand fs-3 fw-bold text-white" href="#">
                        <i class="bi bi-mortarboard-fill text-primary me-2"></i>Universitas <span class="text-primary">XYZ</span>
                    </a>
                </div>
                <h5 class="footer-title">Jam Operasional</h5>
                <p class="small mb-2"><i class="bi bi-calendar3 me-2 text-primary"></i>Senin - Jumat: 08.00 - 17.00 WIB</p>
                <p class="small mb-2"><i class="bi bi-calendar3 me-2 text-primary"></i>Sabtu: 08.00 - 12.00 WIB</p>
                <p class="small text-warning mt-3">
                    <i class="bi bi-info-circle me-2"></i>Minggu & Hari Libur: <strong>Tutup</strong>
                </p>
                
                <div class="mt-4">
                    <a href="#" class="btn btn-outline-light btn-sm rounded-circle me-2 social-icon"><i class="bi bi-facebook"></i></a>
                    <a href="#" class="btn btn-outline-light btn-sm rounded-circle me-2 social-icon"><i class="bi bi-youtube"></i></a>
                    <a href="#" class="btn btn-outline-light btn-sm rounded-circle me-2 social-icon"><i class="bi bi-twitter-x"></i></a>
                    <a href="#" class="btn btn-outline-light btn-sm rounded-circle social-icon"><i class="bi bi-instagram"></i></a>
                </div>
            </div>

            <div class="col-lg-4 col-md-6">
                <h5 class="footer-title">Layanan Digital</h5>
                <ul class="list-unstyled">
                    <li><a href="#" class="footer-link small">Sistem Informasi Akademik</a></li>
                    <li><a href="#" class="footer-link small">E-Learning & Jurnal</a></li>
                    <li><a href="https://nurulfikri.ac.id" target="_blank" class="footer-link small">Portal Utama Kampus</a></li>
                    <li><a href="#" class="footer-link small">Perpustakaan Digital</a></li>
                </ul>
                
                <h5 class="footer-title mt-4">Informasi Sistem</h5>
                <p class="small mb-1 text-secondary"><strong>Update Terakhir:</strong> 17 Januari 2026</p>
                <p class="small text-secondary"><strong>Status:</strong> Universitas Terakreditasi A+</p>
            </div>

            <div class="col-lg-4">
                <h5 class="footer-title">Kontak Kami</h5>
                <div class="contact-item d-flex mb-3">
                    <i class="bi bi-geo-alt-fill text-primary me-3"></i>
                    <span class="small text-secondary">Jl. Lenteng Agung Raya No.20, Jagakarsa, Jakarta Selatan, 12640</span>
                </div>
                <div class="contact-item d-flex mb-3">
                    <i class="bi bi-telephone-fill text-primary me-3"></i>
                    <span class="small text-secondary">(021) 7863191</span>
                </div>
                <div class="contact-item d-flex mb-3">
                    <i class="bi bi-envelope-fill text-primary me-3"></i>
                    <span class="small text-secondary">kontak@xyz.ac.id</span>
                </div>
                <div class="contact-item d-flex">
                    <i class="bi bi-globe text-primary me-3"></i>
                    <span class="small text-secondary">www.universitasxyz.ac.id</span>
                </div>
            </div>
        </div>

        <hr style="border-top: 1px solid rgba(255,255,255,0.1);">

        <div class="row py-3">
            <div class="col-md-12 text-center">
                <p class="text-white-50 small mb-0">
                    &copy; 2026 <strong>Universitas XYZ</strong> - Kelompok 19 PBO STT-NF. All Rights Reserved.
                </p>
            </div>
        </div>
    </div>
</footer>