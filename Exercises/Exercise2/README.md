CS391 - Software Engineering Exercise 2

This exercise lets us practice some tiny but important principles from Martin's Clean Code. It has a programming part, and a short answer 
question.

ref: https://canvas.oregonstate.edu/courses/1933637/assignments/9395033?return_to=https%3A%2F%2Fcanvas.oregonstate.edu%2Fcalendar%23view_name%3Dmonth%26view_start%3D2023-10-14

What is the DRY principle? 
It means Don't Repeat Yourself. It's a common rule to remove redundancy in your code.

You will often hear that functions should be short and do one thing. Does that mean each function should always contain 1 statement? Why or 
why not? 
Not necessarily. For example if you have local variables then your function can be more than just one statement. But if it is possible to 
get a function to just be one line then that is generally a good idea. Having one line to read compared to many makes the function easier 
to understand.

Imagine that you extract a unit of work into a well-named function, but that function is only called in one place. Your colleague argues, 
"Why do that? Now when I want to follow the code I have to jump from the call site to the function definition and then back, it breaks up 
my flow of reading. The function isn't being reused, so just replace the call with the actual statements so it's all right there." The 
argument has merit. But explain one or two reasons why having the function has its benefits.
Even if you only use a function once, it's still good practice to make it a function. If the function is well named then you shouldn't even 
have to jump all the way up to see what the function does. The function name should tell you exactly what it does to increase readability. 
Also, code can be changed or improved or updated in the future to require more features. Those updates may require another call of that 
function you already made, so it could save you time in the long run to make the function even if it's used only once. You could even use 
it for other projects down the road. Better to be safe than sorry.