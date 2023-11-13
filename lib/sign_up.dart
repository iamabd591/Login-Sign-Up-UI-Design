import 'package:flutter/material.dart';
import 'sign_in.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var username = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();
  var confirm = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Center(
              child: Column(
            children: [
              const Text(
                "Create An Account Now",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: username,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: 'Enter Your Username',
                      prefixIcon: const Icon(
                        FontAwesomeIcons.user,
                        size: 20,
                        color: Colors.deepPurple,
                      )),
                  keyboardType: TextInputType.text,
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      labelText: 'Enter Your Email',
                      prefixIcon: const Icon(
                        FontAwesomeIcons.envelope,
                        color: Colors.deepPurple,
                        size: 20,
                      )),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: password,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      labelText: 'Enter Your Password',
                      prefixIcon: const Icon(
                        FontAwesomeIcons.lock,
                        color: Colors.deepPurple,
                        size: 20,
                      )),
                  keyboardType: TextInputType.visiblePassword,
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: confirm,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      labelText: 'Enter Your Confirm Password',
                      prefixIcon: const Icon(
                        FontAwesomeIcons.lock,
                        color: Colors.deepPurple,
                        size: 20,
                      )),
                  keyboardType: TextInputType.visiblePassword,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Register",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.normal),
                    )),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'All Ready Have An Account',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignIn(),
                          ));
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                          fontWeight: FontWeight.w900,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.blue),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Or Sign Up With",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 22,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const FaIcon(
                        FontAwesomeIcons.facebook,
                        color: Colors.blue,
                        size: 30,
                      )),
                  TextButton(
                      onPressed: () {},
                      child: const FaIcon(
                        FontAwesomeIcons.google,
                        color: Colors.red,
                        size: 30,
                      )),
                  TextButton(
                      onPressed: () {},
                      child: const FaIcon(
                        FontAwesomeIcons.github,
                        color: Colors.black,
                        size: 30,
                      )),
                ],
              )
            ],
          )),
        ));
  }
}
