class Hospitals {
  final String title;
  final int doctors;

  Hospitals(this.title, this.doctors);

  static List<Hospitals> giveMeHospitals() {
    return [
      Hospitals('Macaane', 1),
      Hospitals('Digfeer', 30),
      Hospitals('Banaadir', 20),
      Hospitals('Somali Sudaneise', 10)
    ];
  }
}
