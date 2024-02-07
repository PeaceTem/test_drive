

// MANAGE FOCUS IN TEXTFIELD


import 'package:flutter/material.dart';

// Define a custom Form widget.
class FocusForm extends StatefulWidget {
  const FocusForm({super.key});

  @override
  State<FocusForm> createState() => _MyCustomFormState();
}

// Define a corresponding State class.
// This class holds data related to the form.
class _MyCustomFormState extends State<FocusForm> {
  // Define the focus node. To manage the lifecycle, create the FocusNode in
  // the initState method, and clean it up in the dispose method.
  late FocusNode myFocusNode;

  @override
  void initState() {
    super.initState();

    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    myFocusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Field Focus'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // The first text field is focused on as soon as the app starts.
            const TextField(
              autofocus: true,
            ),
            // The second text field is focused on when a user taps the
            // FloatingActionButton.
            TextField(
              focusNode: myFocusNode,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // When the button is pressed,
        // give focus to the text field using myFocusNode.
        onPressed: () => myFocusNode.requestFocus(),
        tooltip: 'Focus Second Text Field',
        child: const Icon(Icons.edit),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}



