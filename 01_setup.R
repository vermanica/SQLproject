# 
# 
# # Install package
# install.packages("RODBC")
# 
# library(RODBC)
# 
# # Set up driver info and database path
# DRIVERINFO <- "Driver={Microsoft Access Driver (*.accdb)};"
# MDBPATH <- "ERMN_Fish_20221101.accdb"
# PATH <- paste0(DRIVERINFO, "DBQ=", MDBPATH)
# 
# ##Read in tables from Access database 
# db <- file.path("ERMN_Fish_20221101.accdb")
# ch <- odbcDriverConnect(db)

<<<<<<< HEAD
## Install package
#install.packages("RODBC")

=======
#call library
>>>>>>> 120c75fe880bc3805fea503ffbc7b7a985021ca6
library(RODBC)
#establish connection to Microsoft driver that you created
con <- odbcConnect("ERMNSQL")

#view all tables
sqlTables(con, tableType = "TABLE")$TABLE_NAME

<<<<<<< HEAD
# Set up driver info and database path
con <- odbcConnect("programSQL")

=======
#view column names in a table
sqlColumns(con, "tbl_Events")$COLUMN_NAME
sqlColumns(con, "tbl_Sites")$COLUMN_NAME
sqlColumns(con, "tbl_Fish")$COLUMN_NAME
sqlColumns(con, "tbl_Fish_Count")$COLUMN_NAME
sqlColumns(con, "tbl_Habitat_Transect_Fields")$COLUMN_NAME
sqlColumns(con, "tbl_Habitat_Transect")$COLUMN_NAME
sqlColumns(con, "tbl_Habitat")$COLUMN_NAME

#tlu tables have metadata
>>>>>>> 120c75fe880bc3805fea503ffbc7b7a985021ca6