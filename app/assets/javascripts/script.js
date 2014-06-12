$(function(){
    var fadeBegin = 0,
    fadeFinish = 370,
    fadingElement = $('.bio');



    window.onscroll = changePos;

    function changePos() {
        var offset = $(document).scrollTop(), opacity = 0;
        //console.log(offset);
        if( offset <= fadeBegin ){
            opacity = 1;
        } else if( offset <= fadeFinish ){
            opacity = 1 - offset / fadeFinish;

        }
        fadingElement.css('opacity',opacity);


        var $header = $("header");
        var $iguales= $(".buscaUno , .logo");
        if (window.pageYOffset > 350) {

            $header.css({
                "background": "rgba(0,0,0, .8)",
                "position": "fixed",
                "top": "0"
                });
            $iguales.css({
                "display": "block"
            })

        } else {
            $header.css({
                "background": "",
                "border-bottom": "",
                "position": "",
                "top": ""
                });
            $iguales.css({
                "display": ""
            })
        }
	};

    // var lupa = $('.lupita'),
    //     busca= $('.buscaUno');
    //
    //
    // var removeClass = true;
    // $(lupa).on('click',function () {
    //     $(busca).toggleClass('muestraForm');
    //     removeClass = false;
    // });
    //
    // $(busca).on('click',function() {
    //     removeClass = false;
    // });
    //
    // $("html").on('click',function () {
    //     if (removeClass) {
    //         $(busca).removeClass('muestraForm');
    //     }
    //     removeClass = true;
    // });



});
