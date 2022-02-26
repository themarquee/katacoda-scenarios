package app

//@Grab("spring-boot-starter-security")
@Grab("spring-boot-starter-actuator")
@Grab("thymeleaf-spring5")

@Controller
class Example {
	public static final  double  LOW_TEMP_F_WARNING=0.;
    public static final  double  HIGH_TEMP_F_WARNING=100.;
    public static final  int     MAX_LOOP=5;
	
	@RequestMapping("/")
	public String defaultWeather(Map<String,Object> model) {
		double temp = 72.0;
		return prepareWeather(temp);
	}

	@RequestMapping("/{temp}")
	public String defaultWeather(@PathVariable("temp") double temp, Map<String,Object> model) {
		double temp = 72.0;
		return prepareWeather(temp);
	}

	private String prepareWeather(double temp) {
		model.putAll([
			title: "Super Secret Weater App", 
			date: new Date(), 
			tempInF: temp, 
			tempInC: fahrenheitToCelcius(temp), 
			message: "Shhhh... this is a Trade Secret App!!",
			advice: getAdvice(temp)])

			return "home"
	}

	private double fahrenheitToCelcius(double tempInF) {
		return ( tempInF- 32) * 5/9
	}

	private String getAdvice(double tempInF) {
		if(tempInF > HIGH_TEMP_F_WARNING) return "Remember to hydrate";
		else if(tempInF < LOW_TEMP_F_WARNING ) return "Remember to pack Long underwear";
	}
}