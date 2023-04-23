import 'package:flutter/material.dart';
import 'package:app/screens/home_screen.dart';
import 'package:app/components/custom_textfield.dart';
import 'package:app/components/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _isLoading = false;

  void showLoadingIcon() {
    setState(() {
      _isLoading = true;
    });
  }

  void popLoadingIcon() {
    setState(() {
      _isLoading = false;
    });
  }

  void _handleSubmit() {
    showLoadingIcon();

    final currentContext = context;

    Future.delayed(const Duration(seconds: 2)).then((_) {
      if (emailController.text == "admin@admin.com" && passwordController.text == "admin") {
        Navigator.push(currentContext, MaterialPageRoute(builder: (context) => const HomeScreen()));
      }
      popLoadingIcon();
    });
  }

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
              CustomTextField(
                label: "Email",
                leftIcon: "email",
                hasEyeIcon: false,

                controller: emailController
              ),
              const SizedBox(height: 10.0),
              CustomTextField(
                label: "Password",
                leftIcon: "lock",
                hasEyeIcon: true,
                controller: passwordController
              ),
              const SizedBox(height: 20.0),
              CustomButton(
                label: "Entrar",
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(8),
                onTap: _handleSubmit,
                hasSubmitted: _isLoading
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