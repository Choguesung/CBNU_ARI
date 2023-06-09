import 'package:flutter/material.dart';

class DefaultLayout extends StatelessWidget {
  final Widget child;

  const DefaultLayout({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CBNU',
      theme: ThemeData(primaryColor: Colors.white),
      home: DefaultTabController(
          length: 5,
          child: Scaffold(
            appBar: AppBar(
              title: Text('충북대학교 동아리 앱'),
            ),
            body: const TabBarView(
              children: [
                _HomeScreenDetail(),
                AdvertiseScreen(),
                GroupScreen(),
                SearchScreen(),
                MyInformationScreen(),
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
          )),
    );
  }
}
