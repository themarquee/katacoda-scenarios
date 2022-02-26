# Orientation to the Project

Please be patient while the environment loads up. 

You should see a code editor on top and a terminal on bottom.

When everything is ready, you'll see something like this in the terminal:

```
Installing: springboot 2.6.4
Done installing!

Setting springboot 2.6.4 as default.
$ 
$ 
$ 
```

You can clear all the junk out of the terminal with this command:

`clear`{{execute}}

1. Right click on Java and create a new file called `JavaExample.groovy`

1. Copy this code into the file:

```
@RestController
class JavaExample {
  @RequestMapping("/")
  String hello() {
    "Don't look!! This is a trade Secret!"
  }
}
```{{copy}}

1. Run this in the terminal: `spring run java/JavaExample.groovy -- watch`{{execute}}

1. Click on the Port 8080 tab above the terminal

What do you see?
