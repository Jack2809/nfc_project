import 'dart:developer';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:nfc_emulator/nfc_emulator.dart';
import 'package:nfc_manager/nfc_manager.dart';
import 'package:nfc_project/view/bottom_navigation.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp( MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyBottomNavigationPage(),
    );
  }

}

// class MyApp extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => MyAppState();
// }
//
// class MyAppState extends State<MyApp> {
//   ValueNotifier<dynamic> result = ValueNotifier(null);
//
//   String _actionStr = "";
//   bool _started = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('NfcManager Plugin Example')),
//         body: SafeArea(
//           child: FutureBuilder<bool>(
//             future: NfcManager.instance.isAvailable(),
//             builder: (context, ss) => ss.data != true
//                 ? Center(child: Text('NfcManager.isAvailable(): ${ss.data}'))
//                 : Flex(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               direction: Axis.vertical,
//               children: [
//                 Text("$_actionStr"),
//                 Flexible(
//                   flex: 2,
//                   child: Container(
//                     margin: EdgeInsets.all(4),
//                     constraints: BoxConstraints.expand(),
//                     decoration: BoxDecoration(border: Border.all()),
//                     child: SingleChildScrollView(
//                       child: ValueListenableBuilder<dynamic>(
//                         valueListenable: result,
//                         builder: (context, value, _) =>
//                             Text('${value ?? 'no NFC value'}'),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Flexible(
//                   flex: 3,
//                   child: GridView.count(
//                     padding: EdgeInsets.all(4),
//                     crossAxisCount: 2,
//                     childAspectRatio: 4,
//                     crossAxisSpacing: 4,
//                     mainAxisSpacing: 4,
//                     children: [
//                       ElevatedButton(
//                           child: Text('Tag Read'), onPressed: _tagRead),
//                       ElevatedButton(
//                           child: Text('Ndef Write'),
//                           onPressed: _ndefWrite),
//                       ElevatedButton(
//                           child: Text('Ndef Write Lock'),
//                           onPressed: _ndefWriteLock),
//                       ElevatedButton(
//                           child: Text('Emulate NFC Tag'),
//                           onPressed: startStopEmulator),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   void _tagRead() {
//     setState(() {
//       _actionStr = 'Read';
//     });
//     NfcManager.instance.startSession(onDiscovered: (NfcTag tag) async {
//       result.value = tag.data;
//       NfcManager.instance.stopSession();
//     });
//
//
//   }
//
//   void _ndefWrite() {
//     setState(() {
//       _actionStr = 'Write';
//     });
//     NfcManager.instance.startSession(onDiscovered: (NfcTag tag) async {
//       String tempTag = tag.toString();
//       log(tempTag);
//       Ndef? ndef = Ndef.from(tag);
//       log(ndef.toString());
//       // if (ndef == null) {
//       //   String temp = ndef.toString();
//       //   result.value = 'Tag is not ndef writable '+temp +" "+ tempTag;
//       //   NfcManager.instance.stopSession(errorMessage: result.value);
//       //   return;
//       // }
//
//       NdefMessage message = NdefMessage([
//         NdefRecord.createText('Hello World!'),
//         NdefRecord.createUri(Uri.parse('https://flutter.dev')),
//         NdefRecord.createMime(
//             'text/plain', Uint8List.fromList('Hello'.codeUnits)),
//         NdefRecord.createExternal(
//             'com.example', 'mytype', Uint8List.fromList('mydata'.codeUnits)),
//       ]);
//       log('running');
//       try {
//         await ndef!.write(message);
//         result.value = "Success to write NFC Tag";
//         NfcManager.instance.stopSession();
//       } catch (e) {
//         result.value = e;
//         NfcManager.instance.stopSession(errorMessage: result.value.toString());
//         return;
//       }
//     });
//   }
//
//   void _ndefWriteLock() {
//     NfcManager.instance.startSession(onDiscovered: (NfcTag tag) async {
//       var ndef = Ndef.from(tag);
//       if (ndef == null) {
//         result.value = 'Tag is not ndef';
//         NfcManager.instance.stopSession(errorMessage: result.value.toString());
//         return;
//       }
//
//       try {
//         await ndef.writeLock();
//         result.value = 'Success to "Ndef Write Lock"';
//         NfcManager.instance.stopSession();
//       } catch (e) {
//         result.value = e;
//         NfcManager.instance.stopSession(errorMessage: result.value.toString());
//         return;
//       }
//     });
//   }
//
//   void startStopEmulator() async {
//     if (_started) {
//       await NfcEmulator.stopNfcEmulator();
//     } else {
//       await NfcEmulator.startNfcEmulator(
//           "666B65630001", "cd22c716", "79e64d05ed6475d3acf405d6a9cd506b");
//     }
//     setState(() {
//       _started = !_started;
//     });
//   }
// }

