import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Brofile",
    home: Profile(),
  ));
}
class Profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 60,
        title: Text('Profile'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepOrange.shade700,Colors.amber.shade800],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
            )
          ),
        ),
          leading:Icon(Icons.account_circle_rounded)
      ),
      body:SingleChildScrollView(
        child: new Container(
          alignment: Alignment.center,
          //padding: EdgeInsets.all(1),
          margin: EdgeInsets.all(10),
          child: new Column(
           children: [
             Padding(padding: const EdgeInsets.all(10)),
             SizedBox(
               height: 270,
               width: 500,
               child: Image.asset('image/aya.jpg',
               width:550,
               height: 500),
             ),
             Padding(padding: const EdgeInsets.all(10)),
             new Text('Name : Aya Mohamed Mahmoud',
               style: TextStyle(fontSize: 22,
               fontWeight: FontWeight.w900),),
            // Padding(padding: const EdgeInsets.fromLTRB(left, top, right, bottom)),
            SizedBox(width: double.infinity,child:Text('______________________________________'
                ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),)),
             Padding(padding: const EdgeInsets.all(5)),
             new Text('Age : 20',
               style: TextStyle(fontSize: 22,
                   fontWeight: FontWeight.w900),),
             SizedBox(child:Text('______________________________________'
               ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),)),
             Padding(padding: const EdgeInsets.all(5)),
             new Text('Education : Faculty of Commerce',
               style: TextStyle(fontSize: 22,
                   fontWeight: FontWeight.w900),),
             SizedBox(child:Text('______________________________________'
               ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),)),
             Padding(padding: const EdgeInsets.all(5)),
             new Text('Adress :El-Obour City', style: TextStyle(fontSize: 22,
                 fontWeight: FontWeight.w900),),
           ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber.shade900,
        child: Text('💛'),
      ),
      backgroundColor: Colors.deepOrange.shade50 ,
    );
  }
}
