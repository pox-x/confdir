
# set color for check
set green (set_color green)
set zero (set_color normal)
set red (set_color red)
set blue (set_color blue)
set yellow (set_color yellow)
set brown (set_color brown)
set cyan (set_color cyan)
set magenta (set_color magenta)


# define first variable
set prog fish ghostty kitty nvim tmux hypr picom omf polybar wofi zathura ranger
set confdir $HOME/.config/confdir
set base $HOME/.config
set osr /etc/os-release
set osname $(uname -s)

# 🕒 Définition du timestamp pour les logs
set day "$blue $(date '+%d/%m/%y') $zero"
set time "$cyan $(date '+%T') $zero"
set home "$yellow $HOME$zero"
set pwd "$yellow $PWD $zero"
set user "$green $USER $zero"
set logtime "[$day][$time][$user]"

set conf $home/.config
set log_file "dotconf.log"

# 📝 Fonction de log
function logs
    if test argv[1]
        printf "$logtime |> %s\n" $argv | tee -a $log_file
    else
        printf "$logtime |> %s\n" $argv | tee -a $log_file
    end
end

# begin/end output log visualisation
function launchEnd
    set endlog "[$user] [$argv[1] $argv[2] $zero]"
    printf "|> %s <|\n" $endlog | tee -a $log_file
end


# check if os-release is in this os
if test -f $osr
    set versionname $(grep '^NAME=' /etc/os-release | sed -E 's/^NAME="?(.*?)"?$/\1/')
else
    logs "$red Error$zero: files not found in this os status: $status !!!"
end


# function that need for install all programme if 
# os founded
function installeur
    set files $argv[2]
    # check destination
    cp -r $files $base
    logs "$green ok$zero <| saved in $conf/$files"
end

function downloader
    set files $argv[2]
    echo "
$yellow y$zero -> apt install prog
$blue r$zero -> rsync prog .config to dotconfig
$red q$zero -> exit"
    read -S net
    if test $net = y
        if test $versionname = NixOS
            echo "add in your /etc/nixos/configuration.nix the list of this programme $prog"
        else
            sudo apt install $prog
            rsync -r $base/$files $confdir
            logs "$green ok$zero <| download in $confdir/$files"
        end
    else if test $net = r
        rsync -r $base/$files $confdir
        logs "$green ok$zero <| download in $confdir/$files"
    else if test $net = n
        echo "quit $argv[2]"
    end
end

# Saved func
function saved
    for i in $prog
        if test $argv[1] = y
            if test -d $confdir/$i
                if test $osname = Linux -o Darwin
                    installeur $osname "$i"
                else
                    logs "$red Error$zero: bad save probleme with $status"
                end
            else
                logs "$red Error$zero: bad input files not found; $i"
            end
        else if test $argv[1] = d
            logs "$blue downloader started$zero:  $i"
            if test -d $base/$i
                if test $osname = Linux -o Darwin
                    downloader $osname "$i"
                else
                    logs "$red Error$zero: bad download probleme with $status"
                end
            else
                logs "$red Error$zero: bad input files not found; $i"
            end
        else if test $argv[1] = c
            if test -d $confdir/$i
                if test $osname = Linux -o Darwin
                    installeur $osname "$i"
                else
                    logs "$red Error$zero: bad check probleme with $status"
                end
            else
                logs "$red Error$zero: bad input files not found; $i"
            end

        end
    end
end

function listprog
    printf "$yellow|> $zero %s\n" $argv
end

# choice path saved
function pathListSaved
    printf "
choice prog, multiple choice can be selected.
exemple: kitty nvim ...
    \n"
    listprog $prog
    echo " "
    read -a pts
    set prog $pts
end

# check diff dotconf to $home/.config
function diffConf
    echo "$brown $POXCONF $zero"

    printf "%s %s \n" $osname $versionname
    echo "$cyan CONFDIR$zero: $prog"
    set gloop true
    while test $gloop = true
        echo "
$yellow y$zero -> install confdir 
$blue c$zero -> choice confdir
$brown d$zero -> download confdir 
$cyan p$zero -> preview confdir
$magenta f$zero -> check diff
$red q$zero -> exit
        "
        # set prog fish ghostty kitty nvim tmux hypr
        read -S mados
        if test $mados = y
            saved $mados
        else if test $mados = d
            saved $mados
        else if test $mados = p
            echo "$yellow PREVIEW$zero: $prog"
        else if test $mados = c
            pathListSaved
            echo " "
            saved $mados
        else if test $mados = f
            echo "check diff prog: $prog"
            for i in $prog
                set difs $(diff -r $base/$i $confdir$i)
                for a in $difs
                    logs "$a" $i
                end
            end
        else if test $mados = q
            launchEnd $red "end exit"
            set gloop false
        else
            logs "$red Error$zero: bad input !!!!!"
        end
    end
end



diffConf

# suppres all variable
set -e prog osname green zero installeur home base conf user diffConf saved mados gloop day time user logtime logs files oss listprog launchEnd confdir
