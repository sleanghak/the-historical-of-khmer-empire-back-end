@extends('Layouts.master')
@section('content')
  <div class="vr-main-content">
    <div class="vr-head-content">
      <div class="vr-head-content-top">
        <div class="vr-head-content-top-title">HISTORY </div>
        <a href="/dashboard/history" class="autoSave superLink" id="autoSave"></a>
        <div class="form-group vr-head-form-search">
          <form method="get" >
            <div class="input-group vr-navbar-search-field">
              <input type="text" class="form-control input-text" value="{{ $search }}" name="search" placeholder="Search products...." aria-label="Recipient's username" aria-describedby="basic-addon2">
              <button class=" vr-navbar-btn-search btn btn-outline-warning btn-lg" type="button"><i class="fa fa-search"></i></button>
            </div>
            <div class="input-group vr-head-form-filter">
                <label for="date_filter">Filter by Date:</label>
                <select class="form-select" name="date_filter">
                    <option value="">All Dates</option>
                    <option value="today" {{ $dateFilter == 'today' ? 'selected' : '' }}>Today</option>
                    <option value="yesterday" {{ $dateFilter == 'yesterday' ? 'selected' : '' }}>Yesterday</option>
                    <option value="this_week" {{ $dateFilter == 'this_week' ? 'selected' : '' }}>This Week</option>
                    <option value="last_week" {{ $dateFilter == 'last_week' ? 'selected' : '' }}>Last Week</option>
                    <option value="this_month" {{ $dateFilter == 'this_month' ? 'selected' : '' }}>This Month</option>
                    <option value="last_month" {{ $dateFilter == 'last_month' ? 'selected' : '' }}>Last Month</option>
                    <option value="this_year" {{ $dateFilter == 'this_year' ? 'selected' : '' }}>This Year</option>
                    <option value="last_year" {{ $dateFilter == 'last_year' ? 'selected' : '' }}>Last Year</option>
                </select>
                <button type="submit" class="btn btn-primary d-none" >Filter</button>
            </div>
          </form>
        </div>
        <div class="vr-btn-add vr__btn_popup" data-url="/dashboard/history/create">
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
              <th>Title</th>
              <th>User Name</th>
              <th>Last Update</th>
              <th >Action</th>
            </tr>
          </thead>
          <tbody class="vr-body-content-table-body">
            @foreach ($items as $index=>$item )
            @php
              $user = getUserName($item->created_by);
            @endphp
            <tr>

              <td><input type="checkbox" name="" id=""></td>
              <td>
                <div class="vr-body-image">
                  <img src="{{ getPhoto("histories",$item->thumbnail) }}" alt="">
                </div>
              <td>{{ $item->title }}</td>
              <td>{{ $user->name }}</td>
              <td>{{ $item->created_at }}</td>
              <td>
                <div class="vr-dropdown-wrapper vr__dropdown_wrapper">
                  <i class="fas fa-ellipsis-h vr-dropdown-icon vr_dropdown_icon"></i>
                  <div class="vr-dropdown-box vr_dropdown_box">
                    <div class="vr-dropdown-list c-green vr__btn_popup" data-url="/dashboard/history/{{ $item->id }}">
                      <div class="vr-dropdown-list-left"><i class="fas fa-eye"></i></div>
                      <div class="vr-dropdown-list-right " >View</div>
                    </div>
                    <div class="vr-dropdown-list c-blue vr__btn_popup" data-url="/dashboard/history/{{ $item->id }}/edit">
                      <div class="vr-dropdown-list-left"><i class="far fa-edit"></i></div>
                      <div class="vr-dropdown-list-right " >Edit</div>
                    </div>
                    <div class="vr-dropdown-list c-red vr_remove_record"  id="{{ $item->id }}" table="histories">
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
