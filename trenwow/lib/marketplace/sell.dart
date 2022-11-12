import 'package:flutter/material.dart';

class Sell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trenwow'),
      ),
      body: ListView(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'New Listing',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.purple),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)))),
                    onPressed: () {},
                    child: Text('Publish'),
                  ),
                )
              ],
            ),
          ),
          TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  label: Text(
                    'Title',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ))),
          SizedBox(
            height: MediaQuery.of(context).size.height / 60,
          ),
          TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  label: Text(
                    'Price',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ))),
          SizedBox(
            height: MediaQuery.of(context).size.height / 60,
          ),
          TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  label: Text(
                    'Category',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ))),
          SizedBox(
            height: MediaQuery.of(context).size.height / 60,
          ),
          TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  label: Text(
                    'Condition',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ))),
          SizedBox(
            height: MediaQuery.of(context).size.height / 60,
          ),
          TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  label: Text(
                    'Description',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ))),
          SizedBox(
            height: MediaQuery.of(context).size.height / 60,
          ),
          TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  label: Text(
                    'Location',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ))),
          SizedBox(
            height: MediaQuery.of(context).size.height / 60,
          ),
          Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            height: 150,
            child: Center(
                child: ElevatedButton.icon(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.purple)),
                    onPressed: () {
                      showModalBottomSheet(
                          backgroundColor: Colors.purple,
                          context: context,
                          builder: (context) {
                            return Container(
                              height: 100,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(Icons.camera_alt_outlined),
                                  Icon(Icons.photo)
                                ],
                              ),
                            );
                          });
                    },
                    icon: Icon(Icons.add),
                    label: Text(
                      'Add files',
                      style: TextStyle(color: Colors.white),
                    ))),
          )
        ],
      ),
    );
  }
}
