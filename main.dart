// ignore_for_file: prefer_const_constructors, avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late BannerAd staticAd;
  bool staticAdloaded=false;
  late BannerAd inlineAd;
  bool inlineAdloaded=false;
  static const AdRequest request=AdRequest(); 
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  loadStaticBannerAd();
  loadInlineBannerAd();
  }
  void loadStaticBannerAd(){
    staticAd=BannerAd(
      size: AdSize.banner, 
      adUnitId: BannerAd.testAdUnitId, 
      request: request,
      listener: BannerAdListener(
        onAdLoaded: (ad){
          setState(() {
            staticAdloaded=true;
          });
        },
        onAdFailedToLoad: ((ad, error) {
          ad.dispose();
          print("failed ${error.message}");
        })
      ),
    );
    staticAd.load();
  }
  void loadInlineBannerAd(){
    inlineAd=BannerAd(
      size: AdSize.banner, 
      adUnitId: BannerAd.testAdUnitId, 
      request: request,
      listener: BannerAdListener(
        onAdLoaded: (ad){
          setState(() {
            inlineAdloaded=true;
          });
        },
        onAdFailedToLoad: ((ad, error) {
          ad.dispose();
        })
      ),
    );
    inlineAd.load();
  }
  void dispose(){
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
      
        title: Text(widget.title),
      ),
      body: Center(
       
        child: Container(
          color: Colors.red,
          width: 300,
          height: 200,
          child: AdWidget(ad: staticAd,),
        )
      ),
     
    );
  }
 
}
