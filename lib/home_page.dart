import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test22/models/ob/data_ob.dart';
import 'package:test22/provider/cart_provider.dart';
import 'package:test22/view/screen2.dart';

class MyHomePage extends StatefulWidget {
  static String id = 'homepage';

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('app'),
        actions: [

          IconButton(onPressed: (){
            Navigator.pushNamed(context, ScreenTwo.id);
          }, icon:const Icon(Icons.add_shopping_cart)),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
           height: MediaQuery.of(context).size.height * .6,
            child: ListView.builder(
              itemCount: dataList.length,
              itemBuilder: (context, index) {
                return Consumer<Cart>(
                  builder: (context, pro, _) {
                    return Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * .1,
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      padding:
                         const  EdgeInsetsDirectional.only(top: 10, start: 10, bottom: 5),
                      color: Colors.grey,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            dataList[index].img,
                            fit: BoxFit.fill,
                            width: 150,
                            height: 300,
                          ),

                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  pro.add(dataList[index]);
                                },
                                icon: const Icon(Icons.add,size: 40,color: Colors.white,),
                              ),
                              SizedBox(width: 5,),
                              Text('${pro.count}',style: TextStyle(fontSize: 30),),
                              SizedBox(width: 5,),
                              IconButton(
                                onPressed: () {
                                  pro.remove(dataList[index]);
                                },
                                icon:const Icon(Icons.remove,size: 30,color: Colors.white,),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
         Consumer<Cart>(
           builder: (context,pro,_){
             return Center(child: Text('Total price: ${pro.totalPrice}',style: const TextStyle(fontSize: 35,fontWeight: FontWeight.bold),));
           },
         )

        ],
      ),
    );
  }
}
