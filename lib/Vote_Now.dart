import 'package:flutter/material.dart';

class Vote_Now extends StatefulWidget {
  const Vote_Now({super.key});

  @override
  State<Vote_Now> createState() => _Vote_NowState();
}

class _Vote_NowState extends State<Vote_Now> {
  final TextEditingController _identityDocumentController=TextEditingController();
  final TextEditingController _idNumberController=TextEditingController();
  final TextEditingController _idProcessNumber=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vote for Representative") ,
        leading: Icon(Icons.arrow_back_ios, color: Colors.green,),
        actions: [
          IconButton(onPressed: (){

          }, icon: Icon(Icons.add)),
          IconButton(onPressed: (){

          }, icon: Icon(Icons.notification_add)),
          IconButton(onPressed: (){

          }, icon: Icon(Icons.how_to_vote)),

        ],

      ),
      body: SingleChildScrollView(
         child: Container(
           height: 500,
           color: Colors.pink,
           child: Column(
             children: [
               Text("Enter your indentity document info"),

               TextFormField(
                 autofocus: true,
                 keyboardType: TextInputType.text,
                 validator: (value){
                   if(value!.isEmpty){
                     return "Please select indentity document info";
                   }
                   return null;
                 },
                 controller: _identityDocumentController,
                 decoration: InputDecoration(
                   border: OutlineInputBorder(),
                   prefixIcon: Icon(Icons.card_travel_rounded,color: Colors.black,),
                   labelText: "Document category",
                 ),


               ),
               TextFormField(
                 autofocus: true,
                 keyboardType: TextInputType.text,
                 validator: (value){
                   if(value!.isEmpty && value.length<8){
                     return "Please enter idnumber with 8 digits";
                   }
                   return null;
                 },
                 controller: _idNumberController,
                 decoration: InputDecoration(
                   border: OutlineInputBorder(),
                   prefixIcon: Icon(Icons.card_travel_rounded,color: Colors.black,),
                   labelText: "Id Number",
                 ),


               ),
               TextFormField(
                 autofocus: true,
                 keyboardType: TextInputType.text,
                 validator: (value){
                   if(value!.isEmpty && value.length<8){
                     return "Please enter ";
                   }
                   return null;
                 },
                 controller: _idProcessNumber,
                 decoration: InputDecoration(
                   border: OutlineInputBorder(),
                   prefixIcon: Icon(Icons.card_travel_rounded,color: Colors.black,),
                   labelText: "Id process number",
                 ),


               ),
               ElevatedButton(onPressed: (){

               }, child: Text("Continue"))

             ],

           ),
         ),
      ),
    );
  }
}
