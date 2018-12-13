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
                pers[i].style.backgroundColor = "#E0C5FE"
            }
        };
        break;
        case "placetoggle": {
            var place = document.getElementsByClassName("placeName");
            for (var i = 0; i < place.length; i++) {
                place[i].style.backgroundColor = "#C5E9FE"
            }
        };
        break;
        case "datetoggle": {
            var date = document.getElementsByClassName("date");
            for (var i = 0; i < date.length; i++) {
                date[i].style.backgroundColor = "#AAFEB3"
            }
    };
     break;
        case "egtoggle": {
            var eg = document.getElementsByClassName("ethnicGroup");
            for (var i = 0; i < eg.length; i++) {
                eg[i].style.backgroundColor = "#FEE2AA"
            }
    };
     break;
        case "ranktoggle": {
            var rank = document.getElementsByClassName("rank");
            for (var i = 0; i < rank.length; i++) {
                rank[i].style.backgroundColor = "#A1B6EF"
            }
    };
     break;
        case "termtoggle": {
            var term = document.getElementsByClassName("term");
            for (var i = 0; i < term.length; i++) {
                term[i].style.backgroundColor = "#CDCCCC"
            }
        };
         break;
        case "nametoggle": {
            var name = document.getElementsByClassName("name");
            for (var i = 0; i < name.length; i++) {
               name[i].style.backgroundColor = "#A1B6EF"
            }
    };
    }
    }

window.onload = init;