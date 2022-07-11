import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FeaturesOneWidget extends StatefulWidget {
  const FeaturesOneWidget({Key? key}) : super(key: key);

  @override
  State<FeaturesOneWidget> createState() => _FeaturesOneWidgetState();
}

class _FeaturesOneWidgetState extends State<FeaturesOneWidget> {
  @override
  Widget build(BuildContext context) {
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

    return responsive(
      isMobile: null,
      isTablet: Container(
        // margin: EdgeInsets.symmetric(vertical: 0),
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromARGB(255, 209, 201, 241),
                Color.fromARGB(255, 185, 251, 255),
              ]),
        ),
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(0),
              child: Column(children: const [
                Text(
                  'Transparansi transaksi keuangan',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 48,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Setiap anggota team bisa lihat transaksi member lain. Mereka bisa melihat transaksimu juga. ',
                  style: TextStyle(
                    fontSize: 20,
                    wordSpacing: 2,
                  ),
                ),
              ]),
            ),
            Container(
              child: Column(children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Hubungkan ke web browser',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          wordSpacing: 2,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                          'Kamu bisa hubungkan team money Web di browsermu, gampang dengan cara memindai Qr code terus kamu dapat terhubung ke team money Web.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 15,
                            height: 1.5,
                            wordSpacing: 2,
                          )),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: SvgPicture.asset(
                        'assets/img03.svg',
                        width: 470,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Transaksi yang dicatat bisa dicari',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              wordSpacing: 2,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                              'Cari transaksi-mu berdasarkan tanggal, keterangan, jenis transaksi, tag dan atribut-atribut lainnya.',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 15,
                                height: 1.5,
                                wordSpacing: 2,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Eksport transaksi ke spreadsheet',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          wordSpacing: 2,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                          'Kamu juga bisa mengekspor data transaksi ke spreadsheet dan mengeditnya di aplikasi spreadsheet misalnya Excel. Kamu dapat membuat laporan dengan mudah.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 15,
                            height: 1.5,
                            wordSpacing: 2,
                          )),
                    ],
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
      isWeb: Container(
        // margin: EdgeInsets.symmetric(vertical: 20),
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromARGB(255, 209, 201, 241),
                Color.fromARGB(255, 185, 251, 255),
              ]),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 60),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(30),
              child: Column(children: const [
                Text(
                  'Transparansi transaksi keuangan',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 48,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Setiap anggota team bisa lihat transaksi member lain. Mereka bisa melihat transaksimu juga. ',
                  style: TextStyle(
                    fontSize: 20,
                    wordSpacing: 2,
                  ),
                ),
              ]),
            ),
            Container(
              child: Wrap(children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.25,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(height: 180),
                      Text(
                        'Hubungkan ke web browser',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          wordSpacing: 2,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                          'Kamu bisa hubungkan team money Web di browsermu, gampang dengan cara memindai Qr code terus kamu dapat terhubung ke team money Web.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 15,
                            height: 1.5,
                            wordSpacing: 2,
                          )),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: SvgPicture.asset(
                        'assets/img03.svg',
                        width: 470,
                        height: 470,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Transaksi yang dicatat bisa dicari',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              wordSpacing: 2,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                              'Cari transaksi-mu berdasarkan tanggal, keterangan, jenis transaksi, tag dan atribut-atribut lainnya.',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 15,
                                height: 1.5,
                                wordSpacing: 2,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.25,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(height: 70),
                      Text(
                        'Eksport transaksi ke spreadsheet',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          wordSpacing: 2,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                          'Kamu juga bisa mengekspor data transaksi ke spreadsheet dan mengeditnya di aplikasi spreadsheet misalnya Excel. Kamu dapat membuat laporan dengan mudah.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 15,
                            height: 1.5,
                            wordSpacing: 2,
                          )),
                    ],
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
