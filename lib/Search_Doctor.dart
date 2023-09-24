import 'package:flutter/material.dart';



class search_page extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('GYNO Doctors near you'),
        actions: [
          IconButton(
            onPressed: () {
            showSearch(context: context,
            delegate: CustomSearchDelegate(),);
          },
          icon: const Icon(Icons.search),
          )
        ]
      ),

    );
        
      }
    }

class CustomSearchDelegate extends SearchDelegate{

  List<String> searchTerms = [
    'Cianna',
    'Leana',
    'Khadija',
    'Tani',
  ];

  @override
  List<Widget> buildActions(BuildContext context){
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override 
  Widget buildLeading(BuildContext context){
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: (){
        close(context, null);
      },
    );
  }

  @override 
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for(var doctors in searchTerms){
      if(doctors.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(doctors);
      }
    }
    
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index){
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      }

    );
  }

  @override
  Widget buildSuggestions(BuildContext context){
    List<String> matchQuery = [];
    for( var doctors in searchTerms){
      if(doctors.toLowerCase().contains(query.toLowerCase())){
      matchQuery.add(doctors);
    }
    }

    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index){
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

}
