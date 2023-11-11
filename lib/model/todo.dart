class ToDo {
  String? id;
  String? todoText;

  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Aller à l\'église', isDone: true ),
      ToDo(id: '02', todoText: 'Faire le shopping de l\'aprèm', isDone: true ),
      ToDo(id: '03', todoText: 'Prendre le déjeuner', ),
      ToDo(id: '04', todoText: 'Meet sur le projet en cours', ),
      ToDo(id: '05', todoText: 'Prendre le petit déjeuner', ),
      ToDo(id: '06', todoText: 'Aller au Sport le matin', ),
    ];
  }
}
