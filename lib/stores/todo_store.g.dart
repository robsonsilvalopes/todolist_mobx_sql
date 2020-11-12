// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TodoStore on _TodoStore, Store {
  final _$newTodoAtom = Atom(name: '_TodoStore.newTodo');

  @override
  TodoModel get newTodo {
    _$newTodoAtom.context.enforceReadPolicy(_$newTodoAtom);
    _$newTodoAtom.reportObserved();
    return super.newTodo;
  }

  @override
  set newTodo(TodoModel value) {
    _$newTodoAtom.context.conditionallyRunInAction(() {
      super.newTodo = value;
      _$newTodoAtom.reportChanged();
    }, _$newTodoAtom, name: '${_$newTodoAtom.name}_set');
  }

  final _$addTodoListAsyncAction = AsyncAction('addTodoList');

  @override
  Future addTodoList() {
    return _$addTodoListAsyncAction.run(() => super.addTodoList());
  }

  final _$deleteTodoByIdAsyncAction = AsyncAction('deleteTodoById');

  @override
  Future deleteTodoById(int id) {
    return _$deleteTodoByIdAsyncAction.run(() => super.deleteTodoById(id));
  }

  final _$_TodoStoreActionController = ActionController(name: '_TodoStore');

  @override
  void setNewTodo(TodoModel value) {
    final _$actionInfo = _$_TodoStoreActionController.startAction();
    try {
      return super.setNewTodo(value);
    } finally {
      _$_TodoStoreActionController.endAction(_$actionInfo);
    }
  }
}
