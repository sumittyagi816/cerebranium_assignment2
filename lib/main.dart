import 'package:flutter/material.dart';

void main() => runApp(MyApp()

);

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final appTitle = 'Cerebranium Assignment';
    return MaterialApp(
      title: appTitle,

      home: Scaffold(
        backgroundColor: Color(0xFFE0F7FA),
        appBar: AppBar(
          title: Text(
            'Cerebranium Assignment',
            style: TextStyle(color: Color(0xFFECFEE1)),
          ),
        ),
        body: MyCustomForm(),
      ),

    );
  }
}
// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}
// Create a corresponding State class. This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    var emailController;
    var NameController;
    var mobilenumberController;
    var IfsccodeController;
    var AccountNoController;
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

      Padding(
       padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
         child: TextFormField(

           validator: (value) {
             if (value == null || value.isEmpty) {
               return 'Please enter your Name';
             }
             return null;
           },


            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              icon: const Icon(Icons.person),
              hintText: 'Enter your name',
              labelText: 'FullName',

            ),
           controller:NameController,
          ),
       ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child:TextFormField(

            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your Email';
              }
              return null;
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),

              icon: const Icon(Icons.email),
              hintText: 'Enter your  Email',
              labelText: 'Email',
            ),
          ),
          ),
          Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child:TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your Phone Number';

              }
              return null;
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              icon: const Icon(Icons.phone),
              hintText: 'Enter a phone number',
              labelText: 'Phone Number',
            ),
          ),
         ),
           Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
             child: TextFormField(
               validator: (value) {
                 if (value == null || value.isEmpty) {
                   return 'Please enter your Account Number';
                 }
                 return null;
               },
               decoration: const InputDecoration(
                 border: OutlineInputBorder(),
              icon: const Icon(Icons.comment_bank),
              hintText: 'Enter your account number',
              labelText: 'Account Number',
            ),
           ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 14),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your IFSC CODE';
                }
                return null;
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),

                icon: const Icon(Icons.code),
                hintText: 'Enter your IFSC code',
                labelText: 'IFSC Code',
              ),
            ),
          ),
          new Container(
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),
              child: new ElevatedButton(onPressed: (){

                if (_formKey.currentState!.validate())
                Map <String,dynamic> data={"field1":NameController.text,"field2":emailController.text,
                "field2":AccountNoController.text,"field3":mobilenumberController.text,"field3":IfsccodeController.text};
              var firestore;
                     },
                child: const Text('Submit'),

              )),
        ],
      ),
    );
  }
}