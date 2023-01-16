
// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages

import 'package:coolapp2/home/home_controller.dart';
import "package:flutter/material.dart";
import 'package:get/get.dart';



class Home extends StatelessWidget {
  const Home({super.key});

  

  @override
  Widget build(BuildContext context) {

    // dependancy injection is done through the following line of code
    HomeController controller = Get.put(HomeController());


    return Scaffold(
      appBar: AppBar(
        title: const Text('home screen')
        ),
        body: Container(
          
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            
          ), 
          
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              
              //we are building this container to acces the controller we have injected
              //we access dependancy using the GetBuilder method

              GetBuilder<HomeController>(builder: (HomeController){
                return Container(
                
                margin: EdgeInsets.all(8.0),
                width: double.maxFinite,
                height: 90,
                decoration: BoxDecoration(
                  
                  //image: ,
                  borderRadius: BorderRadius.circular(200),
                  color: Color.fromARGB(117, 5, 123, 233)
                ),
                child:Center(child:

                //To dispaly the value of the function we call on the instance we have created
                //toSring is used since ti was an integer
                Text(HomeController.X.toString(),style: TextStyle(fontSize: 40
                
                ,
                color: Color.fromARGB(228, 228, 20, 13),
                fontStyle:FontStyle.italic ),),
                ),


              );
              },),
              //we have created this button to detect gesture or action to change state

                ElevatedButton(onPressed: (){
                  controller.increaseX();
              }, child:Text("increment")
              ),

              //the following lines of code are used to set up navigation through named routes
              ElevatedButton(onPressed: (){
                Get.toNamed('/profile');
              }, child:Text("go to profile")
              )
              
               
            ],
          ),
        ),
      );
    
  }
}