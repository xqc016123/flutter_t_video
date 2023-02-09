class ListUtils {
  /// 往数组的元素间插入新元素
  static List<E> addObjectBetweenItems<E>(List<E> list, E Function () creator) {
    // 如果数组为空，则返回空数组
    if (list.isEmpty) return const [];

    // 如果数组只有一个元素，则返回一个元素的数组
    if (list.length == 1) return [list[0]];

    List<E> result = [];
    for (int i = 0; i < list.length; i ++) {
      result.add(list[i]);
      if (i < list.length - 1) {
        result.add(creator());
      }
    }
    return result;
  }
}