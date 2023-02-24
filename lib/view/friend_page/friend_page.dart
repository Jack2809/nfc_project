

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nfc_project/constant.dart';
import 'package:nfc_project/view/friend_page/friend_detail_page.dart';

class FriendPage extends StatefulWidget{

  @override
  State<FriendPage> createState() => _FriendPageState();
}

class _FriendPageState extends State<FriendPage> {
  @override
  Widget build(BuildContext context) {
    Size size = getSize(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Danh sách bạn bè',style: boldText(context)),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: GridView.builder(
          padding: EdgeInsets.all(10.0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 15.0,
              crossAxisSpacing: 15.0,
              childAspectRatio: 0.75,
            ),
            itemCount: 2,
            itemBuilder: (BuildContext context,int index){
              return GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FriendDetailPage()),
                  );
                },
                  child: FriendCard()
              );
            }),
      ),
    );
  }
}


class FriendCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = getSize(context);
    return Container(
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 2.5),
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(color: Colors.black,offset: Offset(5,5))
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: size.height * 0.23,
            width: size.width * 0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage('assets/avatar.png'),
                fit: BoxFit.fill
              )
            ),
          ),
          Text('Zac Efron',style: boldText1(context),),
          Row(
            children: [
              Icon(Icons.place,color: Colors.black,),
              Text('California, America',style: blurText(context),),
            ],
          ),
        ],
      ),
    );
  }

}