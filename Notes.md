
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

widgets: 👇
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

👉 Dart is an OOP language and uses `class` - everything is an **OBJECT**
👉 Dart is a modular language which means that the code is split across multiple files, some of this code is stored in the flutter framework package, code can be imported from such a package the following way:

```dart
import 'package:flutter/material.dart';
```
- a file is targeting by adding a slash /
### Object
- an Object is simply a data structure
- classes allows to create blueprints for new objects, so that we can say what should be inside such an object;
- class name start with a capital character
- we can add features to it
- functions can be added to classes - they are called methods 
- variables can be added to functions 

(for complete beginners who doesn't know what are variables- they are little data structures, like a `name`, 
```js
name ="Irene";

// name is the variable holding "Irene" as a value,
```
and when a variable is added to a class is called a **property**
)

## methods
👉 build() - in build method a widget always return another widget

- with the parentheses we construct an object, the so called constructor method of a class, 
- every class has one even if you do not explicitly define it 
- MaterialApp is the wrapper for the entire app;

## What is Layout Builder
LayoutBuilder is a widget which provides the dimensions of its parent so we can know how much space we have for the widget and can build it our child accordingly
LayoutBuilder widget's builder method provides us BuildContext and BoxConstraints

```dart
LayoutBuilder(
    builder: (context, constraints) {

    },
)
```
this is how our basic LayoutBuilder widget looks like
BoxConstraints provides us with various options it will give us the maxWidth and `maxHeight` available for us;

```dart
constraints.maxWidth; // get Maximum available width
constraints.maxHeight; // get Maximum available height
constraints.minWidth; // get Minimum available width
constraints.minHeight; // get Minimum available height
```

👉 more about [BoxConstraints](https://api.flutter.dev/flutter/rendering/BoxConstraints-class.html);

👉 based on `maxWidth` we can build our layout

```dart
LayoutBuilder(
    builder: (context, constraints) {
        if(constraints.maxWidth > 600) {
            getWideLayout();
        } else {
            getNormalLayout();
        }
    },
)
```
## 👉 List is a default object built into Dart. 