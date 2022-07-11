import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class FreeInstall extends StatelessWidget {
  final Function? onTapInstall;

  const FreeInstall({super.key, this.onTapInstall});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Row(
        children: [
          Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 60.0),
                  child: SvgPicture.asset('assets/Images/mob-see-feature.svg',
                      width: 400, height: 500),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Sering nombok karena lupa nyatet',
                      style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w900,
                        fontSize: 35,
                        color: Color(0xFF341F71),
                      ),
                    ),
                    Text(
                      'pengeluaran tim atau kelompokmu?',
                      style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w900,
                        fontSize: 35,
                        color: Color(0xFF341F71),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Dengan Team Money kamu bisa mencatat pengeluaran atau pendapatan sekalipun dengan mudah.',
                      style: TextStyle(
                        fontSize: 17,
                        color: Color(0xFF341F71),
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 0.0,
                      ),
                      child: InkWell(
                          child: ClipRRect(
                            child: SvgPicture.asset(
                                'assets/Images/install-button.svg',
                                width: 36,
                                height: 36),
                          ),
                          onTap: () => onTapInstall!(),
                          ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
