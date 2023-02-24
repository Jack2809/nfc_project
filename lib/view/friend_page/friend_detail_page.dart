import 'package:flutter/material.dart';
import 'package:nfc_project/constant.dart';

class FriendDetailPage extends StatefulWidget {


  const FriendDetailPage({super.key});


  @override
  State<FriendDetailPage> createState() => _FriendDetailPageState();
}

class _FriendDetailPageState extends State<FriendDetailPage> {

  final facebookUrl = 'www.facebook.com';

  // Future<void> _launchUrl(String url) async{
  // final Uri uri = Uri(scheme: 'https',host: url);
  // if(!await launchUrl(uri,mode: LaunchMode.externalApplication)){
  //   throw 'can not launch url';
  // }
  // }

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
                      top:10,
                      child: Text('Chi tiết bạn bè',style: boldText(context)),
                    ),
                    Positioned(
                      top:0,
                      left: 0,
                      child: IconButton(onPressed: (){
                        Navigator.of(context).pop();
                      }, icon: Icon(Icons.arrow_back_ios)),
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
              GestureDetector(
                onTap: () {
                  // _launchUrl(facebookUrl);
                },
                child: Container(
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
                  child: Container(
                    color: Colors.blue,
                    child: Row(
                      children: [
                        Icon(Icons.facebook,size: size.height * 0.1,color: Colors.white),
                        SizedBox(width: size.width * 0.1,),
                        Text('Truy cập Facebook',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: size.width * 0.05),)
                      ],
                    ),
                  )
                ),
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
                  child: Container(
                    padding: EdgeInsets.all(5.0),
                    color: Colors.purpleAccent,
                    child: Row(
                      children: [
                        Container(
                          height: size.height * 0.1,
                          width: size.width * 0.2,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/instagram.png')
                            )
                          ),
                        ),
                        SizedBox(width: size.width * 0.1,),
                        Text('Truy cập Instagram',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: size.width * 0.05),)
                      ],
                    ),
                  )
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
                  child: Container(
                    padding: EdgeInsets.all(5.0),
                    color: Color.fromRGBO(10, 102, 194, 1),
                    child: Row(
                      children: [
                        Container(
                          height: size.height * 0.1,
                          width: size.width * 0.2,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/linkedin.png')
                              )
                          ),
                        ),
                        SizedBox(width: size.width * 0.1,),
                        Text('Truy cập Linkedin',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: size.width * 0.05),)
                      ],
                    ),
                  )
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
                  child: Container(
                    padding: EdgeInsets.all(5.0),
                    color: Colors.green,
                    child: Row(
                      children: [
                        Icon(Icons.phone,color: Colors.white,size: size.height * 0.1),
                        SizedBox(width: size.width * 0.1,),
                        Text('Truy cập SDT',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: size.width * 0.05),)
                      ],
                    ),
                  )
              ),

            ],
          ),
        ),
      ),
    );
  }
}