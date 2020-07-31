class JudulPelatihan {
  String id;
  String idProgram;
  String nama;
  String deskripsi;
  String kompetensi;
  String agenda;
  String sasaran;
  int biaya;
  int jumlahHari;

  JudulPelatihan(this.id, this.idProgram, this.nama, this.deskripsi, this.kompetensi, this.agenda, this.sasaran, this.biaya, this.jumlahHari);
  
  static List<JudulPelatihan> fetchAll() {
    return [
      JudulPelatihan(
        "IE01",
        "IE",
        "Sistem Manajemen Kaizen",
        "Strategi Kaizen sebagai salah satu pendekatan yang populer dalam mempersiapakan persaingan tersebut. Strategi Kaizen adalah konsep tunggal dalam manajemen Jepang yang paling penting – kunci sukses Jepang dalam  meraih persaingan. Kaizen berarti perbaikan berkesinambungan yang  melibatkan semua orang – baik manajemen puncak, manajer, supervisor, maupun karyawan.",
        "1. Peserta pelatihan mampu memahami bahwa sistem kerja manajemen Kaizen yang merupakan tanggung jawab setiap individu dalam organisasi yang dikelola oleh suatu sistem.\n\n2. Peserta pelatihan memahami konsep Kaizen dan mampu menerapkannya di organisasi masing-masing.\n\n3. Peserta pelatihan mampu memahami pendekatan Kaizen dalam pemecahan masalah dan mengubah budaya organisasi perusahaan.",
        "1. Continuous Improvement\n\n2. Kaizen Lean Introduction\n\n3. Kaizen Design and Internal Logistic\n\n4. External Logistic\n\n5. Principles and Concepts of Lean Leadership\n\n6. Kaizen Poka Yoke\n\n7. Kaizen Cause and Effect\n\n8. Kaizen Process Mapping\n\n9. Kaizen 5S and Visual Management\n\n10. Kaizen Foundation",
        "- Pimpinan perusahaan dan pemegang kebijakan\n\n- General manager, manajer, dan pihak yang bersinggungan dengan manajemen organisasi\n\n- Semua pihak yang membutuhkan pengetahuan seputar Sistem Manajemen Kaizen",
        100000,
        3
      ),
      JudulPelatihan(
        "IE02",
        "IE",
        "Penerapan K3 di Industri",
        "Mari kita bernyanyi sekali lagi",
        "1. Kulihat\n\n2. Hamtaro berlari",
        "1. Ia berlari\n\n2. Di atas roda putarnya",
        "- Apa yang paling dia senangi?\n\n- Biji bunga matahari",
        200000,
        5
      ),
    ];
  }

  static List<JudulPelatihan> fetchAllByID(String idProgram) {
    return null;
  }

  static JudulPelatihan fetchByID(String id) {
    final listPelatihan = JudulPelatihan.fetchAll();
    var result;
    for (var pelatihan in listPelatihan) {
      if (pelatihan.getID() == id) {
        result = pelatihan;
      }
    }

    return result;
  }

  String getID() => this.id;

  String getNama() => this.nama;

  String getDeskripsi() => this.deskripsi;

  String getKompetensi() => this.kompetensi;

  String getAgenda() => this.agenda;

  String getSasaran() => this.sasaran;

  int getBiaya() => this.biaya;

  String getBiayaInStyle() {
    String biayaStr = this.biaya.toString();
    return "Rp" + biayaStr.replaceAllMapped(RegExp(r".{3}"), (match) => ".${match.group(0)}");
  }

  int getJumlahHari() => this.jumlahHari;

  String getJumlahHariInStyle() {
    String jumlahHariStr = this.jumlahHari.toString();
    return jumlahHariStr + " hari";
  }
}

