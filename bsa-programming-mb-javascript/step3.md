# Let's get crazy

Congratulations! At this point, you have modified your weather page to give much better advice than it did at first.

Now, let's take it up a notch. Having to know the temperature in the first place, and then having to type it in is WAAAY too much work. Wouldn't it be much better if the page already knew what the weather is?

Let's integrate this page with a weather API! API stands for Application Programming Interface - it is a program that provides some service that is designed to be used by another program (but remain completely separate from each other). It is like calling out for a hot and ready pizza delivered to your door versus going to the grocery store, buying a frozen pizza, and cooking it in your own kitchen.

Turns out there is a weather API (several actually) that we can use to get the current temp for a location. We'll use that to get the current temp, then use our advice function to get the proper advice, then display it on the screen.

Let's start by locating the files for our new project.

Under the `weather-api` directory, you should see 2 files:
* `weather-api/weather-api.html`
* `weather-api/weather-api.js`

`weather-api.html` will be our new weather page. Go ahead and copy the contents of your modified `weather.html` page to `weather-api/weather-api.html`. 

Click this to copy your changes automatically: `cp weather/weather.html weather-api/weather-api.html`{{execute}}

It is good practice to externalize your javascript to its own file, so we'll use `weather-api/weather-api.js` for that.

Open `weather-api/weather-api.html` and replace the temp field:

```
<p>
    <label for="temperature">Temperature (°F):</label>
    <input type="text" size="5" name="temperature" id="temperature" value="72" />
</p>
```

with a zip code field:

```
<p>
    <label for="zipCode">Zip Code:</label>
    <input type="text" size="5" name="zipCode" id="zipCode" value="62521" />
</p>
```{{copy}}

Next, add a placeholder for the location.

```
<h2 id="location">
    This text will be replaced with the location.
</h2>
```{{copy}}

Finally, cut all the code between the `<script>` and `</script>` tags and move it to `weather-api/weather-api.js`{{open}}. 

* Note: leave this line alone:
`<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>`

Replace the now empty script tags (`<script></script>`) in `weather-api.html` with this: `<script src="weather-api.js"></script>` to reference the new javascript file.

Next, replace the `fetchWeather` function in `weather-api.js` with the following:

```
function fetchWeather() {
    var zip = $('#zipCode').val();
    console.log(zip);

    if (!zip) {
        console.log("Something bad happened: " + zip);
        return;
    }

    $.get(
        "https://api.weatherapi.com/v1/current.json?key=6c4ea95798bb44c3beb42829221102&q=" + zip + "&aqi=no",
        function (response) {

            var city = response.location.name;
            var state = response.location.region;
            var nation = response.location.country;
            $('#location').html(`${city}, ${state} ${nation}`);

            var tempF = response.current.temp_f;
            var tempC = farenheitToCelcius(tempF);
            var weather = `The temperature is ${tempF} °F (${tempC} °C)`;
            $('#weather').html(weather);

            var advice = fetchAdvice(tempF);
            console.log(advice);
            $('#advice').html(advice);
        }
    );
}
```{{copy}}

Finally, we'll add a listener for the enter keystroke just to make it a little easier to use. Add this following the `$('#button').click(fetchWeather);` command:

```
$('#zipCode').on('keypress', function (e) {
    if (e.which == 13) {
        fetchWeather();
        e.preventDefault();
    }
});
```{{copy}}

Copy the files to the web server: `cp weather-api/weather-api.* /var/www/html`{{execute}}

Open the browser and change the end of the URL from `weather.html` to `weather-api.html`

Did it work? If not, try to find the mistake. As always, don't wait too long to ask for help.

Please show an instructor before clicking continue. It may destroy your progress!