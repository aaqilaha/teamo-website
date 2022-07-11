import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  final Function? onTapHomef;
  final Function? onTapFeaturesf;
  final Function? onTapDownloadf;

  const Footer(
      {super.key, this.onTapHomef, this.onTapFeaturesf, this.onTapDownloadf});

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
        color: Color(0xFF341F71),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 0.0),
                        child: SvgPicture.asset('assets/Images/logo-teamo.svg',
                            width: 100, height: 100),
                      ),
                      SizedBox(height: 30),
                      Text(
                        'Team Money (Teamo) aplikasi',
                        style: GoogleFonts.nunito(
                          fontSize: 16,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      Text(
                        'pencatatan keuangan tim atau',
                        style: GoogleFonts.nunito(
                          fontSize: 16,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      Text(
                        'kelompok yang mudah, transparan',
                        style: GoogleFonts.nunito(
                          fontSize: 16,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      Text(
                        'dan dapat diaudit bersama.',
                        style: GoogleFonts.nunito(
                          fontSize: 16,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 36),
                Container(
                  padding: EdgeInsets.only(left: 80),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Quick Links',
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          GestureDetector(
                            child: Text(
                              "Home",
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w900,
                                fontSize: 16,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                            onTap: () => onTapHomef!(),
                          ),
                          SizedBox(width: 10),
                          GestureDetector(
                            child: Text(
                              "Features",
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w900,
                                fontSize: 16,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                            onTap: () => onTapFeaturesf!(),
                          ),
                          SizedBox(width: 10),
                          GestureDetector(
                              child: Text(
                                "Teamo Web",
                                style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                              onTap: () async {
                                final Uri _url =
                                    Uri.parse("https://teamo.panemu.com/");
                                if (!await launchUrl(_url))
                                  throw 'Could not launch $_url';
                              }),
                          SizedBox(width: 10),
                          GestureDetector(
                            child: Text(
                              "Download",
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w900,
                                fontSize: 16,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                            onTap: () => onTapDownloadf!(),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Text(
                        'Social Media',
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 0.0,
                            ),
                            child: InkWell(
                                child: ClipRRect(
                                  child: SvgPicture.asset(
                                      'assets/Images/facebook.svg',
                                      width: 36,
                                      height: 36),
                                ),
                                onTap: () async {
                                  final Uri _url = Uri.parse(
                                      "https://www.facebook.com/teammoneyapp");
                                  if (!await launchUrl(_url))
                                    throw 'Could not launch $_url';
                                }),
                          ),
                          SizedBox(width: 25),
                          Padding(
                            padding: const EdgeInsets.only(right: 0.0),
                            child: InkWell(
                                child: ClipRRect(
                                  child: SvgPicture.asset(
                                      'assets/Images/telegram.svg',
                                      width: 36,
                                      height: 36),
                                ),
                                onTap: () async {
                                  final Uri _url =
                                      Uri.parse("https://t.me/teamo_support");
                                  if (!await launchUrl(_url))
                                    throw 'Could not launch $_url';
                                }),
                          ),
                          SizedBox(width: 25),
                          Padding(
                            padding: const EdgeInsets.only(right: 0.0),
                            child: InkWell(
                                child: ClipRRect(
                                  child: SvgPicture.asset(
                                      'assets/Images/instagram.svg',
                                      width: 36,
                                      height: 36),
                                ),
                                onTap: () async {
                                  final Uri _url = Uri.parse(
                                      "https://www.instagram.com/teammoney.id/");
                                  if (!await launchUrl(_url))
                                    throw 'Could not launch $_url';
                                }),
                          ),
                          SizedBox(width: 25),
                          Padding(
                            padding: const EdgeInsets.only(right: 0.0),
                            child: InkWell(
                                child: ClipRRect(
                                  child: SvgPicture.asset(
                                      'assets/Images/whatsapp.svg',
                                      width: 36,
                                      height: 36),
                                ),
                                onTap: () async {
                                  final Uri _url = Uri.parse(
                                      "https://api.whatsapp.com/send?phone=6285228095780");
                                  if (!await launchUrl(_url))
                                    throw 'Could not launch $_url';
                                }),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Click icon below to get app!',
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0, left: 50.0),
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
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0, left: 50.0),
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
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Copyright © 2022 Team Money by PT. Panemu Solusi Industri',
                style: GoogleFonts.nunito(
                  fontSize: 16,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          ],
        ),
      ),
      isWeb: Container(
        color: Color(0xFF341F71),
        height: 380,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 0.0),
                        child: SvgPicture.asset('assets/Images/logo-teamo.svg',
                            width: 100, height: 100),
                      ),
                      SizedBox(height: 30),
                      Text(
                        'Team Money (Teamo) aplikasi',
                        style: GoogleFonts.nunito(
                          fontSize: 16,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      Text(
                        'pencatatan keuangan tim atau',
                        style: GoogleFonts.nunito(
                          fontSize: 16,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      Text(
                        'kelompok yang mudah, transparan',
                        style: GoogleFonts.nunito(
                          fontSize: 16,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      Text(
                        'dan dapat diaudit bersama.',
                        style: GoogleFonts.nunito(
                          fontSize: 16,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 100),
                Container(
                  // padding: EdgeInsets.all(50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Quick Links',
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          GestureDetector(
                            child: Text(
                              "Home",
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w900,
                                fontSize: 16,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                            onTap: () => onTapHomef!(),
                          ),
                          SizedBox(width: 10),
                          GestureDetector(
                            child: Text(
                              "Features",
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w900,
                                fontSize: 16,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                            onTap: () => onTapFeaturesf!(),
                          ),
                          SizedBox(width: 10),
                          GestureDetector(
                              child: Text(
                                "Teamo Web",
                                style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                              onTap: () async {
                                final Uri _url =
                                    Uri.parse("https://teamo.panemu.com/");
                                if (!await launchUrl(_url))
                                  throw 'Could not launch $_url';
                              }),
                          SizedBox(width: 10),
                          GestureDetector(
                            child: Text(
                              "Download",
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w900,
                                fontSize: 16,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                            onTap: () => onTapDownloadf!(),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Text(
                        'Social Media',
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 0.0,
                            ),
                            child: InkWell(
                                child: ClipRRect(
                                  child: SvgPicture.asset(
                                      'assets/Images/facebook.svg',
                                      width: 36,
                                      height: 36),
                                ),
                                onTap: () async {
                                  final Uri _url = Uri.parse(
                                      "https://www.facebook.com/teammoneyapp");
                                  if (!await launchUrl(_url))
                                    throw 'Could not launch $_url';
                                }),
                          ),
                          SizedBox(width: 25),
                          Padding(
                            padding: const EdgeInsets.only(right: 0.0),
                            child: InkWell(
                                child: ClipRRect(
                                  child: SvgPicture.asset(
                                      'assets/Images/telegram.svg',
                                      width: 36,
                                      height: 36),
                                ),
                                onTap: () async {
                                  final Uri _url =
                                      Uri.parse("https://t.me/teamo_support");
                                  if (!await launchUrl(_url))
                                    throw 'Could not launch $_url';
                                }),
                          ),
                          SizedBox(width: 25),
                          Padding(
                            padding: const EdgeInsets.only(right: 0.0),
                            child: InkWell(
                                child: ClipRRect(
                                  child: SvgPicture.asset(
                                      'assets/Images/instagram.svg',
                                      width: 36,
                                      height: 36),
                                ),
                                onTap: () async {
                                  final Uri _url = Uri.parse(
                                      "https://www.instagram.com/teammoney.id/");
                                  if (!await launchUrl(_url))
                                    throw 'Could not launch $_url';
                                }),
                          ),
                          SizedBox(width: 25),
                          Padding(
                            padding: const EdgeInsets.only(right: 0.0),
                            child: InkWell(
                                child: ClipRRect(
                                  child: SvgPicture.asset(
                                      'assets/Images/whatsapp.svg',
                                      width: 36,
                                      height: 36),
                                ),
                                onTap: () async {
                                  final Uri _url = Uri.parse(
                                      "https://api.whatsapp.com/send?phone=6285228095780");
                                  if (!await launchUrl(_url))
                                    throw 'Could not launch $_url';
                                }),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Click icon below to get app!',
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0, left: 50.0),
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
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0, left: 50.0),
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
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Copyright © 2022 Team Money by PT. Panemu Solusi Industri',
                style: GoogleFonts.nunito(
                  fontSize: 16,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
