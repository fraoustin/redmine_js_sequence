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
$ git clone https://github.com/fraoustin/redmine_js_sequencegit
```

restart Redmine
