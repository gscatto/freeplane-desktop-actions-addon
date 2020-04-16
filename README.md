# Freeplane "Desktop Actions" Addon

This add-on provides a script to open or browse files, directories and URIs using the [java.awt.Desktop](https://docs.oracle.com/javase/8/docs/api/java/awt/Desktop.html) class: it looks for the associated application registered on the current platform, and launch it to handle the resource.

## The "Open or browse resource.." action

First, it tries to resolve the text contained in the selected node to an _URI_ resource or a _path_ (be it an _absolute_ or _relative_ referring to a _file_ or a _directory_).

For example, consider the following directory tree:

```
svu.mm
theme.mp3
/images
    benson.jpg
    stabler.jpg
```

Then, the following scenarios apply for the `svu.mm` map:

- Opening a node containing the text `images/benson.jpg` or `images/stabler.jpg` launches the default image viewer for our viewing pleasure.
- Opening a node containing the text `theme.mp3` instead launches the default media player which plays that audio file, recommended.
- Opening a node containing the text `https://en.wikipedia.org/wiki/Law_%26_Order:_Special_Victims_Unit` launches the default browser and displays the page.
