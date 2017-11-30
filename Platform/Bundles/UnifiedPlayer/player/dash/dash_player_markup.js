var dashPlayerMarkup = '<div class="aebn_unified_player wrapper">\
	<div class="player-container">\
		<video class="player" controls></video>\
		<div class="play-button-overlay"><div class="control-icon-play-overlay"></div></div>\
		<div class="buffer-overlay"><div class="control-icon-spinner"></div></div>\
		<div class="controls"><!--control background-->\
			<div class="control-wrapper">\
				<div class="row seekbar-wrapper">\
					<div class="current-time seekbar-time-display">00:00</div><div class="seekbar-input-wrapper"><input class="seekbar" type="range" min="0" max="10000" value="0"></div><div id="durationTime" class="duration-time seekbar-time-display">00:00</div>\
				</div>\
				<div class="trick-play-wrapper">\
					<div class="trick-play-image-container"></div>\
					<div class="trick-play-spinner"><div class="control-icon-spinner"></div></i></div>\
					<div class="trick-play-time"></div>\
				</div>\
				<ul class="row">\
					<li class="control-container"><i class="play control-icon-play touch-target"></i></li><li \
						class="control-container"><span class="quality control-icon-settings touch-target"><span class="current-quality current-quality-display current"></span></span></li><li \
						class="control-container"><i class="volume control-icon-volume touch-target"></i></li><li \
						class="control-container"><i class="stats control-icon-stats touch-target"></i></li><li \
						class="control-container"><i class="fullscreen control-icon-fullscreen touch-target"></i></li>\
				</ul>\
			</div>\
		</div>\
	</div>\
\
\
	<div class="touch-shield">\
		<div class="quality-controller quality-control">\
			<div class="quality-header">\
				<div class="quality-header-text">\
					<div class="quality-title">Quality</div>\
					<div class="quality-details">\
						<span>Target/</span><span class="target-label target"></span>&nbsp;<span>Current/</span><span class="current-label current"></span>\
					</div>\
				</div>\
				<div class="icon-wrapper"><span class="close"></span></div>\
			</div>\
			<ul class="quality-menu"></ul>\
		</div>\
\
\
		<div id="volumeController" class="volume-controller volume-control"><!--MAY NEED TO ADJUST SOME JS AND HTML FOR OUTPUT LABEL-->\
			<div class="volume-flex-wrapper">\
				<div class="icon-wrapper close-volume"><span class="close"></span></div>\
				<output for="volume" class="volume-display item-1">5</output>\
				<input class="volume-slider item-2" type="range" value="5" min="0" max="100" step="1">\
				<div class="mute icon-wrapper mute-icon control-icon-volume-on touch-target item-3"></div>\
			</div>\
		</div>\
\
\
		<div id="statsController" class="stats-controller stats-display">\
			<div class="stats-header">\
				<div class="stats-header-text">\
					<span class="stats-title">Statistics</span>\
				</div>\
			<div class="icon-wrapper"><span class="close"></span></div>\
			</div>\
			<div class="stats-information">\
				<div>\
					<div class="video-id">\
						<label class="section">Video ID: </label>\
						<span type="text" id="videoId"></span>\
					</div>\
					<div class="video-data">\
						<div>\
							<div class="stats-left">\
								<div><label>Video:</label><span><output id="vidDimensions">&nbsp;</output></span></div>\
							</div>\
							<div class="stats-right">\
								<div><label>Bitrate:</label><span><output id="vidBitrate">&nbsp;</output><small>&nbsp;kbps</small></span></div>\
							</div>\
						</div>\
						<div>\
							<div class="stats-left">\
								<div><label>Current:</label><span><output id="repIndex">&nbsp;</output><span id="vidAdaptDirection"></span></span></div>\
							</div>\
							<div class="stats-right">\
								<div><label>Capacity:</label><span><output id="dlBitrate">&nbsp;</output><small>&nbsp;kbps</small></span></div>\
							</div>\
						</div>\
						<div>\
							<div class="stats-left">\
								<div><label>Frame Loss:</label><span><output id="vidDroppedFrames">&nbsp;</output></span></div>\
							</div>\
							<div class="stats-right">\
								<div><label>Latency:</label><span><output id="vidLatency">&nbsp;</output><small>&nbsp;ms</small></span></div>\
							</div>\
						</div>\
					</div>\
				</div>\
				<div class="graphs">\
					<label class="section">Bandwith:</label>\
					<output class="buffer">\
						<canvas id="brCanvas"></canvas>\
					</output>\
					<label class="section">Buffer:</label>\
					<outputclass="bandwidth">\
						<div id="bufferMeter" style="width: 92%; background-color: rgb(0, 128, 0);"></div>\
					</output>\
				</div>\
				<div>\
					<div class="video-data">\
						<label class="section">Errors:</label><br/>\
						<div class="stats-left">\
							<div><label>Freeze:</label><output id="freezes">&nbsp;</output></div>\
							<div><label>Adapt:</label><output id="adaptFails">&nbsp;</output></div>\
						</div>\
						<div class="stats-right">\
							<div><label>Source:</label><output id="droppedSources">&nbsp;</output></div>\
							<div><label>Congestion:</label><output id="congestionRescue">&nbsp;</output></div>\
						</div>\
					</div>\
				</div>\
			</div>\
		</div>\
	</div>\
</div>';