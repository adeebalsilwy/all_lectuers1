import 'package:flutter/material.dart';

void main() => runApp(Navi_Sample1_Way1_Roq());

class Navi_Sample1_Way1_Roq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Passing Data', home: FirstPage_Roq());
  }
}

class FirstPage_Roq extends StatelessWidget {
  const FirstPage_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('First Screen Roq'),
        ),
        body: Center(
            child: ElevatedButton(
                child: Text(
                  "Go to Screen2 with send data as List",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) {
                    return TodosScreen(
                      todos: List.generate(
                        20,
                        (i) => Todo(
                          'Todo $i',
                          'A description of what needs to be done for Todo $i',
                        ),
                      ),
                    );
                  }));
                })));
  }
}

class Todo {
  final String title;
  final String description;

  const Todo(this.title, this.description);
}

class TodosScreen extends StatelessWidget {
  const TodosScreen({Key? key, required this.todos}) : super(key: key);

  //  <<------------const TodosScreen({Key key, this.todos}) : super(key: key);

  final List<Todo> todos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, int index) {
          return ListTile(
            title: Text(todos[index].title),
            leading:  CircleAvatar(child: Text("$index")),
            // When a user taps the ListTile, navigate to the DetailScreen.
            // Notice that you're not only creating a DetailScreen, you're
            // also passing the current todo through to it.
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      DetailScreen(todo: todos[index]),
                ),
              );
            },

          );

        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  // In the constructor, require a Todo.
  const DetailScreen({Key? key, required this.todo}) : super(key: key);

  //<<< ------------ const DetailScreen({Key key, this.todo}) : super(key: key);

  // Declare a field that holds the Todo.
  final Todo todo;

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(todo.description),
      ),
    );
  }
}
