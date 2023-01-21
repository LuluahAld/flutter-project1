import 'package:flutter/material.dart';
import 'package:project_1/pages/cart.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const sizeBar(),
              const SizedBox(
                height: 52,
              ),
              const Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'AIR JORDAN 1 LOW WASHED DENIM GS',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 212, 209, 209),
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Condition: New',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              Image.asset('images/shoe4.png'),
              const SizedBox(
                height: 24,
              ),
              const Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  '\$105',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
              ),
              const Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Size: US M 4',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 237, 235, 235),
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  border: Border.all(color: const Color.fromARGB(255, 171, 169, 169), width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.flash_on,
                        color: Colors.amber,
                        size: 36,
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'This Product Is Selling Fast',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '843 Purchases In The Last 3 Days',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 36,
              ),
              InkWell(
                onTap: () {
                  final navigator = Navigator.of(context);
                  navigator.push(
                    MaterialPageRoute(builder: (context) => const Cart()),
                  );
                },
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Color.fromARGB(255, 41, 97, 66),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('images/buy.png', width: 45),
                        const SizedBox(
                          width: 25,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Buy',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 24,
                              ),
                            ),
                            Text(
                              'for \$105',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class sizeBar extends StatelessWidget {
  const sizeBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 16, 20, 16),
        child: Row(
          children: const [
            Text(
              'Size',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
            ),
            SizedBox(width: 252),
            Text(
              'All',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
            ),
            Icon(Icons.expand_more)
          ],
        ),
      ),
    );
  }
}
