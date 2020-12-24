[string[]] $List = @("http://activitystrea.ms/access", 
        "http://activitystrea.ms/acknowledge",
        "http://activitystrea.ms/agree",
        "http://activitystrea.ms/append",
        "http://activitystrea.ms/approve",
        "http://activitystrea.ms/archive",
        "http://activitystrea.ms/assign",
        "http://activitystrea.ms/attach",
        "http://activitystrea.ms/attend",
        "http://activitystrea.ms/author",
        "http://activitystrea.ms/authorize",
        "http://activitystrea.ms/borrow",
        "http://activitystrea.ms/build",
        "http://activitystrea.ms/cancel",
        "http://activitystrea.ms/checkin",
        "http://activitystrea.ms/close",
        "http://activitystrea.ms/complete",
        "http://activitystrea.ms/confirm",
        "http://activitystrea.ms/consume",
        "http://activitystrea.ms/create",
        "http://activitystrea.ms/delete",
        "http://activitystrea.ms/deliver",
        "http://activitystrea.ms/deny",
        "http://activitystrea.ms/disagree",
        "http://activitystrea.ms/dislike",
        "http://activitystrea.ms/experience",
        "http://activitystrea.ms/favorite",
        "http://activitystrea.ms/flag-as-inappropriate",
        "http://activitystrea.ms/follow",
        "http://activitystrea.ms/find",
        "http://activitystrea.ms/give",
        "http://activitystrea.ms/host",
        "http://activitystrea.ms/ignore",
        "http://activitystrea.ms/insert",
        "http://activitystrea.ms/install",
        "http://activitystrea.ms/interact",
        "http://activitystrea.ms/invite",
        "http://activitystrea.ms/join",
        "http://activitystrea.ms/leave",
        "http://activitystrea.ms/like",
        "http://activitystrea.ms/listen",
        "http://activitystrea.ms/lose",
        "http://activitystrea.ms/make-friend",
        "http://activitystrea.ms/open",
        "http://activitystrea.ms/play",
        "http://activitystrea.ms/present",
        "http://activitystrea.ms/purchase",
        "http://activitystrea.ms/qualify",
        "http://activitystrea.ms/read",
        "http://activitystrea.ms/receive",
        "http://activitystrea.ms/reject",
        "http://activitystrea.ms/remove",
        "http://activitystrea.ms/remove-friend",
        "http://activitystrea.ms/replace",
        "http://activitystrea.ms/request",
        "http://activitystrea.ms/request-friend",
        "http://activitystrea.ms/resolve",
        "http://activitystrea.ms/retract",
        "http://activitystrea.ms/return",
        "http://activitystrea.ms/rsvp-maybe",
        "http://activitystrea.ms/rsvp-no",
        "http://activitystrea.ms/rsvp-yes",
        "http://activitystrea.ms/satisfy",
        "http://activitystrea.ms/save",
        "http://activitystrea.ms/schedule",
        "http://activitystrea.ms/search",
        "http://activitystrea.ms/send",
        "http://activitystrea.ms/share",
        "http://activitystrea.ms/sell",
        "http://activitystrea.ms/sponsor",
        "http://activitystrea.ms/start",
        "http://activitystrea.ms/stop-following",
        "http://activitystrea.ms/submit",
        "http://activitystrea.ms/tag",
        "http://activitystrea.ms/terminate",
        "http://activitystrea.ms/tie",
        "http://activitystrea.ms/unfavorite",
        "http://activitystrea.ms/unlike",
        "http://activitystrea.ms/unsatisfy",
        "http://activitystrea.ms/unsave",
        "http://activitystrea.ms/unshare",
        "http://activitystrea.ms/update",
        "http://activitystrea.ms/use",
        "http://activitystrea.ms/at",
        "http://activitystrea.ms/watch",
        "http://activitystrea.ms/win")

Write-host "`"mbox::mailto:bob@example.org`": {"

        foreach ($item in $list)
        { 
            $rand = (Get-Random -Maximum 9 -Minimum (-9))/10 
            $randstr =  $rand.ToString("N1")

            write-host "`"$item`": $randstr," }
Write-host "    },"
Write-host "`"mbox::mailto:phil@example.org`": {"


        foreach ($item in $list)
        { 
            $rand = (Get-Random -Maximum 9 -Minimum (-9))/10 
            $randstr =  $rand.ToString("N1")

            write-host "`"$item`": $randstr," }

Write-host "    },"
Write-host "`"mbox::mailto:sally@example.org`": {"
        foreach ($item in $list)
        { 
            $rand = (Get-Random -Maximum 9 -Minimum (-9))/10 
            $randstr =  $rand.ToString("N1")

            write-host "`"$item`": $randstr," }

Write-host "    },"
Write-host "`"mbox::mailto:steve@example.org`": {"
        foreach ($item in $list)
        { 
            $rand = (Get-Random -Maximum 9 -Minimum (-9))/10 
            $randstr =  $rand.ToString("N1")

            write-host "`"$item`": $randstr," }

Write-host "    },"
Write-host "`"mbox::mailto:fred@example.org`": {"
        foreach ($item in $list)
        { 
            $rand = (Get-Random -Maximum 9 -Minimum (-9))/10 
            $randstr =  $rand.ToString("N1")

            write-host "`"$item`": $randstr," }

Write-host "    },"
Write-host "`"mbox::mailto:alice@example.org`": {"
        foreach ($item in $list)
        { 
            $rand = (Get-Random -Maximum 9 -Minimum (-9))/10 
            $randstr =  $rand.ToString("N1")

            write-host "`"$item`": $randstr," }

Write-host "    }"
Write-host "    }"
