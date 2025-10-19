CREATE TABLE dosen_teknik (
    nidn CHAR(30),
    nama VARCHAR(100),
    email TEXT
);


CREATE TABLE dosen_teknik (
    nidn CHAR(30),
    nama VARCHAR(100),
    email TEXT
);

-- menambahkan kolom dan menambahkan nama_depan
ALTER TABLE dosen_teknik ADD COLUMN nama_belakang VARCHAR(100);

-- mengubah nama dengan nama_depan (rename column untuk mengganti nama colom nama ke nama_depan)
ALTER TABLE dosen_teknik RENAME COLUMN nama TO nama_depan;

-- untuk mengubah tabel dosen_teknik menjadi tbl_dosen
-- kenapa tidak ada column di rename dikarenakan dosen_teknik adalah si table itu sendiri jadi tidak perlu di panggil
ALTER TABLE dosen_teknik
RENAME TO tbl_dosen;

-- untuk melihat tabel yang sudah diganti
SELECT * FROM tbl_dosen;

-- menghapus tabel dosen
DROP TABLE tbl_dosen;
-- untuk menghapus data base
drop database 552012064_syehan;
select * from tbl_dosen;
