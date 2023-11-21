import 'package:flutter/material.dart';
import 'package:flutter_application_2/home_page_controller.dart';
import 'package:flutter_application_2/second_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
    
      theme: ThemeData(
    
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
 
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
 final HomePageController controller = Get.put(HomePageController());


  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
      
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      
        title: const Text("WELCOME"),
      ),
      body: Center(
       
        child: Column(
        
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          
            Obx(() => Text(
              '${controller.count.value}',
              style: Theme.of(context).textTheme.headlineMedium,
            )),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 18)
              ),
              onPressed: (){
                Get.defaultDialog(
                  title: 'Get Alert',
                  middleText: 'Simple Alert',
                  textConfirm: 'Okay',
                  confirmTextColor: Colors.white,
                  textCancel: 'Cancel'
                );
              },
             child: const Text("Show AlertDialog.") ),
             ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 18)
              ),
              onPressed: (){
                Get.snackbar('Sample snackBar', 'the work is successfull',
                snackPosition: SnackPosition.BOTTOM);
              },
             child: const Text("Show SnackBar.") ),

             ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 18)
              ),
              onPressed: (){
                Get.to(() => const SecondPage());
              },
             child: const Text("Go To Second Page") ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
