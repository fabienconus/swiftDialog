//
//  appVaribles.swift
//  dialog
//
//  Created by Bart Reardon on 10/3/21.
//

import Foundation

var iconVisible: Bool = true

var helpText = """
    Dialog version \(getVersionString()) ©2021 Bart Reardon
    --title             Set the Dialog title
                        Text over 40 characters gets truncated
                        Default Title is "\(AppVariables.titleDefault)"
    
    --message           Set the dialog message
                        Message length is up to approximately 80 words
    
    --icon              Set the icon to display
                        Acceptable Values:
                        file path to png or jpg           -  "/file/path/image.[png|jpg]"
                        file path to Application          -  "/Applications/Chess.app"
                        URL of file resource              -  "https://someurl/file.[png.jpg]"
                        if not specified, default icon will be used
                        Images from either file or URL are displayed as roundrect if no transparancy

    --overlayicon       Set an image to display as an overlay to --icon
                        image is displayed at 1/2 resolution to the main image and positioned to the bottom right
                        Acceptable Values:
                        file path to png or jpg           -  "/file/path/image.[png|jpg]"
                        file path to Application          -  "/Applications/Chess.app"
                        URL of file resource              -  "https://someurl/file.[png.jpg]"

    --infoicon          Built in. Displays person with questionmark as the icon

    --cautionicon       Built in. Displays yellow triangle with exclamation point

    --warningicon       Built in. Displays red octagon with exclamation point
    
    --hideicon          hides the icon from view
                        Doing so increases the space available for message text to approximately 100 words

    --button1text       Set the label for Button1
                        Default label is "\(AppVariables.button1Default)"
                        Bound to <Enter> key

    --button1action     Set the action to take.
                        Accepts URL
                        Default action if not specified is no action
                        Return code when actioned is 0

    --button2           Displays button2 with default label of "\(AppVariables.button2Default)"
        OR
    --button2text       Set the label for Button1
                        Bound to <ESC> key

    --button2action     Return code when actioned is 2
                        -- Setting Custon Actions For Button 2 Is Not Implemented at this time --

    --infobutton        Displays button2 with default label of "\(AppVariables.buttonInfoDefault)"
        OR
    --infobuttontext    Set the label for Information Button
                        If not specified, Info button will not be displayed
                        Return code when actioned is 3

    --infobuttonaction  Set the action to take.
                        Accepts URL
                        Default action if not specified is no action

    --version           Prints the app version
    --help              Prints this text

    --showlicense       Display the Software License Agreement for Dialog
    """

struct AppVariables {
    static var windowWidth = CGFloat(820)
    static var windowHeight = CGFloat(380)
 
    static var imageWidth = CGFloat(170)
    static var imageHeight = CGFloat(260)
    
    
    // message defaults
    static var titleDefault = String("Important *Message* Title")
    static var messageDefault = String("Important Message Content\n\nPlease read")
    
    // button defaults
    static var button1Default = String("    OK    ")
    static var button2Default = String("Cancel")
    static var buttonInfoDefault = String("More Information")
    static var buttonInfoActionDefault = String("")
    
    //static var iconVisible = true
    //static var displayMoreInfo = true // testing
    //static var textAllignment = "centre" //testing
    //static var textAllignment = "top" //testing
    //static var textAllignment = "left" //testing
}

struct AppConstants {
    static let titleOption = String("--title")
    //static let titleOptionBrief = String("-t")
    
    static let messageOption = String("--message")
    //static let messageOptionBrief = String("-m")
    
    static let iconOption = String("--icon")
    //static let iconOptionBrief = String("-i")
    static let overlayIconOption = String("--overlayicon")
    
    static let button1TextOption = String("--button1text")
    static let button1ActionOption = String("--button1action")
    static let button2TextOption = String("--button2text")
    static let button2ActionOption = String("--button2action")
    
    static let buttonInfoTextOption = String("--infobuttontext")
    static let buttonInfoActionOption = String("--infobuttonaction")

    
    //static let messageTextAllignment = String("--textallignment")
    
    // command line options that take no additional parameters
    static let button2Option = String("--button2")
    static let infoButtonOption = String("--infobutton")
    static let getVersion = String("--version")
    static let hideIcon = String("--hideicon")
    static let helpOption = String("--help")
    static let demoOption = String("--demo")
    static let buyCoffee = String("--coffee")
    static let showLicense = String("--showlicense")
    static let warningIcon = String("--warningicon")
    static let infoIcon = String("--infoicon")
    static let cautionIcon = String("--cautionicon")
}
