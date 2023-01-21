import 'package:flutter/material.dart';
import 'package:project_1/pages/pay.dart';
import 'package:project_1/pages/products.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int counter = 1;
  int counter2 = 1;
  int counter3 = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    width: 132,
                  ),
                  const Text(
                    'Cart',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    width: 128,
                  ),
                  const Icon(Icons.delete, size: 30),
                ],
              ),
            ),
            const SizedBox(
              height: 68,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(34.0, 6.0, 34.0, 0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  border: Border.all(color: const Color.fromARGB(255, 171, 169, 169), width: 1),
                  color: const Color.fromARGB(255, 240, 240, 240),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('images/shoe10.png', width: 90),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            'NIKE REACT 55 ',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'KENDRICK LAMAR',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'LAMAR',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Size M US 9',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '\$296',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 42),
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                counter++;
                              });
                            },
                            child: const Icon(
                              Icons.add_circle,
                              size: 32,
                              color: Color.fromARGB(255, 68, 68, 68),
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(counter.toString(),
                              style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                                color: Color.fromARGB(255, 68, 68, 68),
                              )),
                          const SizedBox(height: 4),
                          InkWell(
                            onTap: () {
                              if (counter <= 1) {
                                counter = 1;
                              } else {
                                setState(
                                  () {
                                    counter--;
                                  },
                                );
                              }
                            },
                            child: const Icon(
                              Icons.remove_circle,
                              size: 32,
                              color: Color.fromARGB(255, 68, 68, 68),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(34.0, 20.0, 34.0, 0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  border: Border.all(color: const Color.fromARGB(255, 171, 169, 169), width: 1),
                  color: const Color.fromARGB(255, 240, 240, 240),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('images/shoe22.png', width: 90),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            'LOUIS VUITTON  ',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'NIKE AIR FORCE 1 LOW ',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'BY VIRGIL ABLOH',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Size M US 7.5',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '\$8,824',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 1),
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                counter2++;
                              });
                            },
                            child: const Icon(
                              Icons.add_circle,
                              size: 32,
                              color: Color.fromARGB(255, 68, 68, 68),
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(counter2.toString(),
                              style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                                color: Color.fromARGB(255, 68, 68, 68),
                              )),
                          const SizedBox(height: 4),
                          InkWell(
                            onTap: () {
                              if (counter2 <= 1) {
                                counter2 = 1;
                              } else {
                                setState(
                                  () {
                                    counter2--;
                                  },
                                );
                              }
                            },
                            child: const Icon(
                              Icons.remove_circle,
                              size: 32,
                              color: Color.fromARGB(255, 68, 68, 68),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(34.0, 20.0, 34.0, 0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  border: Border.all(color: const Color.fromARGB(255, 171, 169, 169), width: 1),
                  color: const Color.fromARGB(255, 240, 240, 240),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('images/shoe12.png', width: 90),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            'AIR JORDAN 14 ',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'RETRO LOW CLOT',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'TERRA BLUSH',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Size M US 8',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '\$253',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 44),
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                counter3++;
                              });
                            },
                            child: const Icon(
                              Icons.add_circle,
                              size: 32,
                              color: Color.fromARGB(255, 68, 68, 68),
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(counter3.toString(),
                              style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                                color: Color.fromARGB(255, 68, 68, 68),
                              )),
                          const SizedBox(height: 4),
                          InkWell(
                            onTap: () {
                              if (counter3 <= 1) {
                                counter3 = 1;
                              } else {
                                setState(
                                  () {
                                    counter3--;
                                  },
                                );
                              }
                            },
                            child: const Icon(
                              Icons.remove_circle,
                              size: 32,
                              color: Color.fromARGB(255, 68, 68, 68),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(32, 0, 32, 0),
              child: Text(
                'Total: \$9,373',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(36, 24, 36, 0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(9)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/apple2.png',
                        width: 68,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(36, 12, 36, 0),
              child: InkWell(
                onTap: () {
                  final navigator = Navigator.of(context);
                  navigator.push(
                    MaterialPageRoute(builder: (context) => const Pay()),
                  );
                },
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 41, 97, 66),
                    borderRadius: BorderRadius.all(Radius.circular(9)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          'Checkout',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
