args <- commandArgs(trailingOnly=TRUE)
fileName <- args[1]
baseDir <- args[2]
cacheDir <- args[3]

print(getwd())

knitr::opts_knit$set(root.dir=baseDir)

knitr::opts_chunk$set(
  dev='svglite',
  class.output='knitr-output',
  fig.path=cacheDir
)

knitr::knit(
  input=fileName,
  output='',
  quiet=TRUE
)
