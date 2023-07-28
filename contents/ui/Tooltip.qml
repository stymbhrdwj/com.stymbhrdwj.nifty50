/*
    SPDX-FileCopyrightText: 2015 Martin Klapetek <mklapetek@kde.org>

    SPDX-License-Identifier: LGPL-2.0-or-later
*/

import QtQuick 2.0
import QtQuick.Layouts 1.1
import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.plasma.components 3.0 as PlasmaComponents3
import org.kde.plasma.extras 2.0 as PlasmaExtras
import org.kde.plasma.plasmoid 2.0
import org.kde.kirigami 2.20 as Kirigami

Item {
    id: tooltipContentItem

    property int preferredTextWidth: PlasmaCore.Units.gridUnit * 20

    implicitWidth: mainLayout.implicitWidth + PlasmaCore.Units.gridUnit
    implicitHeight: mainLayout.implicitHeight + PlasmaCore.Units.gridUnit

    LayoutMirroring.enabled: Qt.application.layoutDirection === Qt.RightToLeft
    LayoutMirroring.childrenInherit: true
    PlasmaCore.ColorScope.colorGroup: PlasmaCore.Theme.NormalColorGroup
    PlasmaCore.ColorScope.inherit: false

    ColumnLayout {
        id: mainLayout
        anchors {
            left: parent.left
            top: parent.top
            margins: PlasmaCore.Units.gridUnit / 2
        }

        spacing: 0

        PlasmaExtras.Heading {
            id: tooltipMaintext
            level: 3
            Layout.minimumWidth: Math.min(implicitWidth, preferredTextWidth)
            Layout.maximumWidth: preferredTextWidth
            elide: Text.ElideRight
            text: "Nifty50 widget" //clocks.visible ? Qt.formatDate(tzDate, Locale.LongFormat) : Qt.formatDate(tzDate,"dddd")
        }

        PlasmaComponents3.Label {
            id: tooltipSubtext
            Layout.minimumWidth: Math.min(implicitWidth, preferredTextWidth)
            Layout.maximumWidth: preferredTextWidth
            text: "Current price in real-time"//Qt.formatDate(tzDate, dateFormatString)
            opacity: 0.6
            visible: true
        }
    }
}
