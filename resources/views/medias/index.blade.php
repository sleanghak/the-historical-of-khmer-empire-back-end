@extends('Layouts.master')
@section('content')
  <div class="vr-main-content">
    <div class="vr-head-content">
      <div class="vr-head-content-top">
        <div class="vr-head-content-top-title">MEDIAS </div>
        <a href="/dashboard/media" class="autoSave superLink" id="autoSave"></a>
        <div class="vr-btn-add vr__btn_popup" data-url="/dashboard/media/create">
          <a href="#" class="btn btn-primary btn-raised"> <i class="fas fa-plus"></i> Add</a>
        </div>
      </div>
    </div>
    @if (sizeof($items)>0)
      <div class="vr-body-content">
        <table class="vr-body-content-table">
          <thead class="vr-body-content-table-head">
            <tr>
              <th><i class="fas fa-trash"></i></th>
              <th>thumbnail</th>
              <th>User Name</th>
              <th>Last Update</th>
              <th >Action</th>
            </tr>
          </thead>
          <tbody class="vr-body-content-table-body">
            @foreach ($items as $index=>$item )
            @php
              $user =getUserName($item->user_id);
            @endphp
            <tr>

              <td><input type="checkbox" name="" id=""></td>
              <td>
                <div class="vr-body-image">
                  <img src="{{ getMediaPhoto($item->thumbnail) }}" alt="">
                </div>
              <td>{{ $user->name }}</td>
              <td>{{ $item->created_at }}</td>
              <td>
                <div class="vr-dropdown-wrapper vr__dropdown_wrapper">
                  <i class="fas fa-ellipsis-h vr-dropdown-icon vr_dropdown_icon"></i>
                  <div class="vr-dropdown-box vr_dropdown_box">
                    <div class="vr-dropdown-list c-green vr__btn_popup" data-url="/dashboard/media/{{ $item->id }}">
                      <div class="vr-dropdown-list-left"><i class="fas fa-eye"></i></div>
                      <div class="vr-dropdown-list-right " >View</div>
                    </div>
                    <div class="vr-dropdown-list c-blue vr__btn_popup" data-url="/dashboard/media/{{ $item->id }}/edit">
                      <div class="vr-dropdown-list-left"><i class="far fa-edit"></i></div>
                      <div class="vr-dropdown-list-right " >Edit</div>
                    </div>
                    <div class="vr-dropdown-list c-red vr_remove_record"  id="{{ $item->id }}" table="media">
                      <div class="vr-dropdown-list-left"><i class="fas fa-trash"></i></div>
                      <div class="vr-dropdown-list-right">Delete</div>
                    </div>
                  </div>
                </div>
              </td>
            </tr>
            @endforeach
          </tbody>
        </table>
      </div>
    @else 
    @include('layouts.404')
    @endif
    <div class="vr-foot-content">
      <div class="vr-footer-content-left"></div>
      <div class="vr-footer-content-center"></div>
      <div class="vr-footer-content-right"></div>
    </div>
  </div>
@endsection
