# RedmineViz

## Summary

Add [Viz](http://viz-js.com/) in [Redmine](http://www.redmine.org/)  

## Usage

You can add your graphivz code in wiki or issue by editor

```
    my text with my code
    {{graphviz
    a -> b;
    b -> c;
    c -> d;
    d -> a;
    }}
    {{graphviz(circo)
    a -> b;
    b -> c;
    c -> d;
    d -> a;
    }}
```

You can use as engine

- dot (default)
- circo
- fdp
- neato
- osage
- twopi

(you can try on http://viz-js.com/)

## Installation
```
$ cd redmine/plugins
$ git clone https://github.com/fraoustin/rviz.git
```

restart Redmine
