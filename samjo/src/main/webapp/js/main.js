/**
 * 
 */
	
	//set cookie 
    function setCookie(name, value, expiredays) {
        var today = new Date();
        today.setDate(today.getDate() + expiredays);

        document.cookie = name + '=' + escape(value) + '; path=/; expires=' + today.toGMTString() + ';'
    }

	//get cookie 
    function getCookie(name)
    {
        var cName = name + "=";
        var x = 0;
        while ( x <= document.cookie.length )
        {
            var y = (x+cName.length);
            if ( document.cookie.substring( x, y ) == cName )
            {
                if ( (endOfCookie=document.cookie.indexOf( ";", y )) == -1 )
                    endOfCookie = document.cookie.length;
                return unescape( document.cookie.substring( y, endOfCookie ) );
            }
            x = document.cookie.indexOf( " ", x ) + 1;
            if ( x == 0 )
                break;
        }
        return "";
    }
   
	//main slide
    new Swiper('.main_slide', {
        effect : 'fade',
        speed : 600,
        loop : true,
        autoplay : {
            delay : 4000
        },
        simulateTouch : false,
        pagination: {
            el: '.main_pagination',
            clickable: true
        },
    });

   //main review slide
    new Swiper('.review_slide', {
        slidesPerView: 4,
        slidesPerGroup: 4,
        speed : 600,
        loop : false,
        autoplay: {
            delay: 3000,
            disableOnInteraction: false
        },
        pagination: {
            el: '.review_pagination',
            clickable: true
        },
        navigation: {
            nextEl: '.review_next',
            prevEl: '.review_prev'
        }
    });
