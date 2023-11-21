import 'package:flutter/material.dart';
import 'package:flutter_application_2/ListPage.dart';
import 'package:get/get.dart';

class SecondPage extends StatefulWidget {

  const SecondPage({Key? key}) :super(key: key);

  @override
  State<SecondPage> createState()  =>  _SecondPageState();

}

class _SecondPageState extends State<SecondPage>{
  @override
  Widget build(BuildContext context) {
    
return Scaffold(

    appBar: AppBar(
      title: const Text("Second Page"),
    ),

    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment:CrossAxisAlignment.center,
        children: [

          const Padding(padding: EdgeInsets.all(10),
          child: Text("Welcome to the second the page of navigation tutorial."),
          
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
          
          ),

          Padding(padding: EdgeInsets.all(10),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20)
            ),
            onPressed: () {  
              Get.back();
            },
            child:const Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.arrow_back,
                    size: 30,
                  )),
                  Expanded(
                    flex: 3,
                    child: Text("Go back to home"))
              ],
            ) ,),),

          ElevatedButton(
            onPressed: (){
              Get.to(() => const ListPage());
            }, 
            child: const Text("->"))
        ]),
    ),
);

  }


}