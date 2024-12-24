import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 380
    height: 640
    title: "Сварщик"
    property int page_height: 640

    Rectangle {
        anchors.fill: parent
        color: "#f0f0f0" // Основной фон

        Column {
            anchors.fill: parent


            Flickable {
                id: contentArea
                Layout.fillWidth: true
                Layout.fillHeight: true
                width: parent.width
                height: parent.height - 60
                contentWidth: parent.width
                anchors.top: parent.top
                // anchors.topMargin: 120
                contentHeight: page_height // Высота прокручиваемого контента

                Catalog {
                    id: catalog
                    onContentButtonPressed: {
                        catalog.catalog_state = false
                        homepage.home_state = false
                        basket.basket_state = false
                        categories.category_state = true
                        profile.profile_state = false
                        product.product_state = false
                        login.login_state = false
                        page_height = 1200
                    }
                }
                Homepage {
                    id: homepage
                    onHomeButtonPressed: {
                        catalog.catalog_state = true
                        homepage.home_state = false
                        basket.basket_state = false
                        categories.category_state = false
                        profile.profile_state = false
                        product.product_state = false
                        login.login_state = false
                        page_height = 1330
                    }
                }
                Basket {
                    id: basket
                }
                Categories {
                    id: categories
                    onCategoryClick: {
                        catalog.catalog_state = false
                        homepage.home_state = false
                        basket.basket_state = false
                        categories.category_state = false
                        profile.profile_state = false
                        product.product_state = true
                        login.login_state = false
                        page_height = 1450
                    }
                }
                Profile_page {
                    id: profile
                }
                Product {
                    id: product
                }
                Login {
                    id: login
                }
            }

            // Нижняя панель с навигацией
            Rectangle {
                id: navigationBar
                width: parent.width
                height: 60
                color: "#FFD700" // Желтый цвет панели
                anchors.bottom: parent.bottom

                Row {
                    anchors.fill: parent
                    anchors.margins: 10
                    spacing: 20

                    // Кнопка "Главная"
                    Column {
                        anchors.left: parent.left
                        anchors.leftMargin: 30
                        spacing: 5
                        width: 75
                        Rectangle {
                            width: 75
                            height: 75
                            color: "transparent" // Цвет прозрачный, чтобы только область была кликабельной

                            MouseArea {
                                anchors.fill: parent // MouseArea заполняет весь родительский прямоугольник
                                onClicked: {
                                    console.log("Главная нажат") // Лог в консоль
                                    catalog.catalog_state = false
                                    homepage.home_state = true
                                    basket.basket_state = false
                                    categories.category_state = false
                                    profile.profile_state = false
                                    product.product_state = false
                                    login.login_state = false
                                    page_height = 1330
                                }
                            }

                            Image {
                                source: "icons/Home.png"
                                width: 24
                                height: 24
                                fillMode: Image.PreserveAspectFit
                                anchors.horizontalCenter: parent.horizontalCenter
                                anchors.top: parent.top
                            }

                            Text {
                                text: "Главная"
                                font.pixelSize: 12
                                color: "black"
                                horizontalAlignment: Text.AlignHCenter
                                anchors.horizontalCenter: parent.horizontalCenter
                                anchors.top: parent.top
                                anchors.topMargin: 29
                            }
                        }
                    }

                    Column {
                        anchors.left: parent.left
                        anchors.leftMargin: 105
                        spacing: 5
                        width: 75
                        Rectangle {
                            width: 75
                            height: 75
                            color: "transparent" // Цвет прозрачный, чтобы только область была кликабельной

                            MouseArea {
                                anchors.fill: parent // MouseArea заполняет весь родительский прямоугольник
                                onClicked: {
                                    console.log("Каталог нажат") // Лог в консоль
                                    catalog.catalog_state = true
                                    homepage.home_state = false
                                    basket.basket_state = false
                                    categories.category_state = false
                                    profile.profile_state = false
                                    product.product_state = false
                                    login.login_state = false
                                    page_height = 1330
                                }
                            }

                            Image {
                                source: "icons/catalog1.png"
                                width: 24
                                height: 24
                                fillMode: Image.PreserveAspectFit
                                anchors.horizontalCenter: parent.horizontalCenter
                                anchors.top: parent.top
                            }

                            Text {
                                text: "Каталог"
                                font.pixelSize: 12
                                color: "black"
                                horizontalAlignment: Text.AlignHCenter
                                anchors.horizontalCenter: parent.horizontalCenter
                                anchors.top: parent.top
                                anchors.topMargin: 29
                            }
                        }
                    }

                    Column {
                        anchors.left: parent.left
                        anchors.leftMargin: 180
                        spacing: 5
                        width: 75
                        Rectangle {
                            width: 75
                            height: 75
                            color: "transparent" // Цвет прозрачный, чтобы только область была кликабельной

                            MouseArea {
                                anchors.fill: parent // MouseArea заполняет весь родительский прямоугольник
                                onClicked: {
                                    console.log("Корзина нажат") // Лог в консоль
                                    catalog.catalog_state = false
                                    homepage.home_state = false
                                    basket.basket_state = true
                                    categories.category_state = false
                                    profile.profile_state = false
                                    product.product_state = false
                                    login.login_state = false
                                    page_height = 1495
                                }
                            }

                            Image {
                                source: "icons/basket.png"
                                width: 24
                                height: 24
                                fillMode: Image.PreserveAspectFit
                                anchors.horizontalCenter: parent.horizontalCenter
                                anchors.top: parent.top
                            }

                            Text {
                                text: "Корзина"
                                font.pixelSize: 12
                                color: "black"
                                horizontalAlignment: Text.AlignHCenter
                                anchors.horizontalCenter: parent.horizontalCenter
                                anchors.top: parent.top
                                anchors.topMargin: 29
                            }
                        }
                    }
                    Column {
                        anchors.left: parent.left
                        anchors.leftMargin: 255
                        spacing: 5
                        width: 75
                        Rectangle {
                            width: 75
                            height: 75
                            color: "transparent" // Цвет прозрачный, чтобы только область была кликабельной

                            MouseArea {
                                anchors.fill: parent // MouseArea заполняет весь родительский прямоугольник
                                onClicked: {
                                    console.log("Корзина нажат") // Лог в консоль
                                    catalog.catalog_state = false
                                    homepage.home_state = false
                                    basket.basket_state = false
                                    categories.category_state = false
                                    profile.profile_state = true
                                    product.product_state = false
                                    login.login_state = false
                                    page_height = 1570
}
                            }

                            Image {
                                source: "icons/profile.png"
                                width: 24
                                height: 24
                                fillMode: Image.PreserveAspectFit
                                anchors.horizontalCenter: parent.horizontalCenter
                                anchors.top: parent.top
                            }

                            Text {
                                text: "Профиль"
                                font.pixelSize: 12
                                color: "black"
                                horizontalAlignment: Text.AlignHCenter
                                anchors.horizontalCenter: parent.horizontalCenter
                                anchors.top: parent.top
                                anchors.topMargin: 29
                            }
                        }
                    }
                }
            }
        }
    }
}
