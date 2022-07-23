# Flutter_Mobile_Ads

Depend on it
Run this command:

This will add a line like this to your package's pubspec.yaml (and run an implicit flutter pub get):

dependencies:
  google_mobile_ads: ^1.3.0
Alternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.

Import it
Now in your Dart code, you can use:

import 'package:google_mobile_ads/google_mobile_ads.dart';

-------------------------------------------------------------------------------
Add the AdMob app ID (identified in the AdMob UI) to the app's android/app/src/main/AndroidManifest.xml file by adding a <meta-data> tag with the name com.google.android.gms.ads.APPLICATION_ID. You can find your app ID in the AdMob UI. For android:value insert your own AdMob app ID in quotes as shown:
  
manifest>
    <application>
        <!-- Sample AdMob app ID: ca-app-pub-3940256099942544~3347511713 -->
        <meta-data
            android:name="com.google.android.gms.ads.APPLICATION_ID"
            android:value="ca-app-pub-xxxxxxxxxxxxxxxx~yyyyyyyyyy"/>
    <application>
manifest>
  


