import 'package:flutter/material.dart';
import 'package:project_1/pages/allproducts.dart';
import 'package:project_1/pages/login.dart';
import 'package:project_1/pages/products.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String email = 'Aldakhil.luluah@gmail.com';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 16, 32, 0),
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        final navigator = Navigator.of(context);
                        navigator.push(
                          MaterialPageRoute(builder: (context) => const Shop()),
                        );
                      },
                      child: const Icon(Icons.arrow_back_ios)),
                  const SizedBox(
                    width: 120,
                  ),
                  const Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    width: 115,
                  ),
                  InkWell(
                    onTap: () {
                      final navigator = Navigator.of(context);
                      navigator.push(
                        MaterialPageRoute(builder: (context) => const Explore()),
                      );
                    },
                    child: const Icon(Icons.home, size: 30),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 16, 32, 0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(4)),
                  border: Border.all(color: const Color.fromARGB(255, 179, 177, 177), width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(13),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 41, 97, 66),
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(
                              width: 24,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Luluah Aldakhil',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  email,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(4)),
                            color: const Color.fromARGB(255, 235, 235, 235),
                            border: Border.all(
                              color: const Color.fromARGB(255, 236, 235, 235),
                              width: 1,
                            ),
                          ),
                          child: TextField(
                            onSubmitted: (value) {
                              setState(() {
                                email = value;
                              });
                            },
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Change Email',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 52, 32, 0),
              child: Container(
                child: Column(
                  children: [
                    const cols(
                      text: 'Orders',
                      size1: 16,
                      size2: 20,
                      icon: Icons.shopping_basket_outlined,
                      size3: 226,
                    ),
                    const SizedBox(height: 32),
                    const cols(
                      text: 'Information',
                      size1: 16,
                      size2: 20,
                      icon: Icons.contact_mail_outlined,
                      size3: 180,
                    ),
                    const SizedBox(height: 32),
                    const cols(
                      text: 'Shipping Address',
                      size1: 16,
                      size2: 20,
                      icon: Icons.add_location_alt_outlined,
                      size3: 121,
                    ),
                    const SizedBox(height: 32),
                    const cols(
                      text: 'Payment Method',
                      size1: 16,
                      size2: 20,
                      icon: Icons.account_balance_wallet_outlined,
                      size3: 128,
                    ),
                    const SizedBox(height: 32),
                    const cols(
                      text: 'Settings',
                      size1: 16,
                      size2: 20,
                      icon: Icons.tune,
                      size3: 211,
                    ),
                    const SizedBox(height: 32),
                    InkWell(
                      onTap: () {
                        final navigator = Navigator.of(context);
                        navigator.push(
                          MaterialPageRoute(builder: (context) => const Login()),
                        );
                      },
                      child: const cols(
                        text: 'Logout',
                        size1: 16,
                        size2: 20,
                        icon: Icons.power_settings_new,
                        size3: 225,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class cols extends StatelessWidget {
  final String text;
  final double size1, size2, size3;
  final IconData icon;
  const cols({
    Key? key,
    required this.text,
    required this.size1,
    required this.size2,
    required this.icon,
    required this.size3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 1, color: Color.fromARGB(255, 181, 175, 175)),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
          child: Row(
            children: [
              Icon(icon, size: 28),
              SizedBox(
                width: size1,
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: size2,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: size3),
              const Icon(Icons.arrow_forward_ios, size: 22)
            ],
          ),
        ));
  }
}
