import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:weatherapp/containers/city_container.dart';
import 'package:weatherapp/containers/is_loading_container.dart';
import 'package:weatherapp/containers/query_container.dart';
import 'package:weatherapp/actions/index.dart';
import 'package:weatherapp/models/index.dart';

String inputText;

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IsLoadingContainer(
      builder: (BuildContext context, bool isLoading) {
        return Scaffold(
          backgroundColor: const Color(0xfff5f5f5),
          body: ListView(children: <Widget>[
            SafeArea(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                const SizedBox(height: 5.0),
                QueryContainer(
                  builder: (BuildContext context, String query) {
                    return Row(
                      children: <Widget>[
                        Expanded(
                          child: TextField(
                            decoration: const InputDecoration(
                              hintText: 'Enter your city name!',
                            ),
                            onChanged: (String value) {
                              inputText = value;
                            },
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            StoreProvider.of<AppState>(context)
                              ..dispatch(UpdateQuery(inputText))
                              ..dispatch(UpdateQuery(StoreProvider.of<AppState>(context).state.query))
                              ..dispatch(const GetCity());
                          },
                          icon: const Icon(Icons.search),
                        ),
                      ],
                    );
                  },
                ),
                const SizedBox(height: 100.0),
                Container(
                  height: 500,
                  child: Builder(builder: (BuildContext context) {
                    if (isLoading) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    return CityContainer(builder: (BuildContext context, City city) {
                      final String title = city.title;
                      return Center(
                        child: Column(
                          children: <Widget>[
                            Text(
                              '$title',
                              style: const TextStyle(
                                fontFamily: 'Avenir',
                                color: Color(0xff424242),
                                fontSize: 44,
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Image(
                              image: NetworkImage(
                                  'https://www.metaweather.com/static/img/weather/png/64/${city.weatherInfo[0].weather_state_abbr}.png'),
                            ),
                            const SizedBox(height: 2.0),
                            Text(
                              '${city.weatherInfo[0].the_temp.round()}°',
                              style: const TextStyle(
                                color: Color(0xff424242),
                                fontSize: 30,
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const Spacer(),
                            const Divider(
                              thickness: 1,
                            ),
                            Builder(builder: (BuildContext context) {
                              return GridView.builder(
                                shrinkWrap: true,
                                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                ),
                                itemCount: city.weatherInfo.length - 3,
                                itemBuilder: (BuildContext context, int index) {
                                  final WeatherInfo current = city.weatherInfo[index + 1];
                                  return Column(children: <Widget>[
                                    Image(
                                      image: NetworkImage(
                                          'https://www.metaweather.com/static/img/weather/png/64/${current.weather_state_abbr}.png'),
                                    ),
                                    Container(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        '${current.the_temp.round()}°',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0,
                                        ),
                                      ),
                                    ),
                                  ]);
                                },
                              );
                            }),
                          ],
                        ),
                      );
                    });
                  }),
                ),
              ]),
            ),
          ]),
        );
      },
    );
  }
}
