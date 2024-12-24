import QtQuick 2.15

Item {
    width: parent.width
    property bool basket_state: false
    visible: basket_state
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
            text: "Корзина"
            font.pixelSize: 24
            color: "black"
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.WordWrap
            anchors.horizontalCenter: parent.horizontalCenter
        }



        Rectangle {
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width - 40
            height: 160
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
                    text: "Итого:"
                    anchors.top: parent.top
                    anchors.topMargin: 20
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                }
                Row {
                    width: parent.width
                    anchors.top: parent.top
                    anchors.left: parent.left
                    anchors.topMargin: 35
                    anchors.leftMargin: 20
                    Text {
                        text: "5 Товаров"
                        font.pixelSize: 20

                    }
                    Text {
                        anchors.right: parent.right
                        anchors.rightMargin: 40
                        text: "155 990р"
                        font.pixelSize: 20
                    }
                }
                Text {
                    anchors.top: parent.top
                    anchors.topMargin: 60
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    text: "В наличии"
                }
                Rectangle {
                    anchors.top: parent.top
                    anchors.topMargin: 100
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
                        text: "Оформить заказ"
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.WordWrap
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }
            }
        }

        Rectangle {
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width - 40
            height: 55
            radius: 8
            color: "white"
            border.color: "#CCCCCC"
            border.width: 1
            Row {
                width: parent.width
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.topMargin: 20
                anchors.leftMargin: 20

                Rectangle {
                    anchors.top: parent.top
                    anchors.topMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                    width: 15
                    height: 15
                    color: "lightgray"
                    radius: 3
                }
                Text {
                    anchors.top: parent.top
                    anchors.topMargin: -4
                    anchors.left: parent.left
                    anchors.leftMargin: 30

                    text: "Выбрать все"
                    font.pixelSize: 16
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
                Rectangle {
                    anchors.top: parent.top
                    anchors.topMargin: 20
                    anchors.left: parent.left
                    anchors.leftMargin: parent.width / 2 - 7.5
                    width: 15
                    height: 15
                    color: "lightgray"
                    radius: 3
                }
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
                Rectangle {
                    anchors.top: parent.top
                    anchors.topMargin: 20
                    anchors.left: parent.left
                    anchors.leftMargin: parent.width / 2 - 7.5
                    width: 15
                    height: 15
                    color: "lightgray"
                    radius: 3
                }
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
                Rectangle {
                    anchors.top: parent.top
                    anchors.topMargin: 20
                    anchors.left: parent.left
                    anchors.leftMargin: parent.width / 2 - 7.5
                    width: 15
                    height: 15
                    color: "lightgray"
                    radius: 3
                }
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
