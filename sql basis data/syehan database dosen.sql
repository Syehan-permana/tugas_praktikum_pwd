create table identitasdosen(
id_dosen SERIAL PRIMARY key,--auto ikremen
nidn char(25),
nama varchar(100),
nama_matkul varchar(100),
umur int

)
-- menampilkan data identisas dosen
select * from identitasdosen;
--menambahkan variabel yang akan di isi							
insert into identitasdosen(,nidn,nama,nama_matkul,umur) -- di depan nidn id dosen di hapus di karnakan sudah auto ikremen

--untuk mengisi variabel dosen
values('1012309','syahrul','matdis',52)
--menambahkan variabel yang akan di isi dengan cara yang berbeda
insert into identitasdosen
values(1,
		'2131231'
	   'quenn',
	   'struktur data',
	   50

      );
-- menghapus identitas dosen yang rancu diatas
delete from identitasdosen;
--menambahkanvalue(isi) sekaligus
insert into identitasdosen(nidn,nama,nama_matkul,umur)
values 
		('1012303','syahrul','kalkulus',50),
		('1012302','syahruk','matdis1',51),
		('1012304','syahruj','matdis2',52),
		('1012305','syahrug','matdis3',53);


select * from identitasdosen;
--menampilkan nidn dan nama
select nidn, nama from identitasdosen;
select umur from identitasdosen;
--hanya menampilkan kolom (where adalah dengan kondisi umur =52)
select * from identitasdosen where umur=52;
-- untuk menampilkan umur secara terurut
-- dari kecil ke besar
select * from identitasdosen order by umur ASC;
-- dari besar ke kecil 
select * from identitasdosen order by umur Desc ;
--contoh dari nidn
select * from identitasdosen order by nidn ASC;
select * from identitasdosen order by nidn desc;
--menampilkan data sesuai kelompok
select umur , count (*) from identitasdosen group by umur;
--cara untuk menamilkan data hanya beberapa baris yang di inginkan
select * from identitasdosen limit 2;
--untuk menambahkan hanya nama dan umur lalu di urutkan secara asending
select nama,umur from identitasdosen order by umur ASC;

--update(untuk merubah value di table)
update identitasdosen
set nama='syahruk'-- set nama =nama baru;
where umur=51;
select * from identitasdosen;
--delete 
delete from identitasdosen where nama like 'syahrul';
select * from identitasdosen;

	--coba tampilkan kolom nama matkul menjadi pbo di salah satu baris
	-- lalu tampilkan baris tsb(baris yang nama matkul nya pbo)

--mengganti nama matkul dari matdis 1 ke pbo 
update identitasdosen
set nama_matkul='pbo'
where nama_matkul='matdis1';
select * from identitasdosen;














	  