import 'package:flutter/material.dart';

class Page02 extends StatelessWidget {
  const Page02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF8DE),

      appBar: AppBar(
        toolbarHeight: 60,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFFFF8DE),
        titleSpacing: 20,

        title: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                //뒤로가기버튼
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

        flexibleSpace: Stack(
          //개인이미지
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: 120,
              right: 100,
              child: Image.asset(
                'assets/images/photo02_sq.png',
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
          width: 300,
          height: 500,

          child: Column(
            children: [
              Padding(padding: EdgeInsets.fromLTRB(0, 60, 0, 0)),
              Container(
                width: 100,
                height: 40,
                child: Text(
                  '이 샘',
                  textAlign: TextAlign.center, //이름
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: 100,
                height: 30,
                child: Text(
                  'INTP',
                  textAlign: TextAlign.center, //mbti
                  style: TextStyle(
                    color: Color(0xFFFFDF60),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: 250,
                height: 30, //관심사
                child: Text(
                  '#Dance #Food #Cat',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(255, 102, 102, 102),
                    fontSize: 13,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: 250,
                height: 200, //자기소개 수정, 줄바꿈:\n
                child: Text(
                  '안녕하세요 저는 내일배움캠프를 통해서 Flutter로 앱을 만들어 보는 것을 목표로 하고있습니다.\n팀프로젝트가 종료되고 지속적으로 개인프로젝트를 스토어에 런칭할 계획입니다.\n다양한 분야의 분들과 팀프로젝트를 해보는게 많이 기대가 됩니다!',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
