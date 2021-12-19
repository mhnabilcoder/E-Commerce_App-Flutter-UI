
import 'package:flutter/material.dart';

class ProductContainer extends StatelessWidget {
  const ProductContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: 300,
        width: 175,
        decoration: BoxDecoration(
          color: Colors.greenAccent,
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        child: Column(
          children: [
            Container(
              height: 200,
              width: 175,
              color: Colors.white,
            ),
            Container(
              height: 45,
              width: 175,
            ),
            Container(
              width: 175,
              color: Colors.white,
              child: Row(
                children: [
                  Text("৳",style: TextStyle(color: Colors.orangeAccent,fontWeight: FontWeight.bold),),
                  Text("000",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 20),),
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              height: 15,
              width: 175,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
