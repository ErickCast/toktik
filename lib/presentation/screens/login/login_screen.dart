import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: LoginForm(),
      ),
    );
  }
}


class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final formController = TextEditingController();

   /*  @override
    void dispose() {
      // Clean up the controller when the widget is disposed.
      myController.dispose();
      super.dispose();
    } */
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Ingrese sus datos", style: TextStyle(fontSize: 20),),
        Form(
          key: _formKey,
          child: Column(
            children: [
              CustomTextField(textForHint: "Ingrese su email"),
              CustomTextField(textForHint: "Ingrese su contraseña"),
              FilledButton(onPressed: () {
                
              }, 
                child: Text('Ingresar'), 
                style: ButtonStyle(backgroundColor:  MaterialStatePropertyAll<Color>(Colors.blueAccent)),
              ),
            ],
          )
        )
        

      ],
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String textForHint;
  const CustomTextField({
    super.key, required this.textForHint
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          child: TextField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: textForHint,
            ),
          ),
        );
  }
}

