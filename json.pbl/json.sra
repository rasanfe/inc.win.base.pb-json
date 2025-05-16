//objectcomments Generated Application Object
forward
global type json from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type json from application
string appname = "json"
string appruntimeversion = "25.0.0.3683"
integer highdpimode = 0
end type
global json json

on json.create
appname = "json"
message = create message
sqlca = create transaction
sqlda = create dynamicdescriptionarea
sqlsa = create dynamicstagingarea
error = create error
end on

on json.destroy
destroy( sqlca )
destroy( sqlda )
destroy( sqlsa )
destroy( error )
destroy( message )
end on

