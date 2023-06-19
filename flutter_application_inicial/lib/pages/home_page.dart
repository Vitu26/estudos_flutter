import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_inicial/pages/pageViews/one_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();

  int indexBottomNavigationBar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
        centerTitle: Paint.enableDithering,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Vitu'),
              accountEmail: Text('vitu@vitu.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.black,
                child: Text('V'),
              ),
            ),
            ListTile(
              title: Text('item 1'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                _pageController.jumpToPage(0); //para ir para pagina de indice 0
                Navigator.pop(context); //para fechar o drawer
                setState(() {
                  indexBottomNavigationBar = 0;//para mudar na barra de navegação
                });
              },
            ),
            ListTile(
              title: Text('item 2'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                _pageController.jumpToPage(1); //para ir para pagina de indice 1
                Navigator.pop(context); //para fechar o drawer
                setState(() {
                  indexBottomNavigationBar = 1;//para mudar na barra de navegação
                });
              },
            ),
            ListTile(
              title: Text('item 3'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                _pageController.jumpToPage(2); //para ir para pagina de indice 2
                Navigator.pop(context); //para fechar o drawer
                setState(() {
                  indexBottomNavigationBar = 2;//para mudar na barra de navegação
                });
              },
            ),
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        children: [
          OnePage(),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.green,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: indexBottomNavigationBar,
          onTap: (int index) {
            setState(() {
              indexBottomNavigationBar = index;
            });

            _pageController.animateToPage(index,
                duration: Duration(milliseconds: 300), curve: Curves.ease);
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.access_alarms_rounded), label: 'item 1'),
            BottomNavigationBarItem(
                icon: Icon(Icons.abc_outlined), label: 'item 2'),
            BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'item 3')
          ]),
    );
  }
}
