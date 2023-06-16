import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Shimmer.fromColors(
            child: Text(
              "Shimmer testing",
              style: TextStyle(fontSize: 30),
            ),
            baseColor: Colors.lightBlue,
            highlightColor: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Column(children: [
                Container(
                  height: height,
                  width: width,
                  // color: Colors.black,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (context, index) => Container(
                      margin: EdgeInsets.symmetric(vertical: height * 0.016),
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 0.0014,
                          vertical: height * 0.0016),
                      // height: height * 0.088,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(32, 79, 200, 0.07),
                              offset: Offset(0, 6),
                              blurRadius: 15,
                            ),
                          ]),
                      child: ListTile(
                        leading: Shimmer.fromColors(
                          baseColor: Colors.grey.shade300,
                          highlightColor: Colors.grey.shade100,
                          enabled: true,
                          child: Container(
                            // height: height * 0.054,

                            padding: EdgeInsets.only(
                              left: width * 0.008,
                              right: width * 0.022,
                              top: height * 0.018,
                              bottom: height * 0.018,
                            ),
                            decoration: BoxDecoration(
                                color: Color(0xffCDEFFF),
                                borderRadius: BorderRadius.circular(10)),
                            child: Container(
                              width: 40,
                              height: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        title: Shimmer.fromColors(
                          child: Container(
                            width: 30,
                            height: 10,
                            color: Colors.white,
                            margin: EdgeInsets.only(right: width * 0.4),
                          ),
                          baseColor: Colors.grey.shade300,
                          highlightColor: Colors.grey.shade100,
                          enabled: true,
                        ),
                        subtitle: Shimmer.fromColors(
                          baseColor: Colors.grey.shade400,
                          highlightColor: Colors.grey.shade300,
                          enabled: true,
                          child: Container(
                            width: double.infinity,
                            height: 10.0,
                            color: Colors.white,
                            margin: EdgeInsets.only(right: width * 0.2),
                          ),
                        ),
                        trailing: Shimmer.fromColors(
                          baseColor: Colors.grey.shade400,
                          highlightColor: Colors.grey.shade300,
                          enabled: true,
                          child: Container(
                            width: 80,
                            height: 16,
                            padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(28)),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ])
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
