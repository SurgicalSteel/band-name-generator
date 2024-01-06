import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Band Name Generator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Band Name Generator'),
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
  List<DropDownElement> list = [
    DropDownElement(2, "Two Words"),
    DropDownElement(3, "Three Words"),
  ];
  int numWord = 2;
  String generatedName = "";

  void _setNumWord(DropDownElement? dde) {
    setState(() {
      if (dde != null) {
        numWord = dde.num;
      }
    });
  }

  void _processGenerate() {
    String result = generate(numWord);
    setState(() {
      generatedName = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Center(
                child: Text(
              'Choose Number of Words',
            )),
            Center(
                child: DropdownMenu<DropDownElement>(
              initialSelection: list.first,
              onSelected: (value) {
                _setNumWord(value);
              },
              dropdownMenuEntries: list.map<DropdownMenuEntry<DropDownElement>>((DropDownElement dde) {
                return DropdownMenuEntry(value: dde, label: dde.numDisplay);
              }).toList(),
            )),
            Center(
                child: ElevatedButton(
                    onPressed: () {
                      _processGenerate();
                    },
                    child: const Text("Generate!"))),
            Center(
                child: Text(
              generatedName,
              style: GoogleFonts.metalMania(fontSize: 24, fontWeight: FontWeight.w500),
            )),
          ],
        ),
      ),
    );
  }
}

class DropDownElement {
  late int num;
  late String numDisplay;
  DropDownElement(int n, String nDisplay) {
    num = n;
    numDisplay = nDisplay;
  }
}
