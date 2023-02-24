import 'package:flutter/material.dart';
import 'package:nfc_project/constant.dart';

class PersonalPage extends StatefulWidget {


  const PersonalPage({super.key});


  @override
  State<PersonalPage> createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                height: size.height * 0.3,
                // color: Colors.red,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      top:0,
                      child: Container(
                        height: size.height * 0.2,
                        width: size.width,
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(width:2.0,color: Colors.black)
                            ),
                            image: DecorationImage(
                                image: AssetImage('assets/wallpaper.jpg'),
                                fit: BoxFit.fill
                            )
                        ),
                      ),
                    ),
                    Positioned(
                      top:0,
                      child: Text('Hồ sơ cá nhân',style: boldText(context)),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        height: size.height * 0.2,
                        width: size.width * 0.35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                                image:AssetImage('assets/avatar.png'),
                                fit: BoxFit.fill
                            ),
                            boxShadow: [
                              BoxShadow(color: Colors.greenAccent.withOpacity(0.5),blurRadius:5.0,offset: Offset(5,0)),
                              // BoxShadow(color: Colors.black),

                            ]
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: size.height * 0.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Zac Efron',style: boldText(context)),
                  SizedBox(width: size.width * 0.02,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(5.0)
                    ),
                    child: Icon(
                      Icons.check,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Text('@ZacEfron'),
              SizedBox(height: size.height * 0.02,),
              Container(
                width: size.width * 0.6,
                child: Text('being an actor is a great idea, I can live many different lives',textAlign: TextAlign.center,style: blurText(context)),
              ),
              SizedBox(height: size.height * 0.03,),
              Container(
                height: size.height * 0.1,
                width: size.width * 0.9,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    // border: Border.all(color: Colors.black12),
                    boxShadow: [
                      BoxShadow(color: Colors.black.withOpacity(0.5),blurRadius:5.0,offset: Offset(0,2)),
                      BoxShadow(color: Colors.black.withOpacity(0.5),blurRadius:10.0,offset: Offset(0,-1)),
                    ]
                ),
                child: Center(child: Text('Cập nhật hồ sơ')),
              ),

              SizedBox(height: size.height * 0.02,),
              Container(
                height: size.height * 0.1,
                width: size.width * 0.9,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    // border: Border.all(color: Colors.black12),
                    boxShadow: [
                      BoxShadow(color: Colors.black.withOpacity(0.5),blurRadius:5.0,offset: Offset(0,2)),
                      BoxShadow(color: Colors.black.withOpacity(0.5),blurRadius:10.0,offset: Offset(0,-1)),
                    ]
                ),
                child: Center(child: Text('Đăng xuất')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
