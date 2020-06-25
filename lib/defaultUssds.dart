import 'datase_helper.dart';
//Safaricom
List<SafaricomUssd> defaultSafaricom = [
  SafaricomUssd(id: null, dialNumber: '*144#',dialName: 'Check balance'),
  SafaricomUssd(id: null,dialNumber: '*100#',dialName: 'Main menu(prepaid)'),
  SafaricomUssd(id: null,dialNumber: '*200#',dialName: 'Main menu(postpaid)'),
  SafaricomUssd(id: null,dialNumber: '*456#',dialName: 'Safaricom services'),
  SafaricomUssd(id: null,dialNumber: '*234#',dialName: 'MPESA services'),

];

//Airtel ussds

List<AirtelUssd> defaultAirtel = [
  AirtelUssd(id: null, dialNumber: '*133#',dialName: 'Check balance'),
  AirtelUssd(id: null,dialNumber: '*100#',dialName: 'Main menu(prepaid)'),
  AirtelUssd(id: null,dialNumber: '*111#',dialName: 'Main menu(postpaid)'),
  AirtelUssd(id: null,dialNumber: '*544*3#',dialName: 'Data balance'),
  AirtelUssd(id: null,dialNumber: '*310#',dialName: 'kopa kredo'),

];