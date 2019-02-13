HA$PBExportHeader$message_window.srw
forward
global type message_window from window
end type
type cb_1 from commandbutton within message_window
end type
end forward

global type message_window from window
integer width = 4454
integer height = 1980
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_1 cb_1
end type
global message_window message_window

on message_window.create
this.cb_1=create cb_1
this.Control[]={this.cb_1}
end on

on message_window.destroy
destroy(this.cb_1)
end on

event open;open ( message_window )
end event

type cb_1 from commandbutton within message_window
integer x = 1650
integer y = 728
integer width = 1029
integer height = 376
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Hi"
end type

event clicked;MessageBox ("DEBUG", "Hello there...")
end event

