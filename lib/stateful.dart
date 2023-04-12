import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool toggle = true;
  
  void toggleBtn() {
    setState(() {
      toggle = !toggle;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("init");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("dispose");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
            titleLarge: TextStyle(
          color: Colors.red,
        )),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              toggle ? MyLargeTitle() : Text("Hide Title!"),
              IconButton(onPressed: toggleBtn, icon: Icon(CupertinoIcons.eye_solid))
            ],
          ),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatelessWidget {
  const MyLargeTitle({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Text(
      'My Large Title!',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).textTheme.titleLarge!.color,
      ),
    );
  }
}
