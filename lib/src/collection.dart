extension MapExtension<K, V> on Map<K, V> {
  /// Map's extension is used to do for each.
  ///
  /// The invoke param [fun] can return noting, or return a bool.
  /// If [fun] return a bool and the bool is false, the for each will be broke.
  void foreach(Function(K key, V value) fun) {
    for (var k in this.keys) {
      final result = fun(k, this[k]!);
      if (result != null && result is bool && !result) {
        break;
      }
    }
  }

  /// To copy a map by old map.
  ///
  /// If you need a deep copy, you can provide the [deepCopy] to do those.
  Map<K, V> copy({MapEntry Function(K key, V value)? deepCopy}) {
    final resultMap = <K, V>{};
    for (var k in this.keys) {
      final v = this[k];
      MapEntry result;
      if (deepCopy != null) {
        result = deepCopy(k, v!);
      } else {
        result = MapEntry(k, v);
      }
      resultMap[result.key] = result.value;
    }
    return resultMap;
  }

  /// To remove a key ignore case.
  bool removeIgnoreCase(String key) {
    if (!(K == String)) {
      return false;
    }
    final lowerCaseKey = key.toLowerCase();

    this.removeWhere(
        (key, value) => (key as String).toLowerCase() == lowerCaseKey);
    return false;
  }

  /// Is contain the key ignore case.
  bool containsKeyIgnoreCase(String key) {
    if (!(K == String)) {
      return false;
    }
    final lowerCaseKey = key.toLowerCase();
    bool hasFind = false;
    foreach((key, value) {
      final lowerKey = (key as String).toLowerCase();
      if (lowerKey == lowerCaseKey) {
        hasFind = true;
        return false;
      }
      return true;
    });

    return hasFind;
  }

  /// Get the value by key
  V? getValueIgnoreCase(String key) {
    if (!(K == String)) {
      return null;
    }
    final lowerCaseKey = key.toLowerCase();

    V? result;
    foreach((key, value) {
      if ((key as String).toLowerCase() == lowerCaseKey) {
        result = value;
        return false;
      }
      return true;
    });

    return result;
  }

  Map<String, String> get toStringMap => this
      .map((key, value) => MapEntry(key.toString(), value?.toString() ?? ''));
}

extension IterableExtension<E> on Iterable<E> {
  /// Find the first element as [T]
  ///
  /// It will return null if no element's type is [T]。
  /// You can also use [where] to find that you want to find.
  T? findFirstAs<T>({bool Function(E element)? where}) {
    for (var item in this) {
      if (where != null) {
        if (where(item) && item is T) {
          return item;
        }
      } else if (item is T) return item;
    }
    return null;
  }
}
