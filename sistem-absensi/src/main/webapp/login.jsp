<br>
<div class="container my-4">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card border-primary shadow-sm">
                <div class="card-header bg-primary text-white text-center">
                    <h3 class="mb-0">Form Login Mahasiswa</h3>
                </div>
                <div class="card-body">
                    <form method="POST" action="index.jsp?halaman=Dashboard">
                        <div class="mb-3">
                            <label class="form-label" for="username">Nama Pengguna atau NIM</label>
                            <input type="text" class="form-control" id="username" name="username"
                                placeholder="Masukkan Nama Pengguna atau NIM" required>
                        </div>
                        <div class="mb-3">
                            <label class="form-label" for="password">Kata Sandi</label>
                            <input type="password" class="form-control" id="password" name="password"
                                placeholder="Masukkan kata sandi" required>
                        </div>
                        <div class="d-grid">
                            <button type="submit" class="btn btn-primary">
                                Login
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
