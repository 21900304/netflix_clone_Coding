class Movie{
  final String title; // final : 변경할 수 없는 값
  final String keyword; // late: 변수를 나중에 초기화할 것임을 컴파일러에게 알려줌
  final String poster;
  final bool like;

  Movie.fromMap(Map<String, dynamic> map)
    :   title = map['title'],
        keyword = map['keyword'],
        poster = map['poster'],
        like = map['like'];

  @override // 상위 class의 method를 재정의하기 위해 명시적으로 선언
  String toString() => "Movie<$title: $keyword>"; // 객체를 문자열로 반환
}