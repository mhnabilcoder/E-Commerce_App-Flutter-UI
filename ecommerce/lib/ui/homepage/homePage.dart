
import 'package:ecommerce/ui/components/productsRecomendationContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:ecommerce/ui/components/app_icons.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
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

            Container(
              color: Colors.white,
              child: Column(
                children: [
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

                  ///JUST FOR YOU PRODUCTS
                  ProductsRecomendationContainerBOx(), //components directory

                ],
              ),
            ),



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
              Column(
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
                  Text("  Free \nShipping"),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/groccery_shopping.png'),fit: BoxFit.cover),
                      color: Colors.greenAccent,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Text("Groccery \nShopping"),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/discount_mall.png'),fit: BoxFit.cover),
                      color: Colors.greenAccent,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Text("Discount \n  Mall"),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/sale.png'),fit: BoxFit.cover),
                      color: Colors.greenAccent,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Text("Fashion \n  Sale"),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/topup_estore.png'),fit: BoxFit.cover),
                      color: Colors.greenAccent,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Text("Topup \n Store"),
                ],
              ),
            ],
          ),

          SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/global_collection.png'),fit: BoxFit.cover),
                      color: Colors.greenAccent,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Text("  Global \nCollection"),
                ],
              ),

             Column(
             children: [
               Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/cloths.png'),fit: BoxFit.cover),
                color: Colors.greenAccent,
                shape: BoxShape.circle,
          ),
        ),
                Text("Fashion \n Deals"),
             ],
           ),

              Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/fast_delivery.gif'),fit: BoxFit.cover),
                      color: Colors.greenAccent,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Text("   Fast \n Shipping"),

                ],
              ),

              Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/service.png'),fit: BoxFit.cover),
                      color: Colors.greenAccent,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Text("Services"),
                ],
              ),

              Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/categories.png'),fit: BoxFit.cover),
                      color: Colors.greenAccent,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Text("Categories"),
                ],
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
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              categoriesProduct(context),
              categoriesProduct(context),
              categoriesProduct(context),
              categoriesProduct(context),
            ],
          ),
          SizedBox(height: 5.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              categoriesProduct(context),
              categoriesProduct(context),
              categoriesProduct(context),
              categoriesProduct(context),
            ],
          ),
        ],
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
    padding: const EdgeInsets.only(right: 13.0,left: 13.0,bottom: 13.0,top: 0.0),
    child: Container(
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.white,
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            children: [
              flashSaleProduct(context),
              flashSaleProduct(context),
              flashSaleProduct(context),
              flashSaleProduct(context),
              flashSaleProduct(context),
            ],
          ),
        ],
      ),
    ),
  );
}



/// MAIN WIDGET SEGMENTS
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
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      child: Column(
        children: [
          Row(
            children: [
               Container(
                  width: 365,
                  height: 110,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/catalogs/ads2.png"),fit: BoxFit.fill),
                    color: Colors.orange,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5.0,left: 1.0),
                child: Container(
                  height: 135,
                  width: 118,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0,left: 1.0),
                child: Container(
                  height: 135,
                  width: 118,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0,left: 1.0),
                child: Container(
                  height: 135,
                  width: 118,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                ),
              ),
            ],
          ),
        ],
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
    padding: const EdgeInsets.only(right: 13.0,left: 13.0,top: 2.0,bottom: 2.0),
    child: Container(

      height: 140,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Container(
                  height: 60,
                  width: 175,
                  child: ListTile(
                    title: Text("Collections From China"),
                    trailing: Icon(Icons.flight),
                  ),
                ),
                ),
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Container(
                  height: 60,
                  width: 175,
                  child: ListTile(
                    title: Text("Collections From US"),
                    trailing: Icon(Icons.flight),
                  ),
                ),
                ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Container(
                  height: 60,
                  width: 175,
                  child: ListTile(
                    title: Text("Collections From Korea"),
                    trailing: Icon(Icons.flight),
                  ),
                ),
                ),
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Container(
                  height: 60,
                  width: 175,
                  child: ListTile(
                    title: Text("Collections From Japan"),
                    trailing: Icon(Icons.flight),
                  ),
                ),
                ),
            ],
          ),
        ],
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
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.all(Radius.circular(7.0)),
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          collectionContianer(context),
          collectionContianer(context),
          collectionContianer(context),
          collectionContianer(context),
        ],
      ),
    ),
  );
}




///Neccesery Codes

Widget flashSaleProduct(BuildContext context){
  return Padding(
    padding: const EdgeInsets.only(left: 5.0,top: 5.0,right: 2.5,bottom: 5.0),
    child: Container(
      height: 180,
      width: 118,
      decoration: BoxDecoration(
        color: Colors.greenAccent,
      ),
      child: Column(
        children: [
          Container(
            height: 125,
            width: 118,
            color: Colors.grey.shade100,
          ),
          Container(
            height: 24,
            width: 118,
          ),
          Container(
            width: 118,
            color: Colors.white,
            child: Row(
              children: [
                Text("৳",style: TextStyle(color: Colors.orangeAccent,fontWeight: FontWeight.bold),),
                Text("000",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 18),),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget categoriesProduct(BuildContext context){
  return Padding(
    padding: const EdgeInsets.only(top: 8.0,left: 4.0,right: 4.0,),
    child: Column(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
          ),
        ),
        SizedBox(height: 5.0,),
        Text("#name"),
      ],
    ),
  );
}

Widget collectionContianer(BuildContext context){
  return Padding(
    padding: const EdgeInsets.only(top: 6.0,bottom: 6.0,left: 2.0,),
    child: Card(
      color: Colors.redAccent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7.0),
      ),
      child: Container(
        height: 190,
        width: 170,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text("#Titles",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text("#sub titles",style: TextStyle(color: Colors.white),),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
              ),
            ),
          ],
        ),

      ),
    ),
  );
}