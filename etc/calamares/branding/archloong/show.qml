import QtQuick 2.0;
import calamares.slideshow 1.0;

Presentation
{
    id: presentation

    function nextSlide() {
        console.log("Process is running in the background...");
        presentation.goToNextSlide();
    }

    Timer {
        id: advanceTimer
        interval: 30000
        running: true
        repeat: true
        onTriggered: nextSlide()
    }

    Slide {

        Image {
            id: background_1
            source: "slide-welcome-easy-install.jpg"
            width: 1002; height: 651
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
	Text {
	  anchors.horizontalCenter: background_1.horizontalCenter
	  anchors.top: background_1.bottom
	  text: "Welcome to Manjaro.<br/>"+
	  "Manjaro is driven by a hardworking and dedicated community.<br/>"+
	  "During the installation, this slideshow will provide a quick introduction."
	  wrapMode: Text.WordWrap
	  width: 600
	  horizontalAlignment: Text.Center
	}
    }

    Slide {

        Image {
            id: background_2
            source: "slide-welcome-DE_s.jpg"
            width: 1002; height: 651
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
    }

    Slide {

        Image {
            id: background_4
            source: "slide-welcome-app.jpg"
            width: 1002; height: 651
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
    }

    Slide {

        Image {
            id: background_5
            source: "slide-discover.jpg"
            width: 1002; height: 651
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
    }

    Slide {

        Image {
            id: background_6
            source: "slide-trust.jpg"
            width: 1002; height: 651
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
    }

    function onActivate() {
        console.log("QML Component (default slideshow) activated");
        presentation.currentSlide = 0;
    }

    function onLeave() {
        console.log("QML Component (default slideshow) deactivated");
    }
}
