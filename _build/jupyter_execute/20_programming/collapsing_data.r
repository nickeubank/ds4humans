require(dplyr)

grades <- data.frame(
    student = c("al", "bo", "cindy", "dan", "ella", "frank", "gina", "henry"), 
    school = c(rep("stanford", 4), rep("berkley", 4)),
    sat_score = c(750, 730, 690, 800, 780, 720, 730, 700)
    )

grades %>%
    group_by(school) %>%
    summarize(mean(sat_score))

grades %>%
    group_by(school) %>%
    summarize(mean_sat = mean(sat_score))

grades_clps <- grades %>%
    group_by(school) %>%
    summarize(mean_sat = mean(sat_score))
grades_clps

grades <- data.frame(
    student = c("al", "bo", "cindy", "dan", "ella", "frank", "gina", "henry"), 
    school = c(rep("stanford", 4), rep("berkley", 4)),
    classof = rep(c(2017, 2017, 2018, 2018), 2), 
    sat_score = c(750, 730, 690, 800, 780, 720, 730, 700)
    )
grades

grades %>%
    group_by(school, classof) %>%
    summarize(mean_sat = mean(sat_score))

grades %>%
    filter(classof == 2017) %>%
    group_by(school) %>%
    summarize(mean_sat = mean(sat_score))

grades %>%
    group_by(school) %>%
    summarize(mean_sat = mean(sat_score)) %>%
    mutate(mean_sat_strd = (mean_sat / 800) * 100)

grades %>%
    group_by(school) %>%
    summarize(median_sat = median(sat_score),
              sd_sat = sd(sat_score), 
              min_sat = min(sat_score),
              max_sat = max(sat_score),
              dif_maxmin = max_sat - min_sat)

maxmindif <- function(x) max(x) - min(x)

grades %>%
    group_by(school) %>%
    summarize(dif_maxmin = maxmindif(sat_score))

grades %>%
    group_by(school) %>%
    summarize(no_obs = n())
