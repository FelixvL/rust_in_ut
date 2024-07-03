/*
 * Copyright (C) 2024  all
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; version 3.
 *
 * rusttrial is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.7
import QtQuick.Controls 2.2
import Lomiri.Components 1.3
import QtQuick.Layouts 1.3
import Qt.labs.settings 1.0

import Greeter 1.0

ApplicationWindow {
    id: root
    objectName: 'mainView'

    width: units.gu(45)
    height: units.gu(75)
    visible: true

    Greeter {
        id: greeter
        name: "Rust + Ubuntu Touch"
        tweede: i18n.tr('dit is de tweede')
        onNameChanged : {
            console.log("letstry");
        }
    }

    Page {
        anchors.fill: parent

        header: PageHeader {
            id: header
            title: i18n.tr('RustTrial')
           
        }

        ColumnLayout {
            spacing: units.gu(2)
            anchors {
                margins: units.gu(2)
                top: header.bottom
                left: parent.left
                right: parent.right
                bottom: parent.bottom
            }

            Item {
                Layout.fillHeight: true
            }

            Label {
                id: label
                text: i18n.tr('Press the button below!')
            }
            Label {
                id: label2
                text: i18n.tr('de tweede')
            }
            Button {
                text: i18n.tr('Compute greeting')
                onClicked: {
                    label.text = greeter.compute_greetings("Hello, ");
                    label2.text = 'check tweede'
                }
            }

            Item {
                Layout.fillHeight: true
            }
        }
    }
}
