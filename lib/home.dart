import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
    required this.cWidth,
  }) : super(key: key);

  final double cWidth;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    Widget responsive(
        {required Widget? isMobile,
        required Widget? isTablet,
        required Widget? isWeb}) {
      if (width <= 700) {
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
        child: Column(
          children: [
            Container(
              width: cWidth,
              padding: EdgeInsets.all(0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Team',
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                      color: Color(0xFF341F71),
                    ),
                  ),
                  Text(
                    'Money',
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                      color: Color(0xFF341F71),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Catat Keuangan team atau kelompokmu secara mudah, transparan dan aman.',
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w700,
                      fontSize: 10,
                      color: Color(0xFF341F71),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 0.0),
                          child: InkWell(
                              child: ClipRRect(
                                child: SvgPicture.asset(
                                    'assets/Images/google-play.svg',
                                    width: 20,
                                    height: 16),
                              ),
                              onTap: () async {
                                final Uri _url = Uri.parse(
                                    "https://play.google.com/store/apps/details?id=com.panemu.teammoney");
                                if (!await launchUrl(_url))
                                  throw 'Could not launch $_url';
                              }),
                        ),
                        SizedBox(width: 15),
                        Padding(
                          padding: const EdgeInsets.only(right: 0.0),
                          child: InkWell(
                              child: ClipRRect(
                                child: SvgPicture.asset(
                                    'assets/Images/appstore.svg',
                                    width: 20,
                                    height: 16),
                              ),
                              onTap: () async {
                                final Uri _url = Uri.parse(
                                    "https://apps.apple.com/us/app/team-money/id1434153701");
                                if (!await launchUrl(_url))
                                  throw 'Could not launch $_url';
                              }),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: SvgPicture.asset('assets/Images/mobile3.svg',
                        fit: BoxFit.cover, width: 100, height: 300),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      isWeb: Container(
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
        child: Row(
          children: [
            Container(
              width: cWidth,
              padding: const EdgeInsets.all(180),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Team',
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w900,
                      fontSize: 100,
                      color: Color(0xFF341F71),
                    ),
                  ),
                  Text(
                    'Money',
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w900,
                      fontSize: 100,
                      color: Color(0xFF341F71),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Catat Keuangan team atau kelompokmu secara mudah, transparan dan aman.',
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Color(0xFF341F71),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 0.0),
                          child: InkWell(
                              child: ClipRRect(
                                child: SvgPicture.asset(
                                    'assets/Images/google-play.svg',
                                    width: 80,
                                    height: 50),
                              ),
                              onTap: () async {
                                final Uri _url = Uri.parse(
                                    "https://play.google.com/store/apps/details?id=com.panemu.teammoney");
                                if (!await launchUrl(_url))
                                  throw 'Could not launch $_url';
                              }),
                        ),
                        SizedBox(width: 15),
                        Padding(
                          padding: const EdgeInsets.only(right: 0.0),
                          child: InkWell(
                              child: ClipRRect(
                                child: SvgPicture.asset(
                                    'assets/Images/appstore.svg',
                                    width: 80,
                                    height: 50),
                              ),
                              onTap: () async {
                                final Uri _url = Uri.parse(
                                    "https://apps.apple.com/us/app/team-money/id1434153701");
                                if (!await launchUrl(_url))
                                  throw 'Could not launch $_url';
                              }),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 0.0),
                    child: SvgPicture.asset('assets/Images/mobile3.svg',
                        fit: BoxFit.cover, width: 400, height: 500),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
