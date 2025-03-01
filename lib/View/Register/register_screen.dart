import 'package:flutter/material.dart';
import 'package:project_ai_chat/View/HomeChat/home.dart';
import 'package:project_ai_chat/View/Login/login_screen.dart';
import 'package:project_ai_chat/constants/colors.dart';
import 'package:project_ai_chat/constants/image_strings.dart';
import 'package:project_ai_chat/constants/sizes.dart';
import 'package:project_ai_chat/constants/text_strings.dart';
import 'package:project_ai_chat/core/Widget/elevated_button.dart';
import 'package:project_ai_chat/core/Widget/outlined_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(tDefaultSize),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // -- Section - 1 --
                  Image(
                    image: AssetImage(welcomeScreenImage),
                    height: size.height * 0.2,
                  ),
                  Text(
                    registerTitleString,
                    style: Theme
                        .of(context)
                        .textTheme
                        .headlineLarge,
                  ),
                  Text(
                    registerSubtitleString,
                    style: Theme
                        .of(context)
                        .textTheme
                        .bodyMedium,
                  ),
                  // -- .end - 1 --

                  // -- Section - 2 --
                  Container(
                    padding:
                    const EdgeInsets.symmetric(vertical: tFormHeight - 10),
                    child: Form(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.person_outline_rounded),
                                label: Text(fullnameString),
                                ),
                          ),
                          const SizedBox(height: tFormHeight - 20),
                          TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.email_outlined),
                              label: Text(emailString),
                            ),
                          ),
                          const SizedBox(height: tFormHeight - 20),
                          TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.numbers_outlined),
                              label: Text(phoneNumberString),
                            ),
                          ),
                          const SizedBox(height: tFormHeight - 20),
                          TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.password_outlined),
                              label: Text(passwordString),
                            ),
                          ),
                          const SizedBox(height: tFormHeight - 10),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButtonCustom(
                              text: registerString.toUpperCase(),
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomeChat()));
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
              
                  // -- .end - 2--

                  // -- Section - 3 --
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text("OR"),
                      const SizedBox(height: tFormHeight - 20),
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButtonCustom(
                          icon: Image(
                            image: AssetImage(googleLogoImage),
                            width: 20.0,
                          ),
                          onPressed: () {},
                          label: loginWithGoogleString,
                        ),
                      ),
                      const SizedBox(height: tFormHeight - 20),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          },
                          child: Text.rich(
                              TextSpan(
                                  text: alreadyHaveAnAccountString,
                                  style: Theme
                                      .of(context)
                                      .textTheme
                                      .bodyLarge,
                                  children: const[
                                    TextSpan(
                                      text: " " + loginString,
                                      style: TextStyle(color: Colors.blue),
                                    )
                                  ]
                              )
                          ))
                    ],
                  )
                  // -- .end - 3--
                ],
              ),
            ),
          )),
    );
  }
}
