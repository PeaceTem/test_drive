import 'package:flutter/material.dart';
// import 'package:test_drive/views/buttom_navigation_view.dart';
// import 'package:test_drive/views/sliverappbar_view.dart';
// import 'package:test_drive/views/drag_and_drop_view.dart';

class CurvedSurface extends StatelessWidget{
  const CurvedSurface({super.key});

  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        const SizedBox(height: 160),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadiusDirectional.only(
                topStart: Radius.elliptical(40, 30), topEnd: Radius.elliptical(40, 30)
              )
            ),
            child: const Center(child: Text("This is the design")),
          )
        )
        ,
        
      ],
    );
  }
}


class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    // add Scaffold later
    return const Scaffold(
      // body: BottomNavigationBarExample(),
      // body: Spotify(),
      body: Material(color: Colors.amber, child: CurvedSurface(),)

    ); 
  }
}

void main() {
  runApp(
    const MaterialApp(
      title: "Jagged Nav",
      debugShowCheckedModeBanner: false,
      // home: ExampleDragAndDrop()
      home: HomePage()
    ));
}
/// Flutter code sample for [SliverAppBar].




// void main() {
//   runApp(
//     const MaterialApp(
//       home: ExampleDragAndDrop(),
//       debugShowCheckedModeBanner: false,
//     ),
//   );
// }














// ADD MATERIAL TOUCH TO APP


// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     const title = 'InkWell Demo';

//     return const MaterialApp(
//       title: title,
//       home: MyHomePage(title: title),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   final String title;

//   const MyHomePage({super.key, required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: const Center(
//         child: MyButton(),
//       ),
//     );
//   }
// }

// class MyButton extends StatelessWidget {
//   const MyButton({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // The InkWell wraps the custom flat button widget.
//     return InkWell(
//       // When the user taps the button, show a snackbar.
//       onTap: () {
//         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//           content: Text('Tap'),
//         ));
//       },
//       child: const Padding(
//         padding: EdgeInsets.all(12),
//         child: Text('Flat Button'),
//       ),
//     );
//   }
// }







// IMPLEMENT SWIPE TO DISMISS

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// // MyApp is a StatefulWidget. This allows updating the state of the
// // widget when an item is removed.
// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   MyAppState createState() {
//     return MyAppState();
//   }
// }

// class MyAppState extends State<MyApp> {
//   final items = List<String>.generate(20, (i) => 'Item ${i + 1}');

//   @override
//   Widget build(BuildContext context) {
//     const title = 'Dismissing Items';

//     return MaterialApp(
//       title: title,
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text(title),
//         ),
//         body: ListView.builder(
//           itemCount: items.length,
//           itemBuilder: (context, index) {
//             final item = items[index];
//             return Dismissible(
//               // Each Dismissible must contain a Key. Keys allow Flutter to
//               // uniquely identify widgets.
//               key: Key(item),
//               // Provide a function that tells the app
//               // what to do after an item has been swiped away.
//               onDismissed: (direction) {
//                 // Remove the item from the data source.
//                 setState(() {
//                   items.removeAt(index);
//                 });

//                 // Then show a snackbar.
//                 ScaffoldMessenger.of(context)
//                     .showSnackBar(SnackBar(content: Text('$item dismissed')));
//               },
//               // Show a red background as the item is swiped away.
//               background: Container(color: Colors.red),
//               child: ListTile(
//                 title: Text(item),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }







// CREATE AND STYLE A TEXTFIELD


// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     const appTitle = 'Form Styling Demo';
//     return MaterialApp(
//       title: appTitle,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text(appTitle),
//         ),
//         body: const MyCustomForm(),
//       ),
//     );
//   }
// }

// class MyCustomForm extends StatelessWidget {
//   const MyCustomForm({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         const Padding(
//           padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
//           child: TextField(
//             decoration: InputDecoration(
//               border: OutlineInputBorder(),
//               hintText: 'Enter a search term',
//             ),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
//           child: TextFormField(
//             decoration: const InputDecoration(
//               border: UnderlineInputBorder(),
//               labelText: 'Enter your username',
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }




// RETRIEVE THE VALUE OF A TEXTFIELD



// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'Retrieve Text Input',
//       home: MyCustomForm(),
//     );
//   }
// }

// // Define a custom Form widget.
// class MyCustomForm extends StatefulWidget {
//   const MyCustomForm({super.key});

//   @override
//   State<MyCustomForm> createState() => _MyCustomFormState();
// }

// // Define a corresponding State class.
// // This class holds the data related to the Form.
// class _MyCustomFormState extends State<MyCustomForm> {
//   // Create a text controller and use it to retrieve the current value
//   // of the TextField.
//   final myController = TextEditingController();

//   @override
//   void dispose() {
//     // Clean up the controller when the widget is disposed.
//     myController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Retrieve Text Input'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: TextField(
//           controller: myController,
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         // When the user presses the button, show an alert dialog containing
//         // the text that the user has entered into the text field.
//         onPressed: () {
//           showDialog(
//             context: context,
//             builder: (context) {
//               return AlertDialog(
//                 // Retrieve the text the that user has entered by using the
//                 // TextEditingController.
//                 content: Text(myController.text),
//               );
//             },
//           );
//         },
//         tooltip: 'Show me the value!',
//         child: const Icon(Icons.text_fields),
//       ),
//     );
//   }
// }





// MANAGE FOCUS IN TEXTFIELD


// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'Text Field Focus',
//       home: MyCustomForm(),
//     );
//   }
// }

// // Define a custom Form widget.
// class MyCustomForm extends StatefulWidget {
//   const MyCustomForm({super.key});

//   @override
//   State<MyCustomForm> createState() => _MyCustomFormState();
// }

// // Define a corresponding State class.
// // This class holds data related to the form.
// class _MyCustomFormState extends State<MyCustomForm> {
//   // Define the focus node. To manage the lifecycle, create the FocusNode in
//   // the initState method, and clean it up in the dispose method.
//   late FocusNode myFocusNode;

//   @override
//   void initState() {
//     super.initState();

//     myFocusNode = FocusNode();
//   }

//   @override
//   void dispose() {
//     // Clean up the focus node when the Form is disposed.
//     myFocusNode.dispose();

//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Text Field Focus'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             // The first text field is focused on as soon as the app starts.
//             const TextField(
//               autofocus: true,
//             ),
//             // The second text field is focused on when a user taps the
//             // FloatingActionButton.
//             TextField(
//               focusNode: myFocusNode,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         // When the button is pressed,
//         // give focus to the text field using myFocusNode.
//         onPressed: () => myFocusNode.requestFocus(),
//         tooltip: 'Focus Second Text Field',
//         child: const Icon(Icons.edit),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }








// HANDLE CHANGES TO A TEXTFIELD

// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'Retrieve Text Input',
//       home: MyCustomForm(),
//     );
//   }
// }

// // Define a custom Form widget.
// class MyCustomForm extends StatefulWidget {
//   const MyCustomForm({super.key});

//   @override
//   State<MyCustomForm> createState() => _MyCustomFormState();
// }

// // Define a corresponding State class.
// // This class holds data related to the Form.
// class _MyCustomFormState extends State<MyCustomForm> {
//   // Create a text controller and use it to retrieve the current value
//   // of the TextField.
//   final myController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();

//     // Start listening to changes.
//     myController.addListener(_printLatestValue);
//   }

//   @override
//   void dispose() {
//     // Clean up the controller when the widget is removed from the widget tree.
//     // This also removes the _printLatestValue listener.
//     myController.dispose();
//     super.dispose();
//   }

//   void _printLatestValue() {
//     final text = myController.text;
//     print('Second text field: $text (${text.characters.length})');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Retrieve Text Input'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             TextField(
//               onChanged: (text) {
//                 print('First text field: $text (${text.characters.length})');
//               },
//             ),
//             TextField(
//               controller: myController,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }






// FORM VALIDATION


// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     const appTitle = 'Form Validation Demo';

//     return MaterialApp(
//       title: appTitle,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text(appTitle),
//         ),
//         body: const MyCustomForm(),
//       ),
//     );
//   }
// }

// // Create a Form widget.
// class MyCustomForm extends StatefulWidget {
//   const MyCustomForm({super.key});

//   @override
//   MyCustomFormState createState() {
//     return MyCustomFormState();
//   }
// }

// // Create a corresponding State class.
// // This class holds data related to the form.
// class MyCustomFormState extends State<MyCustomForm> {
//   // Create a global key that uniquely identifies the Form widget
//   // and allows validation of the form.
//   //
//   // Note: This is a GlobalKey<FormState>,
//   // not a GlobalKey<MyCustomFormState>.
//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     // Build a Form widget using the _formKey created above.
//     return Form(
//       key: _formKey,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           TextFormField(
//             // The validator receives the text that the user has entered.
//             validator: (value) {
//               if (value == null || value.isEmpty) {
//                 return 'Please enter some text';
//               }
//               return null;
//             },
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 16),
//             child: ElevatedButton(
//               onPressed: () {
//                 // Validate returns true if the form is valid, or false otherwise.
//                 if (_formKey.currentState!.validate()) {
//                   // If the form is valid, display a snackbar. In the real world,
//                   // you'd often call a server or save the information in a database.
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     const SnackBar(content: Text('Processing Data')),
//                   );
//                 }
//               },
//               child: const Text('Submit'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }