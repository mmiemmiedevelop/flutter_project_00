import 'package:flutter/material.dart';

class Page03 extends StatelessWidget {
  const Page03({super.key});

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
                'assets/images/photo03_sq.png',
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
              child: Text('문현선', textAlign: TextAlign.center, //이름
              style: TextStyle(color: Colors.black,
              fontSize: 30, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 10),
              Container(width: 100, height: 30,
              child: Text('INTJ', textAlign: TextAlign.center, //mbti
              style: TextStyle(color: Color(0xFFFFDF60),
              fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 10),
              Container(width: 250, height: 30, //관심사
              child: Text('#앱개발 #유튜브 #웹툰 #술', textAlign: TextAlign.center,
              style: TextStyle(color: Color.fromARGB(255, 102, 102, 102), fontSize: 13)),
              ),
              const SizedBox(height: 10),
              Container(width: 250, height: 200, //자기소개 수정, 줄바꿈:\n
              child: Text('서비스직→웹디자이너→앱개발자\n(목표!)\n타전공, 타직무였지만 앱 개발자가 되고 싶다는 마음 하나로\n내일배움캠프에 지원하게 되었습니다.\n기획부터 배포까지 스스로 할수있는\n1인 앱개발자가 되고싶습니다!', textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 15)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
