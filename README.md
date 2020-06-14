<center> <h1> Block Ad Web Internet </h1> </center>

___

This repository helps you to improve your privacy and security by making a list of websites that are to be blocked which track the user advertisements. Providing advertisements is not a problem, as it helps the creator gain money, but its not right to track the user. As it cannot be distinguished, we try to block all the ads for our privacy and security concerns.

## What the repository contains?

We accumulate the websites from different repositories and ours to make a list that contains a large number of websites. The repository that are included in the list will be mentioned in the references section.

## Lists

The list can be used in many tools. The tools vary from browser based to hosts file.

### Tools

#### Web Extensions:

* uBlock Origin
  * [Github](https://github.com/gorhill/uBlock)
  * [Chrome extension](https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm)
  * [Firefox add-on](https://addons.mozilla.org/addon/ublock-origin/)
  * [Microsoft Edge add-on](https://microsoftedge.microsoft.com/addons/detail/odfafepnkmbhccpbejgmiehpchacaeak)
  * [Safari](https://github.com/el1t/uBlock-Safari#ublock-originfor-safari)

* uMatrix (Made by the same dev of uBlock, but provides advanced features)
  * [Github](https://github.com/gorhill/uMatrix)
  * [Chrome extension](https://chrome.google.com/webstore/detail/%C2%B5matrix/ogfcmafjalglgifnmanfmnieipoejdcf)
  * [Firefox add-on](https://addons.mozilla.org/firefox/addon/umatrix/)

* AdGuard
  * [Github](https://github.com/AdguardTeam/AdguardBrowserExtension)
  * [Chrome extension](https://chrome.google.com/webstore/detail/adguard-adblocker/bgnkhhnnamicmpeenaelnjfhikgbkllg)
  * [Firefox add-on](https://addons.mozilla.org/en-GB/firefox/addon/adguard-adblocker/)
  * [Microsoft Edge add-on](https://microsoftedge.microsoft.com/addons/detail/pdffkfellgipmhklpdmokmckkkfcopbh)


#### Network-Wide Blocking:

* [AdGuard Home](https://adguard.com/en/adguard-home/overview.html) - Can also be used as system-wide in desktops.
* [Pi-hole](https://pi-hole.net/)

#### HOSTS:

* For Windows use [Hostman](http://www.abelhadigital.com/hostsman/) to edit the hosts file. Or can be edited manually, the hosts files is located at `c:\Windows\System32\Drivers\etc\hosts`.
* In Linux the hosts is located at `/etc/hosts`.


## FAQ

> To convert the list to HOSTS

```
awk '{ printf "0.0.0.0"; print }' Block_List.txt > HOSTS.txt
```

> To Compare the present list with a new list, get the uncommon addresses and append it to the present list.

```
comm -13 <(sort main_list.txt) <(sort new_list.txt) >> main_list.txt
```

> To remove blank space in the beginning of the file

```
sed 's/ //g' file.txt > updated_file.txt
```

> To remove 0.0.0.0 from the HOSTS file

```
awk '{ if($1=="0.0.0.0") {$1= ""}; print }' file.txt > updated_file.txt
```

## TO-DO:
- [ ] Make a list specifically for mobile devices.




## References
* https://github.com/badmojr/1Hosts
* https://tgc.cloud/downloads/
* https://github.com/vokins/yhosts
* https://github.com/hectorm/hblock
