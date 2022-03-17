import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test22/view/screens/four.dart';
import 'package:test22/models/ob/one_model2.dart';
import 'package:test22/models/ob/one_ob.dart';
import 'package:test22/view/screens/two.dart';

class One extends StatelessWidget {
  // static String id = 'one';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * .2,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    colors: [
                      Colors.greenAccent.shade400,
                      Colors.greenAccent.withOpacity(.2),
                    ],
                    // begin: Alignment.topCenter,
                    // end: Alignment.bottomCenter
                  )),
                ),
                Container(
                    margin:
                        EdgeInsetsDirectional.only(top: 30, start: 5, end: 5),
                    width: double.infinity,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Container(
                          padding: EdgeInsetsDirectional.only(
                              start: 20, top: 2, bottom: 2),
                          child: Row(
                            children: [
                              Text(
                                'الموفر',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              ),
                              RotatedBox(
                                quarterTurns: 3,
                                child: Container(
                                  height: 4,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                        hintText: 'Search',
                        suffixIcon: Icon(Icons.search),
                      ),
                    )),
                Positioned(
                    top: 100,
                    left: 10,
                    child: Text(
                      'Top Stores',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    )),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 100,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, inndex) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Two();
                      }));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 20,
                      width: 100,
                      margin: EdgeInsetsDirectional.only(top: 4, start: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.grey),
                      child: Text(
                        oneList[inndex].text,
                        style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                },
                itemCount: oneList.length,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text(
                'Top Coupons & Details',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: double.infinity,
              height: 150,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    height: 130,
                    width: 130,
                    margin: EdgeInsetsDirectional.only(top: 4, start: 10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.deepPurple),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.favorite),
                            Icon(Icons.star),
                          ],
                        ),
                        Text(
                          twoList[index].text,
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          twoList[index].text1,
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          twoList[index].text2,
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.greenAccent),
                          child: Center(
                            child: Text('Get Code'),
                          ),
                        )
                      ],
                    ),
                  );
                },
                itemCount: twoList.length,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: 160,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.orange),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'WAFFRAH',
                          style: TextStyle(fontSize: 30),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.branding_watermark,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.animation,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.home,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.favorite,
                              color: Colors.white,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'waffrah new coupons is live!',
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          children: [
                            Text(
                              '15%',
                              style: TextStyle(
                                  fontSize: 45,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    'EXTRA ',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    'UP TO 50 SALE',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Container(
                          width: 120,
                          height: 40,
                          color: Colors.black,
                          child: Center(
                            child: Text(
                              'use code: WF10',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
