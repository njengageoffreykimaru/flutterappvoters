
import 'dart:typed_data';


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';



class Add_candindate extends StatefulWidget {
  @override
  State<Add_candindate> createState() => _Add_candindateState();
}

class _Add_candindateState extends State<Add_candindate> {
  Uint8List ? _image;
  Future _pickImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      final imageBytes = await pickedImage.readAsBytes();
      setState(() {
        _image = imageBytes;
      });
    }
  }







  final TextEditingController _candidatenameController = TextEditingController();
  final TextEditingController _positionController = TextEditingController();
  final TextEditingController _politicalAffiliationController=TextEditingController();
  final TextEditingController _partyController= TextEditingController();
  final TextEditingController _manifestoController=TextEditingController();
  final _auth = FirebaseAuth.instance;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Candidate"),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  if (_image != null)
                    CircleAvatar(
                      radius: 64,
                      backgroundImage: MemoryImage(_image!),
                    )
                  else
                    CircleAvatar(
                      radius: 64,
                      backgroundImage: AssetImage("assets/download.png"),
                    ),
                  Positioned(
                    child: IconButton(
                      onPressed: _pickImage,
                      icon: Icon(Icons.camera_enhance_rounded,color: Colors.red,size: 25,),
                    ),
                    bottom: -10,
                    left: 80,
                  ),
                ],
              ),

              SizedBox(height: 10,),
              TextFormField(
                autofocus: true,
                keyboardType: TextInputType.text,
                validator: (value){
                  if(value!.isEmpty){
                    return "Please enter valid name";
                  }
                  return null;
                },
                controller: _candidatenameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person_2_sharp,color: Colors.red,size: 20,),
                  labelText: "CandidateName",
                ),


              ),

              SizedBox(height: 10,),
              TextFormField(
                autofocus: true,
                keyboardType: TextInputType.text,
                validator: (value){
                  if(value!.isEmpty){
                    return "Please enter party affiliation";
                  }
                  return null;
                },
                controller: _politicalAffiliationController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.poll,color: Colors.red,size: 20,),
                  labelText: "Political Affiliation",
                ),


              ),

              SizedBox(height: 10,),
              TextFormField(
                autofocus: true,
                keyboardType: TextInputType.text,
                validator: (value){
                  if(value!.isEmpty){
                    return "Please enter position";
                  }
                  return null;
                },
                controller: _positionController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.how_to_vote_sharp,color: Colors.red,size: 20,),
                  labelText: "Position",
                ),


              ),
              SizedBox(height: 8,),
              TextFormField(
                autofocus: true,
                keyboardType: TextInputType.text,
                validator: (value){
                  if(value!.isEmpty){
                    return "Please enter party";
                  }
                  return null;
                },
                controller: _partyController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.party_mode,color: Colors.red,size: 20,),
                  labelText: "Party",
                ),


              ),

              SizedBox(height: 10,),

              TextFormField(
                autofocus: true,
                keyboardType: TextInputType.text,
                validator: (value){
                  if(value!.isEmpty){
                    return "Please enter manifesto";
                  }
                  return null;
                },
                controller: _manifestoController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.manage_history_rounded,color: Colors.red,size: 20,),
                  labelText: "manifesto",
                ),


              ),






              SizedBox(height: 10),
              Container(
                height:25,
                width: 500,

                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,

                  ),
                  onPressed: () async {
                    CollectionReference collRef = FirebaseFirestore.instance.collection('candidates');
                    try {
                      await collRef.add({
                        'candidatename': _candidatenameController.text,
                        'position': _positionController.text,
                        'politicalAffiliation': _politicalAffiliationController.text,
                        'party': _partyController.text,
                        'manifesto': _manifestoController.text,
                      });
                      // If the candidate is added successfully, show a success toast.
                      Fluttertoast.showToast(
                        msg: 'Candidate added successfully',
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        backgroundColor: Colors.green,
                        textColor: Colors.white,
                        fontSize: 16.0,
                      );
                    } catch (error) {
                      // Handle any errors and show an error toast if needed.
                      Fluttertoast.showToast(
                        msg: 'Error adding candidate: $error',
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0,
                      );
                    }
                  },
                  child: Text('Add Candidate'),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }




}
