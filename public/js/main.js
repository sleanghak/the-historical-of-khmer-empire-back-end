
// import Pjax from 'pjax';
// PJAX
// public/js/spa.js
console.log("first")
function initializePage() {
  dropdownRUD();
  afterPopup();
  ajaxStatus();
  ajaxRemove();
  formSubmit();
}

$(document).on('pjax:complete', function() {
  initializePage(); 
  loadContent();
});

document.addEventListener('DOMContentLoaded', function () {
  initializePage();
  loadContent();

  new Pjax({
      elements: 'a.superLink',
      selectors: ['.webContent'],
      cacheBust: false,
  });

  document.addEventListener('pjax:start', function () {
      console.log('PJAX start');
  });

  document.addEventListener('pjax:end', function () {
      console.log('PJAX end');
      initializePage();
      loadContent();
  });
});


function loadContent(){

  //ajax for request data for login
  $("btnSubmit").click(function(){
      $.ajaxSetup({url: "demo_ajax_load.txt", success: function(result){
        $("div").html(result);}});
      $.ajax();
    });

  

  // Sidebar toggle behavior
  $('#sidebarCollapse').on('click', function() {
    $('#masterContent').toggleClass('hideSidebar');
  });

  // popup add new
  $('.vr__btn_popup').on('click',function(e){
    e.preventDefault()
    let data_url= $(this).attr('data-url');
      $.ajax({
          type: "GET" ,
          url: data_url,
          beforeSend: (xhr) => {
          },
          success: (data) => {
            console.log(data)
            if(data['status']==true){
              let str='<div class="vr_popup vr-popup"></div>';
              $('body').append(str);
              $('.vr_popup').html(data['result']);
              $('.vr_popup').css('display','flex');
              afterPopup();
            }else{
              Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Something went wrong!',
              })
            }
          }
        });
  });

  // end button add new
  $('.btn, .ripples').on('click', ripplesEffect);

}

// dropdown content view,edit,delete
function dropdownRUD(){
  if($('.vr__dropdown_wrapper .vr_dropdown_icon').length){
    $('.vr__dropdown_wrapper .vr_dropdown_icon').on('click',function(){
      if($(this).parent().hasClass('active')){
        $(this).parent().toggleClass('active');
      }else{
        $('.vr__dropdown_wrapper.active').removeClass('active')
        $(this).parent().addClass('active');
      }
    })
  }
}

function afterPopup(){
  $('.vr_remove_popup').on('click',function(){
    $('.vr_popup').remove();
  });
  formSubmit();
}

function formSubmit(){
  $('.form_submit').on('submit',function(e){
    e.preventDefault()
    var url = $(this).attr('action');
    var method = $(this).attr('method');
    var data = new FormData(this);
    console.log(data)
    $.ajax({
        type: method ,
        url: url,
        data: data,
        dataType: 'json',
        cache: false,
        contentType: false,
        processData: false,
        headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
        beforeSend: (xhr) => {
        },
        success: (data) => {
          console.log(data)
          if(data['status']==true){
            triggerClick();
            sweetAlertSuccess(data['message']);
            if(data['modal'] == true){
              $('.vr_popup').css('display',"none");
            }
          }else{
            sweetAlertFail(data)
          }
        }
        
      });
  });
}


function updateSite(){
  $('.updateSite').on('submit',function(e){
    e.preventDefault()
    var url = $(this).attr('action');
    var method = $(this).attr('method');
    var data = new FormData(this);
    console.log(data)
    $.ajax({
        type: method ,
        url: url,
        data: data,
        dataType: 'json',
        cache: false,
        contentType: false,
        processData: false,
        headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
        beforeSend: (xhr) => {
        },
        success: (data) => {
          if(data['status']==true){
            triggerClick();
            sweetAlertSuccess(data['message']);
          }else{
            sweetAlertFail(data)
          }
        }
        
      });
  });
}
updateSite();

function ajaxRemove(){
  $('.vr_remove_record').on('click',function(e){
    e.preventDefault()
    let table = $(this).attr('table');
    let id    = $(this).attr('id');
    let data ={
          table:table,
          id:id
    }
    console.log(data)
    $.ajax({
        type: "GET" ,
        url: "/dashboard/ajaxRemove",
        data: data,
        headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
        beforeSend: (xhr) => {
        },
        success: (data) => {
          if(data['status']==true){
            triggerClick();
            sweetAlertSuccess(data['message']);
          }else{
            sweetAlertFail(data)
          }
        }
        
      });
  })
}

function ajaxStatus(){
  $('.vr_turn_status').on('click',function(e){
    let table = $(this).attr('table');
    let id    = $(this).attr('rid');
    let status= $(this).attr('checked');
    let data ={
          table: table,
          id: id,
          status: status?status:""
    }
    $.ajax({
        type: "GET" ,
        url: "/dashboard/ajaxStatus",
        data: data,
        headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
        beforeSend: (xhr) => {
        },
        success: (data) => {
          if(data['status']==true){
            triggerClick();
            sweetAlertSuccess(data['message']);
          }else{
            sweetAlertFail(data)
          }
        }
        
      });
  })
}

// custom sweet alert
function sweetAlertSuccess(msg){
  Swal.fire({
    icon: 'success',
    title: 'Success',
    text: msg,
    showConfirmButton: false,
    timer: 500
  })
}

function sweetAlertFail(msg){
  Swal.fire({
    icon: 'error',
    title: 'Oops',
    text: msg.message,
    showConfirmButton: false,
    timer: 2000
  })
}

// function trigger click for the whole
function triggerClick(){
  document.getElementById('autoSave').click();
}


// Sidebar
if($('.vr_parent_dd .vr_dd_target').length){
  $('.vr_parent_dd .vr_dd_target').on('click',function(even){
    if($(this).hasClass('active')){
      $(this).parent().find('.vr_dd_menu').slideToggle();
    }else{
      $('.vr_parent_dd .vr_dd_target.active').removeClass('active')
      $('.vr_dd_menu').slideUp();
      $(this).parent().find('.vr_dd_menu').slideDown();
    }
    $(this).addClass('active');
  })
  $('.vr_parent_dd .vr_dd_menu .vr__dd_menu_list').on('click',function(even){
    $('.vr_parent_dd .vr_dd_menu .vr__dd_menu_list').removeClass('active');
    $(this).addClass('active');
  })
}

// button add new
function ripplesEffect(e) {
  var waves, d, x, y;
  if($(this).find('.waves').length === 0) {
      $(this).prepend('<span class="waves"></span>');
  }
  
  waves = $(this).find('.waves');
  waves.removeClass('ripple');
  
  if(!waves.height() && !waves.width()) {
      d = Math.max($(this).outerWidth(), $(this).outerHeight());
      waves.css({height: d, width: d});
  }
  
  x = e.pageX - $(this).offset().left - waves.width()/2;
  y = e.pageY - $(this).offset().top - waves.height()/2;
  
  waves.css({top: y+'px', left: x+'px'}).addClass('ripple');
};


// Enable pusher logging - don't include this in production
// Pusher.logToConsole = true;


// $(document).ready(function(){
//   console.log("123")
//     var pusher = new Pusher('1a4fd86adaea71aba616', {
//     cluster: 'ap1'
//     });
//     var channel = pusher.subscribe('chat-channel');
//     console.log(channel)
//     channel.bind('we-support-event', function(data) {
//       console.log("first")
//       console.log(data)
//     });
// })


