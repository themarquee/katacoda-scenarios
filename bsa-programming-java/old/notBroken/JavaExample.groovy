//@Grab("spring-boot-starter-security")
@RestController
class JavaExample {
  @RequestMapping("/")
  String hello() {
    "Don't look!! This is a trade Secret!"
  }
}