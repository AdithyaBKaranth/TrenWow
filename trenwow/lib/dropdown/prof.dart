import 'package:flutter/material.dart';

class Prof extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.black,
                actions: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
                ],
                centerTitle: false,
                title: Text(
                  'Trenwow',
                  style: TextStyle(),
                  textAlign: TextAlign.left,
                )),
            body: Column(crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 47,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                              backgroundColor: Colors.purple[400],
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  height:
                                      MediaQuery.of(context).size.height / 6,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(Icons.camera),
                                      Icon(Icons.photo)
                                    ],
                                  ),
                                );
                              });
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.purple,
                          radius: 50,
                          child: Icon(
                            Icons.add_a_photo,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Text('Add a name'),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 4,
                      ),
                      Icon(Icons.star)
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Add bio',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text('\t\tBadges',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 100,
                  ),
                  TabBar(
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorColor: Colors.amber,
                      unselectedLabelColor: Colors.black,
                      labelColor: Colors.red,
                      tabs: [
                        Text(
                          'Communtiy',
                          //style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          'Marketplace',
                          //style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          'Services',
                          //style: TextStyle(color: Colors.black),
                        )
                      ]),
                  Expanded(
                      child: TabBarView(children: [
                    Container(
                      color: Colors.amber,
                      height: 10,
                    ),
                    Container(
                      color: Colors.blue,
                      height: 10,
                    ),
                    Container(
                      color: Colors.green,
                      height: 10,
                    )
                  ])),
                  //extendBody: true,
                ])));
  }
}
