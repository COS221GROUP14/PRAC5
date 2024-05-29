async function populate_Media(data)
{
    document.getElementById('loading-container').style.display = 'block';
    let movies;
    if (data !== null && data !== undefined) {
        movies = data;
    }
    var list = document.getElementById('movie-list');
    var elements = list.querySelectorAll('li');
    elements.forEach(function(li) 
    {
        li.parentNode.removeChild(li);
    });
    var existingMessage = list.querySelector('.empty-message');
    if (existingMessage) {
        list.removeChild(existingMessage);
    }
    if (movies === null || movies === undefined || movies.length === 0) {
        var message = document.createElement('div');
        message.classList.add('empty-message');
        message.style.color = '#EDF5E1';
        message.style.background = '#05386B';
        message.style.fontSize = '50px';
        message.style.marginLeft = '5vw';
        message.style.padding = '1vw';
        message.style.borderRadius = '5px';
        message.style.width = '30vw';
        message.textContent = 'It appears this search is empty, try other options :D';
        list.appendChild(message);
    }
    else
    for (const item of movies) {
        var listItem = document.createElement('li');
        
        var anchor = document.createElement('a');
        if(item.Season !== undefined && item.Season !== null)
        {
            anchor.href = 'view.html?id=' + item.MediaID + "&type=" + "Show";
        }
        else
        {
            anchor.href = 'view.html?id=' + item.MediaID + "&type=" + "Movie";
        }
        anchor.classList.add('view-button');
    
        var image = document.createElement('img');
        image.classList.add('house-thumbnail');
        image.src = item.URL;
        image.alt = "Image";
    
        anchor.appendChild(image);

        var Title = document.createElement('h1');
        var Genre = document.createElement('div');
        var ReleaseDate = document.createElement('div');

        var button = document.createElement('button');
        button.className = 'watchlist';
        button.textContent = 'Add to watchlist';

        button.addEventListener('click', function() {
            addWatchlist(item.MediaID , "Movie");
        });

        Title.textContent = "Title : " + item.Title;
        Genre.textContent = "Genre : " + item.Genre;
        ReleaseDate.textContent = "Release Data : "+item.ReleaseDate;

        listItem.appendChild(anchor);
        listItem.appendChild(Title);
        listItem.appendChild(Genre);
        listItem.appendChild(ReleaseDate);

        if(item.Season !== undefined && item.Season !== null)
        {
            var Season = document.createElement('div');
            Season.textContent = "Seasons : " + item.Season;
            listItem.appendChild(Season);
        }

        listItem.appendChild(button);
        list.appendChild(listItem);
    }
    document.getElementById('loading-container').style.display = 'none';
}

async function getMedia()
{
    var currentUrl = window.location.href;
    if(!currentUrl.includes("view.html"))
    {
        let data = await get_attributes("GetMovie");
        let movies = await fetchMedia(data);
        data = await get_attributes("GetShow");
        let show = await fetchMedia(data);   
        let mergedMedia = show.data.concat(movies.data);
        mergedMedia.sort((a, b) => {
            const titleA = a.Title.toUpperCase();
            const titleB = b.Title.toUpperCase();
            if (titleA < titleB) {
                return -1;
            }
            if (titleA > titleB) {
                return 1;
            }
            return 0;
        });
    
        populate_Media(mergedMedia);
    }
    else
    {
        const queryString = window.location.search;
        const urlParams = new URLSearchParams(queryString);

        const id = urlParams.get('id');
        const type = urlParams.get('type');
        get_view(id , type);
    }

}

async function get_view(id , type)
{
    let data = {
    }
    if(type === "Movie")
    {
        data.type = "GetMovie";
        data.movie_id = id;
    }
    if(type === "Show")
    {
        data.type = "GetShow";
        data.movie_id = id;
    }
    let media = await fetchMedia(data);

    await populate_view(media.data[0]);
}

async function populate_view(data)
{
    document.getElementById('loading-container').style.display = 'block';
    console.log(data);
    var media = document.getElementById('media-container');

    var imageContainer = document.createElement('div');
    var image = document.createElement('img');
    image.src = data.URL;
    image.alt = "Media";
    
    imageContainer.appendChild(image);

    var Title = document.createElement('h1');
    Title.textContent = data.Title;

    var Genre = document.createElement('div');
    Genre.textContent = data.Genre;

    var AgeRating = document.createElement('div');
    AgeRating.textContent = data.AgeRating;

    var Length = document.createElement('div');
    Length.textContent = data.Length;

    var ReleaseDate = document.createElement('div');
    ReleaseDate .textContent = data.ReleaseDate ;

    var Summary = document.createElement('div');
    Summary.textContent = data.Summary;

    media.appendChild(imageContainer);
    media.appendChild(Title);
    media.appendChild(AgeRating);
    media.appendChild(Genre);
    media.appendChild(Length);
    media.appendChild(ReleaseDate);
    media.appendChild(Summary);

    document.getElementById('loading-container').style.display = 'none';
}

async function get_attributes(type) {
    
    var genre = document.getElementById("genreFilter").value;
    var search = document.getElementById("searchBar").value;
    var data = {
        "type": type
    };
    if (search !== "") {
        data["title"] = search;
        data["genre"] = search;
        data["summar"] = search;
    }
    if(genre !== null && genre !== undefined)
    {
        data["genre"] = genre;
    }

    return data;
}

async function fetchMedia(data) 
{
    return new Promise((resolve) => 
    {
        let url = 'http://localhost:3000/COS221/api.php';
        let xml = new XMLHttpRequest();
        xml.open('POST', url, true);
        xml.setRequestHeader('Content-Type', 'application/json');

        // const auth = 'Basic ' + btoa('u04948123' + ':' + '3918Milo');

        // const username = 'u04948123';
        // const password = '3918Milo';
        // const auth = 'Basic ' + btoa(username + ':' + password);
        // xml.setRequestHeader('Authorization', auth);

        xml.onreadystatechange = function () 
        {
            if (xml.readyState === 4 && xml.status === 200) 
            {
                let response = JSON.parse(xml.responseText);
                resolve(response);
            }
        };
        xml.send(JSON.stringify(data));
    });
}

async function addWatchlist(MediaID , type)
{
    let userID = localStorage.getItem('userID');
    let data = {
        type : "AddWatchlist",
        user_id : userID
    }
    if(type === "Movie")
    {
        data["movie_id"] = MediaID;
    }
    else
    {
        data["show_id"] = MediaID;
    }
    let url = 'http://localhost:3000/COS221/api.php';
    let xml = new XMLHttpRequest();
    xml.open('POST', url, true);
    xml.setRequestHeader('Content-Type', 'application/json');
       
    // const auth = 'Basic ' + btoa(username + ':' + password);
    // xml.setRequestHeader('Authorization', auth);
    
    xml.onreadystatechange = function () 
    {
        if (xml.readyState === 4 && xml.status === 200) 
        {
            let response = JSON.parse(xml.responseText);
        }
    };
    xml.send(JSON.stringify(data));
}