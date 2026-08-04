import 'dart:convert';
import 'package:demo/ApiModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ApiIntegrateDemo(),));
}


class ApiIntegrateDemo extends StatefulWidget{
  const ApiIntegrateDemo({super.key});

  @override
  State<StatefulWidget> createState() => IntegrateState();
  
}

class IntegrateState extends State<ApiIntegrateDemo>{
List<Welcome> sampleMovies = [];


@override
void initState(){
  super.initState();
}

// Future<MoviesModel> getData() async {
//   final response = await http.get(Uri.parse('https://moviesdatabase.p.rapidapi.com/titles/x/upcoming'));
//   if (response.statusCode == 200) {
//     return MoviesModel.fromJson(jsonDecode(response.body));
//   } else {
//     throw Exception("Failed to load data");
//   }
// }

// @override
// Widget build(BuildContext context){
// return Scaffold(
//     appBar: AppBar(title: Text("Movies")),
//     body: FutureBuilder<MoviesModel>(
//       future: getData(),
//       builder: (context, snapshot) {
//         if (snapshot.hasData) {
//           final results = snapshot.data!.results;
//           return ListView.builder(
//             itemCount: results.length,
//             itemBuilder: (context, index) {
//               final movie = results[index];
//               return ListTile(
//                 leading: movie.primaryImage != null
//                     ? Image.network(movie.primaryImage!.url)
//                     : null,
//                 title: Text(movie.titleText.text),
//                 subtitle: Text("Released: ${movie.releaseYear.year}"),
//               );
//             },
//           );
//         } else if (snapshot.hasError) {
//           return Center(child: Text("Error: ${snapshot.error}"));
//         } else {
//           return Center(child: CircularProgressIndicator());
//         }
//       },
//     ),
//   );



// *******************************************Welcome Api fetch*******************************************************/

  Future<List<Welcome>> getData() async{
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data = jsonDecode(response.body.toString());

    if(response.statusCode==200){
      for(Map<String, dynamic> index in data){
        sampleMovies.add(Welcome.fromJson(index));
      }
      return sampleMovies;
    }
    else{
      return sampleMovies;
    }
  }


@override
Widget build(BuildContext context){
return FutureBuilder(
    future: getData(),
    //debugShowCheckedModeBanner: false,
     builder: (context, Snapshot){
      if(Snapshot.hasData){
        return ListView.builder(
        itemCount: sampleMovies.length,
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            color: Colors.blue,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            margin: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('UserId: ${sampleMovies[index].userId}', style: TextStyle(fontSize: 10, color: Colors.black87),),
                Text('Id: ${sampleMovies[index].id}', style: TextStyle(fontSize: 10, color: Colors.black87),),
                Text('Title: ${sampleMovies[index].title}', style: TextStyle(fontSize: 10, color: Colors.black87),),
                Text('Body: ${sampleMovies[index].body}', maxLines: 1, style: TextStyle(fontSize: 10, color: Colors.black87),),
              ],
            ),
          );
        }
      );
      }
      else{
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    }
    );
    
}
}