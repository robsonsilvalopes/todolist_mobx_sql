import 'package:todolist_mobx_sql/dao/todo_dao.dart';
import 'package:todolist_mobx_sql/model/todo_model.dart';

class TodoRepository {
  final todoDao = TodoDao();

  Future getAllTodos({String query}) => todoDao.getTodos(query: query);

  Future insertTodo(TodoModel todo) => todoDao.createTodo(todo);

  Future updateTodo(TodoModel todo) => todoDao.updateTodo(todo);

  Future deleteTodoById(int id) => todoDao.deleteTodo(id);

  //We are not going to use this in the demo
  Future deleteAllTodos() => todoDao.deleteAllTodos();
}
