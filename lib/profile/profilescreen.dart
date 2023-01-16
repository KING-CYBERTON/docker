
import 'package:coolapp2/home/home_controller.dart';
import "package:flutter/material.dart";
import 'package:get/get.dart';



class ProfleScreen extends StatelessWidget {
  const ProfleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //when we want to access the controller getx allows us to find the controller in other classes
    HomeController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        title:const Text("Profile",selectionColor: Color.fromARGB(0, 13, 235, 13),),
         leading: IconButton(onPressed: (){
          //the following line is used to get back to the previous page
          
          Get.back();
         }, icon:const Icon(Icons.exit_to_app)) ,
      ),
      body:Center(child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Container(
              margin:const EdgeInsets.all(9.0),
              height: 90,
              width: double.infinity,
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                color: Color.fromARGB(255, 82, 157, 187),
                

              ),
              child:Center(child: Text(controller.X.toString(),
              style:TextStyle(fontSize: 40,color: Color.fromARGB(255, 238, 48, 1))
              ),),
            ),
            const Text('You Just Navigated',style:TextStyle( fontSize:24,)),

            ElevatedButton(onPressed: (){

              //the following line of code is used to get off to any named route
                controller.decreaseX();
              }, child:const Text("decrease")),
             ElevatedButton(onPressed: (){

              //the following line of code is used to get off to any named route
                Get.offNamed("/home");
              }, child:const Text("home"))
            
          ],
        ),
      )
      );
    
  }
}