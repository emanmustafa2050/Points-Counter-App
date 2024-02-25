import 'package:flutter/material.dart';

void main() 
{
  runApp(PointsCounterApp());
}

class PointsCounterApp extends StatefulWidget {
  @override
  State<PointsCounterApp> createState() => _PointsCounterAppState();
}

class _PointsCounterAppState extends State<PointsCounterApp> {
  int teamApoints=0;

  int teamBpoints=0;

  //const PointsCounterApp({super.key});
  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        
        
        appBar: AppBar(
          title:const Text("Points Counter"),
          backgroundColor: Colors.orange
        ),


        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: 
              [
                Expanded(
                  child: Column(
                    // MediaQuery.sizeOf(context).width*0.016
                    children: 
                    [
                      const Text('Team A', style: TextStyle(fontSize: 32),),
                      Text('$teamApoints',style: TextStyle(fontSize: MediaQuery.sizeOf(context).width*0.30),),
                  
                      ElevatedButton( 
                        style: ElevatedButton.styleFrom(primary:Colors.orange ,minimumSize: Size(150, 50),),
                        onPressed: (){
                          setState(() {
                            teamApoints++;   
                          });
                          
                        }, 
                        child: const Text('add 1 point',style: TextStyle(fontSize: 20,color: Colors.black),)
                      ),    
                      const SizedBox(height: 16,),
                  
                  
                      ElevatedButton( 
                        style: ElevatedButton.styleFrom(primary:Colors.orange ,minimumSize: const Size(150, 50),),
                        onPressed: (){
                          setState(() {
                            teamApoints=teamApoints+2;
                          });
                        }, 
                        child: const Text('add 2 point',style: TextStyle(fontSize: 20,color: Colors.black),)
                      ),
                      const SizedBox(height: 16,),
                  
                  
                      ElevatedButton( 
                        style: ElevatedButton.styleFrom(primary:Colors.orange ,minimumSize: Size(150, 50),),
                        onPressed: (){
                          setState(() {
                            teamApoints=teamApoints+3;
                          });
                        }, 
                        child: const Text('add 3 point',style: TextStyle(fontSize: 20,color: Colors.black),)
                      ),   
                    ],
                  ),
                ),
            
            
            
                //---------------------------------------
          

                const SizedBox(
                  height: 500,
                  child: VerticalDivider(thickness: 1, color: Colors.grey,)),
            
                // -------------------------------------------
                Expanded(
                  child: Column(
                    
                    children: 
                    [
                      Text('Team B', style: TextStyle(fontSize: 32),),
                      Text('$teamBpoints',style: TextStyle( fontSize: MediaQuery.of(context).size.width * 0.30)),
                  
                      ElevatedButton( 
                        style: ElevatedButton.styleFrom(primary:Colors.orange , minimumSize: Size(150, 50),),
                        onPressed: (){
                          setState(() {
                            teamBpoints++;
                          });
                        }, 
                        child: Text('add 1 point',style: TextStyle(fontSize: 20,color: Colors.black),)
                      ),
                      SizedBox(height: 16,),
                  
                  
                      ElevatedButton( 
                        style: ElevatedButton.styleFrom(primary:Colors.orange ,minimumSize: Size(150, 50), ),
                        onPressed: (){
                          setState(() {
                            teamBpoints=teamBpoints+2;
                          });
                        }, 
                        child: Text('add 2 point',style: TextStyle(fontSize: 20,color: Colors.black),)
                      ),
                      SizedBox(height: 16,),
                  
                  
                      ElevatedButton( 
                        style: ElevatedButton.styleFrom(primary:Colors.orange ,minimumSize: Size(150, 50),),
                        onPressed: (){
                          setState(() {
                            teamBpoints=teamBpoints+3;
                          });
                        }, 
                        child: Text('add 3 point',style: TextStyle(fontSize: 20,color: Colors.black),)
                      ),   
                    ],
                  ),
                ),
              ],
            
            ),
            SizedBox(height: 32,),
            ElevatedButton( 
                      style: ElevatedButton.styleFrom(primary:Colors.orange ,minimumSize: Size(150, 50),),
                      onPressed: (){
                        setState(() {
                          teamApoints=0;
                          teamBpoints=0;
                           
                        });
                      }, 
                      child: Text('Reset',style: TextStyle(fontSize: 20,color: Colors.black),)
            ),
          ],
        ) ,
      ), 
    );
  }
}


