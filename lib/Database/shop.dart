import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseConnection {
  Future<Database> setDatabase() async {
    var directory = await getApplicationDocumentsDirectory();
    var path = join(directory.path, 'shop_management.db');
    var database = await openDatabase(
      path,
      version: 1,
      onCreate: _createDatabase,
    );
    return database;
  }

  Future<void> _createDatabase(Database database, int version) async {
    List<String> tableDefinitions = [
      '''
      CREATE TABLE Personnes (
        idPersonne INTEGER PRIMARY KEY AUTOINCREMENT,
        nom VARCHAR(50),
        prenom VARCHAR(50),
        adresse VARCHAR(100),
        email VARCHAR(150),
        telephone VARCHAR(20),
       type VARCHAR(10)
      )
      ''',
      '''
      CREATE TABLE Produits (
        idProduit INTEGER PRIMARY KEY AUTOINCREMENT,
        nomProduit VARCHAR(30),
        prixUnitaire DOUBLE,
        quantite DOUBLE,
      
      )
      ''',
      '''
      CREATE TABLE Commandes(
        idCommande INTEGER PRIMARY KEY AUTOINCREMENT,
        dateDeCommande DATE,
        quantiteCommande DOUBLE
      )
      ''',
      '''
      CREATE TABLE Dettes (
        idDette INTEGER PRIMARY KEY AUTOINCREMENT,
        montantAPayer DOUBLE,
        dateDeDette DATE,
        dateDePayement DATE,
        idPersonne INTEGER
      )
      ''',
      '''
      CREATE TABLE Factures (
        idFacture INTEGER PRIMARY KEY AUTOINCREMENT,
        idPersonne INTEGER,
        dateFacture DATE,
        montantTotalFacture DOUBLE
      )
      ''',
      '''
      CREATE TABLE Apparaitre (
        idApparaitre INTEGER PRIMARY KEY AUTOINCREMENT,
        idFacture INTEGER,
        idProduit INTEGER
      )
      ''',
      '''
      CREATE TABLE Commander (
        idApparaitre INTEGER PRIMARY KEY AUTOINCREMENT,
        idFacture INTEGER,
        idCommande INTEGER
      )
      '''
    ];

    for (String sql in tableDefinitions) {
      await database.execute(sql);
    }
    List<String> foreignKeyConstraints = [
      '''
ALTER TABLE Factures
ADD CONSTRAINT fk_Factures_Personnes
FOREIGN KEY (idPersonne)
REFERENCES Personnes(idPersonne)
ON DELETE CASCADE
ON UPDATE CASCADE
''',
      '''
ALTER TABLE Dettes
ADD CONSTRAINT fk_Dettes_Factures
FOREIGN KEY (idFacture)
REFERENCES Personnes(idFacture)
ON DELETE CASCADE
ON UPDATE CASCADE
'''
    ];

    for (String sql in foreignKeyConstraints) {
      await database.execute(sql);
    }
  }
}
