import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clonecode/model/model_movie.dart';
import 'dart:ui';

class DetailScreen extends StatefulWidget {
  final Movie movie;
  const DetailScreen({Key? key, required this.movie}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool like = false;


  @override
  void initState(){
    super.initState();
    like = widget.movie.like;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: ListView(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image : AssetImage('assets/images/'+ widget.movie.poster),
                        fit: BoxFit.cover
                      )
                    ),
                    child: ClipRRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 10,
                          sigmaY: 10
                        ),
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 45, 0, 10),
                                height: 300,
                                child: Image.asset('./assets/images/${widget.movie.poster}'),
                              ),
                              Container(
                                padding : EdgeInsets.all(7),
                                child: Text(
                                  '어쩌구 저쩌구',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 13)
                                ),
                              ),
                              Container(
                                padding : EdgeInsets.all(7),
                                child: Text(
                                    '사랑의 불시착',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(3),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor: Colors.red,
                                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                  ),
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Icon(
                                        Icons.play_arrow,
                                        color: Colors.white,
                                      ),
                                      SizedBox(width: 3),
                                      Text(
                                        '재생',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                child: Text(widget.movie.toString()),
                              ),
                              Container(
                                padding: EdgeInsets.all(7),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '출연: 박정훈, 전수완, 조병주, 권준우',
                                  style: TextStyle(color: Colors.white),
                                ),

                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ),
                  Positioned(
                      child: AppBar(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                      )
                  )
                ],
              ),
              Container(
                color: Colors.black26,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: InkWell(
                        onTap: () {
                          setState(() {});
                        },
                        child: Column(
                          children: <Widget>[
                            like ? Icon(Icons.check) : Icon(Icons.add),
                            Padding(
                              padding: EdgeInsets.all(5),
                            ),
                            Text(
                              '내가 찜한 콘텐츠',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.white60,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.thumb_up),
                            Padding(
                              padding: EdgeInsets.all(5),
                            ),
                            Text(
                              '평가',
                              style: TextStyle(
                                  fontSize: 11, color: Colors.white60),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.send),
                            Padding(padding: EdgeInsets.all(5)),
                            Text(
                              '공유',
                              style: TextStyle(
                                  fontSize: 11, color: Colors.white60),
                            ),
                          ],
                        ),
                      ),
                    )

                  ],
                ),
              )
            ]),
    )));
  }
}

Widget makeMenuButton() {
  return Container();
}