import 'package:flutter/material.dart';
import 'package:flutter_application_2/OpenSeaController.dart';
import 'package:get/get.dart';

class ListPage extends StatefulWidget{
  const ListPage({Key? key}) : super (key: key);

  @override
  State<ListPage> createState() => _ListPageState();
 
}

class _ListPageState extends State<ListPage>{

  OpenSeaController openSeaController = Get.put(OpenSeaController());

  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Items"),
      ),
      body: Obx(() => openSeaController.isLoading.value ? 
      const Center(
        child:  CircularProgressIndicator(),
      ): ListView.builder(
        itemCount: openSeaController.openseaModel?.assets?.length ?? 0,
        itemBuilder : (context, index){

          return ListTile(
            title:  Text(openSeaController.openseaModel?.assets![index].name ?? 'no name'),
            subtitle:  Text(openSeaController.openseaModel?.assets![index].description ?? 'na'),
          );

        }),)
    );
  }


}