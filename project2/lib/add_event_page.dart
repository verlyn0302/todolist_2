import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddEventPage extends StatefulWidget{

  _AddEventPageState createState () => _AddEventPageState();
}
class _AddEventPageState extends State <AddEventPage>{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Center(
            child:Text(
              "Add new event",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
          )),
          SizedBox(
            height:24 ,),
          TextField(
            decoration:InputDecoration(
              border:OutlineInputBorder (
                borderRadius:BorderRadius.all(Radius.circular(12)) 
                ),
                labelText: 'Enter event name'
                ),
               ),
             TextField(
            decoration:InputDecoration(
              border:OutlineInputBorder (
                borderRadius:BorderRadius.all(Radius.circular(12)) 
                ),
                labelText: 'Enter description'
                ),
               ),
               SizedBox(height: 12,),
                  FlatButton(
                    onPressed: (){} ,
                    child: Row(children: <Widget>[
                        Icon(Icons.date_range,
                        color: Theme.of(context).accentColor,size: 30,),
                      Text("Date")
                    ],
                    ),
                    ),

               _actionButton(context)
              ],
      ),
    );
    
      }

  Row _actionButton(BuildContext context) {
    return Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
               MaterialButton(
                 onPressed: (){
                   Navigator.of(context).pop();
                 },
                 child: Text("Close")
                 ,),
                MaterialButton(
                   shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(12.0)),
                  onPressed:(){},
                  child: Text("Save"),
                  textColor: Colors.white,
                  color: Theme.of(context).accentColor, ) 
             ],);
  }


}