import 'package:flutter/material.dart';

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
            IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.forum)),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.notification_add_outlined))
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
                  InkWell(
                    borderRadius: BorderRadius.circular(8),
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                          //shape: BoxShape.rectangle,
                          border: Border.all(color: Colors.blue, width: 2),
                          borderRadius: BorderRadius.circular(8)),
                      child: const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(
                              Icons.bookmark,
                              color: Colors.blue,
                              size: 22,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'programs',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(8),
                    // hoverColor: Colors.red,
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                          //shape: BoxShape.rectangle,
                          border: Border.all(color: Colors.blue, width: 2),
                          borderRadius: BorderRadius.circular(8)),
                      child: const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(
                              Icons.help_center,
                              color: Colors.blue,
                              size: 22,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Get Help',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                          //shape: BoxShape.rectangle,
                          border: Border.all(color: Colors.blue, width: 2),
                          borderRadius: BorderRadius.circular(8)),
                      child: const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(
                              Icons.book,
                              color: Colors.blue,
                              size: 22,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Learn',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                          //shape: BoxShape.rectangle,
                          border: Border.all(color: Colors.blue, width: 2),
                          borderRadius: BorderRadius.circular(8)),
                      child: const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(
                              Icons.leaderboard,
                              color: Colors.blue,
                              size: 22,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'DD tracker',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
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
                        children: [Text('View all'), Icon(Icons.arrow_forward)],
                      ),
                    ),
                  )
                ],
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Card(
                        elevation: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              height: screenWidth *
                                  0.4, // Adjust the height as needed
                              color: Colors.grey[300],
                              width: screenheight * 0.4,

                              child: Image.network(
                                'assets/images/image2.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Text(
                              'LifeStyle',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.blue),
                            ),
                            const Text(
                              'A complete guide for your \nnew born baby',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const Text(
                              '16 lessons',
                              style: TextStyle(),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Card(
                        elevation: 4,
                        //decoration: BoxDecoration(
                        ////  border: Border.all(width: 1, color: Colors.red)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          //crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              height: screenWidth *
                                  0.4, // Adjust the height as needed
                              color: Colors.grey[300],
                              width: screenheight * 0.4,

                              child: ClipRRect(
                                child: Image.network(
                                  'assets/images/image1.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Text(
                              'Babycare',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.blue),
                            ),
                            const Text(
                              'Understanding of human \n behaviour',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const Text(
                              '12 lesson',
                              style: TextStyle(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
              Row(
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
                        children: [Text('View all'), Icon(Icons.arrow_forward)],
                      ),
                    ),
                  )
                ],
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Card(
                        elevation: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              height: screenWidth *
                                  0.4, // Adjust the height as needed
                              color: Colors.grey[300],
                              width: screenheight * 0.4,

                              child: Image.network(
                                'assets/images/youngwomen.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Text(
                              'LifeStyle',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.blue),
                            ),
                            const Text(
                              'A complete guide for your \nnew born baby',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const Text(
                              '13 feb ,sunday',
                              style: TextStyle(),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Card(
                        elevation: 4,
                        //decoration: BoxDecoration(
                        ////  border: Border.all(width: 1, color: Colors.red)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          //crossAxisAlig
                          //nment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              height: screenWidth *
                                  0.4, // Adjust the height as needed
                              color: Colors.grey[300],
                              width: screenheight * 0.4,

                              child: Image.network(
                                'assets/images/youngwomen.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Text(
                              'Babycare',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.blue),
                            ),
                            const Text(
                              'Understanding of human \n behaviour',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const Text(
                              '13 feb ,sunday',
                              style: TextStyle(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
              Row(
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
                        children: [Text('View all'), Icon(Icons.arrow_forward)],
                      ),
                    ),
                  )
                ],
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Card(
                        elevation: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              height: screenWidth *
                                  0.4, // Adjust the height as needed
                              color: Colors.grey[300],
                              width: screenheight * 0.4,

                              child: Image.network(
                                'assets/images/youngwomen.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Text(
                              'LifeStyle',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.blue),
                            ),
                            const Text(
                              'A complete guide for your \nnew born baby',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const Text(
                              '3 min',
                              style: TextStyle(),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Card(
                        elevation: 4,
                        //decoration: BoxDecoration(
                        ////  border: Border.all(width: 1, color: Colors.red)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          //crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              height: screenWidth *
                                  0.4, // Adjust the height as needed
                              color: Colors.grey[300],
                              width: screenheight * 0.4,

                              child: Image.network(
                                'assets/images/youngwomen.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Text(
                              'Babycare',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.blue),
                            ),
                            const Text(
                              'Understanding of human \n behaviour',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const Text(
                              '1 min',
                              style: TextStyle(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

int currentIndex = 0;
