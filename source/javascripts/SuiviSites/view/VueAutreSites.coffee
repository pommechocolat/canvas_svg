groupingFeature = Ext.create 'Ext.grid.feature.Grouping',
  groupHeaderTpl: '{columnName}: {name} ({rows.length})',

Ext.define 'SSudl.view.VueAutreSites',
  extend: 'Ext.grid.Panel'
  alias: 'widget.listeAutres'
  
  store: 'StoreAutresSites'
  viewConfig:
    enableTextSelection: true
  features: [
    groupingFeature
  ]
  columns: [
      text: 'Parent'
      flex: 1
      dataIndex: 'parent'
      hidden: true
    ,
      text: 'Type Structure'
      width: 70
      dataIndex: 'supannTypeEntite'
    ,
      text: 'Nom structure (composante/labo)'
      flex: 1
      dataIndex: 'structure'
    ,
      text: 'Directeur'
      dataIndex: 'Directeur'
      width: 150
    ,
      text: 'Webmestre'
      dataIndex: 'ServerAdmin'
      width: 150
      hidden: true
    ,
      text: 'Url'
      dataIndex: 'URL'
      width: 200
      renderer: (value) ->
        myURL = value
        if value != null and value.indexOf(" ") <= 0
          myURL = '<a href="http://'+value+'" target="_blank">'+value+'</a>'
        return myURL
    ,
      text: 'Alias'
      dataIndex: 'Alias'
      width: 200
      renderer: (value) ->
        retour = ''
        if value
          alias = (JSON.parse value).Alias
          #retour = alias.join ', '
          for item in alias
            retour = retour+'<a href="http://'+item+'" target="_blank">'+item+'</a></br>'
          return retour
    ,
      text: 'Statut URL UL'
      dataIndex: 'Statut'
      width: 60
      renderer: (value, metaData) ->
        if value == 'ok'
          metaData.style='background:#C6D741'
        else
          if value == 'ko'
            metaData.style='background:#EA463C'
          else
            if value == 'En cours'
              metaData.style='background:#FF7C4B'
        return value
    ,
      text: "Etat Migration"
      dataIndex: 'Aspect_UL'
      width: 150
    ,
      text: 'Création'
      dataIndex: 'crdate'
      width: 60
    ,
      text: 'Réalisation'
      dataIndex: 'realisation'
      width: 60
    ,
      text: 'Hebergement'
      dataIndex: 'serveur'
    ,
      text: 'Technologie'
      dataIndex: 'techno'
      width: 75
      renderer: (value) ->
        myTechno = value
        if value and (value[value.length-1]==',' or value[value.length-1]=='-')
          myTechno = value[0..-2]
        return myTechno
    ,
      text: 'Commentaire'
      dataIndex: 'Commentaire'
      flex: 1
      renderer: (value, metaData) ->
        metaData.style='white-space: pre-wrap'
        return value
    ,
      text: 'Code'
      dataIndex: 'supannCodeEntite'
      hidden: true
    ,
      text: 'Id Site'
      dataIndex: 'id_site'
      hidden: true
    ,
      text: 'AutreAlias'
      dataIndex: 'urlEx'
      hidden: true
      renderer: (value) ->
        myURL = value
        if value != null and value.indexOf(" ") <= 0
          myURL = '<a href="http://'+value+'" target="_blank">'+value+'</a>'
        return myURL
    ,
      text: 'AutreThech'
      dataIndex: 'Techno'
      hidden: true  
    ,
      text: 'Alias Domaines'
      dataIndex: 'aliasDomaines'
      hidden: true  
      renderer: (value) ->
        retour = ''
        if value
          alias = value.split ", "
          for item in alias
            retour = retour+'<a href="http://'+item+'" target="_blank">'+item+'</a></br>'
          return retour
  ]
  initComponent: ->
    console.log('on initialise la vue Autre')
    console.log(@store)
    @callParent(arguments)