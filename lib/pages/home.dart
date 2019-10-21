import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(height: 25, child: Image.asset('images/logo.png')),
        actions: <Widget>[
          Image.asset(
            'images/diskon.png',
            scale: 2.5,
          )
        ],
        backgroundColor: Colors.white,
        elevation: 1.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: <Widget>[
            Container(
              height: 35,
              decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.asset(
                      'images/gopay.png',
                      scale: 3,
                    ),
                    Text(
                      'Rp.37.000',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.blue[800],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8))),
              child: Container(
                padding: EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new HeaderItem(images: 'images/pay.png', title: 'Pay',),
                    new HeaderItem(images: 'images/promo.png', title: 'Promo',),
                    new HeaderItem(images: 'images/topup.png', title: 'Top Up',),
                    new HeaderItem(images: 'images/more.png', title: 'More',),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HeaderItem extends StatelessWidget {
  const HeaderItem({
    Key key, this.images, this.title
  }) : super(key: key);

  final String images;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(images, scale: 3,),
        SizedBox(height: 10,),
        Text(title, style: TextStyle(color: Colors.white ),)
      ],
    );
  }
}
