import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';

import '../model/model_movie.dart';

class CarouseImage extends StatefulWidget {

  final List<Movie> movies;
  CarouseImage({required this.movies});
  _CarouseImageState createState() => _CarouseImageState();
}

class _CarouseImageState extends State<CarouseImage> {
  late List<Movie> movies;
  late List<Widget> images;
  late List<String> keyword;
  late List<bool> likes;

  int _currentPage = 0;
  late String _currentKeyword;



  @override
  void initState(){
    super.initState();
    movies = widget.movies;
    images = movies.map((m) => Image.asset('./assets/images'+ m.poster)).toList();
    keyword = movies.map((m) => m.keyword).toList();
    likes = movies.map((m) => m.like).toList();
    _currentKeyword = keyword[0];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20)
          ),
          CarouselSlider(
              items: images, options: (index){
            setState(() {
              _currentPage = index;
              _currentKeyword = keyword[_currentPage]
            });
          })
        ],
      ),
    );
  }
}
