sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'goles.de.river',
            componentId: 'GolesObjectPage',
            entitySet: 'Goles'
        },
        CustomPageDefinitions
    );
});