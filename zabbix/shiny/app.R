library(shiny)
library(RZabbix)
library(jsonlite)
library(ggplot2)
library(scales)

ui <- shinyUI(
  navbarPage(
    
    windowTitle = "Monitoring analytics (beta) - www.monitoringartist.com",
    title = div(
      style = "display:inline-block;",
      img(src = "Monitoring-Artist-logo.png"),
      "Monitoring analytics (beta)"
    ),
    tabPanel(
      "Statistics",
      icon = icon("area-chart"),
      fluidRow(column(
        12,
        div(
          style = "display:inline-block; width: 20%;",
          textInput("server", "Zabbix server", placeholder = "http://zabbix.org/zabbix/")
        ),
        div(style = "display:inline-block; width: 10%;",
            textInput("user", "User", placeholder = "guest")),
        div(style = "display:inline-block; width: 10%;", passwordInput("password", "Password")),
        div(style = "display:inline-block; width: 10%;", textInput("item", "Item ID", placeholder = "681")),
        div(
          style = "display:inline-block; width: 20%;",
          sliderInput(
            "limit",
            "Last values limit",
            min = 10,
            max = 100000,
            value = 10,
            step = 10
          )
        )
      )),
      fluidRow(
        column(
          2,
          checkboxInput("minimum", "Minimum"),
          checkboxInput("maximum", "Maximum"),
          checkboxInput("average", "Average"),
          checkboxInput("median", "Median"),
          checkboxInput("linear", "Linear trend"),
          #checkboxInput("exponential", "Exponential trend"),
          #checkboxInput("logarithmic", "Logarithmic trend"),
          checkboxInput("polynomial", "Polynomial trend"),
          checkboxInput("percentil", "Percentil:"),
          sliderInput(
            "percentilvalue",
            "",
            min = 1,
            max = 100,
            value = 95
          ),
          submitButton("Submit")
        ),
        column(10,
               mainPanel(plotOutput("distPlot")))
      )
    ),
    tabPanel("Histogram",
             icon = icon("bar-chart-o"),
             fluidRow(
               column(
                 12,
                 p("Thank you for your interest."),
                 p(
                   "Unfortunately this functionality is not available in public demo instance."
                 ),
                 p(
                   "Please contact info@monitoringartist.com for commercial monitoring support."
                 ),
                 tags$a(
                   href = "https://www.monitoringartist.com",
                   img(src = "https://monitoringartist.github.io/Monitoring-Artist-logo.jpg"),
                   target = "_blank",
                   title = 'DevOps / Docker / Kubernetes / AWS ECS / Google GCP / Zabbix / Zenoss / Terraform / Monitoring'
                 ),
                 br(),
                 br(),
                 br(),
                 br(),
                 br(),
                 br(),
                 br(),
                 br(),
                 br(),
                 br(),
                 br(),
                 br(),
                 br(),
                 br(),
                 br(),
                 br()
               )
             )),
    tabPanel("Predictions",
             icon = icon("line-chart"),
             fluidRow(
               column(
                 12,
                 p("Thank you for your interest."),
                 p(
                   "Unfortunately this functionality is not available in public demo instance."
                 ),
                 p(
                   "Please contact info@monitoringartist.com for commercial monitoring support."
                 ),
                 tags$a(
                   href = "https://www.monitoringartist.com",
                   img(src = "https://monitoringartist.github.io/Monitoring-Artist-logo.jpg"),
                   target = "_blank",
                   title = 'DevOps / Docker / Kubernetes / AWS ECS / Google GCP / Zabbix / Zenoss / Terraform / Monitoring'
                 ),
                 br(),
                 br(),
                 br(),
                 br(),
                 br(),
                 br(),
                 br(),
                 br(),
                 br(),
                 br(),
                 br(),
                 br(),
                 br(),
                 br(),
                 br(),
                 br()
               )
             )),
    tabPanel(
      "Anomaly detections",
      icon = icon("exclamation-triangle"),
      fluidRow(
        column(
          12,
          p("Thank you for your interest."),
          p(
            "Unfortunately this functionality is not available in public demo instance."
          ),
          p(
            "Please contact info@monitoringartist.com for commercial monitoring support."
          ),
          tags$a(
            href = "https://www.monitoringartist.com",
            img(src = "https://monitoringartist.github.io/Monitoring-Artist-logo.jpg"),
            target = "_blank",
            title = 'DevOps / Docker / Kubernetes / AWS ECS / Google GCP / Zabbix / Zenoss / Terraform / Monitoring'
          ),
          br(),
          br(),
          br(),
          br(),
          br(),
          br(),
          br(),
          br(),
          br(),
          br(),
          br(),
          br(),
          br(),
          br(),
          br(),
          br()
        )
      )
    ),
    # tabPanel("Event statistics",
    #          icon = icon("bell"),
    #          fluidRow(
    #            column(
    #              12,
    #              p("Thank you for your interest."),
    #              p(
    #                "Unfortunately this functionality is not available in public demo instance."
    #              ),
    #              p(
    #                "Please contact info@monitoringartist.com for commercial monitoring support."
    #              ),
    #              tags$a(
    #                href = "https://www.monitoringartist.com",
    #                img(src = "https://monitoringartist.github.io/Monitoring-Artist-logo.jpg"),
    #                target = "_blank",
    #                title = 'DevOps / Docker / Kubernetes / AWS ECS / Google GCP / Zabbix / Zenoss / Terraform / Monitoring'
    #              ),
    #              br(),
    #              br(),
    #              br(),
    #              br(),
    #              br(),
    #              br(),
    #              br(),
    #              br(),
    #              br(),
    #              br(),
    #              br(),
    #              br(),
    #              br(),
    #              br(),
    #              br(),
    #              br()
    #            )
    #          )),
    tabPanel("About",
             icon = icon("user"),
             fluidRow(
               column(
                 12,
                 h3("Monitoring will be rocket science!"),
                 p(
                   "Yes, monitoring is not rocket science usually. However your monitoring system keeps a lot of time series data. You can you use science / math / statistics and turn your data into knowledge, which can be used to improve your monitoring systems.
                   Don't estimate any static thresholds for your metrics. Set them based on your real values. If you don't know, what is normal value, then try to detect anomalies in your series. Remember, your only limitation is your data science imagination: 
                   histograms, linear/polynomial/...  trends, prediction, anomaly detection, correlation, 3d visualization, heat map, ..."
                 ),
                 p("Recommended related articles:"),
                 tags$a(
                   href = "http://apmblog.dynatrace.com/2012/11/14/why-averages-suck-and-percentiles-are-great/",
                   "Dynatrace blog about percentiles",
                   target = "_blank"
                 ),
                 br(),
                 tags$a(
                   href = "http://zabbix.org/mw/images/1/18/Prediction_docs.pdf",
                   "Zabbix white paper about prediction",
                   target = "_blank"
                 ),
                 br(),
                 br(),
                 p(
                   "Please contact info@monitoringartist.com for commercial monitoring support."
                 ),
                 tags$a(
                   href = "https://www.monitoringartist.com",
                   img(src = "https://monitoringartist.github.io/Monitoring-Artist-logo.jpg"),
                   target = "_blank",
                   title = 'DevOps / Docker / Kubernetes / AWS ECS / Google GCP / Zabbix / Zenoss / Terraform / Monitoring'
                 ),
                 br(),
                 br(),
                 br(),
                 br(),
                 br(),
                 br()
               )
             )),
    fluidRow(column(
      12,
      tags$br(),
      div(style = "display:inline-block;", span("© 2016 Monitoring Artist")),
      div(
        style = "display:inline-block;",
        img(src = 'favicon.png', title =
              'DevOps / Docker / Kubernetes / AWS ECS / Google GCP / Zabbix / Zenoss / Terraform / Monitoring')
      ),
      div(
        style = "display:inline-block;",
        tags$a(
          href = "https://www.monitoringartist.com",
          "DevOps / Docker / Kubernetes / AWS ECS / Google GCP / Zabbix / Zenoss / Terraform / Monitoring",
          target = "_blank",
          title = 'DevOps / Docker / Kubernetes / AWS ECS / Google GCP / Zabbix / Zenoss / Terraform / Monitoring'
        )
      ),
      includeHTML("google-analytics.js"),
      tags$head(tags$link(rel="shortcut icon", href="favicon.png"))
    ))
  )
)


server <- shinyServer(function(input, output, session) {
  output$distPlot <- renderPlot({
    if (input$user != "") {
      user = input$user
    } else {
      user = "guest"
    }
    if (input$password != "") {
      password = input$password
    } else {
      password = ""
    }
    if (input$server != "") {
      server = input$server
    } else {
      server = 'http://zabbix.org/zabbix'
    }
    ZabbixAPI(server,
              body = list(
                method = "user.login",
                params = jsonlite::unbox(data.frame(
                  user = user,
                  password = password
                ))
              )) -> auth
    
    if (input$item != "") {
      item = input$item
    } else {
      item = 681
    }
    ZabbixAPI(server,
              body = list(
                method = "history.get",
                params = jsonlite::unbox(
                  data.frame(
                    output = "extend",
                    itemids = toString(item),
                    history = 0,
                    sortfield = "clock",
                    sortorder = "DESC",
                    limit = input$limit
                  )
                ),
                auth = auth
              )) -> hist
    
    hist$value <- as.double(hist$value)
    hist$clock <- as.double(hist$clock)
    hist$clock <-
      as.POSIXct(hist$clock, origin = "1970-01-01", tz = "UTC")
    hist <- cbind(hist, ave(hist$value))
    hist <- cbind(hist, min(hist$value))
    hist <- cbind(hist, max(hist$value))
    hist <- cbind(hist, median(hist$value))
    hist <-
      cbind(hist, quantile(hist$value, input$percentilvalue / 100))
    
    colnames(hist) <-
      c("itemid",
        "clock",
        "value",
        "ns",
        "average",
        "min",
        "max",
        "median",
        "percentil")
    
    if ((as.integer(min(hist$clock)) %% 60) > 52) {
      adds = 1
    } else {
      adds = 0
    }
    if ((as.integer(max(hist$clock)) %% 60) < 8) {
      addsm = 1
    } else {
      addsm = 0
    }
    
    if (as.numeric(difftime(max(hist$clock), min(hist$clock), units = "hour")) <= 1) {
      db <- "1 min"
      dbb <- "min"
      df <- "%H:%M:%S"
    } else if (as.numeric(difftime(max(hist$clock), min(hist$clock), units =
                                   "days")) <= 1) {
      db <- "1 hour"
      dbb <- "hour"
      df <- "%Y-%m-%d %H:%M:%S"
    } else {
      db <- "1 day"
      dbb <- "day"
      df <- "%Y-%m-%d"
    }
    
    break.vec <- c(
      as.POSIXct(min(hist$clock)),
      seq(
        from = as.POSIXct(((
          as.integer(as.integer(min(hist$clock)) / 60)
        ) + 1 + adds) * 60, origin = "1970-01-01", tz = "UTC"),
        to = as.POSIXct(((
          as.integer(as.integer(max(hist$clock)) / 60)
        ) - addsm) * 60, origin = "1970-01-01", tz = "UTC"),
        by = dbb
      ),
      as.POSIXct(max(hist$clock))
    )
    
    p <- ggplot(hist, aes(x = clock, y = value, group = 1)) +
      geom_line(data = hist,
                aes(
                  x = clock,
                  y = value,
                  group = 1,
                  color = "Original value"
                )) +
      #scale_colour_manual(values = c("red", "orange", "green", "blue")) +
      ylab('Value') +
      xlab('') +
      theme(
        axis.text.x = element_text(
          angle = 90,
          vjust = 0.5,
          hjust = 1
        ),
        legend.position = "bottom",
        legend.direction = "vertical",
        legend.title = element_blank(),
        legend.background = element_rect(),
        legend.key = element_rect(fill = 'white')
      ) +
      scale_x_datetime(breaks = break.vec,
                       labels = date_format(df),
                       expand = c(0, 0))
    
    if (input$average) {
      p <- p + geom_line(
        data = hist,
        aes(
          x = clock,
          y = average,
          group = 1,
          colour = paste("Average value:", hist$average[1])
        ),
        linetype = "dashed"
      )
    }
    if (input$minimum) {
      p <- p + geom_line(
        data = hist,
        aes(
          x = clock,
          y = min,
          group = 1,
          colour = paste("Min value:", hist$min[1])
        ),
        linetype = "dashed"
      )
    }
    if (input$maximum) {
      p <- p + geom_line(
        data = hist,
        aes(
          x = clock,
          y = max,
          group = 1,
          colour = paste("Max value:", hist$max[1])
        ),
        linetype = "dashed"
      )
    }
    if (input$median) {
      p <- p + geom_line(
        data = hist,
        aes(
          x = clock,
          y = median,
          group = 1,
          colour = paste("Median value:", hist$median[1])
        ),
        linetype = "dashed"
      )
    }
    if (input$percentil) {
      p <- p + geom_line(
        data = hist,
        aes(
          x = clock,
          y = percentil,
          group = 1,
          colour = paste(
            "Percentil",
            input$percentilvalue,
            "value:",
            hist$percentil[1]
          )
        ),
        linetype = "dashed"
      )
    }
    if (input$linear) {
      p <-
        p + geom_line(
          stat = "smooth",
          method = "lm",
          aes(
            x = clock,
            y = value,
            colour = 'Linear trend'
          ),
          se = FALSE,
          linetype = "dashed"
        )
    }
    if (input$polynomial) {
      p <-
        p + geom_line(
          stat = "smooth",
          method = "lm",
          formula = y ~ poly(x, 2),
          aes(
            x = clock,
            y = value,
            colour = 'Polynomial trend'
          ),
          se = FALSE,
          linetype = "dashed"
        )
    }
    # if (input$logarithmic) {
    #   # p <- p + stat_smooth(method = 'nls', formula = y ~ a * log(x) +b, aes(x = clock, y = value, colour = 'Logarithmic trend'), se = FALSE)
    #   # p <-
    #   #   p + geom_line(
    #   #     stat = "smooth",
    #   #     method = 'nls',
    #   #     formula = y ~ a * log(x) + b,
    #   #     aes(
    #   #       x = clock,
    #   #       y = value,
    #   #       colour = 'Logarithmic trend'
    #   #     ),
    #   #     se = FALSE,
    #   #     method.args = list(start = c(a = 1, b = 1)),
    #   #     linetype = "dashed"
    #   #   )
    #   p <-
    #     p + geom_line(
    #       stat = "smooth",
    #       method = 'lm',
    #       formula = y ~ log(x),
    #       aes(
    #         x = clock,
    #         y = value,
    #         colour = 'Logarithmic trend'
    #       ),
    #       se = FALSE,
    #       linetype = "dashed"
    #     )
    # }
    # if (input$exponential) {
    #   # p <- p + stat_smooth(method = 'nls', formula = y ~ a*exp(b *x), aes(x = clock, y = value, colour = 'Exponential trend'), se = FALSE)
    #   p <-
    #     p + geom_line(
    #       stat = "smooth",
    #       method = 'nls',
    #       formula = y ~ a * exp(b * x),
    #       aes(
    #         x = clock,
    #         y = value,
    #         colour = 'Exponential trend'
    #       ),
    #       se = FALSE,
    #       method.args = list(start = c(a = 1, b = 1)),
    #       linetype = "dashed"
    #     )
    # }
    p
    #(gg <- ggplotly(p))
    #print(nrow(hist))
  })
})

shinyApp(ui = ui, server = server)
