
## How to create a function in Flutter? 

- with `main `, this is the specific function flutter is looking for when at start;
- the function body is the code which should be executed, and it is defined by adding curly braces, opening & closing();
- the code will be executed whenever the main function is called, and if you were to call it, have to write `main();`, but flutter will do this automatically, that is why it is named `main`, and is in the `main.dart` file.
- with main basically we start the app which means we start rendering the user interface;
- all the heavy lifting is done with the android and iOS files;
🛑 - inside the function a **widget** has to be attached
  
  
```dart

main(){

}

main(); // calling the function, 
```

## What is a widget ? 🤔 
👉 Flutter is all about **` widgets`** which are basically the building blocks, user interface components, with them the user interface is created;

widgets:
- App Bar
- Navigation Bar
- List
- List item
- header image

widgets contains other widgets(Widget Tree)
The List can contain - `LIST ITEMS`- which are child widgets
- The page itself is a widget (Scaffold)
- The entire app is wrapt in one root widget
- Widgets are not only about visuals, they contain logic

for example a button widget would not just display the button  but also it would define what should happen when that button is tapped,

flutter app is building not by doing all  the heavy lifting of hooking it into the operating system but by creating user interfaces,and the logic that belongs to that user interface, things like selecting items, uploading things to a server, fetching data from a server and rendering it to the screen, 