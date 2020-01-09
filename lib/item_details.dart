import 'package:bookli_flutter/Cart_Screen.dart';
import 'package:bookli_flutter/checkout_screen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class MyButtonModal {
  final String buttonText;
  bool changeButtonColor;

  MyButtonModal({this.buttonText, this.changeButtonColor = false});
}



class Item_Details extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => item_details();
}

class item_details extends State<Item_Details> {
  List<MyButtonModal> yearList = [
    MyButtonModal(buttonText: "2018"),
    MyButtonModal(buttonText: "2019"),
    MyButtonModal(buttonText: "2020"),
  ];
  List<MyButtonModal> grade = [
    MyButtonModal(buttonText: "Good"),
    MyButtonModal(buttonText: "Bad"),
   
  ];
  String toolbarname = 'Computer Engg';
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List list = ['12', '11'];
  bool pressAttention = false;
  String itemname = 'TechMax';
  int item = 0;
  String itemprice= '\$15';


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final ThemeData theme = Theme.of(context);
    final TextStyle titleStyle =
    theme.textTheme.headline.copyWith(color: Colors.white);
    final TextStyle descriptionStyle = theme.textTheme.subhead;
    IconData _backIcon() {
      switch (Theme.of(context).platform) {
        case TargetPlatform.android:
        case TargetPlatform.fuchsia:
          return Icons.arrow_back;
        case TargetPlatform.iOS:
          return Icons.arrow_back_ios;
      }
      assert(false);
      return null;
    }

    IconData _add_icon() {
      switch (Theme.of(context).platform) {
        case TargetPlatform.android:
        case TargetPlatform.fuchsia:
          return Icons.add_circle;
        case TargetPlatform.iOS:
          return Icons.add_circle;
      }
      assert(false);
      return null;
    }
    IconData _sub_icon() {
      switch (Theme.of(context).platform) {
        case TargetPlatform.android:
        case TargetPlatform.fuchsia:
          return Icons.remove_circle;
        case TargetPlatform.iOS:
          return Icons.remove_circle;
      }
      assert(false);
      return null;
    }
    return new Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(_backIcon()),
            alignment: Alignment.centerLeft,
            tooltip: 'Back',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(toolbarname),
          backgroundColor: Colors.white,
          actions: <Widget>[
            new Padding(
              padding: const EdgeInsets.all(10.0),
              child: new Container(
                height: 150.0,
                width: 30.0,
                child: new GestureDetector(
                  onTap: () {
                    /*Navigator.of(context).push(
                  new MaterialPageRoute(
                      builder:(BuildContext context) =>
                      new CartItemsScreen()
                  )
              );*/
                  },
                  child: Stack(
                    children: <Widget>[
                      new IconButton(
                          icon: new Icon(
                            Icons.shopping_cart,
                            color: Colors.black,
                          ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>Checkout()));
                          }),
                      list.length == 0
                          ? new Container()
                          : new Positioned(
                              child: new Stack(
                              children: <Widget>[
                                new Icon(Icons.brightness_1,
                                    size: 20.0, color: Colors.orange.shade500),
                                new Positioned(
                                    top: 4.0,
                                    right: 5.5,
                                    child: new Center(
                                      child: new Text(
                                        list.length.toString(),
                                        style: new TextStyle(
                                            color: Colors.white,
                                            fontSize: 11.0,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    )),
                              ],
                            )),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        body: Container(
            padding: const EdgeInsets.all(8.0),

            child:SingleChildScrollView(

              child: Column(
              children: <Widget>[
                   Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // photo and title
                    SizedBox(
                      height: 150.0,

                      child: Stack(
                        alignment: Alignment.center,

                        children: <Widget>[
                          new Container(
                            child: new Carousel(
                              images: [
                                new AssetImage(
                                  'images/apple.jpg',
                                  // package: destination.assetPackage,
                                ),
                                new AssetImage(
                                  'images/tomato.jpg',
                                  // package: destination.assetPackage,
                                ),
                                new AssetImage(
                                  'images/lemons.jpg',
                                  // package: destination.assetPackage,
                                ),
                                new AssetImage(
                                  'images/kiwi.jpg',
                                  // package: destination.assetPackage,
                                ),
                                new AssetImage(
                                  'images/guava.jpg',
                                  // package: destination.assetPackage,
                                ),
                                new AssetImage(
                                  'images/grapes.jpg',
                                  // package: destination.assetPackage,
                                ),
                              ],
                              boxFit: BoxFit.scaleDown,
                              showIndicator: false,

                              autoplay: false,
                            ),
                          )
                        ],
                      ),

                    ),
                  ]),
            ),
             

             Container(
               alignment: Alignment.topLeft,
               padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 0.0),
               child: DefaultTextStyle(
                 style: descriptionStyle,
                 child: Column(
                     mainAxisSize: MainAxisSize.max,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                 // three line description
                 Padding(
                 padding: const EdgeInsets.only(bottom: 8.0),
                 child: Text(itemname,
                 style: TextStyle(fontWeight: FontWeight.normal,fontFamily:'Roboto',color: Color(0xff415568).withOpacity(0.5),fontSize: 16.0,letterSpacing: 0.64),
             ),
             ),
             Padding(
               padding: const EdgeInsets.only(bottom: 8.0),
               child: Text('Advanced Java',
                 style: TextStyle(fontWeight: FontWeight.w500,fontFamily:'Roboto',color: Color(0xff415568),fontSize: 26.0,letterSpacing: 0.64),
             ),
             ),
              ],
            )
        )
             ),
              Container(
                margin: EdgeInsets.all(10.0),
                  child:  Container(
                          padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                          child: DefaultTextStyle(
                            style: descriptionStyle,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Select the edition that you want',
                                   style: TextStyle(fontWeight: FontWeight.normal,fontFamily:'Roboto',color: Color(0xff415568).withOpacity(0.6)),
                                   ),
                                  Container(
                                        padding: EdgeInsets.only(top:8.0),
                                      ),
                                  Row(
                                    children:yearList.map((MyButtonModal year) {
                                     return
                                     Container(
                                       padding: EdgeInsets.only(right:8.0),
                                       child :FlatButton(
                                        color: year.changeButtonColor ?  Color(0xff35B2FE) : Color(0xffF2F9FF) , onPressed: () {
                                               setState(() => {
                                                 year.changeButtonColor = !year.changeButtonColor
                                               });},
                                        child: Text(year.buttonText)
                                        ));
                                     }).toList()
                                    ),
                              ],
                              )
                          )
                      )
                  
                ),
              Container(
                margin: EdgeInsets.all(10.0),
                  child: Container(
                          padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                          child: DefaultTextStyle(
                            style: descriptionStyle,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Select the quality you wish',
                                   style: TextStyle(fontWeight: FontWeight.normal,fontFamily:'Roboto',color: Color(0xff415568).withOpacity(0.6)),
                                   ),
                                  Container(
                                        padding: EdgeInsets.only(top:8.0),
                                      ),
                                  Row(
                                    children:grade.map((MyButtonModal year) {
                                     return
                                     Container(
                                       padding: EdgeInsets.only(right:8.0),
                                       child: FlatButton(
                                        color: year.changeButtonColor ?  Color(0xff35B2FE) : Color(0xffF2F9FF) , onPressed: () {
                                               setState(() => {
                                                 year.changeButtonColor = !year.changeButtonColor
                                               });},
                                        child: Text(year.buttonText)
                                        ));
                                     }).toList()
                                  ),
                              ],
                              )
                          )
                      )
                  
                ),
               Container(
                  alignment: Alignment.center,
                  child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Row(
                                     mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                       Text('20% off',
                                   style: TextStyle(fontWeight: FontWeight.w500,fontFamily:'Roboto',color: Color(0xff28B446),fontSize: 12.0),
                                   ),
                                   Padding(padding: EdgeInsets.only(left: 4.0),),
                                     Text('₹200',
                                   style: TextStyle(fontWeight: FontWeight.w500,fontFamily:'Roboto',color: Color(0xff415568).withOpacity(0.5),fontSize: 16.0)),
                                   
                                   ]
                                  ),
                                  Text('₹160',
                                   style: TextStyle(fontWeight: FontWeight.w500,fontFamily:'Roboto',color: Color(0xff415568),fontSize: 34.0),
                                   ),
                                ],
                              )
                          ),
                          Padding(padding: EdgeInsets.only(top: 12.0),),
              Row(
                children: <Widget>[
                    DefaultTextStyle(
                     style: descriptionStyle,
                     child:Container(  
                     decoration: BoxDecoration(
                       gradient: LinearGradient(
                        begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          // Add one stop for each color. Stops should increase from 0 to 1
          stops: [0.1, 0.5, 0.7, 0.9],
          colors: [
            // Colors are easy thanks to Flutter's Colors class.
            Colors.blue[800],
            Colors.blue[700],
            Colors.blue[600],
            Colors.blue[400],
          ]
                       )
                     ),
          child:ButtonTheme(
                           minWidth: 375.0,
                           height: 80.0,
                          child:FlatButton(
                         onPressed: () {
                         setState(() => {});
                       },
                      child: 
                        Text('Add to bag',
                                   style: TextStyle(fontWeight: FontWeight.bold,fontFamily:'Roboto',color: Color(0xffFFFFFF),fontSize: 16.0,letterSpacing: 0.64),
                                   ),
                  
                        )  
                         )
                 )
                    )]
                    
             ),
            

    ]
    )
    )
        )
    );
  }
}
