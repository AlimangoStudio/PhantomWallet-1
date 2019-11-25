import QtQuick 2.9
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.3
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls.Material 2.1

import "js/theme.js" as Theme;
import "js/utils.js" as Utils
import "components" as PhantomComponents;
import "pages"

ApplicationWindow {
    id: windowMain
    visible: true
    width: 1200
    height: 900
    color: "#242933"
    title: "Phantom Wallet"

    // Material color settings
    Material.theme: Material.Dark
    Material.accent: "#17B0E7"
    //Material.accent: Material.Blue
    //Material.foreground: Material.Blue
    //Material.background: "#17B0E7"
    //Material.background: "#2E3542"
    //Material.background: "#242933"

    // Custom google font
    FontLoader {
        id: customGoogleFont;
        source: "fonts/Rubik/Rubik-Medium.ttf"
    }

    // LoginWalletView
    LoginWalletView {
      id: containerLoginWalletView
      visible: true
    }

    // CreateWalletView
    CreateWalletView {
      id: containerCreateWalletView
      visible: false
    }

    // CreateWalletView
    CreateWalletConfirmationView {
      id: containerCreateWalletConfirmationView
      visible: false
    }

    // ImportWalletView
    ImportWalletView {
      id: containerImportWalletView
      visible: false
    }

    // PortfolioView
    PortfolioView {
      id: containerPortfolioView
      visible: false
    }

    // switchMainViews
    function switchMainViews(view) {
      switch (view) {
        case 0:
            containerLoginWalletView.visible = true
            containerCreateWalletView.visible = false
            containerCreateWalletConfirmationView.visible = false
            containerImportWalletView.visible = false
            containerPortfolioView.visible = false
            break;
        case 1:
            containerLoginWalletView.visible = false
            containerCreateWalletView.visible = true
            containerCreateWalletConfirmationView.visible = false
            containerImportWalletView.visible = false
            containerPortfolioView.visible = false
            break;
        case 2:
            containerLoginWalletView.visible = false
            containerCreateWalletView.visible = false
            containerCreateWalletConfirmationView.visible = false
            containerImportWalletView.visible = true
            containerPortfolioView.visible = false
            break;
        case 3:
            containerLoginWalletView.visible = false
            containerCreateWalletView.visible = false
            containerCreateWalletConfirmationView.visible = false
            containerImportWalletView.visible = false
            containerPortfolioView.visible = true
            break;
        case 4:
            containerLoginWalletView.visible = false
            containerCreateWalletView.visible = false
            containerCreateWalletConfirmationView.visible = true
            containerImportWalletView.visible = false
            containerPortfolioView.visible = false
          break;
      }
    }

}
