#############################################################################
# Generated by PAGE version 7.4
#  in conjunction with Tcl version 8.6
#  Jun 04, 2022 02:53:13 PM PDT  platform: Windows NT
set vTcl(timestamp) ""
if {![info exists vTcl(borrow)]} {
    ::vTcl::MessageBox -title Error -message  "You must open project files from within PAGE."
    exit}


set image_list { 
}
vTcl:create_project_images $image_list   ;# In image.tcl

if {!$vTcl(borrow) && !$vTcl(template)} {

set vTcl(actual_gui_font_dft_desc)  TkDefaultFont
set vTcl(actual_gui_font_dft_name)  TkDefaultFont
set vTcl(actual_gui_font_text_desc)  TkTextFont
set vTcl(actual_gui_font_text_name)  TkTextFont
set vTcl(actual_gui_font_fixed_desc)  TkFixedFont
set vTcl(actual_gui_font_fixed_name)  TkFixedFont
set vTcl(actual_gui_font_menu_desc)  TkMenuFont
set vTcl(actual_gui_font_menu_name)  TkMenuFont
set vTcl(actual_gui_font_tooltip_desc)  TkDefaultFont
set vTcl(actual_gui_font_tooltip_name)  TkDefaultFont
set vTcl(actual_gui_font_treeview_desc)  TkDefaultFont
set vTcl(actual_gui_font_treeview_name)  TkDefaultFont
########################################### 
set vTcl(actual_gui_bg) #d9d9d9
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_analog) #ececec
set vTcl(actual_gui_menu_analog) #ececec
set vTcl(actual_gui_menu_bg) #d9d9d9
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) gray40
set vTcl(analog_color_p) #c3c3c3
set vTcl(analog_color_m) beige
set vTcl(tabfg1) black
set vTcl(tabfg2) black
set vTcl(actual_gui_menu_active_bg)  #ececec
set vTcl(actual_gui_menu_active_fg)  #000000
########################################### 
set vTcl(pr,autoalias) 1
set vTcl(pr,relative_placement) 1
set vTcl(mode) Relative
}




proc vTclWindow.top1 {base} {
    global vTcl
    if {$base == ""} {
        set base .top1
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    set target $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -background $vTcl(actual_gui_bg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black 
    wm focusmodel $top passive
    wm geometry $top 600x518+917+372
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 2564 1421
    wm minsize $top 120 1
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm deiconify $top
    set toptitle "CardDisplayer"
    wm title $top $toptitle
    namespace eval ::widgets::${top}::ClassOption {}
    set ::widgets::${top}::ClassOption(-toptitle) $toptitle
    vTcl:DefineAlias "$top" "CardDisplayer" vTcl:Toplevel:WidgetProc "" 1
    set vTcl(real_top) {}
    vTcl:withBusyCursor {
    text $top.tex46 \
        -background white -font TkTextFont -foreground black -height 34 \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -insertbackground black -selectbackground #c4c4c4 \
        -selectforeground black -width 294 -wrap word 
    $top.tex46 configure -font "TkTextFont"
    $top.tex46 insert end text
    vTcl:DefineAlias "$top.tex46" "textTitle" vTcl:WidgetProc "CardDisplayer" 1
    bind $top.tex46 <<SetBalloon>> {
        set ::vTcl::balloon::%W {卡片标题}
    }
    frame $top.fra48 \
        -borderwidth 2 -relief groove -background $vTcl(actual_gui_bg) \
        -height 55 -highlightbackground $vTcl(actual_gui_bg) \
        -highlightcolor black -width 545 
    vTcl:DefineAlias "$top.fra48" "FrameTag" vTcl:WidgetProc "CardDisplayer" 1
    set site_3_0 $top.fra48
    text $site_3_0.tex49 \
        -background white -font TkTextFont -foreground black \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -insertbackground black -selectbackground #c4c4c4 \
        -selectforeground black -width 394 -wrap word 
    $site_3_0.tex49 configure -font "TkTextFont"
    $site_3_0.tex49 insert end text
    vTcl:DefineAlias "$site_3_0.tex49" "textTag" vTcl:WidgetProc "CardDisplayer" 1
    button $site_3_0.but51 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background $vTcl(actual_gui_bg) -command buttonShowTagsClicked \
        -compound left -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -pady 0 -text {Show tags} 
    vTcl:DefineAlias "$site_3_0.but51" "buttonShowTags" vTcl:WidgetProc "CardDisplayer" 1
    place $site_3_0.tex49 \
        -in $site_3_0 -x 0 -relx 0.018 -y 0 -rely 0.317 -width 0 \
        -relwidth 0.723 -height 0 -relheight 0.429 -anchor nw \
        -bordermode ignore 
    place $site_3_0.but51 \
        -in $site_3_0 -x 0 -relx 0.789 -y 0 -rely 0.317 -width 97 -relwidth 0 \
        -height 24 -relheight 0 -anchor nw -bordermode ignore 
    label $top.lab52 \
        -activebackground #f9f9f9 -activeforeground SystemButtonText \
        -anchor w -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text 卡片ID： 
    vTcl:DefineAlias "$top.lab52" "labelCardId" vTcl:WidgetProc "CardDisplayer" 1
    button $top.but47 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background $vTcl(actual_gui_bg) -command buttonSaveClick \
        -compound left -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -pady 0 -text Save 
    vTcl:DefineAlias "$top.but47" "buttonSave" vTcl:WidgetProc "CardDisplayer" 1
    vTcl::widgets::ttk::scrolledtext::CreateCmd $top.scr46 \
        -borderwidth 2 -relief groove -background $vTcl(actual_gui_bg) \
        -height 75 -highlightbackground $vTcl(actual_gui_bg) \
        -highlightcolor black -width 125 
    vTcl:DefineAlias "$top.scr46" "textContent" vTcl:WidgetProc "CardDisplayer" 1

    $top.scr46.01 configure -background white \
        -font TkTextFont \
        -foreground black \
        -height 3 \
        -highlightbackground #d9d9d9 \
        -highlightcolor black \
        -insertbackground black \
        -insertborderwidth 3 \
        -selectbackground #c4c4c4 \
        -selectforeground black \
        -width 10 \
        -wrap none
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.tex46 \
        -in $top -x 0 -relx 0.033 -y 0 -rely 0.058 -width 0 -relwidth 0.49 \
        -height 0 -relheight 0.075 -anchor nw -bordermode ignore 
    place $top.fra48 \
        -in $top -x 0 -relx 0.033 -y 0 -rely 0.156 -width 0 -relwidth 0.908 \
        -height 0 -relheight 0.122 -anchor nw -bordermode ignore 
    place $top.lab52 \
        -in $top -x 0 -relx 0.717 -y 0 -rely 0.044 -width 0 -relwidth 0.207 \
        -height 0 -relheight 0.046 -anchor nw -bordermode ignore 
    place $top.but47 \
        -in $top -x 0 -relx 0.833 -y 0 -rely 0.927 -width 47 -relwidth 0 \
        -height 24 -relheight 0 -anchor nw -bordermode ignore 
    place $top.scr46 \
        -in $top -x 0 -relx 0.033 -y 0 -rely 0.309 -width 0 -relwidth 0.908 \
        -height 0 -relheight 0.589 -anchor nw -bordermode ignore 
    } ;# end vTcl:withBusyCursor 

    vTcl:FireEvent $base <<Ready>>
}

proc 36 {args} {return 1}


Window show .
set btop1 ""
if {$vTcl(borrow)} {
    set btop1 .bor[expr int([expr rand() * 100])]
    while {[lsearch $btop1 $vTcl(tops)] != -1} {
        set btop1 .bor[expr int([expr rand() * 100])]
    }
}
set vTcl(btop) $btop1
Window show .top1 $btop1
if {$vTcl(borrow)} {
    $btop1 configure -background plum
}

