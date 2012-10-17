---
author: root
title: 'archlinux 字符型logo '
excerpt:
layout: post
category:
  - Linux
tags: [ ]
post_format: [ ]
---
来自:http://screenshotinfograb.googlecode.com/svn/  
是svn哦，最新的  
保存这两个文件到同一目录，运行ssig.pl就好了 

logos.pl  
## Put your distrobutions logos here  
#  
# Format::  
# For a new distro  
# push @distros, ["DistroShowName", "/path/to/current/version", "Optional regexp to get & append to the DistroShowName"];  
# $distroname = “..distros logo..”;  
#  
# The logo variable should be a lower-cased version of the DistroShowName.  
# With in the logo, Please escape unused %.  
#  
#  
push @distros, ["ArchLinux", "/etc/issue", "Arch Linux \\((.*?)\\)"];  
$archlinux = ”  
$colors[0] __  
$colors[0] \_=(SDGJT=\_  
$colors[0] _GTDJHGGFCVS) $colors[0]%s  
$colors[0] ,GTDJGGDTDFBGX0 $colors[0]%s  
$colors[0] JDJDIJHRORVFSBSVL$colors[1]-=+=,_ $colors[0]%s  
$colors[0] IJFDUFHJNXIXCDXDSV,$colors[1] \”DEBL $colors[0]%s  
$colors\[0\] \[LKDSDJTDU=OUSCSBFLD.$colors[1\] ‘?ZWX, $colors[0]%s  
$colors[0] ,LMDSDSWH’ \`DCBOSI$colors[1] DRDS], $colors[0]%s  
$colors[0] SDDFDFH’ !YEWD,$colors[1] )HDROD $colors[0]%s  
$colors[0] !KMDOCG &GSU|$colors[1]\_GFHRGO’ $colors[0]%s  
$colors[0] HKLSGP’$colors[1] __$colors[0]\TKM0$colors[1]\GHRBV)’ $colors[0]%s  
$colors[0] JSNRVW’$colors[1] __+MNAEC$colors[0]\IOI,$colors[1]\BN’  
$colors[0] HELK['$colors[1] __,=OFFXCBGHC$colors[0]\FD)  
$colors[0] ?KGHE $colors[1]\_-#DASDFLSV=’$colors[0] ‘EF  
$colors[0] ‘EHTI !H  
$colors[0] \`0F’ ‘!  
$nocolor”; 

ssig.pl

#!/usr/bin/perl  
#  
# @title : Theme info script 0.1.2 revisited  
# @author: rab  
# @date : 08/04/08  
# @commnt: Maybe if people quit forking the hell outta this, it would be easier to maintain  
## Configurations  
# On = 1. Off = 0  
my %display = (  
“OS” => 1, # Displays the operating system’s name  
“KL” => 1, # Displays your kernel version  
“DE” => 1, # Displays your desktop environment, if you have one  
“WM” => 1, # Displays your window manager  
“WMT” => 1, # Displays your window manager’s theme  
“IC” => 1, # Displays your icon theme, if you have one  
“FN” => 1, # Displays your font  
“UI” => 1 # Displays your UI theme  
);  
# The command to execute for taking a screenshot  
# Escape ‘ with a backslash, \’  
# Leave blank if you don’t want a screenshot taken  
my $screenshot = ‘scrot screen-%H-%M-%S.png -e \’mv $f ~/media/screens/\”;  
# The Color to use for the variables, needs to be global for logos.pl  
@colors = ( “\e[34m", "\e[36m" );  
# Debugging  
my $debug = 0;  
## End of configuration  
########################  
## Script starts here ##  
########################  
@distros = ();  
require 'logos.pl';  
my $nocolor = "\e[0m";  
my @info = ();  
my ($DE,$WM,$theme,$icon,$font,$cscheme) = "";  
my $distro = &distro;  
## Hash of WMs and the process they run ##  
my %WMlist = ("Beryl" => "beryl",  
"Fluxbox" => "fluxbox",  
"Openbox" => "openbox",  
"Blackbox" => "blackbox",  
"Xfwm4" => "xfwm4",  
"Metacity" => "metacity",  
"Kwin" => "kwin",  
"FVWM" => "fvwm",  
"Enlightenment" => "enlightenment",  
"IceWM" => "icewm",  
"Window Maker" => "wmaker",  
"Compiz-Fusion" => "compiz",  
"PekWM" => "pekwm",  
"Dwm" => "dwm" );  
## Hash of DEs and the process they run ##  
my %DElist = ("Gnome" => "gnome-session",  
"Xfce4" => "xfce-mcs-manage",  
"KDE" => "ksmserver");  
## Get Kernel version ##  
if( $display{KL} ) {  
print "::$colors[0] Finding Kernel version$nocolor\n”  
if $debug;  
my $kernel = \`uname -r\`; $kernel =~ s/\s+/ /g;  
push @info, “$colors[0]Kernel\t\t\t$colors[1]$kernel$nocolor”;  
}  
## Find running processes ##  
print “::$colors[0] Getting processes$nocolor\n”  
if $debug;  
my $processes = \`ps -A | awk {‘print \$4′}\`;  
## Find a Desktop Environment ##  
DESKTOP:  
goto WINDOWM if !$display{DE};  
while(my($DEname,$DEprocess) = each(%DElist)) {  
next if $processes !~ /$DEprocess/s;  
$DE = $DEname;  
print “::$colors[0] Desktop Environment found as $colors[1]$DEname$nocolor\n”  
if $debug;  
push @info, “$colors[0]Desktop Environment\t$colors[1]$DEname$nocolor”;  
last;  
}  
## Find a Window Manager ##  
WINDOWM:  
goto ICON if !$display{WM};  
while(my($WMname,$WMprocess) = each(%WMlist)) {  
next if $processes !~ /$WMprocess/sg;  
$WM = $WMname;  
print “::$colors[0] Window Manager found as $colors[1]$WMname$nocolor\n”  
if $debug;  
push @info, “$colors[0]Window Manager\t\t$colors[1]$WMname$nocolor”;  
last;  
}  
## Find a Window Manager Theme ##  
WINDOWMT:  
goto ICON if !$display{WMT} || !$display{WM} || $WM eq “”;  
print “::$colors[0] Finding $WM theme$nocolor\n”  
if $debug;  
$WM eq “Openbox” && do {  
($theme) = fgrep(["$ENV{HOME}/.config/openbox/rc.xml"], ["(.+?)"]);  
goto ICON;  
};  
$WM eq “Beryl” && do {  
($theme) = fgrep(["$ENV{HOME}/.emerald/theme/theme.ini"], ["description=(.*?)$/"]);  
goto ICON;  
};  
$WM eq “Metacity” && do {  
$theme = \`gconftool-2 -g /apps/metacity/general/theme\`;  
chomp $theme;  
goto ICON;  
};  
$WM eq “Fluxbox” && do {  
($theme) = fgrep(["$ENV{HOME}/.fluxbox/init"], ["session.styleFile:\s\*/.\*?/(.+?)"]);  
goto ICON;  
};  
$WM eq “Blackbox” && do {  
($theme) = fgrep(["$ENV{HOME}/.blackboxrc"], ["session.styleFile:\s\*/.\*?/(.+?)"]);  
goto ICON;  
};  
$WM eq “Xfwm4″ && do {  
($theme) = fgrep(["$ENV{HOME}/.config/xfce4/mcs_settings/xfwm4.xml"], [""]);  
goto ICON;  
};  
$WM eq “Kwin” && do {  
($theme) = fgrep(["$ENV{HOME}/.kde/share/config/kwinrc"], ['PluginLib=kwin[34]_(.+?)\s’]);  
goto ICON;  
};  
$WM eq “Enlightenment” && do {  
my $remote = \`enlightenment_remote -theme-get theme\`;  
($theme) = $remote =~ /FILE=”(.+?)\\.edj”/sg;  
goto ICON;  
};  
$WM eq “IceWM” && do {  
($theme) = fgrep(["$ENV{HOME}/.icewm/theme"], ["Theme=\"(.+?)/.*?\\.theme"]);  
goto ICON;  
};  
$WM eq “PekWM” && do {  
($theme) = fgrep(["$ENV{HOME}/.pekwm/config"], ["Theme.\*?/(.\*?)"]);  
goto ICON;  
};  
$WM eq “Dwm” && do {  
undef $theme; ## Unless you want to grab some values from the binary?  
goto ICON;  
};  
ICON:  
if( $theme ne “” ) {  
print “::$colors[0] $WM Theme found as $colors[1]$theme$nocolor\n”  
if $debug;  
push @info, “$colors[0]$WM Theme $colors[1]\t\t$theme$nocolor”;  
}  
$DE eq “Gnome” && do {  
$icon = \`gconftool-2 -g /desktop/gnome/interface/icon_theme\`;  
$font = \`gconftool-2 -g /desktop/gnome/interface/font_name\`;  
$theme = \`gconftool-2 -g /desktop/gnome/interface/gtk_theme\`;  
chomp $icon; chomp $font; chomp $theme;  
goto PRINT;  
};  
$DE eq “Xfce4″ && do {  
($icon,$font,$theme) = fgrep(["$ENV{HOME}/.config/xfce4/mcs_settings/gtk.xml"],  
['',  
'',  
'']);  
goto PRINT;  
};  
$DE eq “KDE” && do {  
($theme,$cscheme,$icon,$font) = fgrep(["$ENV{HOME}/.kde/share/config/kdeglobals"],  
['widgetStyle=(.+?)\s',  
'colorScheme=(.+?)\.kcsrc\s',  
'Theme=(.+?)\s',  
'font=(.+?)\s']);  
$font = (split /,/, $font)[0];  
goto PRINT;  
};  
@vars = fgrep(["$ENV{HOME}/.gtkrc-2.0",  
"$ENV{HOME}/.gtkrc.mine"],  
['include ".*?themes/(.+?)/gtk-[12]\.0/gtkrc’,  
‘.\*?gtk-icon-theme-name.\*?”(.+?)”‘,  
‘.\*?gtk-font-name.\*?”(.+?)”‘]);  
$theme = $vars[0] ? $vars[0] : $vars[3] ? $vars[3] : “”;  
$icon = $vars[1] ? $vars[1] : $vars[4] ? $vars[4] : “”;  
$font = $vars[2] ? $vars[2] : $vars[5] ? $vars[5] : “”;  
## Lets print this bitch ##  
PRINT:  
push @info, $colors[0].($DE ? $DE : “GTK”).” Theme \t\t\t$colors[1]“.($DE eq “KDE” ? “$theme/$cscheme” : $theme).$nocolor  
if $display{UI} && $theme ne “”;  
push @info, “$colors[0]Icons\t\t\t$colors[1]$icon$nocolor”  
if $display{IC} && $icon ne “”;  
push @info, “$colors[0]Font\t\t\t$colors[1]$font$nocolor”  
if $display{FN} && $font ne “”;  
printf $distro, @info; sleep 3;  
exec $screenshot  
if $screenshot ne “”;  
sub fgrep(\@\@) {  
my($files,$regexps) = @_;  
my @retvals = ();  
my $slurp = $/; undef $/;  
foreach my $file (@$files) {  
next if !(-e $file);  
open FILE, “<“, $file || die “$colors[0]Error opening $colors[1]‘$file’, $colors[0]$!$nocolor\n”;  
$content = ;  
close FILE;  
foreach my $regexp (@$regexps) {  
my $expg = 0; $expg++ while( $regexp =~ /\(.*?\)/g );  
my @tmp = $content =~ /$regexp/sg;  
push @tmp, “” while( scalar @tmp < $expg );  
@retvals = (@retvals,@tmp);  
}  
}  
$/ = $slurp;  
@retvals;  
}  
sub distro {  
my $distro = “”;  
my $slurp = $/; undef $/;  
foreach $ops (@distros) {  
next if !(-e @$ops[1]);  
$fdistro = $distro = @$ops[0];  
open FILE, “<“, @$ops[1] || die “$colors[0]Error opening $colors[1]‘@$ops[1]‘, $colors[0]$!$nocolor\n”;  
$content = ;  
close FILE;  
if( defined @$ops[2] ) {  
$content =~ /@$ops[2]/sg;  
$fdistro .= ” ($1)”;  
}  
chomp $distro; chomp $fdistro;  
last;  
}  
return “”  
if $distro eq “”;  
$/ = $slurp; $distro = lc $distro;  
eval “\$distro = \$$distro;”;  
push @info, “$colors[0]Distro\t\t\t$colors[1]$fdistro$nocolor”;  
$distro;  
}