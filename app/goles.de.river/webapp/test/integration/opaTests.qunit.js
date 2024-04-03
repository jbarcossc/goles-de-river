sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'goles/de/river/test/integration/FirstJourney',
		'goles/de/river/test/integration/pages/GolesList',
		'goles/de/river/test/integration/pages/GolesObjectPage'
    ],
    function(JourneyRunner, opaJourney, GolesList, GolesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('goles/de/river') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheGolesList: GolesList,
					onTheGolesObjectPage: GolesObjectPage
                }
            },
            opaJourney.run
        );
    }
);