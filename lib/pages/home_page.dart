import 'package:flutter/material.dart';
import 'package:mb_task4/styles.dart';

class HomePagee extends StatefulWidget {
  const HomePagee ({super.key});

  @override
  State<HomePagee> createState() => _HomePageeState();
}

class _HomePageeState extends State<HomePagee> {
  late PageController _pageController;
  int totalPage = 5;

  void onScroll() {
    print('test scroll');
  }

  @override
  void initState(){
    _pageController = PageController(
      initialPage: 0,
    )..addListener(onScroll);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          makePageWidget(
            page: 1,
            imagePath: 'assets/images/a001.jpg',
            title: 'Туман',
            description: Texts.text1,
          ),
          makePageWidget(
            page: 2,
            imagePath: 'assets/images/a002.jpg',
            title: 'Лестница',
            description: Texts.text2,
          ),
          makePageWidget(
            page: 3,
            imagePath: 'assets/images/a003.jpg',
            title: 'Дождь',
            description: Texts.text3,
          ),
          makePageWidget(
            page: 4,
            imagePath: 'assets/images/a004.jpg',
            title: 'Тыква',
            description: Texts.text4,
          ),
          makePageWidget(
            page: 5,
            imagePath: 'assets/images/a005.jpg',
            title: 'Свитер',
            description: Texts.text5,
          ),
        ],
      ),
    );
  }
}

Widget makePageWidget({page, imagePath, title, description}) {
  int totalPage = 5;
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(imagePath),
        fit: BoxFit.cover,
      )
    ),
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomRight, 
          stops: const [0.4, 0.9],
          colors: [
            Colors.black.withOpacity(.7),
            Colors.black.withOpacity(.1)
        ])
      ),
      child: Padding(
        padding: const EdgeInsets.all(17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  page.toString(),
                  style:  const TextStyle(
                    color: Colors.white38,
                    fontSize: 50,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                Text(
                  '/$totalPage',
                  style: const TextStyle(
                    color: Colors.white38,
                    fontSize: 19,
                  ),
                ),
              ],
            ),
            Expanded(
              child:Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: ThemeText.titleText,
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Container(
                        margin:  const EdgeInsets.only(right: 3),
                        child: ThemeIcon.iconSyes,
                      ),
                       Container(
                        margin:  const EdgeInsets.only(right: 3),
                         child: ThemeIcon.iconSyes,
                      ),
                       Container(
                        margin:  const EdgeInsets.only(right: 3),
                         child: ThemeIcon.iconSyes,
                      ),
                       Container(
                        margin:  const EdgeInsets.only(right: 3),
                         child: ThemeIcon.iconSyes,
                      ),
                       Container(
                        margin:  const EdgeInsets.only(right: 5),
                         child: ThemeIcon.iconSno,
                      ),
                      const Text( 
                        '4.9', style: TextStyle(color: Colors.white70),
                      ),
                      const Text(
                        '(5300)', style: TextStyle(color: Colors.white38, fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  /*Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Text(
                      description,
                        style: ThemeText.descriptionText,
                    ),
                  ),*/
                  // SafeArea(
                  //     child: ViewWidget,
                  // ),



                ],
              ) ,
            )
          ],
        ),
        ),
    ),
  );
}
/*
class ViewWidget extends StatefulWidget {
  @override
  ViewWidgetState createState() => ViewWidgetState();
}

class ViewWidgetState extends State{

  bool viewVisible = true;

  void showWidget(){
    setState(() {
      viewVisible = true;
    });
  }
  void hideWidget(){
    setState(() {
      viewVisible = false;
    });
  }

  Widget fds ({description}) {
    return Column(
      children: <Widget> [
        Visibility(
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          visible: viewVisible,
          child:  Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Text(
              description,
              style: ThemeText.descriptionText,
            ),
          ),
        ),
        RaisedButton(
        child: Text( 'dalee'),
        onPressed: hideWidget,
        ),
      ],
    );
  }
}*/