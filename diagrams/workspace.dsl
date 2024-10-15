workspace "R2D2 Electronics" "Overview of R2D2's electronic system." {

    !identifiers hierarchical

    model {
        p = person "Puppeteer / Controller(s)"
        ss = softwareSystem "R2D2" {
            btm = container "Bluetooth Module" {
                tags = "Interface"
            }
            amega = container "Arduino Mega" {
                tags = "Logic"
            }
            mark = container "Markduino" {
                tags = "Logic"
            }
            mp3 = container "MP3 Player" {
                tags = "Storage"
            }
            amp = container "Amplifier" {
                tags = "Interface"
            }
            spkrs = container "Speakers" {
                tags = "Terminate"
            }
            delec = container "Dome Electronics" {
                tags = "Terminate"
            }
            lfmotor = container "Left Foot Motor" {
                tags = "Terminate"
            }
            rfmotor = container "Right Foot Motor" {
                tags = "Terminate"
            }
            dmotor = container "Dome Motor" {
                tags = "Terminate"
            }
        }

        p -> ss.btm "Sends instructions to"
        ss.btm -> ss.amega "Interfaces via USB to"
        ss.amega -> ss.mark "Interfaces via headers"
        ss.mark -> ss.mp3 "Controls"
        ss.mp3 -> ss.amp "Outputs to"
        ss.amp -> ss.spkrs "Outputs to"
        ss.mark -> ss.delec "Controls"
        ss.amega -> ss.lfmotor "Drives"
        ss.amega -> ss.rfmotor "Drives"
        ss.amega -> ss.dmotor "Drives"
    }

    views {
        systemContext ss "System_Context-Level1" {
            include *
            autolayout lr
        }

        container ss "Container_Context-Level2" {
            include *
            autolayout lr
        }

        styles {
            element "Element" {
                color #ffffff
            }
            element "Person" {
                background #741eba
                shape person
            }
            element "Software System" {
                background #8723d9
            }
            element "Container" {
                background #9a28f8
            }
            element "Interface" {
                shape Diamond
            }
            element "Logic" {
                shape Component
            }
            element "Storage" {
                shape "Cylinder"
            }
            element "Terminate" {
                shape "Ellipse"
                background #cb91fa
            }
        }
    }

    configuration {
        scope softwaresystem
    }

}