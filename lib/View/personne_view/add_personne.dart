import 'package:flutter/material.dart';
import 'package:shop_management/View/commande_view/add_commande.dart';
import 'package:shop_management/theme/theme.dart';
import 'package:shop_management/widget/add_background.dart';

class AddPersonne extends StatefulWidget {
  const AddPersonne({super.key});

  @override
  State<AddPersonne> createState() => _AddPersonneState();
}

class _AddPersonneState extends State<AddPersonne> {
  final _formSignInKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return AddBackground(
      child: Column(
        children: [
          const Expanded(
            flex: 1,
            child: SizedBox(
              height: 10,
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              padding: const EdgeInsets.fromLTRB(25.0, 50.0, 25.0, 20.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Form(
                  key: _formSignInKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Ajouter un nouveau personne",
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w900,
                          color: LightColorScheme.primary,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        validator: (String? nomPersonne) {
                          if (nomPersonne == null || nomPersonne.isEmpty) {
                            return 'Veuiller entrer le nom';
                          }
                          return nomPersonne;
                        },
                        decoration: InputDecoration(
                          label: const Text('Nom'),
                          hintText: 'Entrer le nom ',
                          hintStyle: TextStyle(color: Colors.black26),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black12,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        validator: (prenomPersonne) {
                          if (prenomPersonne == null ||
                              prenomPersonne.isEmpty) {
                            return 'Veuiller entrer le prenom';
                          }
                          return prenomPersonne;
                        },
                        decoration: InputDecoration(
                          label: const Text('Prenom'),
                          hintText: 'Entrer le prenom',
                          hintStyle: TextStyle(color: Colors.black26),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black12,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        validator: (adresse) {
                          if (adresse == null || adresse.isEmpty) {
                            return "Veuiller entrer l'adresse";
                          }
                          return adresse;
                        },
                        decoration: InputDecoration(
                          label: const Text('Adresse'),
                          hintText: "Entrer l'adresse",
                          hintStyle: TextStyle(color: Colors.black26),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black12,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        validator: (String? email) {
                          if (email == null || email.isEmpty) {
                            return "Veuiller entrer l'email";
                          }
                          return email;
                        },
                        decoration: InputDecoration(
                          label: const Text('Email'),
                          hintText: "Entrer l'email",
                          hintStyle: TextStyle(color: Colors.black26),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black12,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        validator: (String? telephone) {
                          if (telephone == null || telephone.isEmpty) {
                            return 'Veuiller entrer le numero de telephone';
                          }
                          return telephone;
                        },
                        decoration: InputDecoration(
                          label: const Text('Numero de telephone'),
                          hintText: 'Entrer le numero de telephone ',
                          hintStyle: TextStyle(color: Colors.black26),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black12,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AddCommande(),
                              ),
                            );
                            if (_formSignInKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Veuillez patienter'),
                                ),
                              );
                            }
                          },
                          child: const Text('Ajouter'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
