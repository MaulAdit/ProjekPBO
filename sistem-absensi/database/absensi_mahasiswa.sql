-- =========================
-- DATABASE: sistem_absensi
-- =========================

-- TABLE: jurusan
CREATE TABLE jurusan (
    id SERIAL PRIMARY KEY,
    nama VARCHAR(100) NOT NULL UNIQUE
);

-- TABLE: mahasiswa
CREATE TABLE mahasiswa (
    id SERIAL PRIMARY KEY,
    nim VARCHAR(15) NOT NULL UNIQUE,
    nama VARCHAR(100) NOT NULL,
    id_jurusan INTEGER REFERENCES jurusan(id),
    email VARCHAR(100) UNIQUE
);

-- TABLE: mata_kuliah
CREATE TABLE mata_kuliah (
    id SERIAL PRIMARY KEY,
    kode VARCHAR(10) NOT NULL UNIQUE,
    nama VARCHAR(100) NOT NULL,
    sks INTEGER NOT NULL
);

-- TABLE: absensi
CREATE TABLE absensi (
    id SERIAL PRIMARY KEY,
    id_mahasiswa INTEGER NOT NULL REFERENCES mahasiswa(id),
    id_mata_kuliah INTEGER NOT NULL REFERENCES mata_kuliah(id),
    tanggal DATE NOT NULL,
    status VARCHAR(10) NOT NULL
        CHECK (status IN ('Hadir','Izin','Sakit','Alfa'))
);

-- =========================
-- DATA AWAL
-- =========================
INSERT INTO jurusan (nama) VALUES
('Teknik Informatika'),
('Sistem Informasi');

INSERT INTO mahasiswa (nim, nama, id_jurusan, email) VALUES
('2023001','Ahmad Fauzi',1,'ahmad@mail.com'),
('2023002','Siti Aisyah',2,'siti@mail.com');

INSERT INTO mata_kuliah (kode, nama, sks) VALUES
('IF101','Algoritma',3),
('IF102','Basis Data',3);

INSERT INTO absensi (id_mahasiswa, id_mata_kuliah, tanggal, status) VALUES
(1,1,'2026-01-10','Hadir'),
(2,2,'2026-01-10','Izin');
