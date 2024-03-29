function farenheitToCelcius(tempF) {
    return (5 / 9 * (tempF - 32)).toFixed(1);
}

function fetchAdvice(tempF) {
    if (tempF < 50) return "Wear long-johns!";
    else if ((tempF >= 50) && (tempF < 60)) return "Grab a jacket!";
    else if ((tempF >= 60) && (tempF < 75)) return "Enjoy the nice weather!";
    else return "Stay Hydrated!"; // (tempF >= 75) 
}

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

$('#button').click(fetchWeather);
$('#zipCode').on('keypress', function (e) {
    if (e.which == 13) {
        fetchWeather();
        e.preventDefault();
    }
});