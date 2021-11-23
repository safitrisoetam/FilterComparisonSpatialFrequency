<h1 >FILTER COMPARISON UNTUK IMAGE ENHANCEMENT DI DOMAIN SPASIAL DAN DOMAIN FREKUENSI</h1>
<p align="left">
  <a href="https://github.com/safitrisoetam/FilterComparisonSpatialFrequency/">
    <img src="https://github.com/safitrisoetam/FilterComparisonSpatialFrequency/blob/main/Assets/Logo%20ITS-Biru.png" alt="logots" height="300">
  </a>
</p>
<h2 >Tugas Kelompok Mata Kuliah Pengolahan Citra Digital</h2>
<!-- DAFTAR ISI -->
<h2 "list-style-type:none">Daftar Isi</h2>
  <ol>
    <li>
      <a href="#tentang">Tentang</a>
            <ul>
        <li><a href="#deskripsi-masalah">Deskripsi Masalah</a></li>
        <li><a href="#batasan-masalah">Batasan Masalah</a></li>
      </ul>
    </li>
    <li>
      <a href="#filter">Filter</a>
      <ul>
        <li><a href="#domain-spasial">Domain Spasial</a></li>
        <li><a href="#domain-frekuensi">Domain Frekuensi</a></li>
      </ul>
    </li>
    <li>
      <a href="#fitur">Fitur</a>
    </li>
    <li><a href="#anggota">Anggota</a></li>
    <li><a href="#dosen-pengampu">Dosen Pengampu</a></li>
  </ol>
  
<!-- TENTANG -->  
## Tentang
### Deskripsi Masalah
<div style="text-align: justify">Membandingkan hasil Image Enhancement dengan beberapa filter untuk citra yang telah diberikan noise pada domain spasial dan domain frekuensi. Hasil yang dibandingkan adalah Peak Signal-to-Noise Ratio (PSNR) serta Running Time untuk melihat hasil yang paling optimal.</div>

### Batasan Masalah
1. Perbandingan PSNR dan Running Time dilakukan antar filter yang telah dipilih.
2. Filter yang digunakan pada domain spasial adalah filter Low-Pass, High-Pass, Median, Directional, Laplacian, Roberts, Sobel, Prewitt, dan Gaussian.
3. Filter yang digunakan pada domain frekuensi adalah filter Ideal Low-Pass, Butterworth  Low-Pass, Gaussian Low-Pass, Ideal High-Pass, Butterworth High-Pass, Gaussian High-Pass, Sobel (Konversi dari domain spasial), Prewitt (Konversi dari domain spasial), dan Laplacian (Konversi dari domain spasial).
4. Citra standar yang digunakan adalah citra berwarna ‘owl.png’ dengan dimensi 512 x 512 pixels.
5. Noise standar yang digunakan adalah tipe ‘speckle’ dengan mean 0 dan varians 0.05.

<!-- FILTER -->
## Filter
### Domain Spasial
1. <a href="https://github.com/safitrisoetam/FilterComparisonSpatialFrequency/blob/main/GUI/spaLowpass.m">Low-Pass</a>
2. <a href="https://github.com/safitrisoetam/FilterComparisonSpatialFrequency/blob/main/GUI/spaHighpass.m">High-Pass</a>
3. <a href="https://github.com/safitrisoetam/FilterComparisonSpatialFrequency/blob/main/GUI/spaMedian.m">Median</a>
4. <a href="https://github.com/safitrisoetam/FilterComparisonSpatialFrequency/blob/main/GUI/spaDirectional.m">Directional</a>
5. <a href="https://github.com/safitrisoetam/FilterComparisonSpatialFrequency/blob/main/GUI/spaLaplacian.m">Laplacian</a>
6. <a href="https://github.com/safitrisoetam/FilterComparisonSpatialFrequency/blob/main/GUI/spaRoberts.m">Roberts</a>
7. <a href="https://github.com/safitrisoetam/FilterComparisonSpatialFrequency/blob/main/GUI/spaSobel.m">Sobel</a>
8. <a href="https://github.com/safitrisoetam/FilterComparisonSpatialFrequency/blob/main/GUI/spaPrewitt.m">Prewitt</a>
9. <a href="https://github.com/safitrisoetam/FilterComparisonSpatialFrequency/blob/main/GUI/spaGaussian.m">Gaussian</a>

### Domain Frekuensi
1. <a href="https://github.com/safitrisoetam/FilterComparisonSpatialFrequency/blob/main/GUI/frekIdeal_lp.m">Ideal Low-Pass</a>
2. <a href="https://github.com/safitrisoetam/FilterComparisonSpatialFrequency/blob/main/GUI/frekButter_lp.m">Butterworth Low-Pass</a>
3. <a href="https://github.com/safitrisoetam/FilterComparisonSpatialFrequency/blob/main/GUI/frekGaussian_lp.m">Gaussian Low-Pass</a>
4. <a href="https://github.com/safitrisoetam/FilterComparisonSpatialFrequency/blob/main/GUI/frekIdeal_hp.m">Ideal High-Pass</a>
5. <a href="https://github.com/safitrisoetam/FilterComparisonSpatialFrequency/blob/main/GUI/frekButter_hp.m">Butterworth High-Pass</a>
6. <a href="https://github.com/safitrisoetam/FilterComparisonSpatialFrequency/blob/main/GUI/frekGaussian_hp.m">Gaussian High-Pass</a>
7. <a href="https://github.com/safitrisoetam/FilterComparisonSpatialFrequency/blob/main/GUI/frekSobel.m">Sobel (Konversi dari domain spasial)</a>
8. <a href="https://github.com/safitrisoetam/FilterComparisonSpatialFrequency/blob/main/GUI/frekPrewitt.m">Prewitt (Konversi dari domain spasial)</a>
9. <a href="https://github.com/safitrisoetam/FilterComparisonSpatialFrequency/blob/main/GUI/frekLaplacian.m">Laplacian (Konversi dari domain spasial)</a>

<!-- FITUR -->
## Fitur

<!-- ANGGOTA -->
## Anggota
* Auliyah Safitri Soetam Putri
<br />[![safitri-linkedin][linkedin-shield]][safitri-linkedin-url][![safitri-github][github-shield]][safitri-github-url]
* Ridho Nur Rohman Wijaya
<br />[![ridho-linkedin][linkedin-shield]][ridho-linkedin-url][![ridho-github][github-shield]][ridho-github-url]

<!-- DOSEN PENGAMPU -->
## Dosen Pengampu
Terima kasih kepada Dr. Budi Setiyono, S.Si, MT sebagai dosen pengampu untuk mata kuliah Pengolahan Citra Digital, Departemen Matematika, Fakultas Sains dan Analitika Data, Institut Teknologi Sepuluh Nopember, Surabaya, 2021

<!-- MARKDOWN LINKS & IMAGES -->
<!-- LinkedIn Link -->
[linkedin-shield]: https://img.shields.io/badge/LinkedIn--lightgrey?style=social&logo=Linkedin
[safitri-linkedin-url]: https://www.linkedin.com/in/safitri-soetam/
[ridho-linkedin-url]: https://id.linkedin.com/in/ridho-nur-rohman-wijaya-253971209

<!-- Github Link -->
[github-shield]: https://img.shields.io/badge/GitHub--lightgrey?style=social&logo=Github
[safitri-github-url]: https://github.com/safitrisoetam
[ridho-github-url]: https://github.com/RinRoya
