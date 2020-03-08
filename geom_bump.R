sigmoid <- function(x_from, x_to, y_from, y_to, smooth = 5, n = 100) {
  x <- seq(-smooth, smooth, length = n)
  y <- exp(x) / (exp(x) + 1)
  data.frame(x = (x + smooth) / (smooth * 2) * (x_to - x_from) + x_from,
             y = y * (y_to - y_from) + y_from)
}


rank_sigmoid <- function(x, y, smooth = 8) {
  .df <- dplyr::tibble(x = x,
                       y = y) %>%
    dplyr::mutate(x_lag = dplyr::lag(x),
                  y_lag = dplyr::lag(y)) %>%
    tidyr::drop_na("x_lag")
  purrr::pmap_dfr(.df, ~sigmoid(x_from = ..3, x_to = ..1, y_from = ..4, y_to = ..2, smooth  = smooth))
}

# stat ---------
StatBump <- ggplot2::ggproto("StatBump", ggplot2::Stat,
                             compute_group = function(data, scales) {
                               if(nrow(data) == 1) {
                                 warning("'StatBump' needs at least two observations per group")
                                 return(data %>% dplyr::slice(0))
                               }
                               if("smooth" %in% names(data)) {
                                 smoother <- unique(data[, "smooth"])
                                 data <- data %>% dplyr::select(-smooth)
                               } else {
                                 smoother <- 5
                               }
                               
                               out <-rank_sigmoid(data$x, data$y, smooth = smoother) %>%
                                 dplyr::mutate(key = 1) %>%
                                 dplyr::left_join(data %>%
                                                    dplyr::select(-x, -y) %>%
                                                    dplyr::mutate(key = 1) %>%
                                                    dplyr::distinct(),
                                                  by = "key") %>%
                                 dplyr::select(-key) %>%
                                 as.data.frame()
                               out
                             },
                             
                             required_aes = c("x", "y"),
                             default_aes = ggplot2::aes(smooth = 5)
)



geom_bump <- function(mapping = NULL, data = NULL, geom = "line",
                      position = "identity", na.rm = FALSE, show.legend = NA,
                      inherit.aes = TRUE, ...) {
  ggplot2::layer(
    stat = StatBump, data = data, mapping = mapping, geom = geom,
    position = position, show.legend = show.legend, inherit.aes = inherit.aes,
    params = list(na.rm = na.rm, ...)
  )
}