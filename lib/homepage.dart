import 'package:d1/models/programs.dart';
import 'package:flutter/material.dart';

List<Program> programList = [
  Program(
      title: 'A complete guide for your \nnew born baby',
      category: 'LifeStyle',
      image: 'assets/images/image2.png',
      lessons: 16),
  Program(
      title: 'Understanding of human \n behaviour',
      category: 'Baby Care',
      image: 'assets/images/image1.png',
      lessons: 12),
];

List<Program> expEventList = [
  Program(
      title: 'A complete guide for your \nnew born baby',
      category: 'LifeStyle',
      image: 'assets/images/image2.png',
      date: "13 feb , sunday"),
  Program(
      title: 'Understanding of human \n behaviour',
      category: 'Babycare',
      image: 'assets/images/image1.png',
      date: "13 feb , sunday"),
];

List<Program> lessonList = [
  Program(
      title: 'A complete guide for your \nnew born baby',
      category: 'LifeStyle',
      image: 'assets/images/image2.png',
      time: "1 min"),
  Program(
      title: 'Understanding of human \n behaviour',
      category: 'Baby Care',
      image: 'assets/images/image1.png',
      time: "3 min"),
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: () {}, icon: const Icon(Icons.forum)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.notification_add_outlined))
                  ]),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: _onTabTapped,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Learn',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.hub),
            label: 'Hub',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Hello Priya!',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              const Text(
                'what do you wanna learn today?',
                style: TextStyle(),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomeOptions(
                    icon: Icons.bookmark,
                    text: 'Courses',
                    onTap: () {},
                  ),
                  HomeOptions(
                    icon: Icons.help_center,
                    text: 'Get Help',
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomeOptions(
                    icon: Icons.book,
                    text: 'Learn',
                    onTap: () {},
                  ),
                  HomeOptions(
                    icon: Icons.leaderboard,
                    text: 'DD tracker',
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Programs for you',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: () {},
                      hoverColor: Colors.blue,
                      child: Container(
                        child: const Row(
                          children: [
                            Text('View all'),
                            Icon(Icons.arrow_forward)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  height: 285,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, i) {
                      return CardWidget(
                        screenWidth: screenWidth,
                        screenheight: screenheight,
                        bottomWidget: Text(
                          '${programList[i].lessons} lessons',
                          style: const TextStyle(),
                        ),
                        title: programList[i].title,
                        category: programList[i].category,
                        image: programList[i].image,
                      );
                    },
                    itemCount: programList.length,
                  )),
              const SizedBox(height: 10),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Event and Experiences',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: () {},
                      hoverColor: Colors.blue,
                      child: Container(
                        child: const Row(
                          children: [
                            Text('View all'),
                            Icon(Icons.arrow_forward)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  height: 285,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, i) {
                      return CardWidget(
                        screenWidth: screenWidth,
                        screenheight: screenheight,
                        bottomWidget: Text(
                          '${expEventList[i].lessons}',
                          style: const TextStyle(),
                        ),
                        title: expEventList[i].title,
                        category: expEventList[i].category,
                        image: expEventList[i].image,
                      );
                    },
                    itemCount: expEventList.length,
                  )),
              const SizedBox(height: 10),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Lesson for you',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: () {},
                      hoverColor: Colors.blue,
                      child: Container(
                        child: const Row(
                          children: [
                            Text('View all'),
                            Icon(Icons.arrow_forward)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  height: 285,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, i) {
                      return CardWidget(
                        screenWidth: screenWidth,
                        screenheight: screenheight,
                        bottomWidget: Text(
                          '${lessonList[i].time}',
                          style: const TextStyle(),
                        ),
                        title: lessonList[i].title,
                        category: lessonList[i].category,
                        image: lessonList[i].image,
                      );
                    },
                    itemCount: lessonList.length,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.title,
    required this.category,
    required this.image,
    this.bottomWidget,
    required this.screenWidth,
    required this.screenheight,
  });

  final double screenWidth;
  final double screenheight;
  final String title;
  final String category;
  final String image;
  final Widget? bottomWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            // radius: screenWidth * 0.25,
            child: Image.network(
              image,
              fit: BoxFit.cover,
              height: 150,
              width: 250,
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 5),
            child: Text(
              category,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.blue),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Container(
              margin: const EdgeInsets.only(left: 5),
              child: bottomWidget ?? Container()),
        ],
      ),
    );
  }
}

class HomeOptions extends StatelessWidget {
  HomeOptions({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
  });
  final String text;
  final IconData icon;
  Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: onTap,
      child: Container(
        height: 50,
        width: 200,
        decoration: BoxDecoration(
            //shape: BoxShape.rectangle,
            border: Border.all(color: Colors.blue, width: 2),
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Icon(
                icon,
                color: Colors.blue,
                size: 22,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                text,
                style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

int currentIndex = 0;
