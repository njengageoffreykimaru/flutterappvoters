import 'package:flutter/material.dart';
import 'package:votersapp/Add_candidate.dart';
import 'package:votersapp/CandidatesToVote.dart';
import 'package:votersapp/DefaultPage.dart';
import 'package:votersapp/Vote_Now.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedindex=0;
 void _navigation(int index){
   setState(() {
     _selectedindex=index;
   });


 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(_selectedindex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedindex,
        onTap: _navigation,
        backgroundColor: Colors.black,

        items: [

          BottomNavigationBarItem(icon: Icon(Icons.home,
            color: Colors.red,size: 20,),label:'Home' ),
          BottomNavigationBarItem(icon: Icon(Icons.where_to_vote_rounded,
            color: Colors.red,size: 20,),label: 'Vote_NOW'),
          BottomNavigationBarItem(icon: Icon(Icons.how_to_vote,
            color: Colors.red,size: 20,),label: 'Add_Candidate'),
          BottomNavigationBarItem(icon: Icon(Icons.how_to_vote,color: Colors.red,),label: 'Vote Now')




        ],

      ),
    );
  }
  Widget _buildBody(int index) {
    switch (index) {
      case 0:
        return DefaultPage(); // Replace with the widget you want for the "Home" screen.
      case 1:
        return Vote_Now(); // Replace with the widget you want for the "Calendar" screen.
      case 2:
        return Add_candindate();
      case 3:
        return CandidateToVote();

      default:
        return SizedBox.shrink();
    }
  }
}
