import 'package:shop_management/Model/enum/personne_type.dart';

class Personnes {
  int idPersonne = 0;
  String nomPersonne = '';
  String prenomPersonne = '';
  String adresse = '';
  String email = '';
  String telephone = '';
  PersonneType? type = null;
  Personnes(int idPersonne, String nomPersonne, String prenomPersonne,
      String adresse, String email, String telephone, PersonneType type) {
    this.idPersonne = idPersonne;
    this.nomPersonne = nomPersonne;
    this.prenomPersonne = prenomPersonne;
    this.adresse = adresse;
    this.email = email;
    this.telephone = telephone;
    this.type = type;
  }
  String get NomPersonne {
    return nomPersonne;
  }

  String get PrenomPersonne {
    return prenomPersonne;
  }

  String get Adresse {
    return adresse;
  }

  String get Email {
    return email;
  }

  String get Telephone {
    return telephone;
  }

  PersonneType? get Type {
    return type;
  }

  set IdPersonne(int idPersonne) {
    idPersonne;
  }

  set NomPersonne(String nomPersonne) {
    nomPersonne;
  }

  set PrenomPersonne(String prenomPersonne) {
    prenomPersonne;
  }

  set Adresse(String adresse) {
    adresse;
  }

  set Email(String email) {
    email;
  }

  set Telephon(String telephone) {
    telephone;
  }

  set Type(PersonneType? type) {
    type;
  }
}
