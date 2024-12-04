class Commandes {
  int idComm = 0;
  DateTime? dateComm;
  double quantiteComm = 0;
  Commandes(int idComm, DateTime dateComm, double quantiteComm) {
    this.idComm = idComm;
    this.dateComm = dateComm;
    this.quantiteComm = quantiteComm;
  }
  DateTime? get DateCommande {
    return dateComm;
  }

  double get QuantiteCommande {
    return quantiteComm;
  }

  set IdCommande(int idComm) {
    idComm;
  }

  set DateCommande(DateTime? dateComm) {
    dateComm;
  }

  set QuantiteCommande(double quantiteComm) {
    quantiteComm;
  }
}
