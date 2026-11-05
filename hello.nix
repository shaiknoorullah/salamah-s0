{
  name = "hello";
  nodes.machine = { };
  testScript = ''machine.wait_for_unit("multi-user.target")'';
}
