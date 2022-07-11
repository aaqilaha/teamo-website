import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Navbar extends StatelessWidget {
  final Function? onTapHome;
  final Function? onTapFeatures;
  final Function? onTapDownload;

  const Navbar(
      {super.key, this.onTapHome, this.onTapFeatures, this.onTapDownload});

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

    return 
    responsive(isMobile: null, 
    isTablet:  
    Align(
      alignment: Alignment.topCenter,
      child: Container(
        color: Color(0xFF341F71),
        height: 70,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 60.0),
              child: SvgPicture.asset('assets/Images/logo-teamo.svg',
                  width: 25, height: 25),
            ),
            SizedBox(width: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                  onTap: () => onTapHome!(),
                ),
                SizedBox(width: 5),
                GestureDetector(
                  child: Text(
                    "Features",
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w900,
                      fontSize: 16,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  onTap: () => onTapFeatures!(),
                ),
                SizedBox(width: 5),
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
                      final Uri _url = Uri.parse("https://teamo.panemu.com/");
                      if (!await launchUrl(_url))
                        throw 'Could not launch $_url';
                    }),
                SizedBox(width: 5),
                GestureDetector(
                  child: Text(
                    "Download",
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w900,
                      fontSize: 16,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  onTap: () => onTapDownload!(),
                ),
              ],
            ),
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.only(left: 80.0),
            //       child: InkWell(
            //           child: ClipRRect(
            //             borderRadius: BorderRadius.circular(20.0),
            //             child: SvgPicture.asset('assets/Images/apple.svg',
            //                 width: 20, height: 20),
            //           ),
            //           onTap: () async {
            //             final Uri _url = Uri.parse(
            //                 "https://apps.apple.com/us/app/team-money/id1434153701");
            //             if (!await launchUrl(_url))
            //               throw 'Could not launch $_url';
            //           }),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.only(right: 10.0, left: 16.0),
            //       child: InkWell(
            //           child: ClipRRect(
            //             borderRadius: BorderRadius.circular(10.0),
            //             child: SvgPicture.asset(
            //                 'assets/Images/google-play-store.svg',
            //                 width: 12,
            //                 height: 12),
            //           ),
            //           onTap: () async {
            //             final Uri _url = Uri.parse(
            //                 "https://play.google.com/store/apps/details?id=com.panemu.teammoney");
            //             if (!await launchUrl(_url))
            //               throw 'Could not launch $_url';
            //           }),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    ), 
    isWeb: Align(
      alignment: Alignment.topCenter,
      child: Container(
        color: Color(0xFF341F71),
        height: 70,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 60.0),
              child: SvgPicture.asset('assets/Images/logo-teamo.svg',
                  width: 45, height: 45),
            ),
            SizedBox(width: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                  onTap: () => onTapHome!(),
                ),
                SizedBox(width: 40),
                GestureDetector(
                  child: Text(
                    "Features",
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w900,
                      fontSize: 16,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  onTap: () => onTapFeatures!(),
                ),
                SizedBox(width: 40),
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
                      final Uri _url = Uri.parse("https://teamo.panemu.com/");
                      if (!await launchUrl(_url))
                        throw 'Could not launch $_url';
                    }),
                SizedBox(width: 40),
                GestureDetector(
                  child: Text(
                    "Download",
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w900,
                      fontSize: 16,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  onTap: () => onTapDownload!(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 840.0),
                  child: InkWell(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: SvgPicture.asset('assets/Images/apple.svg',
                            width: 42, height: 42),
                      ),
                      onTap: () async {
                        final Uri _url = Uri.parse(
                            "https://apps.apple.com/us/app/team-money/id1434153701");
                        if (!await launchUrl(_url))
                          throw 'Could not launch $_url';
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0, left: 16.0),
                  child: InkWell(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: SvgPicture.asset(
                            'assets/Images/google-play-store.svg',
                            width: 32,
                            height: 32),
                      ),
                      onTap: () async {
                        final Uri _url = Uri.parse(
                            "https://play.google.com/store/apps/details?id=com.panemu.teammoney");
                        if (!await launchUrl(_url))
                          throw 'Could not launch $_url';
                      }),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
    );  
  }
}
