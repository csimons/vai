# Christopher L. Simons, 2013

assessment <- list(name="\\tau", assess=function(data)
{
    return (abs(cor(x      = data[,1],
                    y      = data[,2],
                    use    = "complete.obs",
                    method = "kendall")))
})
class(assessment) <- "assessment"
assessments[[assessment$name]] <- assessment