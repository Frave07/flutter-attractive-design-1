import 'package:diseno1/Widgets/HeaderHome.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget
{

 @override
 Widget build(BuildContext context)
 {
    return Scaffold(
      backgroundColor: Color(0xffEDF1F5),
       body: ListView(
         padding: EdgeInsets.only(top:0),
         physics: BouncingScrollPhysics(),
         children: [
           Stack(
             children: [

                HeaderHome(),

                HeaderHomeNaranja(),

                HeaderHomeMorado(),

                _SanFrancisco(),

                _Buscador(),

                _MenuIcono(),

                _CardIceland(),
             ],
           ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                _CardSmall(image: 'Assets/image2.png', titulo: 'Dunes' ),
                
                _CardSmall(image: 'Assets/image3.png', titulo: 'Nepal' ),
                
              ],
            )
            
         ],
       ),
        bottomNavigationBar: _BottomNavigation(),
     );
  }
}

class _CardSmall extends StatelessWidget {

  final String image;
  final String titulo;
  
  const _CardSmall({ @required this.image, @required this.titulo });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 200,
      width: 170,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Image.asset(image),
           Padding(padding: EdgeInsets.all(6), child: Text( titulo , style: TextStyle(fontSize: 19, color: Colors.black87))),
        ],
      ),
    );
  }
}


class _CardIceland extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        margin: EdgeInsets.all(15),
        padding: EdgeInsets.all(15),
        height: 320,
        width: 360,
        decoration: BoxDecoration( color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Image(image: AssetImage('Assets/image1.png')),
              SizedBox(height: 8),
              Text('Iceland', style: TextStyle(fontSize: 25, color: Colors.black54)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Roadtrip . 10d/11n . 1.290mi', style: TextStyle(fontSize: 15, color: Colors.black45)),
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff77858C)),
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Icon(Icons.favorite, size: 20, color: Color(0xff77858C)),
                  )
                ],
              )
          ],
        ),
      ),
    );
  }
}


class _MenuIcono extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 80,
      right: 15,
      child: IconButton(
        icon: Icon(Icons.menu, color: Colors.white, size: 32), 
        onPressed: null
      )
    );
  }
}


class _BottomNavigation extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Color(0xff282943),
      onTap: ( index ) {
         
         if( index == 1 ) Navigator.pushNamed(context, 'detalle');
      },
      items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
            label: 'Explore',
            icon: Icon(Icons.explore)
          ),
      ],
    );
  }
}


class _Buscador extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 170,
      left: 45,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
              Text('Whatcha Looking for?', style: TextStyle(fontSize: 18, color: Colors.black54)),
              SizedBox(width: 10),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: null
              )
          ],
        ),
      ),
    );
  }
}


class _SanFrancisco extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 90,
      left: 15,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Color(0xff2E2F44),
          borderRadius: BorderRadius.circular(20)
        ),
        child: Row(
          children: [
            Transform.rotate(angle: -12.0,
              child : IconButton(icon: Icon(Icons.navigation, color: Colors.white, size: 18), onPressed: null)
            ),

            Text('San Francisco', style: TextStyle(color: Colors.white, fontSize: 17)),
            
            IconButton(icon: Icon(Icons.keyboard_arrow_down, color: Colors.white), onPressed: null),
          ],
        ),
      ),
    );
  }
}



