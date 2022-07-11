import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TypeTransWidget extends StatefulWidget {
  const TypeTransWidget({Key? key}) : super(key: key);

  @override
  State<TypeTransWidget> createState() => _TypeTransWidgetState();
}

class _TypeTransWidgetState extends State<TypeTransWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromARGB(255, 185, 251, 255),
              Color.fromARGB(255, 209, 201, 241),
            ]),
      ),
      padding: const EdgeInsets.all(70),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text('Masih nyatet pengeluaran secara manual?',
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w900, fontSize: 48)),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  'Dengan Team Money kamu bisa mencatat pengeluaran atau pendapatan sekalipun dengan mudah.',
                  style: TextStyle(
                    fontSize: 20,
                    wordSpacing: 2,
                    height: 1.5,
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                const Text(
                  'Ada tiga jenis transaksi :',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                    height: 1.5,
                    wordSpacing: 2,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      padding: const EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromRGBO(25, 210, 77, 0.64),
                      ),
                      child: Column(
                        children: const [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      'Modal (Capital)',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          wordSpacing: 2,
                          height: 1.5),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(15),
                      padding: const EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromRGBO(44, 152, 240, 0.68),
                      ),
                      child: Column(
                        children: const [
                          Icon(
                            Icons.arrow_upward,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      'Transfer (In/Out)',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          wordSpacing: 2,
                          height: 1.5),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      padding: const EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromRGBO(255, 59, 48, 0.61),
                      ),
                      child: Column(
                        children: const [
                          Icon(
                            Icons.east,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      'Pengeluaran (Expense)',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          wordSpacing: 2,
                          height: 1.5),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 45),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/img04.svg',
                  width: 600,
                  height: 600,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
