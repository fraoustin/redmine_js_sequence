# Redmine Js Sequence

## Summary

Add [JsSequence](https://bramp.github.io/js-sequence-diagrams/) in [Redmine](http://www.redmine.org/)  

## Usage

You can add your js-sequence code in wiki or issue by editor

```
    my text with my code
    {{sequence
    Andrew->China: Says Hello
    Note right of China: China thinks\nabout it
    China-->Andrew: How are you?
    Andrew->>China: I am good thanks!
    }}
```

## Installation
```
$ cd redmine/plugins
$ git clone https://github.com/fraoustin/redmine_js_sequence.git
```

restart Redmine

I had an issue with Redmine 6.0: the redmine/public folder was empty. I manually created the missing directories.

```
$ cd redmine/public
$ mkdir redmine_js_sequence
$ cd redmine_js_sequence
$ ln -s ln -s ../../../plugins/redmine_js_sequence/assets/javascripts javascripts
$ ln -s ln -s ../../../plugins/redmine_js_sequence/assets/stylesheets stylesheets
```
