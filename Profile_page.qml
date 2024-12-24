import QtQuick 2.15

Item {
    width: parent.width
    property bool profile_state: false
    visible: profile_state
    Column {
        visible: catalog_state
        width: parent.width
        spacing: 20

        // Верхняя панель
        Rectangle {
            // z: 10
            width: parent.width
            height: 100
            color: "#FFD700" // Желтый цвет
            Row {
                anchors.top: parent.top
                anchors.topMargin: 10
                spacing: 10
                // anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter

                Image {
                    source: "icons/logo.png" // Добавьте ваш логотип в папку проекта
                    width: 40
                    height: 40
                }
                Text {
                    anchors.verticalCenter: parent.verticalCenter
                    text: "Сварщик"
                    font.pixelSize: 20
                    color: "black"
                    font.bold: true
                }
            }

            TextField {
                placeholderText: "Поиск по сайту"
                width: parent.width - 40
                height: 30
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 10
                background: Rectangle {
                    color: "white"
                    radius: 15
                    border.color: "#CCCCCC"
                    border.width: 1
                }
            }
        }

        Text {
            anchors.topMargin: 40
            text: "Профиль"
            font.pixelSize: 24
            color: "black"
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.WordWrap
            anchors.horizontalCenter: parent.horizontalCenter
        }



        Rectangle {
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width - 40
            height: 260
            radius: 8
            color: "white"
            border.color: "#CCCCCC"
            border.width: 1

            Column {
                anchors.top: parent.top
                padding: 10
                anchors.fill: parent
                // spacing: 20 // Расстояние между строками
                Text {
                    text: "email:"
                    anchors.top: parent.top
                    anchors.topMargin: 20
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                }
                Text {
                    text: "iwanpomogaev@gmail.com"
                    font.pixelSize: 20
                    anchors.top: parent.top
                    anchors.topMargin: 30
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                }
                Text {
                    text: "ФИО:"
                    anchors.top: parent.top
                    anchors.topMargin: 60
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                }
                Text {
                    text: "Помогаев Иван Сергеевич"
                    font.pixelSize: 20
                    anchors.top: parent.top
                    anchors.topMargin: 70
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                }
                Text {
                    text: "Пароль:"
                    anchors.top: parent.top
                    anchors.topMargin: 100
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                }
                Text {
                    text: "*********"
                    font.pixelSize: 20
                    anchors.top: parent.top
                    anchors.topMargin: 120
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                }
                Rectangle {
                    anchors.top: parent.top
                    anchors.topMargin: 200
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    width: parent.width - 40
                    height: 40
                    color: "#FFD700"
                    radius: 10
                    Text {
                        anchors.top: parent.top
                        anchors.margins: 7
                        font.pixelSize: 16
                        text: "Изменить данные"
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.WordWrap
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }
            }
        }

        Text {
            anchors.topMargin: 40
            text: "История покупок"
            font.pixelSize: 24
            color: "black"
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.WordWrap
            anchors.horizontalCenter: parent.horizontalCenter
        }


        Rectangle {
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width - 40
            height: 270
            radius: 8
            color: "white"
            border.color: "#CCCCCC"
            border.width: 1
            Column {
                anchors.top: parent.top
                padding: 10
                anchors.fill: parent
                Image {
                    anchors.top: parent.top
                    anchors.topMargin: 60
                    source: "icons/shurik.png"
                    width: 100
                    height: 100
                    anchors.horizontalCenter: parent.horizontalCenter
                    fillMode: Image.PreserveAspectFit
                }
                Text {
                    text: "Makita d3 Ultra"
                    anchors.top: parent.top
                    anchors.topMargin: 170
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    font.pixelSize: 20
                }
                Text {
                    text: "В наличии"
                    anchors.top: parent.top
                    anchors.topMargin: 195
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    font.pixelSize: 14
                }
                Text {
                    text: "15 590р"
                    anchors.top: parent.top
                    anchors.topMargin: 225
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    font.pixelSize: 24
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WordWrap
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }

        Rectangle {
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width - 40
            height: 270
            radius: 8
            color: "white"
            border.color: "#CCCCCC"
            border.width: 1
            Column {
                anchors.top: parent.top
                padding: 10
                anchors.fill: parent
                Image {
                    anchors.top: parent.top
                    anchors.topMargin: 60
                    source: "icons/shurik.png"
                    width: 100
                    height: 100
                    anchors.horizontalCenter: parent.horizontalCenter
                    fillMode: Image.PreserveAspectFit
                }
                Text {
                    text: "Makita d3 Ultra"
                    anchors.top: parent.top
                    anchors.topMargin: 170
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    font.pixelSize: 20
                }
                Text {
                    text: "В наличии"
                    anchors.top: parent.top
                    anchors.topMargin: 195
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    font.pixelSize: 14
                }
                Text {
                    text: "15 590р"
                    anchors.top: parent.top
                    anchors.topMargin: 225
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    font.pixelSize: 24
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WordWrap
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }

        Rectangle {
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width - 40
            height: 270
            radius: 8
            color: "white"
            border.color: "#CCCCCC"
            border.width: 1
            Column {
                anchors.top: parent.top
                padding: 10
                anchors.fill: parent
                Image {
                    anchors.top: parent.top
                    anchors.topMargin: 60
                    source: "icons/shurik.png"
                    width: 100
                    height: 100
                    anchors.horizontalCenter: parent.horizontalCenter
                    fillMode: Image.PreserveAspectFit
                }
                Text {
                    text: "Makita d3 Ultra"
                    anchors.top: parent.top
                    anchors.topMargin: 170
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    font.pixelSize: 20
                }
                Text {
                    text: "В наличии"
                    anchors.top: parent.top
                    anchors.topMargin: 195
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    font.pixelSize: 14
                }
                Text {
                    text: "15 590р"
                    anchors.top: parent.top
                    anchors.topMargin: 225
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    font.pixelSize: 24
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WordWrap
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }


        Rectangle {
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width
            height: 200 // Высота футера
            color: "#393939" // Цвет фона

            Column {
                anchors.top: parent.top
                anchors.topMargin: 34
                anchors.fill: parent
                spacing: 20 // Расстояние между строками

                Text {
                    text: "Контакты"
                    font.pixelSize: 20
                    color: "white"
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WordWrap
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text {
                    text: "О компании"
                    font.pixelSize: 20
                    color: "white"
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WordWrap
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text {
                    text: "Помощь"
                    font.pixelSize: 20
                    color: "white"
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WordWrap
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
    }
}
