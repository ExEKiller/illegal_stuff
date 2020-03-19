/*
    class variable {
        variable = "variable";          // Variable (be same class/var -- ex: cocaine)
        marker = "marker_name";         // MarkerName (used in Config_Gather -- ex: "cocaine_1")
        price = 20000;                  // Price (reduce from account -- ex: 5000)
        pos[] = { 0, 0, 0 };            // Pos (get exact pos with: getMarkerPos "marker_name" on map editor)
        color = "ColorYellow";          // Color (use Config Name not RGBA: https://community.bistudio.com/wiki/Arma_3_CfgMarkerColors)
        text = "Field Name";            // Text displayed on the map
        type = "Mil_dot";               // Type of marker (https://community.bistudio.com/wiki/cfgMarkers -- ex: Mil_dot)
        ellipse = true;                 // Ellipse around the marker (True/false -- default: true)
    };
*/

class armapps_illegal_stuff_cfg {
    class resources {
        class cocaine {
            variable = "cocaine";
            marker = "cocaine_1";
            price = 20000;
            pos[] = { 5188.19, 20872.7, 0 };
            color = "ColorYellow";
            text = "Champs Cocaïne";
            type = "Mil_dot";
            ellipse = true;
        };
    };
    class localization {
        msgNoMoney =            "You don't have enough money";
        msgAlreadyPurchased =   "Resource already purchased.";
        msgPurchased =          "You've purchased the %1 field";
    };
};

