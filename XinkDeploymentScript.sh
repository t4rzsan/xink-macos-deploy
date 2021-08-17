#!/bin/bash
defaults write com.emailsignature.Xink hideInfobox -int 0
defaults write com.emailsignature.Xink hideQuitMailInfobox -int 0
defaults write com.emailsignature.Xink isUsingICloudDrive -int 0
defaults write com.emailsignature.Xink updateSignaturesAutomatically -int 0
defaults write com.emailsignature.Xink updateSignaturesForMail -int 0
defaults write com.emailsignature.Xink updateSignaturesForOutlook -int 1
defaults write com.emailsignature.Xink userName -string "$(whoami)@INSERTYOUREMAILDOMAIN.COM"
defaults write com.emailsignature.Xink domainToken -string "INSERT YOUR XINK DOMAIN TOKEN HERE"

osascript -e 'tell application "System Events" to make login item at end with properties {name:"Xink", path:"/Applications/Xink.app", hidden:false}'
