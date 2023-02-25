# Secure access to the secret API

Uh oh, we should not see the secret on the internet without authentication!

Let's leverage the Spring Security framework to secure our site.

1. Add this line above `@RestController`:
    `@Grab("spring-boot-starter-security")`{{copy}}

1. If Spring does not restart automatically, press `Ctrl+C`, then re-run `spring run java/JavaExample.groovy -- watch`{{execute}}

2. Return to the browser tab ( {{TRAFFIC_HOST1_8080}} ) and refresh. What is different?
