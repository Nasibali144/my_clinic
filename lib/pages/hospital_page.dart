import 'package:flutter/material.dart';

class HospitalPage extends StatefulWidget {

  static final String id = 'hospital_page';

  @override
  _HospitalPageState createState() => _HospitalPageState();
}

class _HospitalPageState extends State<HospitalPage> {

  final List<String> _list = [
    'Kardiologiya',
    'Terapiya',
    'Gastroenterologiya',
    'Nevrologiya',
    'Urologiya',
    'Lor',
    'Ginekologiya',
    'Oftalmologiya',
    'Hirurgiya',
    'Pediatriya',
    'Endrokrinologiya',
    'Alergologiya',
  ];
  final List<String> _listItem = [
    'assets/images/med_catalog/kardialogiya_3.jpg',
    'assets/images/med_catalog/terapiya_1.jpg',
    'assets/images/med_catalog/gastroenterologiya_2.jpg',
    'assets/images/med_catalog/nevrologiya_1.jpg',
    'assets/images/med_catalog/picture_1.jpg',
    'assets/images/med_catalog/lor_2.jpg',
    'assets/images/med_catalog/genekologiya_1.jpg',
    'assets/images/med_catalog/akulist_1.jpg',
    'assets/images/med_catalog/xirurgiya.jpg',
    'assets/images/med_catalog/terapiya_2.jpg', // pediatriya
    'assets/images/med_catalog/terapiya_3.jpg',
    'assets/images/med_catalog/alergiya_2.jpg'
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // #header
          Container(
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/clinic_1.webp'),
                fit: BoxFit.cover
              ),
            ),
            child: Container(
              padding: EdgeInsets.all(15),
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(0.5),
                        Colors.black.withOpacity(0.4),
                        Colors.black.withOpacity(0.3),
                        Colors.black.withOpacity(0.25),
                      ]
                  ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.white, size: 30,), onPressed: () {Navigator.pop(context);}),
                  Text('Clinic Name \nWork time\nAdress', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ),


          // #gridview
          Expanded(
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              children: _listItem.map((item) => cellOfList(item)).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget cellOfList(String item) {

    String text;

    for(int i = 0; i < _listItem.length; i++) {
      if(item == _listItem[i]) {
        text = _list[i];
      }
    }

    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(7.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(item),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.only(bottom: 7.5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(0.6),
                  Colors.black.withOpacity(0.5),
                  Colors.black.withOpacity(0.2),
                  Colors.black.withOpacity(0.1),
                ]
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(text, style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
              Text("Shifokorlar soni: 5", style: TextStyle(color: Colors.white, fontSize: 16,))
            ],
          ),
        ),
      ),
      onTap: () {
      },
    );
  }
}
