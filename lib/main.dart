import 'package:flutter/material.dart';
import 'package:project_flutter/Screen/page_dua.dart';
import 'package:project_flutter/Screen/page_empat.dart';
import 'package:project_flutter/Screen/page_satu.dart';
import 'package:project_flutter/Screen/page_tiga.dart';

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
      ),
      home: const PageOne(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//ketik st
class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //appBar : properti dari sebuah widget
        //AppBar : widget

        title: Text('Selamat Datang',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Selamat Datang di Flutter App Nazira Hidayatullah"),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MaterialButton(onPressed: (){
            //ini pindah page ke page 1
            Navigator.push(context, MaterialPageRoute(builder: (context)
            => PageSatu()
            ));
            //Task : Buat page 2 dan page 3
            //kemudian bisa dipindah
          },
            elevation: 18.0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Colors.green,
            child: Text('Page 1',
              style: TextStyle(fontSize: 14, color: Colors.white ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MaterialButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)
            => PageDua()
            ));
          },
            elevation: 18.0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

            //ini untuk pindah page
            //color: color.green,
            color: Colors.green,//0x
            clipBehavior: Clip.antiAlias,
            child: Text('Page 2',
              style: TextStyle(fontSize: 14, color: Colors.white ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MaterialButton(onPressed: (){//ini pindah page ke page 1
            Navigator.push(context, MaterialPageRoute(builder: (context)
            => PageTiga()
            ));},
            elevation: 18.0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            //ini untuk pindah page
            color: Colors.green,
            child: Text('Page 3',
              style: TextStyle(fontSize: 14, color: Colors.white ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MaterialButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)
            => PageEmpat()
            ));
          },
            elevation: 18.0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

            //ini untuk pindah page
            //color: color.green,
            color: Colors.green,//0x
            clipBehavior: Clip.antiAlias,
            child: Text('Page 4',
              style: TextStyle(fontSize: 14, color: Colors.white ),
            ),
          ),
        ),
      ],
    ),
          //child :  cuma bisa nampung 1 widget
          //children : bisa nampung beberapa widget
         ),
       );
  }
}
