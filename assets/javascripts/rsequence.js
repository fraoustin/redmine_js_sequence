$(document).ready(function() {
    console.log("sequence");
    var i = 0
    if (document.querySelectorAll('.sequence').length > 0) {
        i = i +1
        var script = document.createElement("script")
        script.src = '/plugin_assets/redmine_js_sequence/javascripts/sequence-diagram-min.js'
        script.onload = function(){
            Array.from(document.querySelectorAll('.sequence')).forEach(elt => {
                var div = document.createElement("div");
                div.className = "diagramseq"
                div.setAttribute('id','diagram' + i)
                elt.parentNode.insertBefore(div, elt)
                var diagram = Diagram.parse(elt.innerText);
                diagram.drawSVG("diagram" + i, {theme: 'hand'});
            });
        }
        document.head.appendChild(script)
    }

});

