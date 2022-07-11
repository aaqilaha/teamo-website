import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdvantagesWidget extends StatefulWidget {
  const AdvantagesWidget({Key? key}) : super(key: key);

  @override
  State<AdvantagesWidget> createState() => _AdvantagesWidgetState();
}

class _AdvantagesWidgetState extends State<AdvantagesWidget> {
  @override
  Widget build(BuildContext context) {
    // print("Lebar ${MediaQuery.of(context).size.width}");
    // print("Tinggi ${MediaQuery.of(context).size.height}");

    double bWidth = MediaQuery.of(context).size.width * 0.2;
    double cWidth = MediaQuery.of(context).size.width * 0.3;
    double dWidth = MediaQuery.of(context).size.width * 0.53;

    double cHeight = MediaQuery.of(context).size.height * 0.8;

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    Widget responsive(
        {required Widget? isMobile,
        required Widget? isTablet,
        required Widget? isWeb}) {
      if (width <= 850) {
        return isTablet!;
      } else if (width <= 600) {
        return isMobile ?? isTablet!;
      } else {
        return isWeb!;
      }
    }

    return Container(
      width: double.infinity,
      height: height,
      // padding: EdgeInsets.symmetric(vertical: 60),
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: responsive(
          isMobile: null,
          isTablet: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color.fromARGB(255, 185, 251, 255),
                    Color.fromARGB(255, 209, 201, 241),
                  ]),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //Container 1
                Container(
                  width: MediaQuery.of(context).size.width,
                  // height: MediaQuery.of(context).size.height * 0.7,
                  padding: EdgeInsets.all(60),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color:
                            Color.fromARGB(255, 255, 255, 255).withOpacity(0.2),
                        spreadRadius: 0,
                        blurRadius: 1.5,
                        offset: Offset(0, 0),
                      ),
                    ],
                    border: Border.all(color: Colors.white, width: 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Text(
                          'Tidak ada batasan untuk impianmu',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 48,
                            height: 1.5,
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          'Bagi yang suka nggak enak nagih utang karena nombokin duluan kamu bisa invite teman timmu,terus tinggal tunjukin aja transaksi beserta bukti kwitansinya di Team Money.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 20,
                            wordSpacing: 2,
                            height: 1.5,
                          ),
                        ),
                      ]),
                ),

                //Container 2
                Container(
                  width: dWidth,
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 16.0),
                                padding: const EdgeInsets.all(15.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color.fromRGBO(52, 200, 209, 1),
                                ),
                                child: Column(
                                  children: const [
                                    Icon(
                                      Icons.touch_app,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: bWidth,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Mudah',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'Buat team-mu sendiri atau gabung team temanmu. Kamu juga bisa membuat banyak tim.',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        fontSize: 15,
                                        height: 1.5,
                                        wordSpacing: 2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 16.0),
                                padding: const EdgeInsets.all(15.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color.fromRGBO(66, 133, 244, 1),
                                ),
                                child: Column(
                                  children: const [
                                    Icon(
                                      Icons.info,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: bWidth,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Informatif',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'Masukan transaksi-mu dan Tambahkan tag untuk mempermudah pencarian.',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        fontSize: 15,
                                        height: 1.5,
                                        wordSpacing: 2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 16.0),
                                padding: const EdgeInsets.all(15.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color.fromRGBO(4, 128, 218, 0.75),
                                ),
                                child: Column(
                                  children: const [
                                    Icon(
                                      Icons.search,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: bWidth,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Transparan',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'Lihat transaksi member lain. Mereka bisa melihat transaksi-mu juga.',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        fontSize: 15,
                                        height: 1.5,
                                        wordSpacing: 2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 16),
                                padding: const EdgeInsets.all(15.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color.fromRGBO(70, 66, 244, 1),
                                ),
                                child: Column(
                                  children: const [
                                    Icon(
                                      Icons.replay,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: bWidth,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Teraudit',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'Salah input data? Ubah saja! Riwayat perubahan tetap tersimpan kok.',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        fontSize: 15,
                                        height: 1.5,
                                        wordSpacing: 2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 16),
                                padding: const EdgeInsets.all(15.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color.fromRGBO(1, 138, 168, 1),
                                ),
                                child: Column(
                                  children: const [
                                    Icon(
                                      Icons.stars,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: bWidth,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Dibuat hanya untukmu',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'Cari transaksi tertentu dan cek totalnya dengan mudah. Bisa dicari berdasarkan atribut-atribut lainnya.',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        fontSize: 15,
                                        height: 1.5,
                                        wordSpacing: 2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 16),
                                padding: const EdgeInsets.all(15.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color.fromRGBO(123, 66, 244, 1),
                                ),
                                child: Column(
                                  children: const [
                                    Icon(
                                      Icons.contacts,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: bWidth,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Sosial',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'Tambahkan teman-mu ke team langsung dari kontak Gadget-mu.',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        fontSize: 15,
                                        height: 1.5,
                                        wordSpacing: 2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          isWeb: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color.fromARGB(255, 185, 251, 255),
                    Color.fromARGB(255, 209, 201, 241),
                  ]),
            ),
            child: Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                
                //Container 1
                Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.height * 0.7,
                  padding: EdgeInsets.all(60),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color:
                            Color.fromARGB(255, 255, 255, 255).withOpacity(0.2),
                        spreadRadius: 0,
                        blurRadius: 1.5,
                        offset: Offset(0, 0),
                      ),
                    ],
                    border: Border.all(color: Colors.white, width: 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Text(
                          'Tidak ada batasan untuk impianmu',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 48,
                            height: 1.5,
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          'Bagi yang suka nggak enak nagih utang karena nombokin duluan kamu bisa invite teman timmu,terus tinggal tunjukin aja transaksi beserta bukti kwitansinya di Team Money.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 20,
                            wordSpacing: 2,
                            height: 1.5,
                          ),
                        ),
                      ]),
                ),

                //Container 2
                Container(
                  width: dWidth,
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 16.0),
                                padding: const EdgeInsets.all(15.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color.fromRGBO(52, 200, 209, 1),
                                ),
                                child: Column(
                                  children: const [
                                    Icon(
                                      Icons.touch_app,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: bWidth,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Mudah',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'Buat team-mu sendiri atau gabung team temanmu. Kamu juga bisa membuat banyak tim.',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        fontSize: 15,
                                        height: 1.5,
                                        wordSpacing: 2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 16.0),
                                padding: const EdgeInsets.all(15.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color.fromRGBO(66, 133, 244, 1),
                                ),
                                child: Column(
                                  children: const [
                                    Icon(
                                      Icons.info,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: bWidth,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Informatif',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'Masukan transaksi-mu dan Tambahkan tag untuk mempermudah pencarian.',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        fontSize: 15,
                                        height: 1.5,
                                        wordSpacing: 2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 16.0),
                                padding: const EdgeInsets.all(15.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color.fromRGBO(4, 128, 218, 0.75),
                                ),
                                child: Column(
                                  children: const [
                                    Icon(
                                      Icons.search,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: bWidth,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Transparan',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'Lihat transaksi member lain. Mereka bisa melihat transaksi-mu juga.',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        fontSize: 15,
                                        height: 1.5,
                                        wordSpacing: 2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 16),
                                padding: const EdgeInsets.all(15.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color.fromRGBO(70, 66, 244, 1),
                                ),
                                child: Column(
                                  children: const [
                                    Icon(
                                      Icons.replay,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: bWidth,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Teraudit',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'Salah input data? Ubah saja! Riwayat perubahan tetap tersimpan kok.',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        fontSize: 15,
                                        height: 1.5,
                                        wordSpacing: 2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 16),
                                padding: const EdgeInsets.all(15.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color.fromRGBO(1, 138, 168, 1),
                                ),
                                child: Column(
                                  children: const [
                                    Icon(
                                      Icons.stars,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: bWidth,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Dibuat hanya untukmu',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'Cari transaksi tertentu dan cek totalnya dengan mudah. Bisa dicari berdasarkan atribut-atribut lainnya.',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        fontSize: 15,
                                        height: 1.5,
                                        wordSpacing: 2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 16),
                                padding: const EdgeInsets.all(15.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color.fromRGBO(123, 66, 244, 1),
                                ),
                                child: Column(
                                  children: const [
                                    Icon(
                                      Icons.contacts,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: bWidth,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Sosial',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'Tambahkan teman-mu ke team langsung dari kontak Gadget-mu.',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        fontSize: 15,
                                        height: 1.5,
                                        wordSpacing: 2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
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
