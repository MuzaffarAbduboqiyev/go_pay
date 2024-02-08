double parseToDouble(Map response, String key) {
  return response.containsKey(key)
      ? (response[key] != null)
          ? (response[key] is String)
              ? double.parse(response[key] ?? "0.0")
              : (response[key] is int)
                  ? (response[key]).toDouble()
                  : (response[key] is double)
                      ? response[key]
                      : 0.0
          : 0.0
      : 0.0;
}

int parseToInt(Map response, String key) {
  return response.containsKey(key)
      ? (response[key] != null)
          ? (response[key] is String)
              ? int.parse(response[key] ?? "0")
              : (response[key] is double)
                  ? (response[key]).round()
                  : (response[key] is int)
                      ? response[key]
                      : 0
          : 0
      : 0;
}

String parseToString(Map response, String key) {
  return (response.containsKey(key) && response[key] != null)
      ? (response[key] is String)
          ? response[key]
          : response[key].toString()
      : "";
}

bool parseToBool(Map response, String key) {
  return (response.containsKey(key) && response[key] != null)
      ? (response[key] is bool)
          ? response[key]
          : (response[key] is String)
              ? (response[key].contains("true") || (response[key] == "1"))
                  ? true
                  : false
              : (response[key] is double)
                  ? ((response[key]).round() == 1)
                      ? true
                      : false
                  : (response[key] is int)
                      ? (response[key] == 1)
                          ? true
                          : false
                      : false
      : false;
}

String parseToStringInnerMap(Map response, String key, String innerKey) {
  return (response.containsKey(key) && response[key] != null)
      ? (response[key] is Map && response[key].containsKey(innerKey))
          ? parseToString(response[key], innerKey)
          : response[key].toString()
      : "";
}

int parseToIntInnerMap(Map response, String key, String innerKey) {
  return (response.containsKey(key) &&
          response[key] != null &&
          (response[key] is Map) &&
          response[key].containsKey(innerKey))
      ? (response[key][innerKey] != null)
          ? (response[key][innerKey] is String)
              ? int.parse(response[key][innerKey] ?? "0")
              : (response[key][innerKey] is double)
                  ? (response[key][innerKey]).round()
                  : (response[key][innerKey] is int)
                      ? response[key][innerKey]
                      : 0
          : 0
      : 0;
}

double parseToDoubleInnerMap(Map response, String key, String innerKey) {
  return response.containsKey(key) &&
          response[key] != null &&
          (response[key] is Map) &&
          response[key].containsKey(innerKey)
      ? (response[key][innerKey] != null)
          ? (response[key][innerKey] is String)
              ? double.parse(response[key][innerKey] ?? "0.0")
              : (response[key][innerKey] is int)
                  ? (response[key][innerKey]).toDouble()
                  : (response[key][innerKey] is double)
                      ? response[key][innerKey]
                      : 0.0
          : 0.0
      : 0.0;
}
