/* Rachel */

function init() {
    var fieldset = document.getElementsByTagName('input');
    for (var i = 0; i < fieldset.length; i++) {
        fieldset[i].addEventListener('click', toggle, false);
    }
}

function toggle() {
    var id = this.id;
    switch (id) {
        case "perstoggle": {
            var pers = document.getElementsByClassName("persName");
            for (var i = 0; i < pers.length; i++) {
                pers[i].classList.toggle("on")
            }
        };
        break;
        case "placetoggle": {
            var place = document.getElementsByClassName("placeName");
            for (var i = 0; i < place.length; i++) {
                place[i].classList.toggle("on")
            }
        };
        break;
        case "datetoggle": {
            var date = document.getElementsByClassName("date");
            for (var i = 0; i < date.length; i++) {
                date[i].classList.toggle("on")
            }
    };
     break;
        case "egtoggle": {
            var eg = document.getElementsByClassName("ethnicGroup");
            for (var i = 0; i < eg.length; i++) {
                eg[i].classList.toggle("on")
            }
    };
     break;
        case "ranktoggle": {
            var rank = document.getElementsByClassName("rank");
            for (var i = 0; i < rank.length; i++) {
                rank[i].classList.toggle("on")
            }
    };
     break;
        case "termtoggle": {
            var term = document.getElementsByClassName("term");
            for (var i = 0; i < term.length; i++) {
                term[i].classList.toggle("on")
            }
    
    };
    }
    }

window.onload = init;