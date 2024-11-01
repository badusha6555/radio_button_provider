import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:radio_pro/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Radio Button"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
                  height: 50,
                ),
                const Text(
                  'Radio Button',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Consumer<RadioButtonProvider>(
                  builder: (context, value, child) => Column(
                    children: [
                      RadioListTile(
                          title: Text('others'),
                          value: 'others',
                          groupValue: value.radiovalue,
                          onChanged: (val) => value.selectbutton(val)),
                      RadioListTile(
                        title: Text('female'),
                        value: 'female',
                        groupValue: value.radiovalue,
                        onChanged: ((val) => value.selectbutton(val)),
                      ),
                      RadioListTile(
                        title: Text('male'),
                        value: 'male',
                        groupValue: value.radiovalue,
                        onChanged: ((val) => value.selectbutton(val)),
                      ),
                    ],
                  ),
                ),
          ],
        ),
      ),
    );
  }
}