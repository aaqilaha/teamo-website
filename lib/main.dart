import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teamo_web/Navbar.dart';
import 'package:teamo_web/footer.dart';
import 'package:teamo_web/advantages.dart';
import 'package:teamo_web/featuresOne.dart';
import 'package:teamo_web/typetrans.dart';

import 'freeinstall.dart';
import 'home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var baseTheme = ThemeData(brightness: Brightness.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Teamo',
      theme: ThemeData(
        brightness: Brightness.light,
        
        textTheme: GoogleFonts.nunitoTextTheme(baseTheme.textTheme),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late ScrollController _scrollViewController;

  @override
  void initState() {
    super.initState();
    _scrollViewController = ScrollController(initialScrollOffset: 0.0);
  }

  @override
  Widget build(BuildContext context) {
    print('Lebar ${MediaQuery.of(context).size.width}');
    print('Tinggi ${MediaQuery.of(context).size.height}');

    double cWidth = MediaQuery.of(context).size.width * 0.5;
    return Scaffold(
        body: Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: SingleChildScrollView(
            controller: _scrollViewController,
            child: Column(
              children: [
                // body
                Home(cWidth: cWidth),
                FreeInstall(
                  onTapInstall: () {
                    _scrollViewController.animateTo(
                        _scrollViewController.position.minScrollExtent,
                        duration: Duration(milliseconds: 1000),
                        curve: Curves.decelerate);

                    _scrollViewController
                        .jumpTo(_scrollViewController.position.maxScrollExtent);
                  },
                ),
                AdvantagesWidget(),
                FeaturesOneWidget(),
                TypeTransWidget(),
                Footer(
                  onTapHomef: () {
                    _scrollViewController.animateTo(
                        _scrollViewController.position.maxScrollExtent,
                        duration: Duration(milliseconds: 1000),
                        curve: Curves.decelerate);

                    _scrollViewController
                        .jumpTo(_scrollViewController.position.minScrollExtent);
                  },
                  onTapFeaturesf: () {
                    _scrollViewController.animateTo(
                        _scrollViewController.position.maxScrollExtent,
                        duration: Duration(milliseconds: 1000),
                        curve: Curves.decelerate);

                    _scrollViewController.jumpTo(
                        _scrollViewController.position.maxScrollExtent * 0.45);
                  },
                  onTapDownloadf: () {
                    _scrollViewController.animateTo(
                        _scrollViewController.position.maxScrollExtent,
                        duration: Duration(milliseconds: 1000),
                        curve: Curves.decelerate);

                    _scrollViewController
                        .jumpTo(_scrollViewController.position.maxScrollExtent);
                  },
                ),
              ],
            ),
          ),
        ),
        Navbar(
          onTapHome: () {
            _scrollViewController.animateTo(
                _scrollViewController.position.minScrollExtent,
                duration: Duration(milliseconds: 1000),
                curve: Curves.decelerate);

            _scrollViewController
                .jumpTo(_scrollViewController.position.minScrollExtent);
          },
          onTapFeatures: () {
            _scrollViewController.animateTo(
                _scrollViewController.position.minScrollExtent,
                duration: Duration(milliseconds: 1000),
                curve: Curves.decelerate);

            _scrollViewController
                .jumpTo(_scrollViewController.position.maxScrollExtent * 0.45);
          },
          onTapDownload: () {
            _scrollViewController.animateTo(
                _scrollViewController.position.minScrollExtent,
                duration: Duration(milliseconds: 1000),
                curve: Curves.decelerate);

            _scrollViewController
                .jumpTo(_scrollViewController.position.maxScrollExtent);
          },
        ),
      ],
    ));
  }
}
