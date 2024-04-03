sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/m/MessageToast",
    "sap/ui/model/odata/v4/ODataModel",
    "sap/ui/model/json/JSONModel",
    "sap/m/Table",
	"sap/ui/model/Filter",
	"sap/ui/model/FilterOperator",
    "sap/ui/core/routing/Router"
],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (Controller) {
        "use strict";
        Controller.extend("project1.controller.GolView", {

            onInit: function() {
                this
                    .getOwnerComponent()
                    .getRouter()
                    .getRoute('GolView')
                    .attachPatternMatched(this._init, this);
            },

            _init: function(event){
                const id = event.getParameter('arguments')['id'];
                this.getView().bindObject({ path: `/Goles(${id})`, parameters: {$expand: "autor,asistente,partido($expand=condicion,competencia,equipo,video,dt),forma" }});
                this.setVideo();
            },

            setVideo: function(){
                this.getView().getBindingContext().requestProperty("partido/video/youtube").then((id) => {
                    var url = "https://www.youtube.com/embed/"+id+"?version=3&autoplay=1&vq=hd1080&onfocus=1&start=";
                    this.getView().getBindingContext().requestProperty("inicio").then((inicio) => {
                        url += inicio
                        var sIframeId = this.getView().byId(this.createId("vid")).getId();
                        $("#"+sIframeId).attr("src",url);
                        //console.log(this.getView().byId("vid"));
                        var vid = this.getView().byId("vid");
                        var oFocusInfo = vid.getFocusInfo()
                        console.log(oFocusInfo);
                        vid.applyFocusInfo(oFocusInfo);
                    });
                });
            },

            home: function(){
                this.pause();
                this.getOwnerComponent().getRouter().navTo('HomeView');
            },

            pause: function(){
                var sIframeId = this.getView().byId(this.createId("vid")).getId();
                $("#"+sIframeId).attr("src","");
            },

            navigation: function(oEvent){
                var next = oEvent.getSource().getId().slice(-4) == "next";
                this.getView().getBindingContext().requestProperty("ID").then((curID) => {
                    var id = curID;
                    if(next){
                        id++;
                        this.getOwnerComponent().getRouter().navTo('GolView', {id});
                    } else {
                        id--;
                        this.getOwnerComponent().getRouter().navTo('GolView', {id});
                    }
                });
            }
        });
    })