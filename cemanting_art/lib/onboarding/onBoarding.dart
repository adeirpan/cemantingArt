import 'package:cemanting_art/homePage.dart';
import 'package:cemanting_art/page/login.dart';
import 'package:cemanting_art/theme.dart';
import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';
import 'package:cemanting_art/theme.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  late Material materialButton;
  late int index;
  final onboardingPagesList = [
    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(45, 126, 45, 94),
                child: Image.asset(
                  'assets/onBoarding1.png',
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Selamat Datang Di Cemanting Art',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Cemanting adalah aplikasi yang menyediakan berbagai kerajinan seni',
                  style: greyTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(45, 126, 45, 94),
                child: Image.asset(
                  'assets/onBoarding2.png',
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Belanja Dengan Mudah',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                      'Mulai belanja dengan mudah tidak perlu repot semua bisa dilakukan dari rumah',
                      style: greyTextStyle,
                      textAlign: TextAlign.center),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(45, 126, 45, 94),
                child: Image.asset(
                  'assets/onBoarding3.png',
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Ayo Mulai Belanja',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Bersama kami wajudkan barang impian kamu disini',
                    style: greyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ];
//==============================================================================

  @override
  void initState() {
    super.initState();
    materialButton = _skipButton();
    index = 0;
  }

  Material _skipButton({void Function(int)? setIndex}) {
    return Material(
      // borderRadius: defaultSkipButtonBorderRadius,
      // color: defaultSkipButtonColor,
      child: TextButton(
        // borderRadius: defaultSkipButtonBorderRadius,
        onPressed: () {
          if (setIndex != null) {
            index = 2;
            setIndex(2);
          }
        },
        child: Padding(
          padding: defaultSkipButtonPadding,
          child: Text(
            'Skip',
            style: blackTextStyle.copyWith(
              color: Color(0xff333333),
            ),
          ),
        ),
      ),
    );
  }

  Material get _signupButton {
    return Material(
      borderRadius: defaultProceedButtonBorderRadius,
      color: defaultProceedButtonColor,
      child: InkWell(
        borderRadius: defaultProceedButtonBorderRadius,
        onTap: () {},
        child: const Padding(
          padding: defaultProceedButtonPadding,
          child: Text(
            'Mulai',
            style: defaultProceedButtonTextStyle,
          ),
        ),
      ),
    );
  }

//==============================================================================
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Onboarding(
          pages: onboardingPagesList,
          onPageChange: (int pageIndex) {
            index = pageIndex;
          },
          startPageIndex: 0,
          footerBuilder: (context, dragDistance, pagesLength, setIndex) {
            return DecoratedBox(
              decoration: BoxDecoration(
                color: background,
              ),
              child: ColoredBox(
                color: Colors.white,
                child: Column(
                  children: [
                    //indicator bulat
                    CustomIndicator(
                      netDragPercent: dragDistance,
                      pagesLength: pagesLength,
                      indicator: Indicator(
                        activeIndicator: ActiveIndicator(
                            color: Color(0xffC4C4C4), borderWidth: 0.7),
                        closedIndicator: ClosedIndicator(
                            color: yelowColor, borderWidth: 0.7),
                        indicatorDesign: IndicatorDesign.polygon(
                          polygonDesign: PolygonDesign(
                            polygon: DesignType.polygon_circle,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      width: 180,
                      height: 48,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              // side: BorderSide(color: Colors.red),
                            ),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all(blackButtonColor),
                          elevation: MaterialStateProperty.all(0),
                        ),
                        onPressed: () {
                          if (setIndex != null && index < 2) {
                            index += 1;
                            setIndex(index);
                          } else {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Login();
                                },
                              ),
                            );
                          }
                        },
                        child: Text(
                          index < 2 ? 'SELANJUTNYA' : 'MULAI',
                          style: blackTextStyle.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    // index == pagesLength - 1
                    //     ? _signupButton
                    //     : _skipButton(setIndex: setIndex),
                    index < 2
                        ? TextButton(
                            // borderRadius: defaultSkipButtonBorderRadius,
                            onPressed: () {
                              if (setIndex != null) {
                                index = 2;
                                setIndex(2);
                              }
                            },
                            child: Padding(
                              padding: defaultSkipButtonPadding,
                              child: Text(
                                'Skip',
                                style: blackTextStyle.copyWith(
                                  color: Color(0xff333333),
                                ),
                              ),
                            ),
                          )
                        : SizedBox(
                            height: 48,
                          ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
