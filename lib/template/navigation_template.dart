import 'package:flutter/material.dart';

class NavigationTemplate extends StatelessWidget {
  const NavigationTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text('충북대학교 동아리 앱'),
        ),
        body: const TabBarView(
          children: [
            // 여기에 탭들 들어가면 됨
          ],
        ),
        bottomNavigationBar: TabBar(tabs: [
          Tab(
            icon: Icon(Icons.home),
            text: '홈 스크린',
          ),
          Tab(
            icon: Icon(Icons.chat),
            text: '홍보 게시판',
          ),
          Tab(
            icon: Icon(Icons.people),
            text: '동아리',
          ),
          Tab(
            icon: Icon(Icons.search),
            text: '통합검색',
          ),
          Tab(
            icon: Icon(Icons.manage_accounts),
            text: '내 정보',
          ),
        ]),
      ),
    );
  }
}
