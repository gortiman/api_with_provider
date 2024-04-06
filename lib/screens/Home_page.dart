import 'package:api_with_provider/model/todo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/todo_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final itemProvider = Provider.of<ItemProvider>(context);
    return Provider<MyModel>(
      create: (_)=> MyModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("api provider"),
        ),
        body: Center(
          child: Column(
            children: [
              // ElevatedButton(onPressed: (){
              //   itemProvider.fetchITems();
              // },
              //     child: Text("Fetch items"),
              // ),
              Consumer<MyModel>(
                builder: (context, MyModel, child){
                  return ElevatedButton(onPressed: (){
                    MyModel.doSomething();
                  },
                    child: Text("Fetch items"),
                  );
                },
              ),
            Consumer<MyModel>(builder: (context,MyModel,child){
              return Text(MyModel.value);
            }),
            //   SizedBox(height: 20,),
            // Expanded(child: ListView.builder(
            //   itemCount: itemProvider.items.length,
            //     itemBuilder: (context, index){
            //   ListTile(
            //     title: Text(itemProvider.items[index].title),
            //   );
            // })),
    GestureDetector(
    onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
    return const DetailScreen();
    }));
    },
    child: Hero(
    tag: 'imageHero',
    child: ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Image.network(
      'https://plus.unsplash.com/premium_photo-1708110769673-c97bb8d17453?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxN3x8fGVufDB8fHx8fA%3D%3D',
        width: 100,
        height: 100,
        fit: BoxFit.cover,
      ),
    ),
    ),
    ),
    ]
    )))
    );
    }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Align(
              alignment: Alignment.center,
              child: Hero(
                tag: 'imageHero',
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(
                    'https://plus.unsplash.com/premium_photo-1708110769673-c97bb8d17453?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxN3x8fGVufDB8fHx8fA%3D%3D',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Text("This is Hero Animation",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Colors.purple
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:api_with_provider/provider/todo_provider.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   void initState(){
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
//       Provider.of<TodoProvider>(context, listen: false).getAllTodos();
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Provider API'),
//       ),
//       body: Consumer<TodoProvider>(
//         builder: (context, value, child) {
//           // if the loading it true then it will show the circular progressbar
//           if (value.isLoading){
//             return const Center(
//               child: CircularProgressIndicator(),
//             );
//           }
//           //if loading is false then this code will show the list of todo item
//           final todos = value.todos;
//           return ListView.builder(
//             itemCount: todos.length,
//               itemBuilder: (context, index){
//                 final todo = todos[index];
//                 return ListTile(
//                   leading:  CircleAvatar(
//                     child: Text(todo.id.toString()),
//                   ),
//                   title: Text(todo.title,
//                     style: TextStyle(
//                       color: todo.completed ?
//                           Colors.grey : Colors.black38,
//                     ),
//                   ),
//                 );
//               });
//         },
//       ),
//     );
//   }
// }
