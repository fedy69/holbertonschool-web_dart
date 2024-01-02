void outer(String name, String id) {
    String inner() {
        var split = name.split(" ");
        var named = split[1].substring(0, 1) + "." + split[0];
        return "Hello Agent ${named} your id is ${id}";
    }
    print (inner());
}
