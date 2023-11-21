import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/_provider.dart';

class Update extends StatefulWidget {
  Update({
    super.key,
  });

  @override
  State<Update> createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Updatecount>(
      builder: (context, Updatenumber, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
         child:
            Icon(Icons.add),
             onPressed: () {
            
            Updatenumber.addnumber();
          },
        ),
        body: Scaffold(
          appBar: AppBar(title: Text('Update count'),),
          body: Container(
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: Updatenumber.number.length,
                    itemBuilder: (context, index) {
                      return Center(child: Text(Updatenumber.number[index].toString(),
                       style: TextStyle(fontSize: 20, color: Colors.black)
                      ),
                      
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
