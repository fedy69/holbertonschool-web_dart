void outer(String name, String id) {
  String inner() {
    List<String> name = name.split(' ');
    String last_name = name.length > 1 ? name[1] : '';
    String first_name = name[0];

    return 'Hello Agent ${last_name.substring(0, 1)}.$last_name your id is $id';
  }

  inner();
}
