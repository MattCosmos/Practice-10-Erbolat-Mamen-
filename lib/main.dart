import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Расписание';


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //showSemanticsDebugger: true,
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  TextStyle _textStyle = TextStyle(
    fontSize: 26,
    height: 0.5,
    fontWeight: FontWeight.w600,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,title: Text(title),),
      body: Container(
          height: 390,
          width: double.infinity,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(spreadRadius: 10, color: Colors.white, offset: Offset(5,20))],
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey, width: 3),
          ),
          child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Container(
                  child: Column(children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(18.0),
                        child: Image.network("https://media.wired.com/photos/5cf832279c2a7cd3975976ca/master/w_2560%2Cc_limit/Transpo_XcelsiorChargeCharging_TA.jpg", width: 150, height: 220, fit: BoxFit.cover)
                    )],),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("     Город - X",  style: TextStyle(fontSize: 25)),
                    Text("       Сарыагаш", style: TextStyle(fontSize: 25)),
                      Text(""),
                        Text("        Отправление", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Text("               Дата  -  06.02.2020 Thu", style: TextStyle(fontSize: 15)),
                    Text("Время  -  19:30", style: TextStyle(fontSize: 15)),
                    Text(""),
                    Text("         Прибытие", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Text("              Дата  -  07.02.2020 Fri", style: TextStyle(fontSize: 15)),
                    Text(" Время  -  18:36", style: TextStyle(fontSize: 15)),
                ],)
              ],),
              Container(
                padding: EdgeInsets.all(15.0),
                child: Text("End2End Test", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ),
              Container(
                child: Text("KZ 123          53 мест", style: TextStyle(fontSize: 17)),
              ),
              Container(
                child: Text("ABC", style: TextStyle(fontSize: 17)),
              ),
              FlatButton(
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                side: BorderSide(color: Colors.green)),
                color: Colors.white,
                textColor: Colors.black,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                onPressed: () {
                },
                child: Text(
                  "                           Удалить рейс                              ",
                  style: TextStyle(fontSize: 17.0),
                ),
              )
          ],),),

        drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Center(child:Container(
                padding: EdgeInsets.fromLTRB(25, 25, 25, 25),
                child: Text('Test Company',
                    style: TextStyle(fontSize: 26)))),

            Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                child: Text('Aty Zhoni',
                    style: _textStyle)),
            Container(height: 1, color:Colors.black),

            ListTile(
              title: Text('Продажа билетов'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Список администраторов'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Автобусы'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Статистика'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Пассажиры'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Расписание'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('История'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Настройки'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}