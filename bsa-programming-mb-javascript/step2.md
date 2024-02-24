# Inspect and modify the program

Let's take a look at the code that makes this work.

Please open `weather/weather.html` in the editor if you haven't already.

Your instructor will walk you through the HTML (the part you see in the browser) and then the JavaScript (the part that does stuff and changes what you see). Please pay attention and ask questions, it will help you with the next steps.

Once you have been oriented to the code, find the if/else statements. They look like this:

```
if (tempF < 60) return "Grab a jacket!";
else if ((tempF >= 60) && (tempF < 75)) return "Enjoy the nice weather!";
else return "Stay Hydrated!"; // (tempF >= 75) 
```

Change one of the temperature boundary values. Notice if you change 60, you will have to change it in 2 places. If you change 75, you only have to change it once.

Click to execute this command to copy your changes: `cp weather/weather.html /var/www/html`{{execute}}

Now switch back to the browser tab with the web page and refresh it. Test out your changes to see if they are working as expected. If so, congratulations - you made your first code change! If not, congratulations - you have your first bug! See if you can spot it, but don't wait more than a couple minutes to ask for help.

Repeat the copy command any time you make changes.

Once this is working, try adjusting the if/else block again by adding another level of advice - your choice. You could add advice for colder weather, hotter weather, another intermediate level - whatever you think is best. Try to figure it out how to adjust the logic to make it work. Copy and test when you think you have it. If not, rinse and repeat.

* tip: In most browsers, pushing F12 and selecting console should bring up developer tools. It is very useful for debugging!

When you're done with that - you can change the values and advice to be whatever you want. It's your program, after all!

Show an instructor when you have finished and wait for instructions before hitting continue.
