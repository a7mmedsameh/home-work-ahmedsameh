void main() {
  getWether("Cairo");
  getWether("Ismailia");
  getWether("Alexandria");
  getWether("Test");
}

Map<String, List<Map<String, dynamic>>> weatherReport = {
  "Cairo": [
    {"temperature": 30, "humidity": 10, "condition": "Sunny"},
  ],
  "Ismailia": [
    {"temperature": 30, "humidity": 10, "condition": "Sunny"},
  ],
  "Alexandria": [
    {"temperature": 30, "humidity": 10, "condition": "Sunny"},
  ],
};

void getWether(String city) {
  if (weatherReport.containsKey(city)) {
    print("Weather in $city");
    for (var i in weatherReport[city]!) {
      print(
        "temperature: ${i["temperature"]} humidity: ${i["humidity"]}  condition: ${i["condition"]}  ",
      );
    }
  } else {
    print("Error ${city}");
  }
}
