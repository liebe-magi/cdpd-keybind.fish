function cdpd-keybind
    # push-line
    set cl (commandline)
    commandline -f repaint

    if test (string length $cl) -gt 0
        commandline -f kill-whole-line
    end

    # change-directory
    cd ..
    commandline -f execute

    # pop-line
    if test (string length $cl) -gt 0
        commandline -f yank
    end
end