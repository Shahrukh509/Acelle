@if ($items->count() > 0)
    <table class="table table-box pml-table mt-2"
        current-page="{{ empty(request()->page) ? 1 : empty(request()->page) }}"
    >
        @foreach ($items as $key => $item)
            <tr>
                <td width="1%">
                    <div class="text-nowrap">
                        <div class="checkbox inline">
                            <label>
                                <input type="checkbox" class="node styled"
                                    name="uids[]"
                                    value="{{ $item->uid }}"
                                />
                            </label>
                        </div>
                    </div>
                </td>
                <td>
                    <span class="server-avatar shadow-sm rounded server-avatar-{{ $item->type }} mr-0">
                        <span class="material-icons-outlined">

</span>
                    </span>
                </td>
                <td>
                    <h5 class="m-0 text-bold">
                        <a class="kq_search" href="{{ action('SendingServerController@edit', ["id" => $item->uid, "type" => $item->type]) }}">{{ $item->name }}</a>
                    </h5>
                    <span class="text-muted">{{ trans('messages.created_at') }}: {{ Tool::formatDateTime($item->created_at) }}</span>
                </td>
                <td>
                    <div class="single-stat-box pull-left ml-20">
                        <span class="no-margin stat-num kq_search">{{ trans('messages.' . $item->type) }}</span>
                        <br />
                        <span class="text-muted">{{ trans('messages.type') }}</span>
                    </div>
                </td>
                <td>
                    @if (!empty($item->host))
                        <div class="single-stat-box pull-left ml-20">
                            <span title="{{ $item->host }}" class="no-margin stat-num kq_search domain-truncate">{{ $item->host }}</span>
                            <br />
                            <span class="text-muted">{{ trans('messages.host') }}</span>
                        </div>
                    @elseif (!empty($item->aws_region))
                        <div class="single-stat-box pull-left ml-20">
                            <span title="{{ $item->aws_region }}" class="no-margin stat-num kq_search domain-truncate">{{ $item->aws_region }}</span>
                            <br />
                            <span class="text-muted">{{ trans('messages.aws_region') }}</span>
                        </div>
                    @elseif (!empty($item->domain))
                        <div class="single-stat-box pull-left ml-20">
                            <span title="{{ $item->domain }}" class="no-margin stat-num kq_search domain-truncate">{{ $item->domain }}</span>
                            <br />
                            <span class="text-muted">{{ trans('messages.domain') }}</span>
                        </div>
                    @endif
                </td>
                <td>
                    <div class="single-stat-box pull-left ml-20">
                        <span class="text-muted"><strong>{{ number_with_delimiter($item->getCreditsUsed('send')) }}</strong> {{ trans('messages.' . Acelle\Library\Tool::getPluralPrase('email', $item->getCreditsUsed('send')) . '_quota') }}</span>
                        <br />
                        <span class="text-muted2">{{ trans('messages.sending_server.speed', ['limit' => $item->displayQuota()]) }}</span>
                    </div>
                </td>
                <td>
                    <span class="text-muted2 list-status pull-left">
                        <span class="label label-flat bg-{{ $item->status }}">{{ trans('messages.sending_server_status_' . $item->status) }}</span>
                    </span>
                </td>
                <td class="text-end text-nowrap">
                    @if (Auth::user()->customer->can('update', $item))
                        <a href="{{ action('SendingServerController@edit', ["id" => $item->uid, "type" => $item->type]) }}"
                            data-popup="tooltip" title="{{ trans('messages.edit') }}"
                            role="button" class="btn btn-secondary btn-icon"><span class="material-icons-outlined">
edit
</span> {{ trans('messages.edit') }}</a>
                    @endif
                    @if (Auth::user()->customer->can('delete', $item) || Auth::user()->customer->can('disable', $item) || Auth::user()->customer->can('enable', $item))
                        <div class="btn-group">
                            <button role="button" class="btn btn-light dropdown-toggle" data-bs-toggle="dropdown"></button>
                            <ul class="dropdown-menu dropdown-menu-end">
                                @if (Auth::user()->customer->can('enable', $item))
                                    <li>
                                        <a class="dropdown-item list-action-single"
                                            link-confirm="{{ trans('messages.enable_sending_servers_confirm') }}"
                                            href="{{ action('SendingServerController@enable', ["uids" => $item->uid]) }}">
                                            <span class="material-icons-outlined">
play_arrow
</span> {{ trans('messages.enable') }}
                                        </a>
                                    </li>
                                @endif
                                @if (Auth::user()->customer->can('disable', $item))
                                    <li>
                                        <a class="dropdown-item list-action-single" link-confirm="{{ trans('messages.disable_sending_servers_confirm') }}" href="{{ action('SendingServerController@disable', ["uids" => $item->uid]) }}">
                                            <span class="material-icons-outlined">
hide_source
</span> {{ trans('messages.disable') }}
                                        </a>
                                    </li>
                                @endif
                                @if (Auth::user()->customer->can('delete', $item))
                                    <li>
                                        <a class="dropdown-item list-action-single" link-confirm="{{ trans('messages.delete_sending_servers_confirm') }}" href="{{ action('SendingServerController@delete', ["uids" => $item->uid]) }}">
                                            <span class="material-icons-outlined">
delete_outline
</span> {{ trans('messages.delete') }}
                                        </a>
                                    </li>
                                @endif
                            </ul>
                        </div>
                    @endif
                </td>
            </tr>
        @endforeach
    </table>
    @include('elements/_per_page_select')
    
@elseif (!empty(request()->keyword) || !empty(request()->filters["type"]))
    <div class="empty-list">
        <span class="material-icons-outlined">
dns
</span>
        <span class="line-1">
            {{ trans('messages.no_search_result') }}
        </span>
    </div>
@else
    <div class="empty-list">
        <span class="material-icons-outlined">
dns
</span>
        <span class="line-1">
            {{ trans('messages.sending_server_empty_line_1') }}
        </span>
    </div>
@endif
