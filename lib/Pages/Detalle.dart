import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:diseno1/Widgets/HeaderDetalle.dart';

class DetallePage extends StatelessWidget
{

 @override
 Widget build(BuildContext context)
 {
    return Scaffold(
       body: ListView(
         padding: EdgeInsets.only(top:0),
         physics: BouncingScrollPhysics(),
         children: [

           Stack(
             children: [

               HeaderDetalle(),

               HeaderDetalleMorado()

             ],
           ),

            SizedBox( height: 10 ),

            _FlechaBack(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                  _IcelandIcono(),

                  IconButton(
                    icon: Icon(Icons.more_vert),
                    onPressed: null
                  )
              ],
            ),

            MultipleItemDemo(),

            _QuickActions(),

             SizedBox( height: 20 ),

            _ContainerActions(color: Color(0xff373851), icono: Icons.play_arrow, texto: 'Watch Video' ),

            _ContainerActions(color: Color(0xff6C4DDC), icono: Icons.short_text, texto: 'Itinirary' ),
            
            _ContainerActions(color: Color(0xff6C4DDC), icono: Icons.map, texto: 'Destinations' ),

            _ContainerActions(color: Color(0xffED6948), icono: Icons.info, texto: 'Trip Details' ),
            
         ],
       )  
     );
  }
}

class _ContainerActions extends StatelessWidget {

  final IconData icono;
  final Color color;
  final String texto;

  const _ContainerActions({ this.icono, this.color, this.texto });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 35, bottom: 18),
      padding: EdgeInsets.only(left: 30),
      height: 60,
      width: 150,
      decoration: BoxDecoration( color: color, borderRadius: BorderRadius.only( topLeft: Radius.circular(50), bottomLeft: Radius.circular(50))),
      child: Row(
        children: [

            Icon(icono, color: Colors.white),
            SizedBox(width: 25),
            Text( texto, style: TextStyle(fontSize: 18, color: Colors.white))
        ],
      ),
    );
  }
}


class _QuickActions extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding( padding: EdgeInsets.symmetric(horizontal: 15) ,child: Text('Quick Actions', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)));
  }
}


class _IcelandIcono extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Text('Iceland', style: TextStyle(fontSize: 30, color: Colors.black54)),
          SizedBox(width: 10),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xff77858C)),
              borderRadius: BorderRadius.circular(50)
            ),
            child: Icon(Icons.favorite, size: 15, color: Color(0xff77858C)),
          )
        ],
      )
    );
  }
}


class _FlechaBack extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6),
      child: Align(
        alignment: Alignment.centerLeft,
        child: IconButton(
          icon: Transform.rotate(angle: 3.12 ,child: Icon(Icons.arrow_right_alt, size: 35, color: Colors.black)),
          onPressed: () => Navigator.pop(context)
        ),
      ),
    );
  }
}


class MultipleItemDemo extends StatelessWidget {

  final List<String> imgList = [
    'Assets/image2.png',
    'Assets/image3.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: CarouselSlider.builder(
          options: CarouselOptions(
            aspectRatio: 2.0,
            enlargeCenterPage: false,
            viewportFraction: 1,
          ),
          itemCount: (imgList.length / 2).round(),
          itemBuilder: (context, index) {
            final int first = index * 2;
            final int second = first + 1;
            return Row(
              children: [first, second].map((idx) {
                return Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Image.asset(imgList[idx], fit: BoxFit.cover),
                  ),
                );
              }).toList(),
            );
          },
        )
    );
  }
}










