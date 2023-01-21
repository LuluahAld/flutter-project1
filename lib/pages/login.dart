import 'package:flutter/material.dart';
import 'package:project_1/pages/allproducts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(24, 10, 0, 0),
            child: Text(
              'Close',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(140, 10, 140, 40),
            child: Image.asset(
              'images/logo.png',
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(28, 32, 28, 0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Email Address',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(28, 28, 28, 0),
            child: TextField(
              obscureText: passwordVisible,
              decoration: InputDecoration(
                suffixIcon: InkWell(
                  onTap: () {
                    setState(
                      () {
                        passwordVisible = !passwordVisible;
                      },
                    );
                  },
                  child: const Icon(
                    Icons.visibility_off,
                  ),
                ),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(width: 12, color: Colors.greenAccent),
                ),
                hintText: 'Password',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(28, 10, 28, 32),
            child: Text(
              'Forgot Password?',
              textAlign: TextAlign.right,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(28, 10, 28, 0),
            child: InkWell(
              onTap: () {
                final navigator = Navigator.of(context);
                navigator.push(
                  MaterialPageRoute(builder: (context) => const Explore()),
                );
              },
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(28, 10, 28, 0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 1,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 197, 196, 196),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text('OR'),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    height: 1,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 197, 196, 196),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(4)),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    const SizedBox(width: 72),
                    Image.asset('images/google.png', width: 20),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Continue with Google',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(4)),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    const SizedBox(width: 64),
                    Image.asset('images/facebook.png', width: 20),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Continue with Facebook',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(4)),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(13),
                child: Row(
                  children: [
                    const SizedBox(width: 80),
                    Image.asset('images/apple.png', width: 20),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Continue with Apple',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(4)),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    const SizedBox(width: 68),
                    Image.asset('images/twitter.png', width: 20),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Continue with Twitter',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 10, 28, 0),
            child: RichText(
              text: const TextSpan(
                // Here is the explicit parent TextStyle
                style: TextStyle(
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: 'By logging in, you agree to the ',
                      style: TextStyle(color: Color.fromARGB(255, 162, 163, 164))),
                  TextSpan(text: 'Terms of Service ', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'and\n', style: TextStyle(color: Color.fromARGB(255, 162, 163, 164))),
                  TextSpan(text: 'Privacy Policy', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
