import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatelessWidget{
  String otp='';

  SnackBar snackBar=const SnackBar(content: Text('Please enter valid otp'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Enter OTP"),
      ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(


            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(



                // Column is also a layout widget. It takes a list of children and
                // arranges them vertically. By default, it sizes itself to fit its
                // children horizontally, and tries to be as tall as its parent.
                //
                // Invoke "debug painting" (press "p" in the console, choose the
                // "Toggle Debug Paint" action from the Flutter Inspector in Android
                // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
                // to see the wireframe for each widget.
                //
                // Column has various properties to control how it sizes itself and
                // how it positions its children. Here we use mainAxisAlignment to
                // center the children vertically; the main axis here is the vertical
                // axis because Columns are vertical (the cross axis would be
                // horizontal).
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: <Widget>[
                  PinCodeTextField(
                      appContext: context,
                      length: 6,
                      keyboardType: TextInputType.number,
                      pinTheme: PinTheme.defaults(
                        shape:PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(8)
                      ),
                      onChanged: (value){
                        otp=value;
                        if(otp.length != 6){
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                        print(value);
                      }),
                  TextButton(
                      onPressed: (){
                        print("Verify OTP Called on Pressed");
                      },
                      child: const Text("Verify OTP")
                  )
                ],
              ),
            ),
          ),
        ),
    );
  }

}