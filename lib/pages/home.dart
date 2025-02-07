import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:foodie/pages/details.dart';
import 'package:foodie/widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool pizza=false,ice_cream=false,burger=false,juice=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        margin: EdgeInsets.only(
          top: 50.0,
          left: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hello Zakir',
                  style: AppWidget.boldTextFeildStyle(),
                ),

                Container(
                  margin:EdgeInsets.only(right: 20,top: 10),
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8)),
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Delicious Food',
              style: AppWidget.HeadlineTextFeildStyle(),
            ),
            Text('Discover and Get Great Food',style: AppWidget.LightTextFeildStyle(),),
            SizedBox(height:20),
            Container(margin: EdgeInsets.only(right: 20.0),
                child: showItem()),
            SizedBox(height: 30,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Details()));
                  },
                  child: Container(
                    margin:EdgeInsets.all(4.0),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        //margin: EdgeInsets.all(4.0),
                        padding: EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Image.asset("images/ice-cream1.png",height: 150,width: 150,fit: BoxFit.cover,),
                            Text("Vanila Ice-cream",style:AppWidget.semiBoldTextFeildStyle(),),
                            SizedBox(height: 5.0,),
                            Text("Fresh and Healthy ice-cream",style:AppWidget.LightTextFeildStyle(),),
                            SizedBox(height: 5.0,),
                            Text("\$10",style: AppWidget.semiBoldTextFeildStyle(),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    margin: EdgeInsets.all(4.0),
                    padding: EdgeInsets.all(14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Image.asset("images/hamburger.png",height: 150,width: 150,fit: BoxFit.cover,),
                        Text("Hamburger with kitcap",style:AppWidget.semiBoldTextFeildStyle(),),
                        SizedBox(height: 5.0,),
                        Text("Fresh and to much tasty",style:AppWidget.LightTextFeildStyle(),),
                        SizedBox(height: 5.0,),
                        Text("\$18",style: AppWidget.semiBoldTextFeildStyle(),)
                      ],
                    ),
                  ),
                )
              ],),
            ),
            SizedBox(height: 30.0,),
            Container(
              margin: EdgeInsets.only(right: 10),
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("images/ice-cream1.png",height:120,width: 120,fit: BoxFit.cover,),
                      SizedBox(width: 20,),
                      Column(
                        children: [
                          Container(
                              width:MediaQuery.of(context).size.width/2,
                              child: Text("Hallywin pizza",style: AppWidget.semiBoldTextFeildStyle(),),
                          ),
                          SizedBox(height: 10.0),
                          Container(
                                width:MediaQuery.of(context).size.width/2,
                                child: Text("To much tasty and healthy",style: AppWidget.LightTextFeildStyle(),),
                                ),
                          SizedBox(height: 10.0),
                          Container(
                            width:MediaQuery.of(context).size.width/2,
                            child: Text("\$20",style: AppWidget.semiBoldTextFeildStyle()),
                          )

                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget showItem(){
    return Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: (){
            ice_cream=true;
            pizza=false;
            juice=false;
            burger=false;
            setState(() {

            });

          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(8.0),
            child: Container(
              decoration: BoxDecoration(color: ice_cream?Colors.black:Colors.white,borderRadius: BorderRadius.circular(8.0)),
              padding: EdgeInsets.all(8.0),
              child: Image.asset("images/ice-cream.png",height: 40,width: 40,fit: BoxFit.cover,color: ice_cream?Colors.white:Colors.black,),
            ),

          ),
        ),
        GestureDetector(
          onTap: (){
            ice_cream=false;
            pizza=false;
            juice=false;
            burger=true;
            setState(() {

            });

          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(8.0),
            child: Container(
              decoration: BoxDecoration(color: burger?Colors.black:Colors.white,borderRadius: BorderRadius.circular(8.0)),
              padding: EdgeInsets.all(8.0),
              child: Image.asset("images/burger.png",height: 40,width: 40,fit: BoxFit.cover,color: burger?Colors.white:Colors.black,),
            ),

          ),
        ),
        GestureDetector(
          onTap: (){
            ice_cream=false;
            pizza=false;
            juice=true;
            burger=false;
            setState(() {

            });

          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(8.0),
            child: Container(
              decoration: BoxDecoration(color: juice?Colors.black:Colors.white,borderRadius: BorderRadius.circular(8.0)),
              padding: EdgeInsets.all(8.0),
              child: Image.asset("images/juice.png",height: 40,width: 40,fit: BoxFit.cover,color:juice?Colors.white:Colors.black,),
            ),

          ),
        ),
        GestureDetector(
          onTap: (){
            ice_cream=false;
            pizza=true;
            juice=false;
            burger=false;
            setState(() {

            });

          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(8.0),
            child: Container(
              decoration: BoxDecoration(color: pizza?Colors.black:Colors.white,borderRadius: BorderRadius.circular(8.0)),
              padding: EdgeInsets.all(8.0),
              child: Image.asset("images/pizza.png",height: 40,width: 40,fit: BoxFit.cover,color: pizza?Colors.white:Colors.black,),
            ),

          ),
        ),

      ], );

  }
}
