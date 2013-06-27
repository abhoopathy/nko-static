
$ ->

    $('.tabs').each ->

        $tabs = $(this)
        $tabListItems = $tabs.find('.tab-list-item')
        $tabPanels = $tabs.find('.tab-panel')

        # consecutive numbering on each
        $tabListItems.each (i, el) -> $(el).data('tabID',i)
        $tabPanels.each (i, el) -> $(el).data('tabID',i)

        $tabListItems.click (e) ->
            $tabListItem = $(e.target).closest('.tab-list-item')

            if $tabListItem.is(':not(.is-selected)')
                tabID = $tabListItem.data('tabID')

                # deselect current
                #console.log "hi"
                $('.tab-list-item.is-selected').removeClass('is-selected')
                $('.tab-panel.is-selected').removeClass('is-selected')

                # select
                $tabListItem.addClass('is-selected')
                $('.tab-panel').filter( -> $(this).data('tabID') == tabID)
                    .addClass('is-selected')
