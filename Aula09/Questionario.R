view(bpd)

bdp2<- gather(bpd, week, bp, 4:6)
view(bdp2)

bdp3<- separate(bdp2, bp, c("sys", "dia"), sep= "/")
view(bdp3)


bdp4 <- extract(bdp3, week, "Semana", "(\\d)", convert = TRUE)
view(bdp4)

view(billboard)

billboard2 <- billboard %>%  pivot_longer(
    
    wk1:wk76,
    
    names_to = "week",
    
    values_to = "rank",
    
    values_drop_na = TRUE
    
  )

view(billboard2)
