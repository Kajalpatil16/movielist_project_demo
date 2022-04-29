import 'package:flutter/cupertino.dart';
import 'package:newone/Firestore/database_manager.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List dataList=[];

  @override
  void initState() {
    super.initState();
    fetchDatabaseList();
  }
  fetchDatabaseList()async
  {
     dynamic resultant=await FireStoreDatabase().getData();
     if(resultant == null)
       {
         print('Unable to retrive');
       }
     else
       {
         setState(() {
           dataList=resultant;
         });
       }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MoviesList'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body:Container(
        child: ListView.builder(
          itemCount: dataList.length,
            itemBuilder:(context,index){
            return Card(
              shadowColor: Colors.purple,
              child:ListTile(
                title:Text(dataList[index]['Name']),
                subtitle: Text(dataList[index]['Type Of Movie']),
                trailing: Text('${dataList[index]['RealseYear']}'),
              ) ,
             );
          })
      )
  );
  }
}
