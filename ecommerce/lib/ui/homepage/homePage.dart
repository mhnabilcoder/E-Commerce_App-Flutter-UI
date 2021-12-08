
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:ecommerce/ui/components/app_icons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [



            ///APP BAR
            homeScreenAppbar(context),
            ///SLIDER
            homeScreenSlider(context),
            ///SUB Categories
            homeScreenSubCategories(context),

            ///Categories Container
            categoriesContainer(context),
            ///Categories Box Container
            categoriesBoxContainer(context),

            ///Flash Sale
            flashSaleContainer(context),
            /// Flash Sale Box Container
            flashSaleBoxContainer(context),

            ///Foreign Products
            foreignProductsContainer(context),
            ///Foreign Products Box Container
            foreignProductsBoxContainer(context),

            ///Most Popular
            mostPopularContainer(context),
            ///Most Popular Box Container
            mostPopularBoxContainer(context),

            ///Collections
            collectionsContainer(context),
            ///Collections Products Box Container
            collectionsProductsBoxContainer(context),

            ///JUST FOR YOU TEXT
            Container(
            child: Center(child: Text("Just For You",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
            ),
            SizedBox(height: 10,),



          ],
        ),
      ),
    );
  }
}






Widget homeScreenAppbar(BuildContext context){
  return SafeArea(
    child: Container(
      color: Colors.white,
      child: Row(
        children: [
          IconButton(onPressed: () {}, icon: Icon(MyFlutterApp.scanner),),
          Card(
            color: Colors.white70,
            child: SizedBox(
              width: 330,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),hintText: "Search in RoxxCart",),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}


Widget homeScreenSlider(BuildContext context){
  return  Padding(
    padding: const EdgeInsets.only(left: 11.0, right: 11.0,),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: AspectRatio(
          aspectRatio: 16/7,
          child: Container(
            color: Colors.grey,
          ),
        ),
      ),
    ),
  );
}


Widget homeScreenSubCategories(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 12.0,right: 12.0,top: 12.0),
    child: Container(

      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/free_shipping.png'),fit: BoxFit.cover),
                  color: Colors.greenAccent,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/groccery_shopping.png'),fit: BoxFit.cover),
                  color: Colors.greenAccent,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/discount_mall.png'),fit: BoxFit.cover),
                  color: Colors.greenAccent,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/sale.png'),fit: BoxFit.cover),
                  color: Colors.greenAccent,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/topup_estore.png'),fit: BoxFit.cover),
                  color: Colors.greenAccent,
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
          SizedBox(height: 5.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/global_collection.png"),
                radius: 27.0,
              ),
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/cloths.png"),
                radius: 25.0,
              ),
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/free_shipping.png"),
                radius: 25.0,
              ),
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/service.png"),
                radius: 25.0,
              ),
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/categories.png"),
                radius: 25.0,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}


Widget categoriesContainer(BuildContext context){
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Categories",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("SHOP MORE >",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),),
        ),
      ],
    ),
  );
}


Widget categoriesBoxContainer(BuildContext context){
  return Padding(
    padding: const EdgeInsets.all(13.0),
    child: Container(

      height: 260,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
    ),
  );
}


Widget flashSaleContainer(BuildContext context){
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Flash Sale",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("SHOP MORE >",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),),
        ),
      ],
    ),
  );
}


Widget flashSaleBoxContainer(BuildContext context){
  return Padding(
    padding: const EdgeInsets.all(13.0),
    child: Container(

      height: 250,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
    ),
  );
}


Widget foreignProductsContainer(BuildContext context){
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Foreign Products",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("SHOP MORE >",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),),
        ),
      ],
    ),
  );
}


Widget foreignProductsBoxContainer(BuildContext context){
  return Padding(
    padding: const EdgeInsets.all(13.0),
    child: Container(

      height: 250,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
    ),
  );
}


Widget mostPopularContainer(BuildContext context){
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Most Popular",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("SHOP MORE >",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),),
        ),
      ],
    ),
  );
}


Widget mostPopularBoxContainer(BuildContext context){
  return Padding(
    padding: const EdgeInsets.all(13.0),
    child: Container(

      height: 170,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
    ),
  );
}


Widget collectionsContainer(BuildContext context){
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Collections",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("SHOP MORE >",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),),
        ),
      ],
    ),
  );
}


Widget collectionsProductsBoxContainer(BuildContext context){
  return Padding(
    padding: const EdgeInsets.all(13.0),
    child: Container(

      height: 250,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
    ),
  );
}
