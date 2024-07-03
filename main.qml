import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Dialogs 1.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Button
    {
        id:myButton
        text:"Click me."
        onClicked:
        {
            myFileDialog.open()
        }
    }

    FileDialog
    {
        id:myFileDialog
        modality: Qt.ApplicationModal
        folder: shortcuts.pictures
        selectMultiple: true
        nameFilters: ["Images file (*.jpg *.png)"]
        onAccepted:
        {
            console.log(fileUrl)
            console.log(fileUrls)
        }
    }
}
