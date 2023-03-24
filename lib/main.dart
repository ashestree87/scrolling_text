import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marquee/marquee.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _useRtlText = false;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return MaterialApp(
      title: 'Marquee',
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        body: ListView(
          padding: const EdgeInsets.only(top: 50),
          children: [
            _buildMarquee(),
            _buildMarqueeTwo(),
            _buildMarqueeThree(),
            _buildMarqueeFour(),
          ].map(_wrapWithStuff).toList(),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () => setState(() => _useRtlText = !_useRtlText),
          label: !_useRtlText
              ? const Text('החלף לאנגלית')
              : const Text('Switch to English'),
          backgroundColor: Color.fromARGB(255, 150, 0, 0),
        ),
      ),
    );
  }

  Widget _buildMarquee() {
    return Marquee(
      key: Key("$_useRtlText"),
      text: !_useRtlText ? 'Topolo Technology' : 'عرض بلغات متعددة',
      style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 255, 255, 255),
          fontSize: 110),
      velocity: 125.0,
      startPadding: 50,
      blankSpace: 50,
      textDirection: _useRtlText ? TextDirection.rtl : TextDirection.ltr,
    );
  }

  Widget _buildMarqueeTwo() {
    return Marquee(
      key: Key("$_useRtlText"),
      text: !_useRtlText ? 'Topolo Technology' : 'عرض بلغات متعددة',
      style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 255, 255, 255),
          fontSize: 110),
      velocity: 125.0,
      startPadding: 150,
      blankSpace: 50,
      textDirection: _useRtlText ? TextDirection.rtl : TextDirection.ltr,
    );
  }

  Widget _buildMarqueeThree() {
    return Marquee(
      key: Key("$_useRtlText"),
      text: !_useRtlText ? 'Topolo Technology' : 'عرض بلغات متعددة',
      style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 255, 255, 255),
          fontSize: 110),
      velocity: 125.0,
      startPadding: 50,
      blankSpace: 50,
      textDirection: _useRtlText ? TextDirection.rtl : TextDirection.ltr,
    );
  }

  Widget _buildMarqueeFour() {
    return Marquee(
      key: Key("$_useRtlText"),
      text: !_useRtlText ? 'Topolo Technology' : 'عرض بلغات متعددة',
      style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 255, 255, 255),
          fontSize: 110),
      velocity: 125.0,
      startPadding: 150,
      blankSpace: 50,
      textDirection: _useRtlText ? TextDirection.rtl : TextDirection.ltr,
    );
  }

  Widget _wrapWithStuff(Widget child) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(
          height: 150, color: Color.fromARGB(255, 0, 0, 0), child: child),
    );
  }
}
