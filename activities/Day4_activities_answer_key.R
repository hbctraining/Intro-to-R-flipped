#1.
animals_tb <- animals %>%
        rownames_to_column(var = "animal_names") %>%
        as_tibble()

#2.
ggplot(animals_tb) +
        geom_point(aes(x = animal_names, y = speed), color = "purple") +
        theme_bw() +
        ggtitle("Speed Comparisons Between Animals") + 
        ylab("Speed (km/h)") +
        xlab("Animal") +
        theme(plot.title=element_text(hjust=0.5))

#3.

#a.
animals_tb$speed

#b.
order(animals_tb$speed)

#c.
animals_tb$animal_names

#d.
names_ordered_by_speed <- animals_tb$animal_names[order(animals_tb$speed)]

#e.
animals_tb$animal_names <- factor(animals_tb$animal_names, 
                                  levels = names_ordered_by_speed)

#f.
ggplot(animals_tb) +
        geom_point(aes(x = animal_names, y = speed), color = "purple") +
        theme_bw() +
        ggtitle("Speed Comparisons Between Animals") + 
        ylab("Speed (km/h)") +
        xlab("Animal") +
        theme(plot.title=element_text(hjust=0.5))

#4. 
pdf("results/animals_by_speed_scatterplot.pdf")

ggplot(animals_tb) +
        geom_point(aes(x = animal_names, y = speed), color = "purple") +
        theme_bw() +
        ggtitle("Speed Comparisons Between Animals") + 
        ylab("Speed (km/h)") +
        xlab("Animal") +
        theme(plot.title=element_text(hjust=0.5))

dev.off()

#5. 
animals_gray_tan <- animals_tb %>% 
        filter(color == "Gray" | color == "Tan") %>%
        arrange(speed)

write.csv(animals_gray_tan,
          file = "~/Desktop/animals_tb_ordered.csv",
          quote = FALSE)
