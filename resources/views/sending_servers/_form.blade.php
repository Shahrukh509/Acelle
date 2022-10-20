<input type="hidden" name="type" value="{{ $server->type }}" />
<div class="row">
	@if (array_key_exists("name", Acelle\Model\SendingServer::frontendTypes()[request()->type]["cols"]))
		<div class="col-sm-6 col-md-4">
			@include('helpers.form_control', [
				'type' => 'text',
				'class' => '',
				'name' => 'name',
				'value' => $server->name,
				'help_class' => 'sending_server',
				'rules' => Acelle\Model\SendingServer::frontendRules(request()->type)
			])
		</div>
	@endif
	@if (array_key_exists("domain", Acelle\Model\SendingServer::frontendTypes()[request()->type]["cols"]))
		<div class="col-sm-6 col-md-4">
			@include('helpers.form_control', [
				'type' => 'text',
				'class' => '',
				'name' => 'domain',
				'value' => $server->domain,
				'help_class' => 'sending_server',
				'rules' => Acelle\Model\SendingServer::frontendRules(request()->type)
			])
		</div>
	@endif
	@if (array_key_exists("api_key", Acelle\Model\SendingServer::frontendTypes()[request()->type]["cols"]))
		<div class="col-sm-6 col-md-4">
			@include('helpers.form_control', [
				'type' => 'text',
				'class' => '',
				'name' => 'api_key',
				'value' => $server->api_key,
				'help_class' => 'sending_server',
				'rules' => Acelle\Model\SendingServer::frontendRules(request()->type)
			])
		</div>
	@endif
	@if (array_key_exists("host", Acelle\Model\SendingServer::frontendTypes()[request()->type]["cols"]) && request()->type != 'sparkpost-api')
		<div class="col-sm-6 col-md-4">
			@include('helpers.form_control', [
				'type' => 'text',
				'class' => '',
				'name' => 'host',
				'value' => $server->host,
				'help_class' => 'sending_server',
				'rules' => Acelle\Model\SendingServer::frontendRules(request()->type)
			])
		</div>
	@endif
	@if ( array_key_exists("host", Acelle\Model\SendingServer::frontendTypes()[request()->type]["cols"]) && request()->type == 'sparkpost-api' )
		<div class="col-sm-6 col-md-4">
			@include('helpers.form_control', [
				'type' => 'select',
				'class' => '',
				'name' => 'host',
				'value' => $server->host,
				'help_class' => 'sending_server',
				'options' => Acelle\Model\SendingServerSparkPost::HOSTS,
				'rules' => Acelle\Model\SendingServer::frontendRules(request()->type)
			])
		</div>
	@endif
	@if (in_array(request()->type, ['mailgun-api', 'mailgun-smtp']))
		<div class="col-sm-6 col-md-4">
			@include('helpers.form_control', [
				'type' => 'select',
				'class' => '',
				'name' => 'host',
				'value' => $server->host,
				'help_class' => 'sending_server',
				'options' => Acelle\Model\SendingServer::mailgunRegionSelectOptions(),
				'rules' => $server->getRules(),
				'disabled' => ($server->id && $errors->isEmpty()),
			])
		</div>
	@endif
	@if (array_key_exists("aws_access_key_id", Acelle\Model\SendingServer::frontendTypes()[request()->type]["cols"]))
		<div class="col-sm-6 col-md-4">
			@include('helpers.form_control', [
				'type' => 'text',
				'class' => '',
				'name' => 'aws_access_key_id',
				'value' => $server->aws_access_key_id,
				'help_class' => 'sending_server',
				'rules' => Acelle\Model\SendingServer::frontendRules(request()->type)
			])
		</div>
	@endif
	@if (array_key_exists("aws_secret_access_key", Acelle\Model\SendingServer::frontendTypes()[request()->type]["cols"]))
		<div class="col-sm-6 col-md-4">
			@include('helpers.form_control', [
				'type' => 'text',
				'class' => '',
				'name' => 'aws_secret_access_key',
				'value' => $server->aws_secret_access_key,
				'help_class' => 'sending_server',
				'rules' => Acelle\Model\SendingServer::frontendRules(request()->type)
			])
		</div>
	@endif
	@if (array_key_exists("aws_region", Acelle\Model\SendingServer::frontendTypes()[request()->type]["cols"]))
		<div class="col-sm-6 col-md-4">
			@include('helpers.form_control', [
				'type' => 'select',
				'class' => '',
				'name' => 'aws_region',
				'value' => $server->aws_region,
				'help_class' => 'sending_server',
				'options' => Acelle\Model\SendingServer::awsRegionSelectOptions(),
				'rules' => Acelle\Model\SendingServer::frontendRules(request()->type)
			])
		</div>
	@endif
	@if (array_key_exists("smtp_username", Acelle\Model\SendingServer::frontendTypes()[request()->type]["cols"]))
		<div class="col-sm-6 col-md-4">
			@include('helpers.form_control', [
				'type' => 'text',
				'class' => '',
				'name' => 'smtp_username',
				'value' => $server->smtp_username,
				'help_class' => 'sending_server',
				'rules' => Acelle\Model\SendingServer::rules(request()->type)
			])
		</div>
	@endif
	@if (array_key_exists("smtp_password", Acelle\Model\SendingServer::frontendTypes()[request()->type]["cols"]))
		<div class="col-sm-6 col-md-4">
			@include('helpers.form_control', [
				'type' => 'text',
				'class' => '',
				'name' => 'smtp_password',
				'value' => $server->smtp_password,
				'help_class' => 'sending_server',
				'rules' => Acelle\Model\SendingServer::rules(request()->type)
			])
		</div>
	@endif
	@if (array_key_exists("smtp_port", Acelle\Model\SendingServer::frontendTypes()[request()->type]["cols"]))
		<div class="col-sm-6 col-md-4">
			@include('helpers.form_control', [
				'type' => 'text',
				'class' => '',
				'name' => 'smtp_port',
				'value' => $server->smtp_port,
				'help_class' => 'sending_server',
				'rules' => Acelle\Model\SendingServer::rules(request()->type)
			])
		</div>
	@endif
	@if (array_key_exists("smtp_protocol", Acelle\Model\SendingServer::frontendTypes()[request()->type]["cols"]))
		<div class="col-sm-6 col-md-4">
			@include('helpers.form_control', [
				'type' => 'text',
				'class' => '',
				'name' => 'smtp_protocol',
				'value' => $server->smtp_protocol,
				'help_class' => 'sending_server',
				'rules' => Acelle\Model\SendingServer::rules(request()->type)
			])
		</div>
	@endif
	@if (array_key_exists("sendmail_path", Acelle\Model\SendingServer::frontendTypes()[request()->type]["cols"]))
		<div class="col-sm-6 col-md-4">
			@include('helpers.form_control', [
				'type' => 'text',
				'class' => '',
				'name' => 'sendmail_path',
				'value' => $server->sendmail_path,
				'help_class' => 'sending_server',
				'rules' => Acelle\Model\SendingServer::rules(request()->type)
			])
		</div>
	@endif
	@if (array_key_exists("default_from_email", Acelle\Model\SendingServer::frontendTypes()[request()->type]["cols"]))
		<div class="col-sm-6 col-md-4">
			@include('helpers.form_control', [
				'type' => 'text',
				'class' => '',
				'name' => 'default_from_email',
				'value' => $server->default_from_email,
				'help_class' => 'sending_server',
				'rules' => Acelle\Model\SendingServer::rules(request()->type)
			])
		</div>
	@endif	
</div>

<h4 class="text-semibold text-primary">{{ trans('messages.sending_quota') }}</h4>

<div class="row boxing">
	<div class="col-md-12">
		<p>{!! trans('messages.options.wording') !!}</p>
	</div>
	<div class="col-md-4">
		@include('helpers.form_control', [
			'type' => 'text',
			'class' => 'numeric',
			'name' => 'quota_value',
			'value' => $server->quota_value,
			'help_class' => 'sending_server',
			'rules' => Acelle\Model\SendingServer::rules(request()->type),
			'default_value' => '1000',
		])
		<div class="checkbox inline text-semibold">
			<label>
				<input{{ $server->quota_value  == -1 ? " checked=checked" : "" }} type="checkbox" class="styled unlimit-check">
				{{ trans('messages.unlimited') }}
			</label>
		</div>
	</div>
	<div class="col-md-4">
		@include('helpers.form_control', [
			'type' => 'text',
			'class' => 'numeric',
			'name' => 'quota_base',
			'value' => $server->quota_base,
			'help_class' => 'sending_server',
			'rules' => Acelle\Model\SendingServer::rules(request()->type),
			'default_value' => '1',
		])
	</div>
	<div class="col-md-4">
		@include('helpers.form_control', ['type' => 'select',
			'name' => 'quota_unit',
			'value' => $server->quota_unit,
			'label' => trans('messages.quota_time_unit'),
			'options' => Acelle\Model\Plan::quotaTimeUnitOptions(),
			'include_blank' => trans('messages.choose'),
			'help_class' => 'sending_server',
			'rules' => Acelle\Model\SendingServer::rules(request()->type)
		])
	</div>
</div>

@if ( array_key_exists("bounce_handler_id", Acelle\Model\SendingServer::frontendTypes()[request()->type]["cols"])
	|| array_key_exists("feedback_loop_handler_id", Acelle\Model\SendingServer::frontendTypes()[request()->type]["cols"]))
	<h4 class="text-semibold text-primary">{{ trans('messages.handlers') }}</h4>
	<div class="row">
		@if (array_key_exists("bounce_handler_id", Acelle\Model\SendingServer::frontendTypes()[request()->type]["cols"]))
			<div class="col-md-4">
				@include('helpers.form_control', [
					'type' => 'select',
					'class' => '',
					'name' => 'bounce_handler_id',
					'label' => trans("messages.bounce_handler"),
					'value' => $server->bounce_handler_id,
					'help_class' => 'sending_server',
					'include_blank' => trans('messages.choose'),
					'options' => Acelle\Model\BounceHandler::getSelectOptions(),
					'rules' => Acelle\Model\SendingServer::rules(request()->type)
				])
			</div>
		@endif
		@if (array_key_exists("feedback_loop_handler_id", Acelle\Model\SendingServer::frontendTypes()[request()->type]["cols"]))
			<div class="col-md-4">
				@include('helpers.form_control', [
					'type' => 'select',
					'class' => '',
					'name' => 'feedback_loop_handler_id',
					'label' => trans("messages.feedback_loop_handler"),
					'value' => $server->feedback_loop_handler_id,
					'help_class' => 'sending_server',
					'include_blank' => trans('messages.choose'),
					'options' => Acelle\Model\FeedbackLoopHandler::getSelectOptions(),
					'rules' => Acelle\Model\SendingServer::rules(request()->type)
				])
			</div>
		@endif
	</div>
@endif
<hr >
<div class="text-left">
	@if(Auth::user()->customer->can('test', $server))
		<a
			id="SendTestEmailButton"
			href="{{ action('SendingServerController@test', $server->uid) }}"
			role="button"
			class="btn btn-secondary me-1 btn-icon modal_link"
			data-in-form="true"
			link-method="GET"
		>
			<span class="material-icons-outlined">
quiz
</span> {{ trans('messages.sending_server.test') }}
		</a>
	@endif
	<button class="btn btn-secondary me-1"><i class="icon-check"></i> {{ trans('messages.save') }}</button>
	<a href="{{ action('SendingServerController@index') }}" role="button" class="btn btn-secondary">
		<i class="icon-cross2"></i> {{ trans('messages.cancel') }}
	</a>
</div>

<script>
	$(function() {
		var manager = new GroupManager();

		$('.boxing').each(function() {
			manager.add({
				textBox: $(this).find('input[name=quota_value]'),
				unlimitedCheck: $(this).find('.unlimit-check'),
				defaultValue: '1000',
				currentValue: $(this).find('input[name=quota_value]').val()
			});

			manager.add({
				textBox: $(this).find('input[name=quota_base]'),
				unlimitedCheck: $(this).find('.unlimit-check'),
				defaultValue: '1',
				currentValue: $(this).find('input[name=quota_base]').val()
			});
		});

		manager.bind(function(group) {
			var doCheck = function() {
				var checked = group.unlimitedCheck.is(':checked');
				
				if (checked) {
					group.currentValue = group.textBox.val();
					group.textBox.val(-1);
					group.textBox.addClass("text-trans");
					group.textBox.attr("readonly", "readonly");
				} else {
					if(group.textBox.val() == "-1") {
						if (group.currentValue != "-1") {
							group.textBox.val(group.currentValue);
						} else {
							group.textBox.val(group.defaultValue);
						}
					}
					group.textBox.removeClass("text-trans");
					group.textBox.removeAttr("readonly", "readonly");
				}
			};

			group.unlimitedCheck.on('change', function() {
				doCheck();
			});

			doCheck();
		});
	});
</script>

<script>
	var SendTestEmail = {
		popup: null,
		url: '{{ action('SendingServerController@test', $server->uid) }}',

		getPopup: function() {
			if (this.popup == null) {
				this.popup = new Popup({
					url: this.url
				});
			}

			return this.popup;
		}
	}

	$(function() {
		$('#SendTestEmailButton').on('click', function(e) {
			e.preventDefault();

			SendTestEmail.getPopup().load();
		});
	});
</script>
