sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/m/MessageToast",
    "sap/ui/model/odata/v4/ODataModel",
    "sap/ui/model/json/JSONModel",
    "sap/m/Table",
	"sap/ui/model/Filter",
	"sap/ui/model/FilterOperator",
    "sap/ui/core/routing/Router",
    "sap/ui/model/resource/ResourceModel"
],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (Controller) {
        "use strict";
        Controller.extend("project1.controller.HomeView", {
            onInit: function () {
            },

            onListItemPress: function(oEvent) {
                var id = oEvent.getSource().getBindingContext().getProperty('ID');
                this.getOwnerComponent().getRouter().navTo('GolView', {id});
            },

            searchMethod: function(oEvent) {
                var aFilter = [];
                var sQuery = oEvent.getParameter("query");
                if (sQuery) {
                    aFilter = ([
                        new sap.ui.model.Filter({
                            filters: [
                              new sap.ui.model.Filter({
                                path: 'autor_ID',
                                operator: sap.ui.model.FilterOperator.Contains,
                                value1: sQuery
                              }),/*
                              new sap.ui.model.Filter({
                                path: 'asistente_ID',
                                operator: sap.ui.model.FilterOperator.Contains,
                                value1: sQuery
                              }),*/
                            ],
                            or: true|false
                          })
                    ]);
                }

                // filter binding
                var oTable = this.byId("table");
                var oBinding = oTable.getBinding("items");
                oBinding.filter(aFilter);
            }
        });
    });
