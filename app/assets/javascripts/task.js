$(function(){
  inertval = 1000; 

  function startTimer(){
    timer = setInterval(countDown, inertval);
  }
  
  function stopTimer(){
    clearInterval(timer);
  }

  function zeroPadding(num){
    if (num < 10) {
      return '0' + num.toString();
    } else {
      return num;
    }
  }

  function countDown() {
    var remainingTime = $("#time").html();
    var remainingArray = remainingTime.split(':');
    var remainingSeconds = parseInt(remainingArray[0]) * 60 + parseInt(remainingArray[1]);
    remainingSeconds -= 1;
    if (remainingTime < 0) {
      stopTimer();
      $("#time").html("終了です！")
    } else {
      $("#time").html(`${zeroPadding(Math.floor(remainingSeconds / 60))}:${zeroPadding(remainingSeconds % 60)}`);
    }
  }

  $("#play").on("click", function(){
    startTimer()
    $("#play").attr('style', 'cursor:pointer;visibility:hidden;position:absolute;top:0;left:0;');
    $("#pause").attr('style', 'cursor:pointer;visibility:visible;position:absolute;top:0;left:0;');
  });

  $("#pause").on("click", function(){
    stopTimer();
    $("#pause").attr('style', 'cursor:pointer;visibility:hidden;position:absolute;top:0;left:0;');
    $("#play").attr('style', 'cursor:pointer;visibility:visible;position:absolute;top:0;left:0;');
  });

  $("#stop").on("click", function(){
    stopTimer();
    $("#pause").attr('style', 'cursor:pointer;visibility:hidden;position:absolute;top:0;left:0;');
    $("#play").attr('style', 'cursor:pointer;visibility:visible;position:absolute;top:0;left:0;');
    $("#time").html("25:00");
  });

  $(".task-play").on("click", function(){
    var task_id = this.id.slice(0, -5)
    var taskTitle = $(".task-play").parent().parent().parent().parent().children(`#${task_id}`).children('.task-title')[0];    
    $(".pomodoro-title").html(taskTitle);
    startTimer();
    $("#play").attr('style', 'cursor:pointer;visibility:hidden;position:absolute;top:0;left:0;');
    $("#pause").attr('style', 'cursor:pointer;visibility:visible;position:absolute;top:0;left:0;');
  })


});