
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

Lists are core feature of Dart - and actually of pretty much any programming language (in other languages, lists are also called **"arrays"**).

🚀 Lists allow you to group **multiple values (of any type you want) together** - you can even have lists of lists if you want to (so-called "nested lists").

```dart
var aListOfText = ['Hi', 'This is a list', 'of multiple text snippets (strings)'];
var aNestedList = [[1,2,3], [1,2,3]]; 
```
🛑 **Lists are created by wrapping the items that should be part of the list into square brackets. Often you have lists of the same type (i.e. a list with only strings or ints in it) but you can absolutely also have lists of mixed types:**
```dart
var aMixedList = ['Some text', 1, 5.99, ['a nested list!', 1]];
```
🛑 **Data in lists** can be accessed via the `index` of list items - the important thing  is, that this index starts at zero (0).
```dart
var names = ['Irene', 'Anne', 'Julie'];
// Max has index 0, Anne has index 1, Julie has index 2
print(names[0]); // prints 'Irene' in the console
print(names[2]); // prints 'Julie' in the console
print(names[3]); // would throw an error because there is no element with index 3 in the list
```
we can also find out how many items are in a list:

```dart
print(names.length); // prints 3 - it does NOT print the highest index but simply the amount of items
```
🛑 👉 **Dart** also offers many methods (functions that belong to an object) on the List object (like every other value in Dart, lists are an object).

```dart
names.add('Anne'); // this adds 'Anne' as a new element to the end of the list 
names.remove('Irene'); // this removes 'Irene' from the list, all other items would move and fill the gap
```

## The State holds the Data that is used by the build method!

setState forces Flutter to rerender the UI, not the entire UI of the app

## One widget per file ! 