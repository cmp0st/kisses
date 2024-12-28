import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart'; 
import 'package:qr_flutter/qr_flutter.dart'; 
import 'package:connectrpc/http2.dart';
import 'package:connectrpc/connect.dart';
import 'package:connectrpc/protobuf.dart';
import 'package:connectrpc/protocol/connect.dart' as protocol;
import './gen/kisses/v1/kisses.connect.client.dart';
import './gen/kisses/v1/kisses.pb.dart';

final transport = protocol.Transport(
  // TODO(cmp0st): wire this up into build system instead of hard coding?
  baseUrl: "https://kisses-200953226135.us-west1.run.app",
  codec: const JsonCodec(),
  httpClient: createHttpClient(),
);

void main() => runApp(const Kisses());

class Kisses extends StatelessWidget {
  const Kisses({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kisses',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(title: 'Kisses', transport: transport),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title, required this.transport});

  final String title;
  final Transport transport;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> friends = ["foo", "bar", "baz"];
  String? myId;
  bool isScanning = false;
  
  Future<void> _scanQR() async {
    setState(() {
      isScanning = true; 
    });

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: SizedBox(
            height: 300,
            child: MobileScanner(
              fit: BoxFit.cover,
              onDetect: (barcodeCapture) {
                if (barcodeCapture.raw != null) {
                  setState(() {
                    friends.add(barcodeCapture.raw!.toString());
                    isScanning = false; 
                  });
                  Navigator.of(context).pop();
                }
              },
            ),
          ),
        );
      },
    );
  }
  
  Future<void> _generateMyQR() async {
    // Generate a unique ID (you can replace this with a more robust method)
    myId ??= DateTime.now().millisecondsSinceEpoch.toString(); 

    // Display QR code dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SizedBox( 
            width: 200, // Set a fixed width for the QR code
            height: 200, // Set a fixed height for the QR code
            child: QrImageView(
              data: myId!,
              version: QrVersions.auto,
              size: 200,
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  Future<void> _pingFriend(String friendId) async {
    try {
      final response = await KissesServiceClient(widget.transport).ping(
        PingRequest(),
      );

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Kiss ping response ${response.msg}'),
        ),
      );
    } catch (e) {
      // Handle network error
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Network error occurred.'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: _scanQR,
                  child: Text('Scan QR Code'),
                ),
                ElevatedButton(
                  onPressed: _generateMyQR,
                  child: Text('Show My QR Code'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: friends.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(friends[index]),
                    trailing: IconButton(
                      icon: const Icon(Icons.favorite),
                      onPressed: () => _pingFriend(friends[index]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
