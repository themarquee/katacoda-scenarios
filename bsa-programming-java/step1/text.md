# Orientation to the Project

Please be patient while the environment loads up. 

You should see a code editor on top and a terminal on bottom.

When everything is ready, you'll see something like this in the terminal (tab 1):

```
Installing: springboot 2.7.9
Done installing!

Setting springboot 2.7.9 as default.
$ 
$ 
$ 
```

You can clear all the junk out of the terminal with this command:

`clear`{{execute}}

1. Open `java/JavaExample.groovy`

1. Copy this code into the file:

```
@RestController
class JavaExample {
  @RequestMapping("/")
  String hello() {
    "<h1>Don't look!! This is a trade Secret!</h1>\n<p>Bacon ipsum dolor amet tail turkey pancetta picanha filet mignon swine tongue kielbasa short loin. Shoulder beef venison ribeye cow frankfurter, chicken tenderloin kielbasa leberkas ham hock pork sirloin prosciutto t-bone. Ground round biltong corned beef short ribs chicken. Flank fatback chicken brisket chislic burgdoggen. Tenderloin t-bone pork loin venison, filet mignon ground round short loin pork. Pork burgdoggen pork chop short loin turkey shank hamburger ball tip ham short ribs.</p>"
  }
}
```{{copy}}

1. Run these commands in the terminal: 
    1. `source "$HOME/.sdkman/bin/sdkman-init.sh"`{{execute}}
    1. `spring run java/JavaExample.groovy -- watch`{{execute}}

1. Click here to see the web service: {{TRAFFIC_HOST1_8080}}

What do you see?
