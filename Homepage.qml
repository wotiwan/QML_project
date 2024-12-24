import QtQuick 2.15

Item {
    width: parent.width
    property bool home_state: false
    visible: home_state
    id: home
    signal homeButtonPressed()
    Column {
        visible: home_state
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
            text: "Популярные категории"
            font.pixelSize: 24
            color: "black"
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.WordWrap
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Rectangle {
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width - 40
            height: 300
            radius: 8
            color: "white"
            border.color: "#CCCCCC"
            border.width: 1

            MouseArea {
                anchors.fill: parent // MouseArea заполняет весь родительский прямоугольник
                onClicked: {
                    console.log("Каталог нажат") // Лог в консоль
                    home.homeButtonPressed()
                }
            }

            Column {
                anchors.fill: parent
                anchors.margins: 10
                spacing: 5

                Image {
                    anchors.top: parent.top
                    anchors.topMargin: 40
                    source: "icons/lobzik.png"
                    width: 180
                    height: 180
                    anchors.horizontalCenter: parent.horizontalCenter
                    fillMode: Image.PreserveAspectFit
                }

                Text {
                    anchors.top: parent.top
                    anchors.topMargin: 240
                    text: "Электроинструмент"
                    font.pixelSize: 20
                    color: "black"
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WordWrap
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
        Rectangle {
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width - 40
            height: 300
            radius: 8
            color: "white"
            border.color: "#CCCCCC"
            border.width: 1

            Column {
                anchors.fill: parent
                anchors.margins: 10
                spacing: 5

                Image {
                    anchors.top: parent.top
                    anchors.topMargin: 40
                    source: "icons/maska.png"
                    width: 180
                    height: 180
                    anchors.horizontalCenter: parent.horizontalCenter
                    fillMode: Image.PreserveAspectFit
                }

                Text {
                    anchors.top: parent.top
                    anchors.topMargin: 240
                    text: "Экипировка"
                    font.pixelSize: 20
                    color: "black"
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WordWrap
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
        Rectangle {
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width - 40
            height: 300
            radius: 8
            color: "white"
            border.color: "#CCCCCC"
            border.width: 1

            Column {
                anchors.fill: parent
                anchors.margins: 10
                spacing: 5

                Image {
                    anchors.top: parent.top
                    anchors.topMargin: 40
                    source: "icons/svarka.png"
                    width: 180
                    height: 180
                    anchors.horizontalCenter: parent.horizontalCenter
                    fillMode: Image.PreserveAspectFit
                }

                Text {
                    anchors.top: parent.top
                    anchors.topMargin: 240
                    text: "Сварочные аппараты"
                    font.pixelSize: 20
                    color: "black"
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WordWrap
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }

        Rectangle {
            id: footer
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
