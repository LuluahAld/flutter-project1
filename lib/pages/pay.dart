import 'package:flutter/material.dart';

class Pay extends StatelessWidget {
  const Pay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 32, 24, 0),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Payment',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 52,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 28, 24, 0),
                  child: Container(
                    child: InputDecorator(
                      decoration: InputDecoration(
                        labelText: 'Card Number',
                        labelStyle: const TextStyle(
                          fontSize: 24,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                        child: Text(
                          'XXXX XXXX XXXX 5488',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 28,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 28, 24, 0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 144,
                        child: Container(
                          child: InputDecorator(
                            decoration: InputDecoration(
                              labelText: 'Expiration',
                              labelStyle: const TextStyle(
                                fontSize: 24,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            child: const Text(
                              'MM/YY',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 32),
                      SizedBox(
                        width: 144,
                        child: Container(
                          child: InputDecorator(
                            decoration: InputDecoration(
                              labelText: 'CVV',
                              labelStyle: const TextStyle(
                                fontSize: 24,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            child: const Text(
                              'XXX',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 120, 24, 0),
                  child: Row(
                    children: const [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Subtotal ',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(width: 142),
                      Text(
                        ' \$9,373',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 12, 24, 0),
                  child: Row(
                    children: const [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Taxes',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(width: 172),
                      Text(
                        ' \$1,405',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 12, 24, 0),
                  child: Row(
                    children: const [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Shipping Fees',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(width: 112),
                      Text(
                        ' Free',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 120,
                ),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Color.fromARGB(255, 41, 97, 66),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(88, 14, 88, 14),
                    child: Text(
                      'Place Order',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
