import 'package:flutter/material.dart';
import 'package:todo_list/todo_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ChangeNotifierProvider(create:(context)=> TodoProvider());
    // return ChangeNotifierProvider(
    //   create:(context)=> TodoProvider() ,
    //   child: MaterialApp(
    //     title: 'Flutter Demo',
    //     theme: ThemeData(
    //       // This is the theme of your application.
    //       //
    //       // TRY THIS: Try running your application with "flutter run". You'll see
    //       // the application has a purple toolbar. Then, without quitting the app,
    //       // try changing the seedColor in the colorScheme below to Colors.green
    //       // and then invoke "hot reload" (save your changes or press the "hot
    //       // reload" button in a Flutter-supported IDE, or press "r" if you used
    //       // the command line to start the app).
    //       //
    //       // Notice that the counter didn't reset back to zero; the application
    //       // state is not lost during the reload. To reset the state, use hot
    //       // restart instead.
    //       //
    //       // This works for code too, not just values: Most code changes can be
    //       // tested with just a hot reload.
    //       colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //       useMaterial3: true,
    //     ),
    //     home: const MyHomePage(title: 'To-Do-List'),
    //   ),
    // );

    return ChangeNotifierProvider.value(
      value: TodoProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a purple toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'To-Do-List'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var task = TextEditingController();
  var replace = '';

  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<TodoProvider>(context,listen: true);
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),

      body: Consumer<TodoProvider>(builder: (context, provider, child) {
        return Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(children: [
            Text(
              'Enter Today Task',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white),
            ),
            Container(
              width: 300,
              child: TextField(
                controller: task,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.white, width: 2)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.red, width: 2)),
                  //dissabled border......
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(10.0),
                  //   borderSide: BorderSide(
                  //     color: Colors.red
                  //   )
                  // ),
                  hintText: "Enter Task",
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
                onTap: () {
                  replace = task.text;
                  provider.todo_list = replace;
                  print(provider.todo);
                  task.text = '';
                },
                child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 35,
                    ))),
            Expanded(
              child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, index) {
                    return Container(
                      color: Colors.red,
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  '${provider.todo[index]}',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                      backgroundColor: Colors.yellow,
                                      color: Colors.black),
                                ),
                              ),
                              InkWell(
                                  onTap: () {
                                    // print(provider.todo[index]);
                                    // provider.todo_list=  provider.todo.removeWhere((item) => item  == provider.todo[index]);
                                    provider.removeTaskAtIndex(index);
                                    // print(provider.todo);
                                    },
                                  child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.blue),
                                      child: Icon(
                                        Icons.delete,
                                        color: Colors.white,
                                        size: 35,
                                      )))
                            ],
                          )
                        ],
                      ),
                    );
                  },
                  itemCount: provider.todo.length,
                  separatorBuilder: (context, index) {
                    return Divider(
                      height: 2,
                      color: Colors.grey,
                    );
                  }),
            )
          ]),
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.black38, Colors.blue])),
        );
      }),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
