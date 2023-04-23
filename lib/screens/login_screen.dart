import 'package:app/components/custom_button.dart';
import 'package:app/components/custom_textfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.android, size: 100.0),
              const SizedBox(height: 50.0),
              const Text(
                "Olá novamente!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 36
                )
              ),
              const Text(
                "Bem-vindo de volta, sentimos sua falta!",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 50.0),
              const CustomTextField(label: "Email", leftIcon: "email", hasEyeIcon: false),
              const SizedBox(height: 10.0),
              const CustomTextField(label: "Password", leftIcon: "lock", hasEyeIcon: true),
              const SizedBox(height: 20.0),
              CustomButton(
                label: "Entrar",
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(8)
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Não possui conta? ",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontWeight: FontWeight.bold
                    )
                  ),
                  const Text(
                    "Cadastre-se agora",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue
                    )
                  ),
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}