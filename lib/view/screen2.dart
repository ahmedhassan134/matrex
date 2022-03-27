import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test22/provider/cart_provider.dart';
class ScreenTwo extends StatelessWidget {
static String id='screen2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 2'),
      ),
      body: Consumer<Cart>(
        builder: (context,pro,_){
          return ListView.builder

            (
            itemCount: pro.getListItem.length,

              itemBuilder: (context,index){
              return Consumer<Cart>(
                builder: (context, pro, _) {
                  return Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * .1,
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    padding:
                    const EdgeInsetsDirectional.only(top: 10, start: 10, bottom: 5),
                    color: Colors.red,
                    child: ListTile(
                      leading: Image.asset(pro.getListItem[index].img),
                      title: Text(pro.getListItem[index].title),
                      trailing:  IconButton(
                        onPressed: () {
                          pro.remove(pro.getListItem[index]);
                        },
                        icon: const Icon(Icons.remove),
                      ),
                    )
                  );
                },
              );

              }
              );
        },
      ),
    );
  }
}
