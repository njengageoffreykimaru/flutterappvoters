import 'package:flutter/material.dart';

class CandidateToVote extends StatefulWidget {
  const CandidateToVote({super.key});

  @override
  State<CandidateToVote> createState() => _CandidateToVoteState();
}

class _CandidateToVoteState extends State<CandidateToVote> {
  @override
  Widget build(BuildContext context) {
    bool isChecked =false;
    return Scaffold(
      backgroundColor: Colors.red,
      body: SingleChildScrollView(

        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(

                height: 80,
                child: CircleAvatar(
                  radius: 64,
                  backgroundImage: AssetImage("assets/download.png"),
                ),
              ),
              Text("CandidateName",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,),),
              Text("Party",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,)),

          Checkbox(
          value: isChecked,
          onChanged: (newValue) {
            // Update the state when the checkbox is tapped
            setState(() {

            });
          },
        )

        ],

          ),
        ),
      ),
    );
  }
}
