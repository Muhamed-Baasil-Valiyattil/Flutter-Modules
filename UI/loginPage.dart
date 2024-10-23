import 'package:flutter/material.dart';
import 'package:flutter_social_media_app/Components/auth_text_field.dart';
import 'package:flutter_social_media_app/Components/simple_button.dart';
import 'package:flutter_social_media_app/Pages/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.grey[300],
      body:  SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

              // const SizedBox(height: ,),

              //Icon
              
              const Center(
                child: Icon(
                  Icons.power_settings_new_rounded,
                  size: 80,),
              ),


              const SizedBox(height: 20,),

              

              //Welcome Text

              const Text(
                "Welcome Back !",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500
                ),),

                const SizedBox(height: 20,),


              //Email TextField
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: AuthTextField(controller: emailController, hintText: "Email", obscureText: false),
              ),


              //Password TextField
              Padding(
                padding: const EdgeInsets.only(top: 3,right: 9,left: 9),
                child: AuthTextField(controller: passwordController, hintText: "Password", obscureText: true),
              ),

              //SignIn Button

              Padding(
                padding: const EdgeInsets.all(9.0),
                child: SimpleButton(onTap: (){}, buttonText: "Sign In"),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not A Memeber ?",
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 15,
                      fontWeight: FontWeight.w500
                    ),
                  ),

                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const RegisterPage()));
                    },
                    child: const Text(
                                  " Register",
                                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                                  ),),
                  )
                ],
              ),

              

          ],
        )),
    );
  }
}