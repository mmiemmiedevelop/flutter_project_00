import 'package:flutter/material.dart';
import 'Page01.dart';
import 'Page02.dart';
import 'Page03.dart';

// 프로필 리스트 정의
final List<Map<String, dynamic>> profiles = [
  {
    'name': '윤한조',
    'mbti': 'ISFJ',
    'imagePath': 'assets/images/photo01_cir.png',
    'targetPage': Page01(),
  },
  {
    'name': '이 샘',
    'mbti': 'INTP',
    'imagePath': 'assets/images/photo02_cir.png',
    'targetPage': Page02(),
  },
  {
    'name': '문현선',
    'mbti': 'INTJ',
    'imagePath': 'assets/images/photo03_cir.png',
    'targetPage': Page03(),
  },
];

// ProfileCard 위젯 수정 (파라미터 추가!)
class ProfileCard extends StatelessWidget {
  final String name;
  final String mbti;
  final String imagePath;
  final Widget targetPage;

  const ProfileCard({
    super.key,
    required this.name,
    required this.mbti,
    required this.imagePath,
    required this.targetPage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Color(0xFFE0E0E0), width: 1),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(imagePath),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      SizedBox(width: 9),
                      Container(width: 2, height: 12, color: Color(0xFFFFDF60)),
                      SizedBox(width: 9),
                      Text(mbti, style: TextStyle(fontSize: 22, color: Color(0xFFAAAAAA))),
                    ],
                  ),
                  SizedBox(height: 13),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => targetPage),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 8),
                          width: 82,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Color(0xFFAAAAAA),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('바로가기', style: TextStyle(fontSize: 12, color: Colors.white)),
                              SizedBox(width: 4),
                              Image.asset('assets/images/icon_arrow_wt.png'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF8DE),
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
              Image.asset('assets/images/icon_arrow.png', width: 20, height: 20),
              SizedBox(width: 7),
              Text('Back', style: TextStyle(fontSize: 12, color: Color(0xFF222222))),
            ],
          ),
        ),
        flexibleSpace: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: MediaQuery.of(context).padding.top + 48,
              right: 33,
              child: Image.asset('assets/images/icon_bookmark.png'),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Container(
                width: double.infinity,
                height: constraints.maxHeight,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: profiles.map((profile) {
                      return ProfileCard(
                        name: profile['name'],
                        mbti: profile['mbti'],
                        imagePath: profile['imagePath'],
                        targetPage: profile['targetPage'],
                      );
                    }).toList(),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
