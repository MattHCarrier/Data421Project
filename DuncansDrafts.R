library (igraph)
library(tcltk)
graph1986 <- read.csv("output_data1986.csv", header=T)
Sgraph1986 <- graph_from_data_frame(graph1986)
Sgraph1986 <- simplify(Sgraph1986)
Cgraph1986 <- as.undirected(Sgraph1986, mode="collapse")

plot(Cgraph1986, rescale = FALSE,ylim=c(-5,6), xlim=c(-5,7))




asdf

net1986 <- read.csv("output_data1986.csv", header=T)
g.new <- net1986[ which( net1986$weight > 100000000),]
g <- graph_from_data_frame(g.new)
g <- set_edge_attr(g, "weight", value=g.new$weight)
is_weighted(g)
el1 <- layout_with_fr(g)

plot(g, layout=el1, edge.arrow.size=0.1, vertex.label=NA)
