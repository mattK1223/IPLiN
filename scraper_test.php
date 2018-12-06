<!DOCTYPE html>
<html>
<header>
</header>

<form method="post" action="">
<label for="url">URL:</label>
<input type="text" id="url" name="url">
<input type="submit">
</form>

<?php
	// Need to set $url to the youtube video URL
	// To be used for insert.html
	$url= $_POST['url'];
	echo $url; 

	require_once 'simple_html_dom.php';
	$html = file_get_html($url);
	//$owner = $html->find('#owner-name.a.yt-simple-endpoint.style-scope.yt-formatted-string')
	//$owner = $html->find('yt-formatted-string#owner-name.style-scope.ytd-video-owner-renderer');
	//$ownerName = $owner->
	//$ownerAddress = 'https://youtube.com' . $owner->href;

	$owner = $html->find('img#img.style-scope.yt-imd-shadow');

	$ownerName = $owner->aria-label;
	$ownerAddress = 'https://youtube.com' . $owner->href;

	$videoTitle = $html->find('yt-formatted-string.style-scope.ytd-video-primary-info-renderer');
	$videoPubDate = $html->find('span.date.style-scope.trd-video-secondary-info-renderer');
 	
?>

</html>