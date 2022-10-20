@if ($sources->count() > 0)
	<table class="table table-box pml-table mt-2"
		current-page="{{ empty(request()->page) ? 1 : empty(request()->page) }}"
	>
		@foreach ($sources as $key => $source)
			<tr>
				<td width="1%">
					<div class="product-image-list mr-3">
						<img src="{{ url('images/' . $source->type . '_list.png') }}" />
					</div>
				</td>
				<td>
					<a href="{{ action('SourceController@show', $source->uid) }}">
						<h5 class="no-margin text-normal m-0"><span class="kq_search" href="javascript:;">
							{{ $source->getName() }}
						</span></h5>
					</a>
					<span class="text-muted d-block mt-2">
						{{ trans('messages.created_at') }}:
						{{ Tool::formatDateTime($source->created_at) }}
					</span>
				</td>				
				<td>
					<h5 class="no-margin stat-num">
						{{ format_number($source->productsCount()) }}
					</h5>
					<span class="text-muted d-block mt-2">{{ trans('messages.products') }}</span>
				</td>
				<td>
					<h5 class="no-margin stat-num">
						{{ Tool::formatDateTime($source->updated_at) }}
					</h5>
					<span class="text-muted d-block mt-2">{{ trans('messages.source.last_sync_at') }}</span>
				</td>
				<td class="text-end">
					<a href="{{ action('SourceController@sync', $source->uid) }}"
						link-method="POST"
						role="button" class="btn btn-secondary m-icon sync-button">
						<span class="material-icons-outlined">
							sync
							</span> {{ trans('messages.source.sync') }}</a>
					<div class="btn-group">
						<button role="button" class="btn btn-light dropdown-toggle" data-bs-toggle="dropdown"></button>
						<ul class="dropdown-menu dropdown-menu-end">
							<li>
								<a
									class="dropdown-item list-action-single"
									link-confirm="{{ trans('messages.source.delete.confirm') }}"
									link-method="POST"
									href="{{ action('SourceController@delete', ['uids' => $source->uid]) }}">
									<span class="material-icons-outlined">
delete_outline
</span> {{ trans('messages.delete') }}
								</a>
							</li>
						</ul>
					</div>
				</td>
			</tr>
		@endforeach
	</table>
	@include('elements/_per_page_select', ["items" => $sources])

	<script>
		$(function() {
			$('.sync-button').on('click', function() {
				addMaskLoading('{{ trans('messages.source.importing_product') }}');
			});
		});
	</script>
		
@elseif (!empty(request()->keyword))
	<div class="empty-list">
		<span class="material-icons-outlined">
			legend_toggle
			</span>
		<span class="line-1">
			{{ trans('messages.source.not_found') }}
		</span>
	</div>
@else
	<div class="empty-list">
		<span class="material-icons-outlined">
			legend_toggle
			</span>
		<span class="line-1">
			{{ trans('messages.source.empty') }}
		</span>
		<span class="line-2">
			{{ trans('messages.list_empty_line_2') }}
		</span>
	</div>
@endif
