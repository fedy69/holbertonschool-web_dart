void outer(String name, String id) {
  String inner() {
    String last_name = name.split(' ')[1][0] + '.';
    print("Hello Agent ${last_name}${name.split(' ')[0]} your id is ${id}");
    return ''; 
  }

  inner();
}