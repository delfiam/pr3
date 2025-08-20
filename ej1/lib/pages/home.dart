import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _textColor = Colors.black;
  double _textSize = 24;
  bool _showText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: _showText,
              child: Text(
                'Hello',
                style: TextStyle(fontSize: _textSize, color: _textColor),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.color_lens, color: Colors.green),
                  onPressed: () {
                    setState(() {
                      _textColor = Colors.green;
                    });
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.color_lens, color: Colors.red),
                  onPressed: () {
                    setState(() {
                      _textColor = Colors.red;
                    });
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      _textSize++;
                    });
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      _textSize--;
                    });
                  },
                ),
                IconButton(
                  icon: Icon(_showText ? Icons.visibility_off : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      _showText = !_showText;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
