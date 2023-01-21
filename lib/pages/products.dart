import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:project_1/pages/cart.dart';
import 'package:project_1/pages/details.dart';
import 'package:project_1/pages/profile.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: const [
            searchBar(),
            resultsBar(),
            productList(),
          ]),
        ),
      ),
    );
  }
}

class resultsBar extends StatelessWidget {
  const resultsBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
      child: Row(
        children: [
          RichText(
            text: const TextSpan(
              // Here is the explicit parent TextStyle
              style: TextStyle(color: Colors.black, fontSize: 16),
              children: <TextSpan>[
                TextSpan(
                    text: 'Browse ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 110, 109, 109),
                      fontWeight: FontWeight.w500,
                    )),
                TextSpan(text: '30 ', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                    text: 'results',
                    style: TextStyle(
                      color: Color.fromARGB(255, 110, 109, 109),
                      fontWeight: FontWeight.w500,
                    )),
              ],
            ),
          ),
          const SizedBox(
            width: 132,
          ),
          const Text('Sort: Feautured', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 13)),
        ],
      ),
    );
  }
}

class productList extends StatelessWidget {
  const productList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: GridView.count(
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 2,
        childAspectRatio: (100 / 130),
        children: [
          const product(
            img: 'images/shoe16.png',
            text: 'REEBOK CLUB C DOUBLE CHALK BLACK (W)',
            size1: 40,
            size2: 18,
            price: '\$100',
          ),
          InkWell(
            onTap: () {
              final navigator = Navigator.of(context);
              navigator.push(
                MaterialPageRoute(builder: (context) => const Details()),
              );
            },
            child: const product(
              img: 'images/shoe4.png',
              text: 'AIR JORDAN 1 LOW WASHED DENIM GS',
              size1: 41,
              size2: 18,
              price: '\$105',
            ),
          ),
          const product(
            img: 'images/shoe9.png',
            text: 'NEW BALANCE 550 WHITE GREY',
            size1: 42,
            size2: 16,
            price: '\$124',
          ),
          const product(
            img: 'images/shoe27.png',
            text: 'NIKE SB DUNK LOW SANDY BODECKER',
            size1: 39,
            size2: 18,
            price: '\$127',
          ),
          const product(
            img: 'images/shoe2.png',
            text: 'AIR JORDAN 1 LOW ALUMINUM WOMENS',
            size1: 42,
            size2: 17,
            price: '\$197',
          ),
          const product(
            img: 'images/shoe19.png',
            text: 'CONVERSE GLF GIANNO OX BISCOTTI',
            size1: 43,
            size2: 17,
            price: '\$234',
          ),
          const product(
            img: 'images/shoe12.png',
            text: 'AIR JORDAN 14 RETRO LOW CLOT TERRA BLUSH',
            size1: 40,
            size2: 18,
            price: '\$253',
          ),
          const product(
            img: 'images/shoe15.png',
            text: 'NIKE LDWAFFLE X UNDERCOVER X SACAI RED BLUE',
            size1: 40,
            size2: 4,
            price: '\$290',
          ),
          const product(
            img: 'images/shoe10.png',
            text: 'NIKE REACT 55 KENDRICK LAMAR',
            size1: 42,
            size2: 16,
            price: '\$296',
          ),
          const product(
            img: 'images/shoe17.png',
            text: 'PUMA FUTURE RIDER SUPER MARIO 64',
            size1: 42,
            size2: 18,
            price: '\$301',
          ),
          const product(
            img: 'images/shoe5.png',
            text: 'YEEZY 700 ANALOG BOOST',
            size1: 43,
            size2: 16,
            price: '\$352',
          ),
          const product(
            img: 'images/shoe8.png',
            text: 'NEW BALANCE 990V3 X MIUSA TEDDY SANTIS MOONBEAM',
            size1: 40,
            size2: 4,
            price: '\$358',
          ),
          const product(
            img: 'images/shoe11.png',
            text: 'SACAI X NIKE VAPORWAFFLE BLACK OFF NOIR',
            size1: 40,
            size2: 4,
            price: '\$376',
          ),
          const product(
            img: 'images/shoe7.png',
            text: 'NIKE DUNK LOW X OFF-WHITE DEAR SUMMER - 22 OF 50',
            size1: 40,
            size2: 5,
            price: '\$518',
          ),
          const product(
            img: 'images/shoe28.png',
            text: 'BALENCIAGA TRACK FADED BLACK',
            size1: 44,
            size2: 14,
            price: '\$679',
          ),
          const product(
            img: 'images/shoe30.png',
            text: 'BALENCIAGA RUNNER WHITE BLACK WHITE',
            size1: 45,
            size2: 16,
            price: '\$681',
          ),
          const product(
            img: 'images/shoe1.png',
            text: 'NIKE X CACTUS PLANT FLEA MARKET SNEAKERS',
            size1: 34,
            size2: 17,
            price: '\$730',
          ),
          const product(
            img: 'images/shoe23.png',
            text: 'NEW BALANCE 992 KITH SPRING 2',
            size1: 44,
            size2: 18,
            price: '\$901',
          ),
          const product(
            img: 'images/shoe20.png',
            text: 'ADIDAS FORUM LOW BAD BUNNY',
            size1: 36,
            size2: 17,
            price: '\$919',
          ),
          const product(
            img: 'images/shoe13.png',
            text: 'AIR VAPORMAX WHITE X OFF-WHITE',
            size1: 40,
            size2: 18,
            price: '\$1,142',
          ),
          const product(
            img: 'images/shoe29.png',
            text: 'PRADA CLOUDBUST THUNDER TECHNICAL FABRIC SILVER',
            size1: 45,
            size2: 3,
            price: '\$1,292',
          ),
          const product(
            img: 'images/shoe14.png',
            text: 'AIR JORDAN 1 RETRO LOW OG SP X TRAVIS SCOTT REVERSE MOCHA',
            size1: 40,
            size2: 4,
            price: '\$1,328',
          ),
          const product(
            img: 'images/shoe6.png',
            text: 'AIR JORDAN 1 RETRO LOW OG SP X TRAVIS SCOTT BLACK PHANTOM',
            size1: 41,
            size2: 1,
            price: '\$1,359',
          ),
          const product(
            img: 'images/shoe25.png',
            text: 'LOUIS VUITTON LV TRAINER BLACK WHITE',
            size1: 42,
            size2: 17,
            price: '\$1,460',
          ),
          const product(
            img: 'images/shoe26.png',
            text: 'VANS OLD SKOOL PATTA MEAN EYED CAT WHITE',
            size1: 47,
            size2: 15,
            price: '\$1,516',
          ),
          const product(
            img: 'images/shoe18.png',
            text: 'CONVERSE X OFF-WHITE CHUCK TAYLOR ALL-STAR VULCANIZED HI ',
            size1: 43,
            size2: 3,
            price: '\$1,912',
          ),
          const product(
            img: 'images/shoe24.png',
            text: 'NIKE AIR FORCE 1 LOW \'07 OFF-WHITE MOMA (WITHOUT SOCKS)',
            size1: 38,
            size2: 3,
            price: '\$4,310',
          ),
          const product(
            img: 'images/shoe21.png',
            text: 'ADIDAS HUMAN RACE NMD PHARRELL X CHANEL',
            size1: 40,
            size2: 19,
            price: '\$6,000',
          ),
          const product(
            img: 'images/shoe22.png',
            text: 'LOUIS VUITTON NIKE AIR FORCE 1 LOW BY VIRGIL ABLOH ',
            size1: 40,
            size2: 5,
            price: '\$8,824',
          ),
          const product(
            img: 'images/shoe3.png',
            text: 'JORDAN X DIOR AIR JORDAN 1 HIGH SNEAKERS',
            size1: 40,
            size2: 18,
            price: '\$21,558',
          ),
        ],
      ),
    );
  }
}

class searchBar extends StatelessWidget {
  const searchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      decoration: InputDecoration(
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(width: 1, color: Color.fromARGB(255, 202, 200, 200)),
        ),
        hintText: 'Search by brand, color, etc',
        hintStyle: const TextStyle(
          color: Colors.grey,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: InkWell(
            onTap: () {
              final navigator = Navigator.of(context);
              navigator.push(
                MaterialPageRoute(builder: (context) => const Profile()),
              );
            },
            child: const Icon(
              Icons.manage_accounts,
              size: 30,
              color: Color.fromARGB(255, 62, 62, 62),
            ),
          ),
        ),
        suffixIcon: InkWell(
          onTap: () {
            final navigator = Navigator.of(context);
            navigator.push(
              MaterialPageRoute(builder: (context) => const Cart()),
            );
          },
          child: const Icon(
            Icons.shopping_cart,
            size: 28,
            color: Color.fromARGB(255, 62, 62, 62),
          ),
        ),
      ),
    );
  }
}

class product extends StatelessWidget {
  final img;
  final String text;
  final double size1;
  final double size2;
  final String price;
  const product({
    Key? key,
    required this.img,
    required this.text,
    required this.size1,
    required this.size2,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        border: Border.all(color: const Color.fromARGB(255, 171, 169, 169), width: 1),
        color: const Color.fromARGB(255, 240, 240, 240),
      ),
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.all(5),
      child: Column(
        children: [
          Image.asset(img, width: 200),
          SizedBox(
            height: size1,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: AutoSizeText(
              text,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              minFontSize: 12,
              maxLines: 10,
              overflow: TextOverflow.ellipsis,
            ),
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
          )
        ],
      ),
    );
  }
}
