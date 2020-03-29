import 'package:flutter/material.dart';
import './widgets/additem_textfield.dart';
import '../CustomerScreen/customer_screen.dart';

class AdminScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ADMIN ACCESS ENABLED'),
        centerTitle: true,
      ),
      body: Customer(),
    );
  }
}

class Customer extends StatefulWidget {
  @override
  _CustomerState createState() => _CustomerState();
}

class _CustomerState extends State<Customer> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _currentPriceController = TextEditingController();
  TextEditingController _originalPriceController = TextEditingController();
  TextEditingController _featureController = TextEditingController();

  List<String> _newFeatures = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus();
          },
          child: CustomerScreen()),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add_to_home_screen,
          color: Colors.white,
        ),
        onPressed: () {
          showBottomSheet(
            context: context,
            builder: (_) {
              return Container(
                color: Color(0xB7FF4D),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.5,
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 60.0,
                      color: Colors.lightGreen,
                      child: Text(
                        'ADD NEW MOBILE',
                        style: Theme.of(context).textTheme.headline5.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.0,
                            ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.38,
                      child: SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 30.0),
                            AddItemTextField(
                              'Enter name',
                              _nameController,
                              TextInputType.text,
                            ),
                            AddItemTextField(
                              'Enter original price',
                              _originalPriceController,
                              TextInputType.number,
                            ),
                            AddItemTextField(
                              'Enter current price',
                              _currentPriceController,
                              TextInputType.number,
                            ),
                            Wrap(
                              children: <Widget>[
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.75,
                                  child: AddItemTextField(
                                    'Enter feature',
                                    _featureController,
                                    TextInputType.text,
                                  ),
                                ),
                                SizedBox(width: MediaQuery.of(context).size.width * 0.05,),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (_featureController.text != null) {
                                        _newFeatures
                                            .add(_featureController.text);
                                      }
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        color: Colors.greenAccent),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Wrap(children: <Widget>[
                                ..._newFeatures.map((feature) {
                                  return Card(
                                    child: Container(
                                      margin: EdgeInsets.all(3.0),
                                      padding: EdgeInsets.all(3.0),
                                      child: Text(
                                        feature,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1
                                            .copyWith(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 11.0,
                                            ),
                                      ),
                                    ),
                                  );
                                }),
                              ]),
                            ),
                            RaisedButton.icon(
                              color: Colors.green,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.add_shopping_cart,
                                color: Colors.white,
                              ),
                              label: Text(
                                'ADD',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
        backgroundColor: Colors.green,
      ),
    );
  }
}
