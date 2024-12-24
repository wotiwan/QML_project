import QtQuick 2.15

Item {
    width: parent.width
    property bool product_state: false
    visible: product_state
    Column {
        visible: product_state
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
            text: "Makita D3 Ultra"
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
                // padding: 10
                anchors.fill: parent
                Image {
                    anchors.top: parent.top
                    anchors.topMargin: 20
                    source: "icons/shurik.png"
                    width: 220
                    height: 220
                    anchors.horizontalCenter: parent.horizontalCenter
                    fillMode: Image.PreserveAspectFit
                }
            }
        }


        Rectangle {
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width - 40
            height: 340
            radius: 8
            color: "white"
            border.color: "#CCCCCC"
            border.width: 1

            Column {
                Text {
                    text: "Мощность....................................................300вт"
                    anchors.top: parent.top
                    anchors.topMargin: 20
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    font.pixelSize: 16
                }
                Text {
                    text: "Амплитуда колебаний...........................2.8мм"
                    anchors.top: parent.top
                    anchors.topMargin: 46
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    font.pixelSize: 16
                }
                Text {
                    text: "Колебаний в минуту..........................24000/м"
                    anchors.top: parent.top
                    anchors.topMargin: 72
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    font.pixelSize: 16
                }
                Text {
                    text: "Макс. оборотов....................................12000/м"
                    anchors.top: parent.top
                    anchors.topMargin: 98
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    font.pixelSize: 16
                }
                Text {
                    text: "Питание...........................................................220В"
                    anchors.top: parent.top
                    anchors.topMargin: 124
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    font.pixelSize: 16
                }
            }

            Column {
                anchors.top: parent.top
                anchors.topMargin: 160
                padding: 10
                anchors.fill: parent
                // spacing: 20 // Расстояние между строками
                Text {
                    text: "В наличии:"
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
                        anchors.left: parent.left
                        // anchors.leftMargin: 20
                        text: "155 990р"
                        font.pixelSize: 20
                    }
                }

                Row {
                    width: parent.width
                    anchors.top: parent.top
                    anchors.left: parent.left
                    anchors.topMargin: 80
                    anchors.leftMargin: 20
                    Rectangle {
                        anchors.top: parent.top
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                        width: 40
                        height: 40
                        color: "lightgray"
                        radius: 5
                    }

                    Rectangle {
                        anchors.top: parent.top
                        // anchors.topMargin: 100
                        anchors.left: parent.left
                        anchors.leftMargin: 50
                        width: 130
                        height: 40
                        color: "#FFD700"
                        radius: 5
                        Text {
                            anchors.top: parent.top
                            anchors.margins: 7
                            font.pixelSize: 16
                            text: "В корзину"
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            wrapMode: Text.WordWrap
                            anchors.horizontalCenter: parent.horizontalCenter
                        }
                    }
                }
                Row {
                    width: parent.width
                    anchors.top: parent.top
                    anchors.left: parent.left
                    anchors.topMargin: 110
                    anchors.leftMargin: 20
                    Image {
                        anchors.top: parent.top
                        anchors.topMargin: 30
                        source: "icons/star.png"
                        width: 20
                        height: 20
                        // anchors.horizontalCenter: parent.horizontalCenter
                        fillMode: Image.PreserveAspectFit
                    }
                    Text {
                        anchors.top: parent.top
                        anchors.topMargin: 30
                        anchors.left: parent.left
                        anchors.leftMargin: 30
                        text: "4.5"
                        font.pixelSize: 16
                    }
                }
            }
        }

        Rectangle {
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width - 40
            height: 180
            radius: 8
            color: "white"
            border.color: "#CCCCCC"
            border.width: 1
            Row {
                width: parent.width
                anchors.top: parent.top
                anchors.left: parent.left
                // anchors.topMargin: 20
                // anchors.leftMargin: 20

                Text {
                    height: 60
                    anchors.top: parent.top
                    // anchors.topMargin: -4
                    anchors.left: parent.left
                    // anchors.leftMargin: 30

                    text: "Характеристики"
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.WordWrap
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Rectangle {
                    anchors.top: parent.top
                    anchors.topMargin: 60
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    width: parent.width - 20
                    height: 60
                    color: "#EDEDED"
                    radius: 8
                    Text {
                        height: 60
                        anchors.top: parent.top
                        anchors.topMargin: 0
                        anchors.left: parent.left
                        // anchors.leftMargin: 30

                        text: "Отзывы"
                        font.pixelSize: 20
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.WordWrap
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }
                Text {
                    height: 60
                    anchors.top: parent.top
                    anchors.topMargin: 120
                    anchors.left: parent.left
                    // anchors.leftMargin: 30

                    text: "Адрес"
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.WordWrap
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }

        Rectangle {
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width - 40
            height: 230
            radius: 8
            color: "white"
            border.color: "#CCCCCC"
            border.width: 1
            Row {
                width: parent.width
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.topMargin: 20
                // anchors.leftMargin: 20
                Image {
                    anchors.top: parent.top
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    // anchors.topMargin: 30
                    source: "icons/star.png"
                    width: 20
                    height: 20
                    // anchors.horizontalCenter: parent.horizontalCenter
                    fillMode: Image.PreserveAspectFit
                }
                Image {
                    anchors.top: parent.top
                    anchors.left: parent.left
                    anchors.leftMargin: 50
                    // anchors.topMargin: 30
                    source: "icons/star.png"
                    width: 20
                    height: 20
                    // anchors.horizontalCenter: parent.horizontalCenter
                    fillMode: Image.PreserveAspectFit
                }
                Image {
                    anchors.top: parent.top
                    anchors.left: parent.left
                    anchors.leftMargin: 80
                    // anchors.topMargin: 30
                    source: "icons/star.png"
                    width: 20
                    height: 20
                    // anchors.horizontalCenter: parent.horizontalCenter
                    fillMode: Image.PreserveAspectFit
                }
                Image {
                    anchors.top: parent.top
                    anchors.left: parent.left
                    anchors.leftMargin: 110
                    // anchors.topMargin: 30
                    source: "icons/star.png"
                    width: 20
                    height: 20
                    // anchors.horizontalCenter: parent.horizontalCenter
                    fillMode: Image.PreserveAspectFit
                }
                Image {
                    anchors.top: parent.top
                    anchors.left: parent.left
                    anchors.leftMargin: 140
                    // anchors.topMargin: 30
                    source: "icons/star.png"
                    width: 20
                    height: 20
                    // anchors.horizontalCenter: parent.horizontalCenter
                    fillMode: Image.PreserveAspectFit
                }
                Text {
                    anchors.top: parent.top
                    anchors.topMargin: -3
                    anchors.left: parent.left
                    anchors.leftMargin: 180
                    font.pixelSize: 20
                    text: "Иван"
                }
                Text {
                    text: "Достоинства"
                    anchors.top: parent.top
                    anchors.topMargin: 40
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    font.pixelSize: 24
                }
                Text {
                    text: "Работает вроде, красивое"
                    anchors.top: parent.top
                    anchors.topMargin: 80
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    font.pixelSize: 16
                }
                Text {
                    text: "Недостатки"
                    anchors.top: parent.top
                    anchors.topMargin: 130
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    font.pixelSize: 24
                }
                Text {
                    text: "Оченя дорого"
                    anchors.top: parent.top
                    anchors.topMargin: 170
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    font.pixelSize: 16
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
