import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class FireStoreDatabase
{
  List moviesList=[];
  final CollectionReference collectionname=FirebaseFirestore.instance.collection("MoviesProject");
   Future getData() async {
     try
     {
       await collectionname.get().then((querySnapshot)
           {
             querySnapshot.docs.forEach((element) {
               moviesList.add(element.data());
             });
           });
       return moviesList;
     }
     catch(e)
     {
       print(e.toString());
       return null;
     }

   }
}