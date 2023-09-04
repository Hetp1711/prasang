/**
 * 
 */
var rating = $('.rating-histogram');
var totalVotes = 0;
var secondaryVotes = 0;
var totalVotesInc = 0;
var averageScore = 0;
var array = [];
var highest = 0;

$('.rating-bar-container').each(function() {
  $(this).attr('valuemax', Number($(this).children('.bar-label').html()) * Number($(this).attr('valuenow')));
  totalVotes += Number($(this).attr('valuenow'));
  array.push(Number($(this).attr('valuenow')));
  highest = Math.max.apply(Math, array);
  totalVotesInc += Number($(this).children('.bar-label').html()) * Number($(this).attr('valuenow'))
  if ( $(this).attr('valuenow') == highest ) {
    $(this).children('.bar').width('100%');
  } else {
    secondaryVotes += Number($(this).attr('valuenow'));
  }
  $(this).children('.bar-number').html(Number($(this).attr('valuenow')).toLocaleString('ru'));
});
averageScore = (totalVotesInc/totalVotes).toFixed(1).toString().replace(",", ".");
rating.attr({
  'valuemax': totalVotes,
  'secvaluemax': secondaryVotes
});
$('.rating-bar-container').each(function() {
  if ( $(this).attr('valuenow') == highest ) {
    $(this).children('.bar').width('100%');
  } else {
    // console.log(1);
    console.log($(this).attr('valuenow'));
    $(this).children('.bar').width($(this).attr('valuenow') * 200 / rating.attr('valuemax') + '%');
  }
});

$('.reviews-num').html(' ' + Number(rating.attr('valuemax')).toLocaleString('ru'));
$('.score-container .score').html(averageScore);