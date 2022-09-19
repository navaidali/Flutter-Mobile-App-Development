import 'package:coffeeapp/utils/coffee_tile.dart';
import 'package:coffeeapp/utils/coffee_type.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: const Icon(Icons.menu),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.person),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Find the best coffee for you',
                style: GoogleFonts.bebasNeue(fontSize: 55),
              )
            ),

            SizedBox(height: 25,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Find your coffee..',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600),
                  )
                ),
              ),
            ),
            SizedBox(height: 25,),

            Container(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CoffeeType(coffeeType:'Cappucino', isSelected: true,),
                  CoffeeType(coffeeType: 'Latte', isSelected: false,),
                  CoffeeType(coffeeType: 'Black', isSelected: false,)
                ],
              ),
            ),
            Expanded(child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CoffeeTile(
                  imgPath: 'lib/images/img1.jpg',
                  name: 'Cappucino',
                  cost: '40',
                ),

                CoffeeTile(
                  imgPath: 'lib/images/img2.jpg',
                  name: 'Latte',
                  cost: '80',
                ),

                CoffeeTile(
                  imgPath: 'lib/images/img3.jpg',
                  name: 'Black',
                  cost: '120',
                ),
              ],
            ),)
          ],
        ));
  }
}
