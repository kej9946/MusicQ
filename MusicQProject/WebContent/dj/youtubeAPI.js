const apiKey = 'AIzaSyAvumhHBaA5xHB7ooS0QraA1P0P8LotN5s';

const channelId = 'UCbaZNziD55r85R8AGD_ff8Q';
const videoChannel = document.getElementById('video-channel');
const videoContainer = document.getElementById('video-container');
//const videoChannel = document.querySelector('#video-channel');
//const videoContainer = document.querySelector('#video-container');
// Channel
const channelEndpoint = `https://www.googleapis.com/youtube/v3/channels?key=${apiKey}&id=${channelId}&part=snippet,contentDetails,statistics`;

// const ytPromise = fetch(channelEndpoint);
// ytPromise.then(res => res.json()).then(data => console.log(data));

fetch(channelEndpoint).then(res => res.json()).then(data => {
        // console.log(data);
        showChannel(data);
        
        const playlistId = 'PLVydd1-i-xLqU7XlGeh3zp9ckK0BWNyZ1';
		requestPlaylist(playlistId);
    });


function showChannel(data) {
    const myId = data.items[0].id;
    const title = data.items[0].snippet.title;
	const desc = data.items[0].snippet.description;
	const videos = data.items[0].statistics.videoCount;
	const subscribers = data.items[0].statistics.subscriberCount;
	const views = data.items[0].statistics.viewCount;
	const imageLink = data.items[0].snippet.thumbnails.medium.url;

    let output = `
    <div class="col-md-6 mb-4 text-center">
        <img src="${imageLink}" alt="" class="img-fluid" />
        <br />
        <a href="https://www.youtube.com/channel/UCbaZNziD55r85R8AGD_ff8Q/${channelId}" target="_blank" class="btn btn-danger btn-sm">Go to My Youtube Channel</a>
    </div>
    <div class="col-md-6 mb-4">
        <ul class="list-group shadow-lg">	
            <li class="list-group-item bg-danger"><strong class="text-white">YOUTUBE CHANNEL : ${title}</strong></li>
            <li class="list-group-item"><strong>Channel Description</strong>: ${desc}</li>
            <li class="list-group-item"><strong>Videos</strong>: ${numberWithCommas(videos)}</li>
            <li class="list-group-item"><strong>Subscribers</strong>: ${numberWithCommas(subscribers)}</li>
            <li class="list-group-item"><strong>Views</strong>: ${numberWithCommas(views)}</li>    /*비디오 수*/
        </ul>
    </div>
    `;
    videoChannel.innerHTML = output;
  // Request playlist
    requestPlaylist('PLVydd1-i-xLqU7XlGeh3zp9ckK0BWNyZ1');
}




// Add commas to number
function numberWithCommas(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
}

// Request play list items
function requestPlaylist(playlistId) {
    const maxResults = 6;
    const playlistURL = `https://www.googleapis.com/youtube/v3/playlistItems?key=${apiKey}&playlistId=${playlistId}&part=snippet&maxResults=${maxResults}`;

    fetch(playlistURL)
        .then(res => res.json())
        .then(data => loadVideo(data));
}


// Display Videos
function loadVideo(data) {
	const playListItems = data.items;
	// console.log(playListItems);

	if(playListItems) {
		let output = '';

		playListItems.forEach(item => {
			const videoId = item.snippet.resourceId.videoId;

			output += `
				<div class="col-lg-4 col-md-6 mb-4">
					<div class="card card-body p-0 shadow embed-responsive embed-responsive-16by9">
						<iframe height="auto" src="https://www.youtube.com/embed/${videoId}" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
					</div>
				</div>
			`;
		});

		videoContainer.innerHTML = output;
	} else {
		videoContainer.innerHTML = 'Sorry, No videos uploaded!';
	}
}