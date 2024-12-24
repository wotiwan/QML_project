import QtQuick 2.15
import QtQuick.Controls 2.15


Item {
    id: login
    width: parent.width
    property bool login_state: true
    signal contentLoginPressed()
    visible: login_state
    Column {
        visible: login_state
        width: parent.width
        spacing: 20

        Rectangle {
            // z: 10
            width: parent.width
            height: 100
            color: "#FFD700" // Желтый цвет
            Row {
                anchors.top: parent.top
                anchors.topMargin: 10
                spacing: 10
                anchors.horizontalCenter: parent.horizontalCenter

                Image {
                    source: "icons/logo.png" // Добавьте ваш логотип в папку проекта
                    width: 70
                    height: 70
                }
                Text {
                    anchors.verticalCenter: parent.verticalCenter
                    text: "Сварщик"
                    font.pixelSize: 30
                    color: "black"
                    font.bold: true
                }
            }
        }

        Text {
            anchors.topMargin: 40
            text: "Вход"
            font.pixelSize: 24
            color: "black"
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.WordWrap
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Rectangle {
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width - 40
            height: 200
            radius: 8
            color: "white"
            border.color: "#CCCCCC"
            border.width: 1
            Column {
                anchors.fill: parent
                anchors.margins: 20
                spacing: 20

                TextField {
                    id: emailField
                    placeholderText: "Введите email"
                    width: parent.width
                    height: 40
                    font.pixelSize: 16
                    // border.color: "#CCCCCC"
                    // border.width: 1
                    // radius: 8
                }

                TextField {
                    id: passwordField
                    placeholderText: "Введите пароль"
                    echoMode: TextInput.Password
                    width: parent.width
                    height: 40
                    font.pixelSize: 16
                    // border.color: "#CCCCCC"
                    // border.width: 1
                    // radius: 8
                }

                Rectangle {
                    width: parent.width
                    height: 40
                    radius: 8
                    color: "#FFD700"
                    border.color: "#CCCCCC"
                    border.width: 1
                    Text {
                        anchors.centerIn: parent
                        text: "Войти"
                        font.pixelSize: 20
                        color: "black"
                    }
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            login.contentLoginPressed()
                        }
                    }
                }
            }
        }
    }
}
