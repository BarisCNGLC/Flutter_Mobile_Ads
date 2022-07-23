# Flutter_Mobile_Ads

 <br/>Depend on it
 <br/>Run this command:

 <br/>This will add a line like this to your package's pubspec.yaml (and run an implicit flutter pub get):

dependencies:
  <br/>google_mobile_ads: ^1.3.0
  <br/>Alternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.

 <br/>Import it
 <br/>Now in your Dart code, you can use:

 <br/>import 'package:google_mobile_ads/google_mobile_ads.dart';

-------------------------------------------------------------------------------
 <br/>Add the AdMob app ID (identified in the AdMob UI) to the app's android/app/src/main/AndroidManifest.xml file by adding a <meta-data> tag with the name com.google.android.gms.ads.APPLICATION_ID. You can find your app ID in the AdMob UI. For android:value insert your own AdMob app ID in quotes as shown:
  

        <!-- Sample AdMob app ID: ca-app-pub-3940256099942544~3347511713 -->
        <meta-data
            android:name="com.google.android.gms.ads.APPLICATION_ID"
            android:value="ca-app-pub-xxxxxxxxxxxxxxxx~yyyyyyyyyy"/>

-----------------------------------------------------------------------------------
 # Initialize the Mobile Ads SDK
 <br/>Before loading ads, have your app initialize the Mobile Ads SDK by calling MobileAds.instance.initialize(), which initializes the SDK and returns a Future that  <br/>finishes once initialization is complete (or after a 30-second timeout). This needs to be done only once, ideally right before running the app.
      
 <br/>void main() {
   <br/>WidgetsFlutterBinding.ensureInitialized();
   <br/>MobileAds.instance.initialize();
   <br/>runApp(MyApp());
 <br/>}
--------------------------------------------------------------------------------------


