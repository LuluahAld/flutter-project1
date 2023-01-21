import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:project_1/pages/products.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const searchBar(),
            const Padding(
              padding: EdgeInsets.fromLTRB(14, 44, 16, 0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Shop by category',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const shopCat(),
            const Padding(
              padding: EdgeInsets.fromLTRB(14, 56, 16, 0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Recommended for you',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 24, 16, 0),
              child: SizedBox(
                height: 260,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    rec(
                      img: 'images/shoe22.png',
                      size1: 40,
                      size2: 20,
                      desc: 'LOUIS VUITTON NIKE AIR FORCE 1 LOW BY VIRGIL ABLOH',
                      price: '\$8,824',
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    rec(
                      img: 'images/shoe27.png',
                      size1: 38,
                      size2: 34,
                      desc: 'NIKE SB DUNK LOW SANDY BODECKER',
                      price: '\$127',
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    rec(
                      img: 'images/shoe19.png',
                      size1: 39,
                      size2: 34,
                      desc: 'CONVERSE GLF GIANNO OX BISCOTTI',
                      price: '\$234',
                    ),
                    SizedBox(
                      width: 16,
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

class rec extends StatelessWidget {
  final img;
  final double size1;
  final String desc;
  final double size2;
  final String price;
  const rec({
    Key? key,
    required this.img,
    required this.size1,
    required this.size2,
    required this.desc,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 240, 240, 240),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        border: Border.all(color: const Color.fromARGB(255, 171, 169, 169), width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 24, 16, 0),
        child: Column(
          children: [
            Image.asset(
              img,
            ),
            SizedBox(
              height: size1,
            ),
            AutoSizeText(
              desc,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              minFontSize: 12,
              maxLines: 10,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: size2,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                price,
                style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class shopCat extends StatelessWidget {
  const shopCat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 0),
      child: SizedBox(
        height: 160,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            InkWell(
              onTap: () {
                final navigator = Navigator.of(context);
                navigator.push(
                  MaterialPageRoute(
                    builder: (context) => const Shop(),
                  ),
                );
              },
              child: const category(
                img: 'images/shoe14.png',
                size1: 16,
                size2: 20,
                desc: 'Sneakers',
                width: 130,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            const category(
              img: 'images/coll.png',
              size1: 20,
              size2: 21,
              desc: 'Collectibles',
              width: 100,
            ),
            const SizedBox(
              width: 16,
            ),
            const category(
              img: 'images/elec.png',
              size1: 20,
              size2: 18,
              desc: 'Electronics',
              width: 125,
            ),
            const SizedBox(
              width: 16,
            ),
            const category(
              img: 'images/cards.png',
              size1: 16,
              size2: 4,
              desc: 'Trading Cards',
              width: 116,
            ),
            const SizedBox(
              width: 16,
            ),
            const category(
              img: 'images/acc.png',
              size1: 20,
              size2: 14,
              desc: 'Accessories',
              width: 115,
            ),
          ],
        ),
      ),
    );
  }
}

class category extends StatelessWidget {
  final img;
  final double width;
  final double size1;
  final double size2;
  final String desc;
  const category(
      {Key? key, required this.img, required this.size1, required this.size2, required this.desc, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        color: Colors.grey[300],
      ),
      width: 160,
      child: Column(
        children: [
          SizedBox(height: size1),
          Image.asset(
            img,
            width: width,
          ),
          SizedBox(
            height: size2,
          ),
          Text(
            desc,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
