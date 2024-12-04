class Factures {
  int idFacture = 0;
  DateTime? dateFacture;
  double montantTotal = 0;
  Factures(int idFacture, DateTime dateFacture, double montantTotal) {
    this.idFacture = idFacture;
    this.dateFacture = dateFacture;
    this.montantTotal = montantTotal;
  }
  DateTime? get DateFacture {
    return dateFacture;
  }

  double get MontantTotal {
    return montantTotal;
  }

  set IdFacture(int idFacture) {
    idFacture;
  }

  set DateFacture(DateTime? dateFacture) {
    dateFacture;
  }

  set MontantTotal(double montantTotal) {
    montantTotal;
  }
}
