# weather_project

• Version FLutter
<br />Flutter 3.0.5

• Solutions to the problems found:
1. Update dependencies (refer to https://pub.dev/)
<br />e.g
<br />geolocator: ^9.0.2
<br />http: ^0.13.5
<br />flutter_spinkit: ^5.1.0
<br />google_fonts: ^3.0.1
2. Geolocation new version can only be in Sdk 33 then
<br />Update **compileSdkVersion 33** in weather_project\android\app\build.gradle
3. Add permission geolocation
<br />**await Geolocator.requestPermission();**
4. Setup
<br />File > Project Setting > Project > Project Sdk > Choose Sdk 33
<br />File > Project Setting > Module > [projectname]_android > Choose Sdk 33
5. Setup location simulator to Jakarta
6. The default temperature is Kelvin, so it needs to be converted to Celsius

• Video Running


https://user-images.githubusercontent.com/62136934/201158123-e8d1e4bb-92d6-4d23-8a30-7ff771ee981a.mp4

