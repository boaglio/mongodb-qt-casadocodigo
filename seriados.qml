

import me.qtquick.MongoDB 0.1
import QtQuick 2.0
import QtQuick.Controls 1.0

ApplicationWindow {
    visible: true
    width: 360
    height: 360
    title: "Qt com MongoDB!"

    id: janela
    color: "steelblue"

    Database {
        id: db
        host: '127.0.0.1'
        port: 27017
        name: 'test'

        property Collection seriados: Collection { name: 'seriados' }
    }

    ListView {

        id: lista
        anchors.fill: parent
 
        clip: true

        model: db.seriados.find({"nome" : "Breaking Bad"})

        delegate: Text {
             text: JSON.stringify(model.modelData, null, 4)
        }
    }

}
 

