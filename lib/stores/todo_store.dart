import 'package:mobx/mobx.dart';
import 'package:todolist_mobx_sql/model/todo_model.dart';
import 'package:todolist_mobx_sql/repository/todo_repository.dart';

part 'todo_store.g.dart';

class TodoStore = _TodoStore with _$TodoStore;

abstract class _TodoStore with Store {
  _TodoStore() {
    getTodos();
  }
  //Get instance of the Repository
  final _todoRepository = TodoRepository();

  @observable
  TodoModel newTodo;

  @action
  void setNewTodo(TodoModel value) => newTodo = value;

  ObservableList<TodoModel> todoList = ObservableList<TodoModel>();

  getTodos({String query}) async {
    todoList.clear();

    print(query);
    //sink is a way of adding data reactively to the stream
    //by registering a new event
    final allTodo = await _todoRepository.getAllTodos(query: query);

    allTodo
        .map(
          (value) => todoList.insert(
            0,
            value,
          ),
        )
        .toList();
  }

  @action
  addTodoList() async {
    print(newTodo.description);
    await _todoRepository.insertTodo(newTodo);
    todoList.insert(0, newTodo);
  }

  @action
  deleteTodoById(int id) async {
    _todoRepository.deleteTodoById(id);
    getTodos();
  }

  updateTodo(TodoModel todo) async {
    await _todoRepository.updateTodo(todo);
    getTodos();
  }
}
