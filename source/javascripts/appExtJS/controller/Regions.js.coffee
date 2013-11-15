Ext.define('AM.controller.Regions'
  extend: Ext.app.Controller
  
  views: ['vueListeRegions'] #charge le fichier présent dans le dossier view
  
  init: ->
    @control(
      'viewport > panel': 
        render: @onPanelRendered
    )
    #console.log('Initialisation des Régions ! Ce code est exécuté avant le lancement de l\'application')
  onPanelRendered: ->
    console.log('le Panel a été affiché')
)