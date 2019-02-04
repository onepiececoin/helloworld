HA$PBExportHeader$helloworld.sra
$PBExportComments$Generated Application Object
forward
global type helloworld from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type helloworld from application
string appname = "helloworld"
end type
global helloworld helloworld

on helloworld.create
appname="helloworld"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on helloworld.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;open ( message_window )
end event

