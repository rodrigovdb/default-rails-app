$(document).ready(function(){
  $('.sidenav').sidenav();

  $('.collapsible').collapsible();

  $('.tabs').tabs();

  $('.modal').modal();

  $('select').formSelect();

  $('.tooltipped').tooltip();

  $('.datepicker').datepicker({
    format: 'dd/mm/yyyy',
    disableWeekends: false,
    autoClose: true,
    i18n: {
      cancel: 'Cancelar',
      clear: 'Limpar',
      done: 'OK',
      months: [
        'Janeiro',
        'Fevereiro',
        'Março',
        'Abril',
        'Maio',
        'Junho',
        'Julho',
        'Agosto',
        'Setembro',
        'Outubro',
        'Novembro',
        'Dezembro',
      ],
      monthsShort: [
        'Jan',
        'Fev',
        'Mar',
        'Abr',
        'Mai',
        'Jun',
        'Jul',
        'Ago',
        'Set',
        'Out',
        'Nov',
        'Dez',
      ],
      weekdays: [
        'Domingo',
        'Segunda',
        'Terça',
        'Quarta',
        'Quinta',
        'Sexta',
        'Sábado',
      ],
      weekdaysShort: [
        'Dom',
        'Seg',
        'Ter',
        'Qua',
        'Qui',
        'Sex',
        'Sab',
      ],
      weekdaysAbbrev: [
        'D',
        'S',
        'T',
        'Q',
        'Q',
        'S',
        'S',
      ],
    }
  });

  $('.timepicker').timepicker({
    twelveHour: false,
    autoClose: true,
    i18n: {
      cancel: 'Cancelar',
      clear: 'Limpar',
      done: 'OK'
    }
  });
});
