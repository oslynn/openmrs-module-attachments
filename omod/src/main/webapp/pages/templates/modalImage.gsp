<!-- Copied from http://www.w3schools.com/howto/howto_css_modal_images.asp -->
<style>

	/* The Modal (background) */
	.vdui_modalImageBackground {
    /*display: none;  Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.8); /* Black w/ opacity */
	}

	/* Modal Content (Image) */
	.vdui_modalImageContent {
    margin: auto;
    display: block;
    max-height: 80%;
	}

	/* Caption of Modal Image (Image Text) - Same Width as the Image */
	#vdui_modalImageCaption {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 700px;
    text-align: center;
    color: #ccc;
    padding: 10px 0;
    height: 150px;
	}

	/* Add Animation - Zoom in the Modal */
	.vdui_modalImageContent, #vdui_modalImageCaption { 
    -webkit-animation-name: zoom;
    -webkit-animation-duration: 0.6s;
    animation-name: zoom;
    animation-duration: 0.6s;
	}

	@-webkit-keyframes zoom {
    from {-webkit-transform:scale(0)} 
    to {-webkit-transform:scale(1)}
	}

	@keyframes zoom {
    from {transform:scale(0)} 
    to {transform:scale(1)}
	}

	/* The Close Button */
	.vdui_modalImageClose {
    position: absolute;
    top: 15px;
    right: 35px;
    color: #f1f1f1;
    font-size: 40px;
    font-weight: bold;
    transition: 0.3s;
	}

	.vdui_modalImageClose:hover,
	.vdui_modalImageClose:focus {
    color: #bbb;
    text-decoration: none;
    cursor: pointer;
	}

</style>

<!-- The Modal -->
<div ng-show="cfg.url" class="vdui_modalImageBackground">

  <!-- The Close Button -->
  <span class="vdui_modalImageClose" ng-click="hide()">&times;</span>

  <!-- Modal Content (The Image) -->
  <img class="vdui_modalImageContent" src="{{cfg.url}}">

  <!-- Modal Caption (Image Text) -->
  <div id="vdui_modalImageCaption">{{cfg.caption}}</div>
</div>