import 'package:flutter/material.dart';
import 'package:paytron_app/ui/Recharge.dart';
import '/model/ImageSliderModel.dart';
import '/model/Listpaymodel.dart';
import 'package:carousel_slider/carousel_slider.dart';

class FlutterDevs extends StatefulWidget {
  @override
  _FlutterDevsState createState() => _FlutterDevsState();
}

class _FlutterDevsState extends State<FlutterDevs> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(70.0), child: _appBar()),
        body: _bodyItem(),
        bottomNavigationBar: _bottemTab());
  }

  Widget _appBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(50.0),
      child: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Center(
          child: Row(
            children: <Widget>[
              Image.asset(
                "assets/outline_account_circle.png",
                color: Colors.white,
                height: 40,
                width: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Your Location',
                      style: TextStyle(fontSize: 10),
                    ),
                    Row(children: <Widget>[
                      Text(
                        'Noida',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.arrow_drop_down),
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 13),
            child: Image.asset(
              "assets/outline_qrscan.png",
              color: Colors.white,
              height: 24,
              width: 24,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 13),
            child: Image.asset(
              "assets/notifications.png",
              color: Colors.white,
              height: 24,
              width: 24,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 13,
            ),
            child: Image.asset(
              "assets/outline_help.png",
              color: Colors.white,
              height: 24,
              width: 24,
            ),
          ),
        ],
        elevation: 0,
      ),
    );
  }

  Widget _bottemTab() {
    return BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.deepPurple,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: Text(
                'Home',
              )),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/stores.png",
                height: 19.5,
                width: 19.5,
              ),
              title: Text(
                'Stores',
              )),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/placeholder.png",
                height: 19.5,
                width: 19.5,
              ),
              title: Text(
                'Apps',
              )),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/rupee.png",
                height: 19.5,
                width: 19.5,
              ),
              title: Text(
                'My Money',
              )),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/history.png",
                height: 19.5,
                width: 19.5,
              ),
              title: Text(
                'History',
              )),
        ]);
  }

  Widget _bodyItem() {
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: Container(
            color: Colors.amber[50],
            child: Padding(
              padding: const EdgeInsets.only(left: 13, top: 13, bottom: 8),
              child: Text(
                'Make the way you want',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: <Widget>[
              Container(
                height: 95,
                color: Colors.amber[50],
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1),
                  scrollDirection: Axis.horizontal,
                  itemCount: _getListpayList().length,
                  itemBuilder: (context, index) {
                    return Listpay(_getListpayList()[index]);
                  },
                ),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Divider(
            color: Colors.grey[400],
            height: 1,
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            child: Text(
              'Money Transfers',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurpleAccent),
            ),
            padding: EdgeInsets.only(left: 15, top: 10, bottom: 13),
          ),
        ),
        SliverToBoxAdapter(
            child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Container(
                height: 75,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: _getMoneyTransferList().length,
                    itemBuilder: (context, index) {
                      return MoneyTransfer(_getMoneyTransferList()[index]);
                    }),
              ),
            ),
          ],
        )),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 0),
            child: Divider(
              color: Colors.grey[700],
              height: 1,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            color: Colors.grey[100],
            height: 92,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "assets/banking.png",
//                          color: Colors.pink[700],
                        width: 40,
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Text(
                          'View All\nOffers',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset("assets/suggestions_strip.png"),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "assets/ic_menu_invite.png",
                        color: Colors.orange[700],
                        width: 43,
                        height: 43,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Text(
                          'View My\nRewards',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset("assets/suggestions_strip.png"),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "assets/ic_menu_invite.png",
//                          color: Colors.deepPurple[700],
                        width: 43,
                        height: 43,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Text(
                          'Refer & Earn\nUp to ₹1000',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            child: Text(
              'Recharge',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurpleAccent),
            ),
            padding: EdgeInsets.only(left: 15, top: 10, bottom: 13),
          ),
        ),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 110.0,
            mainAxisSpacing: 0.5,
            crossAxisSpacing: 0.5,
            childAspectRatio: 1,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return GridItem(_getGridItemList()[index], index);
            },
            childCount: _getGridItemList().length,
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Brand Voucher',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
            padding: EdgeInsets.only(left: 15, top: 15),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            color: Colors.grey[100],
            height: 92,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "assets/banking.png",
//                          color: Colors.pink[700],
                        width: 40,
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Text(
                          'View All\nOffers',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset("assets/suggestions_strip.png"),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "assets/ic_menu_invite.png",
                        color: Colors.orange[700],
                        width: 43,
                        height: 43,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Text(
                          'View My\nRewards',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset("assets/suggestions_strip.png"),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "assets/ic_menu_invite.png",
//                          color: Colors.deepPurple[700],
                        width: 43,
                        height: 43,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Text(
                          'Refer & Earn\nUp to ₹1000',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  List<Listpaymodel> _getListpayList() {
    List<Listpaymodel> list = <Listpaymodel>[];
    list.add(Listpaymodel("assets/bank1.png", "Bank Account Added"));
    list.add(Listpaymodel("assets/wallet.jpg", "Wallet\nActivated"));
    list.add(Listpaymodel("assets/card.png", "Add\nCard"));

    list.add(Listpaymodel("assets/camear1.jpg", "Add\nPhoto"));
    list.add(Listpaymodel("assets/finance.png", "Pay \nNow"));
    return list;
  }

  List<Listpaymodel> _getMoneyTransferList() {
    List<Listpaymodel> list = <Listpaymodel>[];
    list.add(Listpaymodel("assets/self.png", "To Self"));
    list.add(Listpaymodel("assets/account.png", "To Account"));
    list.add(Listpaymodel("assets/bank2.jpg", "Bank Balance"));
    Listpaymodel("assets/bank1.png", "Bank Balance");
    list.add(Listpaymodel("assets/contact1.png", "To Contact"));

    list.add(Listpaymodel("assets/arrow.png", "See All"));

    return list;
  }

  List<Listpaymodel> _getGridItemList() {
    List<Listpaymodel> list = <Listpaymodel>[];
    list.add(Listpaymodel("assets/recharge-icon.jpg", "Recharge"));
    list.add(Listpaymodel("assets/dth2.png", "DTH"));
    list.add(Listpaymodel("assets/electrict.png", "Electricity"));
    list.add(Listpaymodel("assets/credit.png", "Credit Card"));
    list.add(Listpaymodel("assets/post.png", "Postpaid"));
    list.add(Listpaymodel("assets/landphone1.png", "Landline"));
    list.add(Listpaymodel("assets/broad.png", "Broadband"));
    list.add(Listpaymodel("assets/gascylinder.png", "Gas"));
    list.add(Listpaymodel("assets/water1.png", "Water"));
    list.add(Listpaymodel("assets/arrow.png", "See All"));
    return list;
  }

  List<ImageSliderModel> _getImageSliderList() {
    List<ImageSliderModel> list = [];
    list.add(ImageSliderModel("assets/ghghgh.jpg"));
    list.add(ImageSliderModel("assets/ghghgh.jpg"));

    return list;
  }

  CarouselSliderList(List<ImageSliderModel> getImageSliderList) {
    return getImageSliderList.map((i) {
      return Builder(builder: (BuildContext context) {
        return imageSliderItem(i);
      });
    }).toList();
  }

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  Widget dots(int current, index) {
    if (current != index) {
      return Container(
          width: 8.0,
          height: 8.0,
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: dotColor(index),
          ));
    } else {
      return Container(
          width: 8.0,
          height: 8.0,
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
              color: dotColor(index)));
    }
  }

  Widget imageSliderItem(ImageSliderModel i) {
    return Container(
        padding: EdgeInsets.only(left: 8, right: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        width: MediaQuery.of(context).size.width / 1.05,
        child: ClipRRect(
          clipBehavior: Clip.antiAlias,
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            i.path,
            fit: BoxFit.fill,

//            width: MediaQuery.of(context).size.width/4,
//            height: MediaQuery.of(context).size.height,
          ),
        ));
  }

  Color dotColor(int index) {
    return _currentIndex == index ? Colors.grey : Colors.black;
  }
}

class Listpay extends StatelessWidget {
  Listpaymodel listpaymodel;

  Listpay(this.listpaymodel);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
          listpaymodel.imagepath,
          width: 40,
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 3),
          child: Text(
            listpaymodel.title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 10.5, color: Colors.black),
          ),
        ),
      ],
    );
  }
}

class MoneyTransfer extends StatelessWidget {
  Listpaymodel listpaymodel;

  MoneyTransfer(this.listpaymodel);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
          listpaymodel.imagepath,
          width: 46,
          height: 46,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text(
            listpaymodel.title,
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 11),
          ),
        ),
      ],
    );
  }
}

class SentMoney extends StatelessWidget {
  final Listpaymodel listpaymodel;

  SentMoney(this.listpaymodel);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
          listpaymodel.imagepath,
          width: 46,
          height: 46,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text(
            listpaymodel.title,
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 11),
          ),
        ),
      ],
    );
  }
}

class GridItem extends StatelessWidget {
  final Listpaymodel listpaymodel;
  final int index;

  GridItem(this.listpaymodel, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("$index");
        if(index==0)
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Recharge()),
        );
      },
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              listpaymodel.imagepath,
              width: 30,
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                listpaymodel.title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 11),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
