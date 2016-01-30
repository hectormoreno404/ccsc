
	$(function(){
		$('.input-group.date').datepicker({
    format: "dd/mm/yyyy",
    startView: 2,
    clearBtn: true,
    language: "es",
    orientation: "top left",
    keyboardNavigation: false,
    forceParse: false,
    autoclose: true,
    defaultViewDate: { year: 2015, month: 04, day: 25 }
});
	});
