class Weather {
  final String cityName;
  final double temperature;
  final String mainCondition;

  Weather({
      required this.cityName,
      required this.temperature,
      required this.mainCondition
      });

      factory Weather.fromJson(Map<String, dynamic> Json){
        return Weather(
          cityName: Json['name'],
          temperature: Json['main']['temp'].toDouble(),
          mainCondition: Json['weather'][0]['main'],
        );
      }
}
