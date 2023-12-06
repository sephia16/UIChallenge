import 'package:flutter/material.dart';
import 'package:webtoon_app/widgets/webtoon_widget.dart';
import 'package:webtoon_app/models/webtoon_model.dart';
import 'package:webtoon_app/services/api_service.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Colors.green,
        backgroundColor: Colors.white,
        title: const Text(
          "오늘의 웹툰",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: FutureBuilder(
        future: webtoons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Expanded(child: makeList(snapshot)),
              ],
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  ListView makeList(AsyncSnapshot<List<WebtoonModel>> snapshot) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length,
      itemBuilder: (context, index) {
        //context, index는 반드시 있는 값임 있는값을 말하는거네 현재 빌드 컨텍스트. 현재 항목 인덱스
        var webtoon = snapshot.data![index];
        return Webtoon(
          title: webtoon.title,
          thumb: webtoon.thumb,
          id: webtoon.id,
        );
      },
      separatorBuilder: (context, index) => const SizedBox(width: 40),
    );
  }
}

// 저와 같이 흐름에 대해 궁금해 하실분들이 게실거같아 글남깁니다.

// 먼저 initState 는 build 메소드가 호출이 되기전에 한번 호출됩니다.
// initState 안에 waitForWebtoon 메소드 호출하게 되면서
// snapshot 객체를 미리 반환하고 기다립니다.
// 이때 snapshot 객체는 아직 실제 데이터가 도착안했으니
// build 메소드를 바로 실행합니다.
// 후에 데이터가 문제없이 전달되면
// 그때서야 isLoading = false 와 setState 을 호출하게 됩니다.
// 그리고 setState 을 호출했기에 build 메소드를 자동 호출하게 되며 re-render 가 됩니다.

// 정리하자면,
// 1. initState
// 2. waitForWebtoons
// 3. ApiService.getTodaysToons
// 4. build
// 5. 데이터 도착
// 6. isLoading = false
// 7. setState
// 8. build

// 위 순서대로 코드가 진행이 됩니다.
