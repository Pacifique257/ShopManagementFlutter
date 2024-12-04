import 'package:flutter/material.dart';
import 'package:shop_management/View/personne_view/add_personne.dart';
import 'package:shop_management/theme/theme.dart';
import 'package:shop_management/widget/add_background.dart';

class AddCommande extends StatefulWidget {
  const AddCommande({super.key});

  @override
  State<AddCommande> createState() => _AddCommandeState();
}

class _AddCommandeState extends State<AddCommande> {
  final _formSignInKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return AddBackground(
      child: Column(
        children: [
          const Expanded(
            flex: 1,
            child: SizedBox(
              height: 5,
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
                        "Ajouter une nouvelle commande",
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w900,
                          color: LightColorScheme.primary,
                        ),
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      TextFormField(
                        validator: (dateComm) {
                          if (dateComm == null || dateComm.isEmpty) {
                            return 'Veuiller entrer la date de la commande';
                          }
                          return dateComm;
                        },
                        decoration: InputDecoration(
                          label: const Text('Date du commande'),
                          hintText: 'Entrer la date de la commande',
                          hintStyle: const TextStyle(color: Colors.black26),
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
                        height: 25.0,
                      ),
                      TextFormField(
                        validator: (quantiteComm) {
                          if (quantiteComm == null || quantiteComm.isEmpty) {
                            return 'Veuiller entrer la quantite commandé';
                          }
                          return quantiteComm;
                        },
                        decoration: InputDecoration(
                          label: const Text('Quantinte commande'),
                          hintText: 'Entrer la quantite commande',
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
                        height: 25.0,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AddPersonne(),
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
          ),
          const Expanded(
            flex: 1,
            child: SizedBox(
              height: 10,
            ),
          ),
        ],
      ),
    );
  }
}
