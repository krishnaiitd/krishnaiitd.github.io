rm(list=ls())
library(png);
library(ggplot2);
library(grid);
library(RColorBrewer);
library(plyr);
library(dplyr)
library(reshape2)

courses <- c("The Data Scientist’s Toolbox", 
             "R Programming",
             "Getting and Cleaning Data",
             "Exploratory Data Analysis",
             "Reproducible Research",
             "Statistical Inference",
             "Regression Models",
             "Practical Machine Learning",
             "Developing Data Products",
             "Data Science Capstone",
             "Introduction to Big Data",
             "Hadoop Platform and Application Framework",
             "Introduction to Big Data Analytics",
             "Machine Learning With Big Data",
             "Graph Analytics for Big Data",
             "Big Data - Capstone Project"
             )
marks <- c(100.0,
           100.0,
           92.0,
           75.0,
           96.5,
           75.3,
           93.1,
           97.0,
           NA,
           NA,
           98.5,
           98.2,
           98.0,
           99.00,
           NA,
           NA
           )
completedOn <- c("June-2016", 
                 "August-2015",
                 "August-2015",
                 "August-2015",
                 "November-2015",
                 "January-2016",
                 "April-2016",
                 "Jul-2016",
                 NA,
                 NA,
                 "November-2015",
                 "December-2015",
                 "December-2015",
                 "July-2016",
                 NA,
                 NA
                 )

types <- c(rep("Online", length(courses)))
sub_types <- c(rep("Data Science", 10), rep("Big Data", 6))

organizations <- c(rep("Coursera", 16))

coursesdf <- data.frame(courses, marks, completedOn, types, sub_types, organizations)

g <- ggplot(data=coursesdf, aes(x = `courses`, y = marks, fill = `courses`))
g <- g + geom_bar(stat="identity")
g <- g + ggtitle("Comppleted courses with obtained marks") + xlab("Courses") + ylab("Marks obtained")
g <- g + theme(axis.text.x=element_text(angle = 60, hjust = 1))
plot(g)



reorder <- c("July-2016", "June-2016", "April-2016", "January-2016", "December-2015", "November-2015", "August-2015")
coursesdf$completedOn <- factor(coursesdf$completedOn, levels = reorder)

g <- ggplot(data=coursesdf, aes(x = `completedOn`, y = marks, fill = `courses`))
g <- g + geom_bar(stat="identity")
g <- g + ggtitle("Comppleted courses with obtained marks") + xlab("Months") + ylab("Marks obtained")
g <- g + theme(axis.text.x=element_text(angle = 70, hjust = 1))
plot(g)
