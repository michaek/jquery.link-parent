$ = jQuery

$.fn.linkParent = ->
  @each ->
    $parent = $(@).css
      position: 'relative'
    $anchor = $parent.find('a[href]').first()
    $placeholder = $anchor.clone().addClass('placeholder').css
      position: 'absolute'
      top: 0
      right: 0
      bottom: 0
      left: 0
      textIndent: '-99em'
      zIndex: 10
    $parent.append $placeholder

$.fn.linkParentAuto = ->
  @each ->
    $(@).find('[data-link-parent]').linkParent()

$ ->
  $(document).linkParentAuto()