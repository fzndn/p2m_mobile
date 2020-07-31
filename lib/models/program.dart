class Program {
  String id;
  String nama;

  Program(this.id, this.nama);

  static List<Program> fetchAll() {
    return [
      Program("MM", "Maintenance Management Training"),
      Program("TT", "Technical Training"),
      Program("IE", "Industrial Engineering"),
      Program("SS", "Academic Improvement Skills & Soft Skills"),
      Program("BM", "Building Management")
    ];
  }

  String getID() => this.id;

  String getNama() => this.nama;
}