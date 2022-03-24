getHomeStory(props) {
  var s = [
    {
      "img":
          "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/family-background-design-template-29ab2d09ab60b428d95a9a6391b3c5fb_screen.jpg?ts=1625462116",
      'name': "Jon Snow",
      "time": "5m",
    },
    {
      "img":
          "https://thumbs.dreamstime.com/b/happy-family-mother-father-children-son-daughter-sunset-nature-150794881.jpg",
      'name': "Arya Stark",
      "time": "12m",
    },
    {
      "img":
          "https://ca-times.brightspotcdn.com/dims4/default/0813ab4/2147483647/strip/true/crop/2048x1362+0+0/resize/840x559!/quality/90/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2Fb3%2F5c%2F7b5ee0c0b6fd64aeeec6ad038367%2Fla-et-game-of-thrones-house-stark-through-the-043",
      'name': "Sansa Stark",
      "time": "1h",
    },
    {
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/Nikolaj_Coster-Waldau_by_Gage_Skidmore.jpg/110px-Nikolaj_Coster-Waldau_by_Gage_Skidmore.jpg",
      'name': "Jaime Lannister",
      "time": "2h",
    },
    {
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Lena_Headey_Primetime_Emmy_Awards_2014.jpg/110px-Lena_Headey_Primetime_Emmy_Awards_2014.jpg",
      'name': "Cersei Lannister",
      "time": "2h",
    },
  ];

  props.setState(() {
    props.stories = s;
    props.loading = false;
  });
}

getHomeOnlines(props) {
  var s = [
    {
      "status": "Online",
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/Sophie_Turner_by_Gage_Skidmore_3.jpg/110px-Sophie_Turner_by_Gage_Skidmore_3.jpg"
    },
    {
      "status": "Ofline",
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Maisie_Williams_by_Gage_Skidmore_2.jpg/110px-Maisie_Williams_by_Gage_Skidmore_2.jpg"
    },
    {
      "status": "Online",
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Alfie_Allen_by_Gage_Skidmore_2.jpg/110px-Alfie_Allen_by_Gage_Skidmore_2.jpg"
    },
    {
      "status": "Ofline",
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/Isaac_Hempstead_Wright_by_Gage_Skidmore_3.jpg/110px-Isaac_Hempstead_Wright_by_Gage_Skidmore_3.jpg"
    },
    {
      "status": "Online",
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Jack_Gleeson_%28August_2012%29_%28headshot%29.jpg/110px-Jack_Gleeson_%28August_2012%29_%28headshot%29.jpg"
    },
    {
      "status": "Online",
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Peter_Dinklage_by_Gage_Skidmore.jpg/110px-Peter_Dinklage_by_Gage_Skidmore.jpg"
    },
    {
      "status": "Online",
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Carice_van_Houten_by_Gage_Skidmore.jpg/110px-Carice_van_Houten_by_Gage_Skidmore.jpg"
    },
    {
      "status": "Online",
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Sibel_Kekilli_January_2015.jpg/110px-Sibel_Kekilli_January_2015.jpg"
    },
    {
      "status": "Online",
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/Natalie_Dormer_2014.jpg/110px-Natalie_Dormer_2014.jpg"
    },
    {
      "status": "Online",
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Oona_Chaplin_2016.jpg/110px-Oona_Chaplin_2016.jpg"
    },
    {
      "status": "Online",
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Gwendoline_Christie_by_Gage_Skidmore.jpg/110px-Gwendoline_Christie_by_Gage_Skidmore.jpg"
    },
  ];

  props.setState(() {
    props.onlines = s;
    props.loading = false;
  });
}
