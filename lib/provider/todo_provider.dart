import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../model/todo.dart';



// class ItemProvider with ChangeNotifier{
//   List<Item> _items = [];
//   List<Item> get items => _items;
//   Future<void> fetchITems() async{
//     String url = "https://jsonplaceholder.typicode.com/todos";
//     final response = await http.get(Uri.parse(url));
//     final data = json.decode(response.body) as List<dynamic>;
//     _items = data.map((e) => Item(
//         id: e['id'],
//         title: e['title']
//     )).toList();
//     notifyListeners();
//   }
// }



//
// import 'package:api_with_provider/services/todo_services.dart';
// import 'package:flutter/cupertino.dart';
//
// import '../model/todo.dart';
//
//
// class TodoProvider extends ChangeNotifier{
//   final _service = TodoService();
//   bool isLoading = false;
//   List<Todo> _todos = [];
//   List<Todo> get todos => _todos;
//
//   Future<void> getAllTodos() async{
//     isLoading = true;
//     notifyListeners();
//     final response = await _service.getAll();
//     _todos = response;
//     notifyListeners();
//   }
// }
// // A ChangeNotifier class that acts as a provider for Todo-related data
// // A ChangeNotifier class that acts as a provider for Todo-related data
// // class TodoProvider extends ChangeNotifier {
// //   final _service = TodoService(); // Instance of TodoService to interact with API
// //   bool isLoading = false; // Flag to indicate whether data is currently being loaded
// //   List<Todo> _todos = []; // List to store fetched todos
// //   List<Todo> get todos => _todos; // Getter to access the list of todos
// //
// //   // Asynchronous method to fetch all todos
// //   Future<void> getAllTodos() async {
// //     isLoading = true; // Set loading flag to true
// //     notifyListeners(); // Notify listeners (typically UI components) that state has changed
// //
// //     final response = await _service.getAll(); // Call the service to get all todos
// //
// //     _todos = response; // Update the todos list with the fetched todos
// //     isLoading = false; // Set loading flag back to false since data loading is complete
// //     notifyListeners(); // Notify listeners of the state change
// //   }
// // }