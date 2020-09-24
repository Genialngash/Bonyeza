import 'dart:io';

//class AdManager {
//
//  static String get appId {
//    if (Platform.isAndroid) {
//      return "ca-app-pub-9175351468020278~7180307904";
//    } else if (Platform.isIOS) {
//      return "<YOUR_IOS_ADMOB_APP_ID>";
//    } else {
//      throw new UnsupportedError("Unsupported platform");
//    }
//  }
//
//  static String get bannerAdUnitId {
//    if (Platform.isAndroid) {
//      return "ca-app-pub-9175351468020278/8961676325";
//    } else if (Platform.isIOS) {
//      return "<YOUR_IOS_BANNER_AD_UNIT_ID>";
//    } else {
//      throw new UnsupportedError("Unsupported platform");
//    }
//  }
//
//  static String get interstitialAdUnitId {
//    if (Platform.isAndroid) {
//      return "ca-app-pub-3260310525153560/7963563074";
//    } else if (Platform.isIOS) {
//      return "<YOUR_IOS_INTERSTITIAL_AD_UNIT_ID>";
//    } else {
//      throw new UnsupportedError("Unsupported platform");
//    }
//  }
//
//}


class AdManager {

  static String get appId {
    if (Platform.isAndroid) {
      return "ca-app-pub-9175351468020278~7180307904";
    } else if (Platform.isIOS) {
      return "ca-app-pub-3940256099942544~2594085930";
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }

  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-9175351468020278/8961676325";
    } else if (Platform.isIOS) {
      return "a-app-pub-9175351468020278/8961676325";
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }

  static String get interstitialAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-9175351468020278/2455578347";
    } else if (Platform.isIOS) {
      return "ca-app-pub-9175351468020278/24555783470";
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }

}


//  // banner Ad
//  BannerAd _bannerAd;
//  void _loadBannerAd() {
//    _bannerAd
//      ..load()
//      ..show(anchorType: AnchorType.bottom);
//  }
//  @override
//  void initState() {
//    _bannerAd = BannerAd(
//    adUnitId: AdManager.bannerAdUnitId,
//    size: AdSize.banner,
//    );
//    _loadBannerAd();
//  }
//  @override
//  void dispose() {
//    _bannerAd?.dispose();
//  }