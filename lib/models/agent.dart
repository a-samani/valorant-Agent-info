class Agent {
  final String name;
  final Roles role;
  final String info;
  final String image;
  Agent(
      {required this.name,
      required this.role,
      required this.info,
      required this.image});
  String printrole() {
    return role.toString().substring(6);
  }
}

enum Roles {
  Duelist,
  Controller,
  Sentinel,
  Initiators,
}
