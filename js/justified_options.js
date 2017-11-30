$(document).ready(function() {
   

	jQuery("#ThemeFeaturedGallery").justifiedGallery({
			fixedHeight : false, 
			captions : false, 
			margins : 1,
			border: -1,
			refreshTime: 1,
			refreshSensitivity: 0,
			cssAnimation: true,
			imagesAnimationDuration: 1,
			lastRow: 'justify',
			
		}); 
	
/* Channel Main */


		jQuery("#ChannelMain").justifiedGallery({
			   
				rowHeight: 200,

			fixedHeight : false, 
			captions : true, 
			margins : 1,
			border: 10,
			randomize: false,
			refreshTime: 1,
			refreshSensitivity: 0,
			cssAnimation: true,
			imagesAnimationDuration: 1,
			lastRow: 'hide',
			
		}); 
		
		
/* Trending */




jQuery("#ChannelMainTrending").justifiedGallery({
		rowHeight: 200,

			fixedHeight : false, 
			captions : true, 
			margins : 1,
			border: -1,
			randomize: false,
			refreshTime: 1,
			refreshSensitivity: 0,
			cssAnimation: true,
			imagesAnimationDuration: 1,
			lastRow: 'justify',
			
		}); 
		
	/* featured gallery */

		jQuery("#NSFWFeaturedGallery").justifiedGallery({
		
			fixedHeight : false, 
			captions : false, 
			margins : 1,
			border: -1,
			refreshTime: 1,
			refreshSensitivity: 0,
			cssAnimation: true,
			imagesAnimationDuration: 1,
			lastRow: 'justify',
			
		}); 
		
		
	
/* Channel Main Stars */

jQuery("#ChannelMainStars").justifiedGallery({
			fixedHeight : false, 
			captions : false, 
			margins : 1,
			border: -1,
			refreshTime: 1,
			refreshSensitivity: 0,
			cssAnimation: true,
			imagesAnimationDuration: 1,
			lastRow: 'hide',
		});	
			

		/*jQuery("#ChannelMainStars").justifiedGallery({
			rowHeight : '200',
			maxRowHeight: '500',
			fixedHeight : true, 
			captions : false, 
			margins : 1,
			border: -1,
			randomize: false,
			refreshTime: 1,
			refreshSensitivity: 0,
			cssAnimation: true,
			imagesAnimationDuration: 1,
			lastRow: 'hide',
			
		}); */
	




/* end */

});