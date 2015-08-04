## team server ui
## acthomas, 8-20-14

source("global.R")

shinyUI(
    fluidPage(
        tags$head(tags$style(".container-fluid { font-size: 12px;}")),
        h2('Sports Analytics Buzzword Bingo'),
        h4('Refresh for a new card'),
        #helpText('Sortable Team Statistics'),

        #wellPanel(
        #    textInput("generalsearch", "Search", value="")
        #    ),
        
        plotOutput(outputId = "bingocard", height="1080px", width="900px")
        
        ,        h6 (HTML('Brought to you by <a href="http://twitter.com/acthomasca" target=\"_blank\">@acthomasca</a>, <a href="http://twitter.com/stat_sam" target=\"_blank\">@stat_sam</a>, <a href="http://twitter.com/StatsByLopez" target=\"_blank\">@StatsByLopez</a> and <a href="http://twitter.com/war_on_ice" target=\"_blank\">@war_on_ice</a>'), align="center")
        
        )
    )
