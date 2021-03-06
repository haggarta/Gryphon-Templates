{% helper config %}
<form method="post" action="{{ commentUrl }}" id="comment_form">
	<input type="hidden" name="key" value="{{ commentKey }}" />
	<input type="hidden" name="type" value="{{ commentItem.myNS~':'~commentItem.modelString }}" />
	<input type="hidden" name="id" value="{{ commentItem.uid }}" />
	
	<h3>Add a Comment</h3>
		
	<p>The State News reserves the right to remove any comment deemed racially derogatory, inflammatory, or spam...atory. Repeat offenders may have their IP address banned from posting future comments. <em>Please be nice.</em></p>

		
		<fieldset id="comment-userinfo" class="noborder">
		
			<div class="grid_6 alpha">
				<label for="comment-name">Name </label>
				<input type="text" name="name" id="comment-name" value="{{ comment.name }}" />
				<label for="comment-email">Email Address</label>
				<input type="text" name="email" id="comment-email" value="{{ comment.email }}" />
				<span class="small">Your email will not be published and we promise not to spam you.</span>
			</div>
			<div class="grid_2 omega">
				{% if config.get('gryphon:comments:emailVerification') %}
					<p class="box gray">If this is the first time you've commented, your comment won't appear until you've verified your email address.</p>
				{% endif %}
			</div>

			
		</fieldset>

		<hr class="spacer" />

		<fieldset class="noborder">
			<div class="grid_6 alpha">
				<label for="comment-body">Your Comment</label>
				<textarea name="comment" id="comment-body" rows="6" cols="30">{{ comment.comment }}</textarea>
			</div>
			
			<div class="grid_2 omega">
				<p class="box gray">
					<strong>Format options:</strong>
					Links: "my link":http://my.url.com<br />
					Bold: *something!"<br />
					Italic: _OMG!_
				</p>
			</div>
			
			<div class="grid_4 alpha">
			<script type="text/javascript">
			var RecaptchaOptions = {
				theme : 'white'
			};
			</script>
			{% if turing %}
				{{ turing }}
			{% endif %}
			
			</div>
			<div class="grid_4 omega">
				<p class="box gray" style="width: 260px; float: right;">Due to a recent uptick in spam we've been forced to upgrade our comment verification procedures. The first step is the new CAPTCHA system to the right. If you have questions or concerns, please do not hesitate to contact us.</p>
			</div>
			
			
			
		</fieldset>
		
		<div class="grid_8 alpha omega">
			<br />
			<input type="image" src="{{ 'style/gryphon/images/submit_comment.png'|url }}" id="comment-submit" value="Add Comment" />	
			<br /><br />
		</div>
	
				

</form>