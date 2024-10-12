import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  const NewPage({super.key});

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  
  Widget build(BuildContext context) {
   var  height= MediaQuery.of(context).size.height;
    var width= MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Container(
          height: height,
          width: width,
          color: Color.fromARGB(255, 243, 232, 232),
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 35,),
                Row(
                children: [
                 
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios)),
                    SizedBox(width: 315,),
                    Icon(Icons.favorite_outline_sharp),
                  ],
                ),
                SizedBox(height: 15,),
                Text("Asparagus",style: TextStyle(fontSize: 25,
                fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5,),
                Text("White Onion,Fennel, and watercress Salad",
                style: TextStyle(color: Colors.grey),),
                SizedBox(height: 25,),
                Container(height: 310,width: 450,
                 color: Color.fromARGB(255, 243, 232, 232),
                child: Stack(
                
                  children: [
               
                    Padding(
                      padding: const EdgeInsets.only(left: 6,top: 15),
                      child: Text("Nutritions",style: TextStyle(fontSize: 22,
                        fontWeight: FontWeight.bold),),
                    ),
                Positioned(
                        right: -50,
                        top: 4,
                        child: CircleAvatar(
                          radius: 143,
                          backgroundImage: AssetImage("images/meat.jpg"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 65,left: 6),
                        child: Container(height: height*0.06,width: width*0.33,
                        decoration: BoxDecoration(  
                          color: Color.fromARGB(255, 223, 216, 216),
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                          child: Row(
                            children: [
                              Container(height: 40,width: 55,
                              child: Center(child: 
                              Text("190",style: TextStyle(fontWeight: FontWeight.bold),)),
                              decoration: BoxDecoration(color: Colors.white,
                              shape: BoxShape.circle),
                              
                                                      
                                ),
                                Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 5,),
                                    Text("Calories"),
                                    Text("Kcal"),
                                  ],
                                ),
                            ],
                          ),
                  ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 137,left: 6),
                        child: Container(height: height*0.06,width: width*0.33,
                        decoration: BoxDecoration(  
                         color: Color.fromARGB(255, 223, 216, 216),
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                          child: Row(
                            children: [
                              Container(height: 40,width: 55,
                              child: Center(child: 
                              Text("105",style: TextStyle(fontWeight: FontWeight.bold),)),
                              decoration: BoxDecoration(color: Colors.white,
                              shape: BoxShape.circle),
                              
                                                      
                                ),
                                Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 5,),
                                    Text("Calories"),
                                    Text("Kcal"),
                                  ],
                                ),
                            ],
                          ),
                  ),
                      ),
                       Padding(
                        padding: const EdgeInsets.only(top: 207,left: 6),
                        child: Container(height: height*0.06,width: width*0.33,
                        decoration: BoxDecoration( 
                           color: Color.fromARGB(255, 223, 216, 216),
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                          child: Row(
                            children: [
                              Container(height: 40,width: 55,
                              child: Center(child: 
                              Text("120",style: TextStyle(fontWeight: FontWeight.bold),)),
                              decoration: BoxDecoration(color: Colors.white,
                              shape: BoxShape.circle),
                              
                                                      
                                ),
                                Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 5,),
                                    Text("Calories"),
                                    Text("Kcal"),
                                  ],
                                ),
                            ],
                          ),
                  ),
                      ),


                  ],
                ),

                ),
                Text("Ingredients",
                style: TextStyle(fontSize: 25,
                fontWeight: FontWeight.bold),),
                SizedBox(height: height*0.003,),
                Text(" 2 cups pecans, divided",
                style: TextStyle(
                color: Colors.grey),),
                 SizedBox(height: height*0.003,),
                 Text(" 1 tablespoon unsalted butter, melted",
                style: TextStyle(
                color: Colors.grey),),
                 SizedBox(height: height*0.003,),
                 Text(" 1/4 teaspoon kosher salt, plus more",
                style: TextStyle(
                color: Colors.grey),),
                 SizedBox(height: height*0.003,),
                 Text(" 2 tablespoon Qouram masla",
                style: TextStyle(
                color: Colors.grey),),
                 SizedBox(height: height*0.003,),
                 Text(" 2 cups pecans, divided",
                style: TextStyle(
                color: Colors.grey),),
                 SizedBox(height: height*0.003,),
                 Text(" 1/4 cups vigine, divided",
                style: TextStyle(
                color: Colors.grey),),
                 SizedBox(height: height*0.003,),
                 Text(" 2 spoons capsicum , divided",
                style: TextStyle(
                color: Colors.grey),),
                 SizedBox(height: height*0.003,),
                 Text(" 1/2 spoons green chilli, divided",
                style: TextStyle(
                color: Colors.grey),),
                SizedBox(height: height*0.02,),
                Text("Recipi Preparation",
                style: TextStyle(fontSize: 22,
                fontWeight: FontWeight.bold),),
                Text("Step 1",style: TextStyle(
                  color: Colors.grey),),
                  Text("Take a one handi ",style: TextStyle(
                    color: Colors.grey),),
                    Text(" And Put a 2kg Oil in handi for fry the Meat",
                    style: TextStyle(color: Colors.grey),),

              ],
            ),
          ),
        ),
      ),
    );
  }
}