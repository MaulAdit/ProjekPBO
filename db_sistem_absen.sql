-- ===============================
-- DATABASE: sistem_absen
-- ===============================

CREATE DATABASE sistem_absen;
\c sistem_absen;

-- ===============================
-- TABLE: users
-- ===============================
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    level VARCHAR(20) NOT NULL
);

INSERT INTO users (username, password, level) VALUES
('admin', 'admin123', 'ADMIN'),
('mhs001', 'mhs123', 'MAHASISWA');

-- ===============================
-- TABLE: mahasiswa
-- ===============================
CREATE TABLE mahasiswa (
    id SERIAL PRIMARY KEY,
    nim VARCHAR(15) UNIQUE NOT NULL,
    nama VARCHAR(100) NOT NULL,
    user_id INTEGER,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO mahasiswa (nim, nama, user_id) VALUES
('2024001', 'Andi Saputra', 2),
('2024002', 'Budi Santoso', NULL),
('2024003', 'Citra Lestari', NULL);

-- ===============================
-- TABLE: absensi
-- ===============================
CREATE TABLE absensi (
    id SERIAL PRIMARY KEY,
    mahasiswa_id INTEGER NOT NULL,
    tanggal DATE NOT NULL,
    status VARCHAR(20) NOT NULL,
    FOREIGN KEY (mahasiswa_id) REFERENCES mahasiswa(id)
);

INSERT INTO absensi (mahasiswa_id, tanggal, status) VALUES
(1, '2026-01-17', 'Hadir'),
(2, '2026-01-17', 'Izin'),
(3, '2026-01-17', 'Alpha');

-- ===============================
-- QUERY TEST (optional)
-- ===============================
-- SELECT m.nim, m.nama, a.tanggal, a.status
-- FROM absensi a
-- JOIN mahasiswa m ON a.mahasiswa_id = m.id;
