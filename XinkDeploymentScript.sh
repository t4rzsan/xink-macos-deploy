#!/bin/bash
defaults write com.emailsignature.Xink hideInfobox -int 0
defaults write com.emailsignature.Xink hideQuitMailInfobox -int 0
defaults write com.emailsignature.Xink hideEnterAccessCodeMenu -bool false # Set to true to hide the "Enter access code" menu
defaults write com.emailsignature.Xink hideChangeEmailMenu -bool false # Set to true to hide the "Change email" menu
defaults write com.emailsignature.Xink hideMyProfileMenu -bool false # Set to true to hide the "My profile" menu
defaults write com.emailsignature.Xink hideUpdateTheVersionMenu -bool false # Set to true to hide the "Update the version" menu
defaults write com.emailsignature.Xink isUsingICloudDrive -int 0
defaults write com.emailsignature.Xink updateSignaturesAutomatically -int 0
defaults write com.emailsignature.Xink updateSignaturesForMail -int 0
defaults write com.emailsignature.Xink updateSignaturesForOutlook -int 1
defaults write com.emailsignature.Xink userName -string "$(whoami)@INSERTYOUREMAILDOMAIN.COM"
# If $(whoami) does not give you the right email address, you can set the "emailDomain" setting instead.
# Xink will use the domain to automatically find the correct email from registered accounts in either Apple Mail or Microsoft Outlook.
# default write com.emailsignature.Xink emailDomain -string "acme.com" 
defaults write com.emailsignature.Xink domainToken -string "INSERT YOUR XINK DOMAIN TOKEN HERE"

osascript -e 'tell application "System Events" to make login item at end with properties {name:"Xink", path:"/Applications/Xink.app", hidden:false}'
