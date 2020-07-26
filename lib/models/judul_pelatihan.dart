class JudulPelatihan {
  String id;
  String nama;
  String deskripsi;
  List<String> kompetensi;
  List<String> agenda;
  List<String> sasaran;
  int biaya;
  int jumlahHari;

  JudulPelatihan(this.id, this.nama, this.deskripsi, this.kompetensi, this.agenda, this.sasaran, this.biaya, this.jumlahHari);
  
  static List<JudulPelatihan> fetchAll() {
    return [
      JudulPelatihan(
        "IE01",
        "Sistem Manajemen Kaizen",
        "Mari kita bernyanyi",
        ["Aku ingin begitu", "Aku ingin begitu"],
        ["Ingin ini", "Ingin itu", "Ingin banyak sekali"],
        ["Semua semua semua dapat dikabulkan", "Dapat dikabulkan dengan kantong ajaib"],
        100000,
        3
      ),
      JudulPelatihan(
        "IE02",
        "Penerapan K3 di Industri",
        "Mari kita bernyanyi sekali lagi",
        ["Kulihat", "Hamtaro berlari"],
        ["Ia berlari", "di atas roda putarnya"],
        ["Apa yang paling dia senangi?", "Biji bunga matahari"],
        200000,
        5
      ),
    ];
  }

  static JudulPelatihan fetchByID(String id) {
    final listPelatihan = JudulPelatihan.fetchAll();
    for (var pelatihan in listPelatihan) {
      if (pelatihan.getID() == id) {
        return pelatihan;
      }
    }
  }

  String getID() {
    return this.id;
  }

  String getNama() {
    return this.nama;
  }

}

