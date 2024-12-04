class Dettes {
  int idDette = 0;
  double montantPayer = 0;
  DateTime? dateDette; //la date de donnation du dette au client
  DateTime? datePayementDette;

  Dettes(int idDette, double montantPayer, DateTime? dateDette,
      DateTime? datePayementDette) {
    this.idDette = idDette;
    this.montantPayer = montantPayer;
    this.dateDette = dateDette;
    this.datePayementDette = datePayementDette;
  }
  double get MontantPayer {
    return montantPayer;
  }

  DateTime? get DateDette {
    return dateDette;
  }

  DateTime? get DatePayementDette {
    return datePayementDette;
  }

  set IdDette(int idDette) {
    idDette;
  }

  set MontantPayer(double montantPayer) {
    montantPayer;
  }

  set DateDette(DateTime? dateDette) {
    dateDette;
  }

  set DatePayementDette(DateTime? datePayementDette) {
    datePayementDette;
  }
}
