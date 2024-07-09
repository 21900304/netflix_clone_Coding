import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/model_movie.dart';
import '../screen/detail_screen.dart';

class BoxSlider extends StatelessWidget {
  final List<Movie> movies;
  BoxSlider({required this.movies});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('지금 뜨는 콘텐츠'),
          Container(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: makeBoxImages(context,movies), //위젯 트리의 상위 or 하위 위젯을 찾기 위함, 위젯을 빋드할 때 필요한 정보를 제공한다.
            ),
          )
        ],
      ),
    );
  }
}

List<Widget> makeBoxImages(BuildContext context, List<Movie> movies) { //현재의 Widget 트리의 context를 받기 위해서 매개 변수로 추가
  List<Widget> results = [];
  for (var i = 0; i < movies.length; i++) {
    results.add(
        InkWell(
          onTap: () {Navigator.of(context).push(MaterialPageRoute<Null>(fullscreenDialog: true, builder: (BuildContext context)
          { return DetailScreen(movie: movies[i]);  },));},
          child: Container(
            padding: EdgeInsets.only(right: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Image.asset('images/'+ movies[i].poster),
            ),
          ),
        )
    );
  }
  return results;
}