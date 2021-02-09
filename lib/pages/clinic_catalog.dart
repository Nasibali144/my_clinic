import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_clinic/pages/hospital_page.dart';

class ClinicCatalog extends StatefulWidget {

  static final String id = 'clinic_catalog';

  @override
  _ClinicCatalogState createState() => _ClinicCatalogState();
}

class _ClinicCatalogState extends State<ClinicCatalog> {

  String _tuman = 'Tumanni tanlang';
  String _klinika = 'Klinikani tanlang';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [

            // #Search
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.125),
                borderRadius: BorderRadius.circular(12.5)
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.search),
                        hintText: 'Qidirish'
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.my_location_sharp, color: Colors.grey,),
                    onPressed: () {
                      // bu yerda kartadan o'ziga yaqin joydagi poliklinikani topadi
                    },
                  ),
                ],
              ),
            ),

            // adress: tuman
            Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(5)
              ),
              child: ExpansionTile(
                  title: new Text(this._tuman),
                  backgroundColor: Theme.of(context).accentColor.withOpacity(0.025),
                  children: <Widget>[
                    new ListTile(
                      title: const Text('Yunusobod'),
                      onTap: () {
                        setState(() {
                          this._tuman = 'Yunusobod';
                        });
                      },
                    ),
                    new ListTile(
                      title: const Text('Chilonzor'),
                      onTap: () {
                        setState(() {
                          this._tuman = 'Chilonzor';
                        });
                      },
                    ),
                    new ListTile(
                      title: const Text("Mirzo Ulug'bek"),
                      onTap: () {
                        setState(() {
                          this._tuman = "Mirzo Ulug'bek";
                        });
                      },
                    ),
                  ]
              ),
            ),

            // adress: klinika
            Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.grey[50],
                  borderRadius: BorderRadius.circular(5)
              ),
              child: ExpansionTile(
                  title: new Text(this._klinika),
                  backgroundColor: Theme.of(context).accentColor.withOpacity(0.025),
                  children: <Widget>[
                    new ListTile(
                      title: const Text("1 sonli shahar poliklinika"),
                      onTap: () {
                        setState(() {
                          this._klinika = "1 sonli shahar poliklinika";
                        });
                      },
                    ),
                    new ListTile(
                      title: const Text("2 sonli shahar poliklinika"),
                      onTap: () {
                        setState(() {
                          this._klinika = "2 sonli shahar poliklinika";
                        });
                      },
                    ),
                    new ListTile(
                      title: const Text("3 sonli shahar poliklinika"),
                      onTap: () {
                        setState(() {
                          this._klinika = "3 sonli shahar poliklinika";
                        });
                      },
                    ),
                  ]
              ),
            ),

            // Tanlangan klinika
            GestureDetector(
              child: Container(
                height: 125,
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        _klinika == 'Klinikani tanlang' ? 'Poliklinika Nomi' : _klinika,
                      style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.white,),
                        SizedBox(width: 5,),
                        Text(
                          _tuman == 'Tumanni tanlang' ? 'Adress' : _tuman,
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(Icons.phone, color: Colors.white,),
                        SizedBox(width: 5,),
                        Text(
                          "+99897 777 77 77",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, HospitalPage.id);
              },
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text("Quyida barcha poliklinikalar ro'yxati keltirilgan shulardan o'zingizga eng yaqin va keraklsini tanlashingiz mumkin!", style: TextStyle(
                color: Colors.grey.shade700,
                fontSize: 15
              ),),
            ),


            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue.shade50
              ),
              child: ListTile(
                title: Text("1 sonli shahar poliklinika", style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text('Adress: Yunusobod'),
                trailing: Icon(Icons.location_on),
                onTap: () {
                  Navigator.pushNamed(context, HospitalPage.id);
                },
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue.shade50
              ),
              child: ListTile(
                title: Text("1 sonli shahar poliklinika", style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text('Adress: Yunusobod'),
                trailing: Icon(Icons.location_on),
                onTap: () {
                  Navigator.pushNamed(context, HospitalPage.id);
                },
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue.shade50
              ),
              child: ListTile(
                title: Text("1 sonli shahar poliklinika", style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text('Adress: Yunusobod'),
                trailing: Icon(Icons.location_on),
                onTap: () {
                  Navigator.pushNamed(context, HospitalPage.id);
                },
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue.shade50
              ),
              child: ListTile(
                title: Text("1 sonli shahar poliklinika", style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text('Adress: Yunusobod'),
                trailing: Icon(Icons.location_on),
                onTap: () {
                  Navigator.pushNamed(context, HospitalPage.id);
                },
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue.shade50
              ),
              child: ListTile(
                title: Text("1 sonli shahar poliklinika", style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text('Adress: Yunusobod'),
                trailing: Icon(Icons.location_on),
                onTap: () {
                  Navigator.pushNamed(context, HospitalPage.id);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
