USE internship;

-- Nomor 1
UPDATE Mahasiswa 
SET Alamat = 'Jl. Raya No.5' 
WHERE NIM = '123456';

SELECT * FROM internship.mahasiswa

-- Nomor 2
SELECT 
    m.NIM, 
    m.Nama, 
    m.Jurusan, 
    k.Dosen_Pengajar
FROM 
    Mahasiswa AS m
JOIN 
    Mata_Kuliah AS k
ON 
    m.NIM = k.NIM
WHERE 
    m.Jurusan = 'Teknik Informatika';

-- Nomor 3
SELECT 
    Nama, 
    Umur
FROM 
    Mahasiswa
ORDER BY 
    Umur DESC
LIMIT 5;

-- Nomor 4
SELECT 
    m.Nama, 
    k.Mata_Kuliah, 
    k.Nilai
FROM 
    Mahasiswa AS m
JOIN 
    Mata_Kuliah AS k
ON 
    m.NIM = k.NIM
WHERE 
    k.Nilai > 70;

