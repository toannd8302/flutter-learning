import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  List<String> items = ["Hello World4", "Hello World5", "Hello World6"];
  List<String> customer = ["Join", "Henrry", "Peter"];
  int position = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Center(
          child:
              //ListView tĩnh
              // ListView(
              //   children: [
              //     Text("Hello World"),
              //     Text("Hello World2"),
              //     Text("Hello World3"),
              //   ],
              // ),
              //ListView động
              // ListView.builder(
              //     itemCount: items.length, //số lượng item
              //     //tạo item
              //     itemBuilder: (context, index) {
              //       return Text(items[index]);
              //     }),

              //Todo: khi không khai báo phần tử itemCount sẽ lặp vô hạn các items => infinity ListView
              //       ListView.builder(
              //         scrollDirection: Axis.horizontal, //cho phép cuộn ngang thường là cuộn icon
              //           //tạo item
              //           itemBuilder: (context, index) {
              //     return Card(
              //       child: Padding(
              //         padding: EdgeInsets.all(16),
              //         child: Text(
              //           index.toString(),
              //           style: TextStyle(fontSize: 22.0),
              //         ),
              //       ),
              //     );
              //   }),
              // ),
              // ListView.separated(
              //     itemBuilder: (context, index) {
              //       return Card(
              //         child: Padding(
              //           padding: EdgeInsets.all(16),
              //           child: Text(
              //             index.toString(),
              //             style: TextStyle(fontSize: 22.0),
              //           ),
              //         ),
              //       );
              //     },
              //     separatorBuilder: (context, index) {
              //       print(index);
              //       if (index % 2 == 0) {
              //         return Container(
              //           color: Colors.red,
              //           child: Padding(
              //             padding: EdgeInsets.all(16),
              //             child: Text(
              //               "Hello World",
              //               style:
              //                   TextStyle(fontSize: 22.0, color: Colors.white),
              //             ),
              //           ),
              //         );
              //       } else {
              //         return Container(
              //           color: Colors.blue,
              //           child: Padding(
              //             padding: EdgeInsets.all(16),
              //             child: Text(
              //               "Hello World",
              //               style:
              //                   TextStyle(fontSize: 22.0, color: Colors.white),
              //             ),
              //           ),
              //         );
              //       }
              //     },
              //     itemCount: 10)),

              // ListView.builder(
              //     itemBuilder: (context, index) {
              //       return Card(
              //         child: Padding(
              //           padding: EdgeInsets.all(16),
              //           child: ListTile(
              //             title: Text(customer[index]), //title
              //             subtitle: const Text("Hello World"), //sub title
              //             leading: const Icon(Icons.person), //icon
              //             trailing: const Icon(Icons.phone), //icon\
              //             onTap: () {
              //               print("Hello World");
              //             },
              //           ),
              //         ),
              //       );
              //     },
              //     itemCount: customer.length)
              TextField(
                  decoration: InputDecoration(
                      hintText: "Enter your name",
                      labelText: "Name",
                      labelStyle: TextStyle(color: Colors.red),
                      hintStyle: TextStyle(color: Colors.red),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(10.0)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(10.0)))),
        ));
  }
}
