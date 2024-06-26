import 'package:flutter/material.dart';
import 'package:device_sim/device_sim.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => HomeState();
}

class HomeState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return DeviceSim(
        isEnabled: true,
        devices: const [iphone13ProMax],
        builder: (context) {
          return const MaterialApp(
            title: 'Expense Tracker app',
            home: MyHomePage(),
            debugShowCheckedModeBanner: false,
          );
        });
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
  
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    backgroundColor: Colors.black,
    body: Column(
      children: [
        SizedBox(
          child: Image.asset('assets/images/img1.jpg'),
        ),
        const SizedBox(
          child: Text("Manage your finance easily ",
                  style: TextStyle(fontSize: 20,color: Colors.white),
                  textAlign: TextAlign.center,),
          
        ),
        SizedBox()
      ],
    )
    );
  }
}
