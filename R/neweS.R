"neweS" <-
function(mat, vlist, vlabel=as.list(names(vlist))){
names(vlabel)=names(vlist)
pdata <- new("phenoData", pData=as.data.frame(vlist), varLabels=vlabel)
thisExprs <- as.matrix(mat)
if(!identical(colnames(thisExprs), rownames(pdata)))
	colnames(thisExprs) <- NULL
eset <- new("exprSet", exprs=thisExprs, phenoData=pdata)
return(eset)
}

