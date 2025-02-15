# Translations From JSON for Godot 4.x

A Godot plugin for importing JSON files for translations.

## Usage

1. [Install the plugin into your project](https://docs.godotengine.org/en/4.0/tutorials/plugins/editor/installing_plugins.html) and activate it.
2. Add JSON translations files into your project in .tjson format.
3. Make sure the JSON files are imported as "JSON Translation".
4. Add your JSON files to translations using Project Settings > Localization > Translations > Add *(Change "All Recognized" to "All files (\*)" to see the JSON file)*

## JSON Format

The json data must be an object with translation keys

### Example JSON

```jsonc
// en.tjson
{
    "HELLOWORLD": "Hello world!",
    "ANOTHERTEXT": "This is another text."
}
```
