int nestedListLength(List<List<dynamic>> nestedList) {
  int length = 0;
  for (int i = 0; i < nestedList.length; i++) {
    length += nestedList[i].length;
  }

  return length;
}