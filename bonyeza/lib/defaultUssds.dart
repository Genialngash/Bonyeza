import 'datase_helper.dart';

//Safaricom
List<SafaricomUssd> defaultSafaricom = [
  SafaricomUssd(id: null, dialNumber: '*144#',dialName: 'Check balance'),
  SafaricomUssd(id: null,dialNumber:  '*544#',dialName: 'Data menu' ),
  SafaricomUssd(id: null,dialNumber:  '*188#',dialName:'SMS bundles'  ),
  SafaricomUssd(id: null,dialNumber:  '*555#',dialName: 'Blaze Menu' ),
  SafaricomUssd(id: null,dialNumber: '*131#',dialName: 'Okoa jahazi'),
  SafaricomUssd(id: null,dialNumber: '*460#',dialName: 'Storo bonus'),
  SafaricomUssd(id: null,dialNumber: '*334#',dialName: 'Mpesa Services'),
  SafaricomUssd(id: null,dialNumber: '*144*4#',dialName: 'Okoa balance'),
  SafaricomUssd(id: null,dialNumber:  '*126#',dialName: 'Bonga Points' ),
  SafaricomUssd(id: null,dialNumber: '*234#',dialName: 'MPESA services'),
  SafaricomUssd(id: null,dialNumber: '*234*0#',dialName: 'Fuliza Mpesa'),
  SafaricomUssd(id: null,dialNumber: '*456#',dialName: 'Safaricom services'),
  SafaricomUssd(id: null,dialNumber:  '*100*1*4#',dialName: 'Sambaza' ),
  SafaricomUssd(id: null,dialNumber: '*444#',dialName: 'Tunukiwa'),
  SafaricomUssd(id: null,dialNumber: '*639#',dialName: 'Madaraka Express tickets'),
  SafaricomUssd(id: null,dialNumber: '*100#',dialName: 'Main menu(prepaid)'),
  SafaricomUssd(id: null,dialNumber: '*200#',dialName: 'Main menu(postpaid)'),
  SafaricomUssd(id: null,dialNumber: '*719#',dialName: 'COVID-19 Kenya updates'),
  SafaricomUssd(id: null,dialNumber: '*811#' ,dialName:  'Skiza Tunes'),
  SafaricomUssd(id: null,dialNumber: '*400#' ,dialName: 'Safaricom Home Fiber' ),
  SafaricomUssd(id: null,dialNumber: '*487*1#',dialName: 'Viusasa'),
  SafaricomUssd(id: null,dialNumber: '*235*0#',dialName: 'Nairobi County Revenue collection'),
  SafaricomUssd(id: null,dialNumber: '*888#',dialName: 'Nairobi WAter and Sewerage bill query'),
  SafaricomUssd(id: null,dialNumber:  '*130* phone number#',dialName: 'Please Call Me' ),
  SafaricomUssd(id: null,dialNumber:  '*141*PIN#',dialName: 'Airtime top up'),
  SafaricomUssd(id: null,dialNumber:  '*544*PIN#',dialName: 'Topping up data' ),
  SafaricomUssd(id: null,dialNumber:  '*445#',dialName:  'Internet Settings'),
  SafaricomUssd(id: null,dialNumber:  '*232#',dialName: 'SIM registration' ),
  SafaricomUssd(id: null,dialNumber: '*100*5*5#' ,dialName: 'Stop Safaricom Promotion' ),
  SafaricomUssd(id: null,dialNumber: '*411#' ,dialName: 'Classifieds and Alerts' ),
  SafaricomUssd(id: null,dialNumber:  '*485#',dialName:  'Safaricom Business'),
  SafaricomUssd(id: null,dialNumber: '*222#' ,dialName: 'Activate voicemail' ),
  SafaricomUssd(id: null,dialNumber: '##002#' ,dialName: 'Deactivate voicemail' ),
  SafaricomUssd(id: null,dialNumber: '*62*0722199199#' ,dialName: 'Activate missed call alert service' ),
  SafaricomUssd(id: null,dialNumber:  '##62#',dialName: 'Deactivate missed call alert service' ),
  SafaricomUssd(id: null,dialNumber: '*33*0000#' ,dialName: 'Activate call barring (outgoing)' ),
  SafaricomUssd(id: null,dialNumber: '#33*0000#' ,dialName: ' Deactivate call barring (outgoing)' ),
  SafaricomUssd(id: null,dialNumber:  '*35*0000#',dialName: 'Activate call barring (incoming)' ),
  SafaricomUssd(id: null,dialNumber:  '#35*0000#',dialName: 'Deactivate call barring (incoming)' ),
  SafaricomUssd(id: null,dialNumber:  '*332*0000#',dialName: 'Bar all incoming calls (except form home country)' ),
  SafaricomUssd(id: null,dialNumber:  '#332*0000#',dialName: 'Deactivate all incoming calls (except home calls' ),
  SafaricomUssd(id: null,dialNumber: '*331*0000#' ,dialName: 'Bar all international calls' ),
  SafaricomUssd(id: null,dialNumber:  '#331*0000#',dialName: 'Deactivate barring all international calls' ),
  SafaricomUssd(id: null,dialNumber: '*35*0000*16#' ,dialName: 'Bar all incoming SMS' ),
  SafaricomUssd(id: null,dialNumber: '#35*0000*16#' ,dialName:  'Deactivate barring all incoming SMS'),
  SafaricomUssd(id: null,dialNumber: '#330*0000#' ,dialName:'Deactivate all types of barring'  ),

];

//Airtel ussds

List<AirtelUssd> defaultAirtel = [
  AirtelUssd(id: null, dialNumber: '*133#',dialName: 'Check balance'),
  AirtelUssd(id: null,dialNumber: '*100#',dialName: 'Main menu(prepaid)/Flash back'),
  AirtelUssd(id: null,dialNumber: '*111#',dialName: 'Main menu(postpaid)'),
  AirtelUssd(id: null,dialNumber: '*544*3#',dialName: 'Data balance'),
  AirtelUssd(id: null,dialNumber: '*310#',dialName: 'kopa kredo'),
  AirtelUssd(id: null,dialNumber: '*130*PIN#',dialName: 'Airtime top up'),
  AirtelUssd(id: null,dialNumber: '*544*PIN#',dialName: 'Data top up'),
  AirtelUssd(id: null,dialNumber: '*544#',dialName:'Buy Data/Tubonge plan/Kopa internet' ),
  AirtelUssd(id: null,dialNumber: '*767*3#',dialName: 'Buy Data'),
  AirtelUssd(id: null,dialNumber: '*767#',dialName: 'SMS bundles/Tosha Bundles'),
  AirtelUssd(id: null,dialNumber:'*326#' ,dialName: 'Zawadi Points'),
  AirtelUssd(id: null,dialNumber: '*131*8#',dialName:'Redeemed Airtime Balance' ),
  AirtelUssd(id: null,dialNumber: '*411#',dialName:'Alerts' ),
  AirtelUssd(id: null,dialNumber: '*719#',dialName: 'COVID-19 Kenya updates'),

];

List<TelkomUssd> defaultTelkom = [
  TelkomUssd(id: null,dialNumber:'*123#' ,dialName:'Main Menu' ),
  TelkomUssd(id: null,dialNumber: '*131#',dialName: 'Airtime balance'),
  TelkomUssd(id: null,dialNumber: '*544#',dialName: 'Buy data bundles/Data balance'),
  TelkomUssd(id: null,dialNumber:'*131#' ,dialName: 'Data balance'),
  TelkomUssd(id: null,dialNumber: '*160#',dialName: 'T-kash services'),
  TelkomUssd(id: null,dialNumber: '*128#',dialName: 'Telkom NiSort'),
  TelkomUssd(id: null,dialNumber: '*10#',dialName: 'Niaje Bundles/Hola Bundles'),
  TelkomUssd(id: null,dialNumber: '*11#',dialName: 'Unsubscribe from Holla bundles'),
  TelkomUssd(id: null,dialNumber: '*222#',dialName:'Home Plan bundles for 4G Routers' ),
  TelkomUssd(id: null,dialNumber: '*140#',dialName: 'Pasha'),
  TelkomUssd(id: null,dialNumber: '*130*PIN#',dialName:'Airtime top up' ),
  TelkomUssd(id: null,dialNumber: '*188#',dialName: 'SMS bundles'),
  TelkomUssd(id: null,dialNumber: '*126#',dialName:'Ziada Points' ),
  TelkomUssd(id: null,dialNumber:'*131#' ,dialName:'Ziada Points balance' ),
  TelkomUssd(id: null,dialNumber:'*133#' ,dialName: 'Pewa'),
  TelkomUssd(id: null,dialNumber: '*130#',dialName:'Mobile number' ),
  TelkomUssd(id: null,dialNumber: '*232#',dialName: 'Check SIM registration'),
  TelkomUssd(id: null,dialNumber: '*150#',dialName: 'Telkom Entertainment'),
  TelkomUssd(id: null,dialNumber: '*811#',dialName: 'Beat Yangu'),
  TelkomUssd(id: null,dialNumber: '*719#',dialName: 'COVID-19 Kenya updates'),
  TelkomUssd(id: null,dialNumber: '*123#',dialName: 'International bundles'),
];

List<BankUssd> defaultBank = [
  BankUssd(id: null,dialNumber: '*522#',dialName:'Kenya Commercial Bank ( KCB) Code' ),
  BankUssd(id: null,dialNumber: '*522*2#',dialName: 'KCB pepea mastercard services'),
  BankUssd(id: null,dialNumber: '*247#',dialName: 'Equity Bank of Kenya Code'),
  BankUssd(id: null,dialNumber: '*667#',dialName: 'Co-operative Bank of Kenya code'),
  BankUssd(id: null,dialNumber: '*276*1#',dialName: 'Mentor sacco'),
  BankUssd(id: null,dialNumber: '*625#',dialName: 'National Bank of Kenya Code'),
  BankUssd(id: null,dialNumber: '*325#',dialName: 'Family Bank of Kenya code'),
  BankUssd(id: null,dialNumber: '*224#',dialName: 'Absa '),
  BankUssd(id: null,dialNumber: '*298#',dialName: 'Amica'),
  BankUssd(id: null,dialNumber: '*399# ',dialName: 'I & M bank code'),
  BankUssd(id: null,dialNumber: '*346#',dialName: 'Unaitas M-Banking'),
  BankUssd(id: null,dialNumber: '*722#',dialName: 'Standard Chartered Bank'),
  BankUssd(id: null,dialNumber: '*385#',dialName: 'Diamond Trust Bank'),
  BankUssd(id: null,dialNumber: '*654#',dialName: 'Commercial Bank of Africa'),
  BankUssd(id: null,dialNumber: '*342#',dialName: 'First Community Bank'),
  BankUssd(id: null,dialNumber: '*399#',dialName:'Gulf African Bank code' ),
  BankUssd(id: null,dialNumber: '*498#',dialName: 'Post Bank of Kenya code'),
  BankUssd(id: null,dialNumber:'*722#' ,dialName: 'Standard Chartered Bank code'),
  BankUssd(id: null,dialNumber: '*488#',dialName:'NIC Bank code' ),
  BankUssd(id: null,dialNumber:'*987#' ,dialName: 'Bank of Africa code'),
  BankUssd(id: null,dialNumber: '*262#',dialName: 'Consolidated Bank of Kenya code'),
  BankUssd(id: null,dialNumber: ' *344#',dialName:'Jamii Bora Bank code' ),

];

List<AndroidUssd> defaultAndroid = [
  AndroidUssd(id: null,dialNumber: '*#44336#',dialName:'Software Version Info ' ),
  AndroidUssd(id: null,dialNumber:'*#12580*369#' ,dialName: 'SW & Hardware Info '),
  AndroidUssd(id: null,dialNumber: '*#06#',dialName:'IMEI Number' ),
  AndroidUssd(id: null,dialNumber: '*#1234#',dialName: 'Firmware Version'),
  AndroidUssd(id: null,dialNumber: '*#2222# ',dialName: 'H/W Version'),
  AndroidUssd(id: null,dialNumber: '*#*#4636*#*#',dialName: 'Phone Battery Information / Network MODE change'),
  AndroidUssd(id: null,dialNumber: '*#07#',dialName:'Test History' ),
  AndroidUssd(id: null,dialNumber:'*#0842#' ,dialName: 'Vibration Motor Test Mode'),
  AndroidUssd(id: null,dialNumber: '*#232337#',dialName:'Bluetooth Address ' ),
  AndroidUssd(id: null,dialNumber: '*#7353# ',dialName:'Quick Test Menu ' ),
  AndroidUssd(id: null,dialNumber: '*#*#2664*#*#',dialName: 'Touch screen test'),
  AndroidUssd(id: null,dialNumber: '*#*#0842*#*#',dialName: 'Vibration test'),
  AndroidUssd(id: null,dialNumber: '*#7465625#',dialName: 'View Phone Lock Status'),
  AndroidUssd(id: null,dialNumber: '*#232338#',dialName: 'WLAN MAC Address'),
  AndroidUssd(id: null,dialNumber: '*#528#',dialName:'WLAN Engineering Mode' ),
  AndroidUssd(id: null,dialNumber: '*#*#1111*#*# ',dialName: 'Service Mode'),
  AndroidUssd(id: null,dialNumber: '*#272886#',dialName:'Auto Answer Selection' ),
  AndroidUssd(id: null,dialNumber: '*#3282*727336*#',dialName: 'Data Usage Status '),
  AndroidUssd(id: null,dialNumber: '*#*#8255*#*#',dialName:'Show GTalk ' ),
  AndroidUssd(id: null,dialNumber: '*#21#',dialName: 'Displays call forwarding status'),
  AndroidUssd(id: null,dialNumber: '*#*#4636*#*#',dialName: 'Display information about Phone, Battery and Usage statistics'),
  AndroidUssd(id: null,dialNumber: '*#7780*#',dialName: 'Factory Reset [CAUTION!!!]'),
  AndroidUssd(id: null,dialNumber: '*2767*3855#',dialName: 'Full Factory Reset [CAUTION!!!]'),
  AndroidUssd(id: null,dialNumber: '*#*#7780*#*#',dialName: 'Factory data reset [CAUTION!!!]'),
  AndroidUssd(id: null,dialNumber: '*#745#',dialName:'Dump Menu [CAUTION!!!]' ),

];





























