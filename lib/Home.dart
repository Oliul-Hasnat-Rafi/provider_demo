import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/_provider.dart';
import 'package:provider_demo/updatescr.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
 
  @override
  Widget build(BuildContext context) {
    return Consumer<Updatecount>(
      builder: (context, Updatecountmodel, child) => Scaffold(
        appBar: AppBar(
          title: Text('Provider'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Updatecountmodel.addnumber();
          },
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                Updatecountmodel.number.last.toString(),
                style: TextStyle(fontSize: Updatecountmodel.fontsize, color: Colors.black),
              ),
            ),

            Slider(
              min: 10,
              max: 30,
              value: Updatecountmodel.fontsize, onChanged: (value) {
              setState(() {
                      Updatecountmodel.setTextSize(value);
                    });
            },),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Update();
                  },
                ));
              },
              child: Text('Update count'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: Updatecountmodel.number.length,
                itemBuilder: (context, index) {
                  return Center(
                      child: Text(
                    Updatecountmodel.number[index].toString(),
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
