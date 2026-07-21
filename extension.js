import {Extension} from 'resource:///org/gnome/shell/extensions/extension.js';
import * as Main from 'resource:///org/gnome/shell/ui/main.js';

export default class SpaceBarExtension extends Extension {
    enable() {
        // Ajouter la classe de style au panel principal
        if (Main.panel) {
            Main.panel.add_style_class_name('spacebar-panel');
        }

        // Ajouter la classe de style au conteneur du panel (panelBox)
        const panelBox = Main.layoutManager.panelBox;
        if (panelBox) {
            panelBox.add_style_class_name('spacebar-panel-box');
        }
    }

    disable() {
        // Retirer les classes lors de la désactivation pour restaurer l'état initial de GNOME
        if (Main.panel) {
            Main.panel.remove_style_class_name('spacebar-panel');
        }

        const panelBox = Main.layoutManager.panelBox;
        if (panelBox) {
            panelBox.remove_style_class_name('spacebar-panel-box');
        }
    }
}
