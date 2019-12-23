import NJTimePicker from 'nj-timepicker';

(function() {
  let format_24 = document.querySelector('#start_time');
  var format_24_picker = new NJTimePicker({
    targetEl: format_24,
    texts: {
      header: 'Starting Time'
    },
    format: '24'
  });
  format_24_picker.on('save', function(data) {
    if (data.fullResult)
      format_24.textContent = data.fullResult;
  });
})();

