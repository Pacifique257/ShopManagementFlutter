class Produits {
  int idProduit = 0;
  String? nomProduit =null;
  double? prixUnitaire =null;
  double? quantite = null;
  Produits(
      int idProduit, String nomProduit, double prixUnitaire, double quantite) {
    this.idProduit = idProduit;
    this.nomProduit = nomProduit;
    this.prixUnitaire = prixUnitaire;
    this.quantite = quantite;
  }
  String? get NomProduit {
    return nomProduit;
  }

  double? get PrixUnitaire {
    return prixUnitaire;
  }

  double? get Quantite {
    return quantite;
  }

  set Idproduit(int idProduit) {
    idProduit;
  }

  set NomProduit(String? nomProduit) {
    nomProduit;
  }

  set PrixUnitaire(double? prixUnitaire) {
    prixUnitaire;
  }

  set Quantite(double? quantite) {
    quantite;
  }
}
