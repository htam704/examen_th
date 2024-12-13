import 'package:examen_th/widgets/custom_text_form_field_th.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatelessWidget {
   
  const SigninScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            children: [
              FlutterLogo(size: 100),
              CustomTextFormField(
                hintText: 'Usuario',
                labelText: 'Usuario',
                suffixIcon: Icons.group_outlined,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    topRight: Radius.circular(10)
                  )
                )
              ),
              SizedBox(height: 30),
              CustomTextFormField(
                hintText: 'Contraseña',
                labelText: 'Contraseña',
                
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                }, 
                child: SizedBox(
                  width: double.infinity,
                  child: Center(child: Text('Enviar'))
                  )
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context)
      ),
    );
  }

  
}