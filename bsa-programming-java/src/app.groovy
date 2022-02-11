package app

@Grab("thymeleaf-spring5")
@Controller
class Example {
	@RequestMapping("/")
	public String helloWorld(Map<String,Object> model) {
		model.putAll([title: "My Super Cool Page", date: new Date(), message: "Hello World"])
		return "home"
	}
}