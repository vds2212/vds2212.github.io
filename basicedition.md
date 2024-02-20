[toc](..)

# Basic Edition

In this paragraph I cover the very basic task:
- Open a File
- Save a File
- Quit Vim
- Move in the Text
- Insert Text
- Delete Text
- Change Text
- Copy & Paste
- Scroll
- Switch to a File
- Search in File
- Search in Files
- Replace in Files
- Undo & Redo
- Repeat


## Open a File

There are 

## Basic

How to quit Vim?

How to save your changes?

| Code   | Signification      |
|--------|--------------------|
| `:q!`  | Force quit window  |
| `:q`   | Quit window        |
| `:w`   | Save buffer        |
| `:bd`  | Close buffer       |
| `:bd!` | Force close buffer |


## Modes

-   Normal (<kbd>Esc</kbd>, <kbd>Ctrl-[</kbd>)
-   Insert (`i`, `A`, `c`, ...)
-   Visual (`v`)
-   Visual Line (`Shift-v`)
-   Visual Block (`Ctrl-v`)
-   Command (`:`)
-   Replace (`R`)

Insert a State [Diagram](Diagram)

Ctrl-\^ Equivalent to <kbd>esc</kbd>

Keyboard mistakes and unexpected consequences

Solutions:

-   Show the current command (:set showcmd)
-   Lean how to undo
    -   Go home: Ctrl-c Ctrl-c
    -   Undo: u
    -   Move back to your place: Ctrl-o or Ctrl-i
-   Get more precise in your usage of the keyboard


<!-- vim: set tw=120 : -->
