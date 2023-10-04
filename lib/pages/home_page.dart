import 'package:flutter/material.dart';

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
            description:'Иногда... Случается так что обычный туман становится не '
                'просто погодным феноменом. Тем в чём теряются мысли, и даже люди. '
                'Но туман всегда проходит. Рано или поздно.',
          ),
          makePageWidget(
            page: 2,
            imagePath: 'assets/images/a002.jpg',
            title: 'Лестница',
            description:'„Идите и идите по лестнице, которая называется цивилизацией, '
                'прогрессом, культурой ― идите, искренно рекомендую, но куда идти? право, '
                'не знаю. Ради одной лестницы этой стоит жить.“ ',
          ),
          makePageWidget(
            page: 3,
            imagePath: 'assets/images/a003.jpg',
            title: 'Дождь',
            description:'С вечера дождя никто не ждал, но внезапно налетевший вихрь '
                'принес огромную тучу, раскрашенную багряным закатом. И всю ночь лил дождь,'
                ' озаряя ночное небо вспышками молний и разрывая тишину громовыми раскатами.',
          ),
          makePageWidget(
            page: 4,
            imagePath: 'assets/images/a004.jpg',
            title: 'Тыква',
            description:'Тыква, чёрная паутина из ниток, белая простыня - постоянные '
                'атрибуты для фотосессии на Хэллоуин. А разнообразные блюда из тыквы '
                'в октябре - неизменная тема для многих гурманов и хозяек в середине осени.',
          ),
          makePageWidget(
            page: 5,
            imagePath: 'assets/images/a005.jpg',
            title: 'Свитер',
            description:'Вот так мечтаешь поскорее облачиться в легкое и летнее, но братец '
                'Июнь видит иначе. Любимый свитер актуален вновь…',
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
                    style: const TextStyle(
                      color: Colors.orangeAccent ,
                      fontSize: 35,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Container(
                        margin:  const EdgeInsets.only(right: 3),
                        child: const Icon(Icons.star,color: Colors.yellow, size: 19,),
                      ),
                       Container(
                        margin:  const EdgeInsets.only(right: 3),
                        child: const Icon( Icons.star, color: Colors.yellow,size: 19, ),
                      ),
                       Container(
                        margin:  const EdgeInsets.only(right: 3),
                        child: const Icon( Icons.star,color: Colors.yellow,size: 19,),
                      ),
                       Container(
                        margin:  const EdgeInsets.only(right: 3),
                        child: const Icon(Icons.star,color: Colors.yellow, size: 19, ),
                      ),
                       Container(
                        margin:  const EdgeInsets.only(right: 5),
                        child: const Icon( Icons.star, color: Colors.grey,size: 16, ),
                      ),
                      const Text( 
                        '4.9', style: TextStyle(color: Colors.white70),
                      ),
                      const Text(
                        '(5300)', style: TextStyle(color: Colors.white38, fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Text(
                      description,
                      style: TextStyle(
                        color: Colors.white.withOpacity(.7),
                        height: 1.9,
                        fontSize: 16),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const Text(
                    'ПРОДОЛЖЕНИЕ',
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline ),
                  ),
                  const SizedBox(height: 30,),
                ],
              ) ,
            )
          ],
        ),
        ),
    ),
  );
}