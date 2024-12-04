import 'package:flutter/material.dart';
import 'package:shop_management/widget/custom_scafold.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});
  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return const CustomScafold(
      child: Text('mot de passe oublie'),
    );
  }
}
