
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffe6e6e6),
      body: SingleChildScrollView(
        child: Column(
          children: [



            ///APP BAR
            appbarArea(context),
            /// Advertisement
            advertisementArea(context),
            SizedBox(height: 4,),
            ///MY ORDERS
            myOrdersContainer(context),
            ///My Orders Containers
            SizedBox(height: 5,),
            OtherContainer(context),
            SizedBox(height: 5,),
            /// MY SERVICES
            myServicesContainer(context),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}






Widget appbarArea(BuildContext context){
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 200,
    color: Colors.orange,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.account_circle,size: 35,color: Colors.white,),
                    SizedBox(width: 2,),
                    Text("Please Signup for better experience",style: TextStyle(color: Colors.white),),
                  ],
                ),
                Icon(Icons.settings,size: 25,color: Colors.white,),

              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: ElevatedButton(onPressed: () {

          }, child: Text("Log In / Sign Up",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),),
            style: ElevatedButton.styleFrom(primary: Colors.white),),
        )
      ],
    ),
  );
}


Widget advertisementArea(BuildContext context){
  return Container(
    color: Colors.white,
    width: MediaQuery.of(context).size.width,
    height: 120,
    child: Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 120,

        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/catalogs/ads1.png"),fit: BoxFit.fill),
          color: Colors.orange,
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
      ),
    ),
  );
}


Widget myOrdersContainer(BuildContext context){
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 170,
    decoration: BoxDecoration(
      color: Colors.white,
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("My Orders",style: TextStyle(fontSize: 20),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("See All >"),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Icon(Icons.account_balance_wallet_outlined,size: 30,),
                  Text("Wallet"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.payment_outlined,size: 30,),
                  Text("Payment"),

                ],
              ),
              Column(
                children: [
                  Icon(Icons.message_outlined,size: 30,),
                  Text("Review"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.airport_shuttle_outlined,size: 30,),
                  Text("orders"),
                ],
              ),
            ],
          ),

        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Icon(Icons.assignment_return_outlined),
                  SizedBox(width: 5,),
                  Text("My Returns")
                ],
              ),

              Row(
                children: [
                  Icon(Icons.cancel_presentation_outlined),
                  SizedBox(width: 5,),
                  Text("My Cancellations"),
                ],
              ),


            ],
          ),
        ),
      ],
    ),

  );
}


Widget OtherContainer(BuildContext context){
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 70,
    color: Colors.white,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text("Coins"),
         Text("benner image"),
         Text("Earn/Redeem > \n Coins "),

      ],
    ),
  );
}


Widget myServicesContainer(BuildContext context){
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 190,
    color: Colors.white,
    child: Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("My Services",style: TextStyle(fontSize: 20),),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Icon(Icons.mail,size: 30,),
                  Text("Message"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.reviews_outlined,size: 30,),
                  Text("My Review"),

                ],
              ),
              Column(
                children: [
                  Icon(Icons.padding_outlined,size: 30,),
                  Text("Payment \n Options"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.help,size: 30,),
                  Text("Help"),
                ],
              ),
            ],
          ),

        ),
      ],
    ),
  );
}

