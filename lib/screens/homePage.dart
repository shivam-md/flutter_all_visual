import 'package:firebase_project/helper/notifification_handler.dart';
import 'package:flutter/material.dart';
import 'package:firebase_project/helper/bottom_sheet.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    var title = 'title';
    var body = 'body';
    return Container(
      child: Center(
        child: Column(

            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Home',style: TextStyle(fontSize: 50),),
              const SizedBox(height: 200,),
              const PushBottomSheet(),
              const SizedBox(height: 15,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: Size(width/1.2,height/15),
                    foregroundColor: Colors.deepPurple,
                    textStyle: const TextStyle(fontSize:20, fontWeight: FontWeight.w900),),
                onPressed: (){
                  showDialog(context: context, builder: (BuildContext context){
                    return const AlertDialog(
                      title: Text('Dialog Title'),
                      content: Text('This is dummy text'),
                    );
                  });

                },
                child: const Text('Show Dialog Box'),
              ),
              const SizedBox(height: 15,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  minimumSize: Size(width/1.2,height/15),
                  foregroundColor: Colors.deepPurple,
                  textStyle: const TextStyle(fontSize:20, fontWeight: FontWeight.w900),),
                onPressed: (){
                  NotificationHandler.showNotification(title: title, body: body);
                },
                child: const Text('Show Notification'),
              ),
              const SizedBox(height: 15,),
            ]
        ),
      ),
    );
  }
}