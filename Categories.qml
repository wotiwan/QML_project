import QtQuick 2.15

Item {
    width: parent.width
    property bool category_state: false // Сменить потом на false
    visible: category_state
    signal categoryClick()
    id: categories
    Column {
        visible: category_state
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
            anchors.top: parent.top
            anchors.topMargin: 120
            text: "Каталог > Категория"
            font.pixelSize: 24
            color: "black"
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.WordWrap
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Rectangle {
            anchors.top: parent.top
            anchors.topMargin: 170
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width - 40
            height: 50
            color: "transparent"
            border.width: 0

            Row {
                anchors.fill: parent
                // anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                Rectangle {
                    width: parent.width / 2 - 10
                    height: parent.height
                    radius: 8
                    color: "#FFD700"
                    border.color: "#CCCCCC"
                    border.width: 1
                    Text {
                        text: "Фильтры"
                        anchors.top: parent.top
                        anchors.topMargin: 10
                        anchors.left: parent.left
                        anchors.leftMargin: 20
                        font.pixelSize: 20
                        horizontalAlignment: Text.AlignHCenter
                        wrapMode: Text.WordWrap
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }
                Rectangle {
                    width: parent.width / 2 - 10
                    anchors.right: parent.right
                    height: parent.height
                    radius: 8
                    color: "#FFD700"
                    border.color: "#CCCCCC"
                    border.width: 1
                    Text {
                        text: "Сортировка"
                        anchors.top: parent.top
                        anchors.topMargin: 10
                        anchors.left: parent.left
                        anchors.leftMargin: 20
                        font.pixelSize: 20
                        horizontalAlignment: Text.AlignHCenter
                        wrapMode: Text.WordWrap
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }
            }
        }


        Rectangle {
            anchors.top: parent.top
            anchors.topMargin: 240
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width - 40
            height: 360
            radius: 8
            color: "white"
            border.color: "#CCCCCC"
            border.width: 1
            MouseArea {
                anchors.fill: parent // MouseArea заполняет весь родительский прямоугольник
                onClicked: {
                    console.log("Каталог нажат") // Лог в консоль
                    categories.categoryClick()
                }
            }
            Column {
                anchors.top: parent.top
                padding: 10
                anchors.fill: parent
                Image {
                    anchors.top: parent.top
                    anchors.topMargin: 40
                    source: "icons/shurik.png"
                    width: 100
                    height: 100
                    anchors.horizontalCenter: parent.horizontalCenter
                    fillMode: Image.PreserveAspectFit
                }
                Text {
                    text: "Makita d3 Ultra"
                    anchors.top: parent.top
                    anchors.topMargin: 150
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    font.pixelSize: 20
                }
                Text {
                    text: "В наличии"
                    anchors.top: parent.top
                    anchors.topMargin: 175
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    font.pixelSize: 14
                }
                Text {
                    text: "15 590р"
                    anchors.top: parent.top
                    anchors.topMargin: 205
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    font.pixelSize: 24
                    // horizontalAlignment: Text.AlignHCenter
                    // wrapMode: Text.WordWrap
                    // anchors.horizontalCenter: parent.horizontalCenter
                }
                Row {
                    width: parent.width
                    anchors.top: parent.top
                    anchors.left: parent.left
                    anchors.topMargin: 210
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
                Rectangle {
                    anchors.top: parent.top
                    anchors.topMargin: 280
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    width: parent.width - 40
                    height: 60
                    color: "#FFD700"
                    radius: 10
                    Text {
                        text: "Добавить в корзину"
                        anchors.top: parent.top
                        anchors.topMargin: 10
                        anchors.left: parent.left
                        anchors.leftMargin: 20
                        font.pixelSize: 24
                        horizontalAlignment: Text.AlignHCenter
                        wrapMode: Text.WordWrap
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }
            }
        }


        Rectangle {
            anchors.top: parent.top
            anchors.topMargin: 620
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width - 40
            height: 360
            radius: 8
            color: "white"
            border.color: "#CCCCCC"
            border.width: 1
            MouseArea {
                anchors.fill: parent // MouseArea заполняет весь родительский прямоугольник
                onClicked: {
                    console.log("Каталог нажат") // Лог в консоль
                    categories.categoryClick()
                }
            }
            Column {
                anchors.top: parent.top
                padding: 10
                anchors.fill: parent
                Image {
                    anchors.top: parent.top
                    anchors.topMargin: 40
                    source: "icons/shurik.png"
                    width: 100
                    height: 100
                    anchors.horizontalCenter: parent.horizontalCenter
                    fillMode: Image.PreserveAspectFit
                }
                Text {
                    text: "Makita d3 Ultra"
                    anchors.top: parent.top
                    anchors.topMargin: 150
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    font.pixelSize: 20
                }
                Text {
                    text: "В наличии"
                    anchors.top: parent.top
                    anchors.topMargin: 175
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    font.pixelSize: 14
                }
                Text {
                    text: "15 590р"
                    anchors.top: parent.top
                    anchors.topMargin: 205
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    font.pixelSize: 24
                    // horizontalAlignment: Text.AlignHCenter
                    // wrapMode: Text.WordWrap
                    // anchors.horizontalCenter: parent.horizontalCenter
                }
                Row {
                    width: parent.width
                    anchors.top: parent.top
                    anchors.left: parent.left
                    anchors.topMargin: 210
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
                Rectangle {
                    anchors.top: parent.top
                    anchors.topMargin: 280
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    width: parent.width - 40
                    height: 60
                    color: "#FFD700"
                    radius: 10
                    Text {
                        text: "Добавить в корзину"
                        anchors.top: parent.top
                        anchors.topMargin: 10
                        anchors.left: parent.left
                        anchors.leftMargin: 20
                        font.pixelSize: 24
                        horizontalAlignment: Text.AlignHCenter
                        wrapMode: Text.WordWrap
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }
            }
        }

        Rectangle {
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width
            height: 200 // Высота футера
            anchors.top: parent.top
            anchors.topMargin: 1000
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
