class ToDo{
  String? id;
  String?todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
});

  static List <ToDo> todoList(){
    return [
      ToDo(id: '01', todoText: "Pray Fazr", isDone: true),
      ToDo(id: '02', todoText: "Morning Exercise", isDone: true),
      ToDo(id: '03', todoText: "Brain Storm app ideas"),
      ToDo(id: '04', todoText: "Python Lang Chain"),
      ToDo(id: '05', todoText: "Apply to Companies"),
      ToDo(id: '06', todoText: "Some Call of Duty"),
    ];
  }

}