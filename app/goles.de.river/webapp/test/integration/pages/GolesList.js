sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'goles.de.river',
            componentId: 'GolesList',
            entitySet: 'Goles'
        },
        CustomPageDefinitions
    );
});