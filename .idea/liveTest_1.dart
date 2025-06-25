void main() {
  List<Map<String, dynamic>> students = [
    {"name": "Alice", "scores": [85, 90, 78]},
    {"name": "Bob", "scores": [88, 76, 95]},
    {"name": "Charlie", "scores": [90, 92, 85]}
  ];

  
  Map<String, double> averages = {};
  for (var student in students) {
    List<int> scores = List<int>.from(student["scores"]);
    double avg = scores.reduce((a, b) => a + b) / scores.length;
    averages[student["name"]] = double.parse(avg.toStringAsFixed(2));
  }

  var sortedEntries = averages.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));

  Map<String, double> sortedAverages = {
    for (var entry in sortedEntries) entry.key: entry.value
  };

  print(sortedAverages);
}
