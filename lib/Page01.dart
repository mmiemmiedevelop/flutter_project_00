import 'package:flutter/material.dart';

class Page01 extends StatelessWidget {
  const Page01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF8DE),

      appBar: AppBar(
        centerTitle: false,
        toolbarHeight: 60,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFFFF8DE),
        titleSpacing: 20,

        title: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset( //뒤로가기버튼
                'assets/images/icon_arrow.png',
                width: 20,
                height: 20,
              ),
              SizedBox(width: 7),
              Text(
                'Back',
                style: TextStyle(fontSize: 12, color: Color(0xFF222222)),
              ),
            ],
          ),
        ),

        flexibleSpace: Stack( //개인이미지
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: 120,
              right: 100,
              child: Image.asset(
                'assets/images/photo01_sq.png',
                width: 200,
                height: 200,
              ),
            ),
          ],
        ),
      ),

      body: Center(
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 255, 254, 255).withOpacity(0.7),
                Color.fromARGB(255, 255, 255, 255),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          width: 300, height: 500,

          child: Column( 
            children: [
              Padding(padding: EdgeInsets.fromLTRB(0,60,0,0),),
              Container(width: 100, height: 40,
              child: Text('윤한조', textAlign: TextAlign.center, //이름
              style: TextStyle(color: Colors.black,
              fontSize: 30, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 10),
              Container(width: 100, height: 30,
              child: Text('ISFJ', textAlign: TextAlign.center, //mbti
              style: TextStyle(color: Color(0xFFFFDF60),
              fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 10),
              Container(width: 250, height: 30, //관심사
              child: Text('#여행 #스노클링 #사진촬영 #요리 #헬스', textAlign: TextAlign.center,
              style: TextStyle(color: Color.fromARGB(255, 102, 102, 102), fontSize: 13)),
              ),
              const SizedBox(height: 10),
              Container(width: 250, height: 200, //자기소개 수정, 줄바꿈:\n
              child: Text('저는 컴퓨터공학과를 졸업하고\n다른 일을 하면서 ios 앱 개발을\n공부하고 싶은 마음이 있었는데\n( ios 강의가 없었어요 🥲)\n시간도 없고 독학도 힘들 거 같아서\n내일배움카드로 학원을 알아보다가\n스파르타코딩클럽을 접하게 되었습니다.\n\n앞으로 잘 부탁드립니다! :)', textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 15)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
