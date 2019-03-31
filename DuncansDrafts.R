library (igraph)
library(tcltk)
library(visNetwork)
library(magrittr)
graph1986 <- read.csv("output_data1986.csv", header=T)
Sgraph1986 <- graph_from_data_frame(graph1986)
Sgraph1986 <- simplify(Sgraph1986)
Cgraph1986 <- as.undirected(Sgraph1986, mode="collapse")

plot(Cgraph1986, rescale = FALSE,ylim=c(-5,6), xlim=c(-5,7))




Relevant code below

df <- read.csv("output_data1986(regions).csv", header=T)
regionsdf<-read.csv("regions.csv", header=T)
df <- df[ which( df$weight > 100000000),]
gnet <- graph_from_data_frame(df)
is_weighted(gnet)
pr<-page_rank(gnet)
triad.census(gnet)
plot(gnet, edge.arrow.size=0.1, vertex, vertex.size=6, vertex.label=NA, layout=layout_nicely)

V(gnet)$region <- df$region
plot(gnet, edge.arrow.size=0.1, layout=layout.gem)
legend("bottomleft", inset=.02, title="Regions", c("Africa","Asia","Oceania", "Americas", "Europe"), fill=topo.colors(4), horiz=FALSE, cex=0.8)
palette()




Create communities
simple.graph <- simplify(graph.1986)
simple.graph <- as.undirected(simple.graph, mode="collapse")
comm.graph<-fastgreedy.community(simple.graph)
plot(comm.graph, graph.1986, vertex.label=NA)


For each of the 4 years
df <- read.csv("output_data1986(regions).csv", header=T)
complete.graph <- graph_from_data_frame(df)

To get top
df1 <- df[ which( df$weight > 100000000),]
filtered.graph1 <- graph_from_data_frame(df1)
plot(filtered.graph1, edge.arrow.size=0.1, vertex.label.cex=0.8, layout=layout.gem)

To get very top (and see some interesting results)
df2 <- df[ which( df$weight > 1000000000),]
filtered.graph2 <- graph_from_data_frame(df2)
plot(filtered.graph2, edge.arrow.size=0.1, vertex.label.cex=0.8, layout=layout.gem)

To get very bottom
df3 <- df[ which( df$weight == 1000),]
filtered.graph3 <- graph_from_data_frame(df3)
plot(filtered.graph3, edge.arrow.size=0.1, vertex.label.cex=0.8, layout=layout.random)

Create communities
simple.graph <- simplify(filtered.graph2)
simple.graph <- as.undirected(simple.graph, mode="collapse")
comm.graph<-fastgreedy.community(simple.graph)
plot(comm.graph, filtered.graph2, vertex.label.cex=0.8 , edge.arrow.size=0.1, layout=layout.random)

Find cliques
table(sapply(cliques(filtered.graph1),length))
