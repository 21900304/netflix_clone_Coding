import 'package:flutter/cupertino.dart';
import 'package:netflix_clonecode/widget/circle_slider.dart';

import '../model/model_movie.dart';
import '../widget/box_slider.dart';
import '../widget/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movie> movies = [
    Movie.fromMap({
      'title' : '사랑의 불시착',
      'keyword' : '사랑/로맨스/판타지',
      'poster' : 'test_movie_1.png',
      'like' : false,
    }),
    Movie.fromMap({
      'title' : '사랑의 불시착',
      'keyword' : '사랑/로맨스/판타지',
      'poster' : 'test_movie_1.png',
      'like' : false,
    }),
    Movie.fromMap({
      'title' : '사랑의 불시착',
      'keyword' : '사랑/로맨스/판타지',
      'poster' : 'test_movie_1.png',
      'like' : false,
    }),
    Movie.fromMap({
      'title' : '사랑의 불시착',
      'keyword' : '사랑/로맨스/판타지',
      'poster' : 'test_movie_1.png',
      'like' : false,
    }),
  ]; // 더미 데이터를 만드는 이뉴는 추후 DB와의 연동에서 실제로 가져오는 데이터를 그대로 처리하기 위함

  @override
  void initState(){ //statefulWidget이 호출될 때 단 한 번만 호출한다. 초기 상태 설정 or 일회성 설정 작업을 수행
    super.initState(); // 추가적인 초기화 작업
  } // ex: 애니 컨트로럴 초기화, 스트림 구독, 초기 데이터 로딩 등

  @override
  Widget build(BuildContext context) {
    return ListView(
        children:[
          Stack(
            children: [
              CarouseImage(movies : movies),
              TapBar()
            ],
          ),
          CircleSlider(movies: movies),
          BoxSlider(movies: movies)
        ]);
  }
}

class TapBar extends StatelessWidget {
  const TapBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/images/bbongflix_logo.png',
            fit: BoxFit.contain,
            height: 25,
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text('TV 프로그램',
            style: TextStyle(fontSize: 14))
          ),
          Container(
              padding: EdgeInsets.only(right: 1),
              child: Text('영화',
                  style: TextStyle(fontSize: 14))
          ),
          Container(
              padding: EdgeInsets.only(right: 1),
              child: Text('내가 찜한 컨텐츠',
                  style: TextStyle(fontSize: 14))
          )
        ],
      ),

    );
  }
}
