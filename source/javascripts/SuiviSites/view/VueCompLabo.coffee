groupingFeature = Ext.create 'Ext.grid.feature.Grouping',
  groupHeaderTpl: '{columnName}: {name} ({rows.length})',

Ext.define 'SSudl.view.VueCompLabo',
  extend: 'Ext.grid.Panel'
  alias: 'widget.listeCompLabo'
  
  store: 'StoreCompLabo'
  viewConfig:
    enableTextSelection: true
  features: [
    groupingFeature
  ]
  columns: [
      text: 'Parent'
      flex: 1
      dataIndex: 'parent'
    ,
      text: 'Type Structure'
      width: 100
      dataIndex: 'supannTypeEntite'
      hidden: true
    ,
      text: 'Sigle'
      width: 60
      dataIndex: 'udlShortLabel'
    ,
      text: 'Nom'
      flex: 1
      dataIndex: 'structure'
      hidden: true
    ,
      text: 'Directeur'
      dataIndex: 'directeur'
      width: 130
    ,
      text: 'Responsalbe Administratif'
      dataIndex: 'adjoint'
      width: 130
      hidden: true
    ,
      text: 'Responsable editorial'
      dataIndex: 'ServerAdmin'
      width: 150
      hidden: true
    ,
      text: 'Adresse principale'
      dataIndex: 'URL'
      width: 150
      renderer: (value) ->
        myURL = value
        if value != null and value.indexOf(" ") <= 0
          myURL = '<a href="http://'+value+'" target="_blank">'+value+'</a>'
        return myURL
    ,
      text: 'Adresse(s) d\'accès'
      #flex: 1
      width: 200
      dataIndex: 'aliasDomaines'
      renderer: (value) ->
        retour = ''
        if value
          alias = value.split ", "
          for item in alias
            retour = retour+'<a href="http://'+item+'" target="_blank">'+item+'</a></br>'
          return retour
    ,
      text: 'Adresse temporaire'
      dataIndex: 'urlTemp'
      hidden: true
    ,
      text: 'Date demande'
      dataIndex: 'dateDem'
      hidden: true
    ,
      text: 'Date de mise à disposition prévue'
      dataIndex: 'dateDipPrev'
      hidden: true
    ,
      text: 'Date de mise à disposition effective'
      dataIndex: 'crdate'
      width: 60
      hidden: true
    ,
      text: 'Date de mise en production prévue'
      dataIndex: ''
      width: 60
      hidden: true
    ,
      text: 'Date de mise en production effective'
      dataIndex: 'realisation'
      width: 60
      hidden: true
    ,
      text: 'Objectif'
      dataIndex: ''
      hidden: true
    ,
      text: 'Proirité'
      dataIndex: ''
      hidden: true
    ,
      text: 'Hebergement'
      dataIndex: 'serveur'
    ,
      text: 'Solution technologique d\'origine'
      dataIndex: 'Techno'
    ,
      text: 'Solution technologique finale'
      dataIndex: 'techno'
      width: 75
      renderer: (value) ->
        myTechno = value
        if value and (value[value.length-1]==',' or value[value.length-1]=='-')
          myTechno = value[0..-2]
        return myTechno
    ,
      text: 'Etat de réalisation'
      dataIndex: 'Statut'
      width: 130
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
      text: 'Validation de pré-production'
      dataIndex: ''
      hidden: true
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
      #hidden: true
    ,
      text: 'Id Site'
      dataIndex: 'id_site'
      #hidden: true
    ,
      text: 'AliasExcel'
      dataIndex: 'urlEx'
      hidden: true
      renderer: (value) ->
        myURL = value
        if value != null and value.indexOf(" ") <= 0
          myURL = '<a href="http://'+value+'" target="_blank">'+value+'</a>'
        return myURL
    ,
      text: 'AliasWAZ'
      dataIndex: 'Alias'
      width: 200
      renderer: (value) ->
        retour = ''
        if value
          alias = (JSON.parse value).Alias
          for item in alias
            retour = retour+'<a href="http://'+item+'" target="_blank">'+item+'</a></br>'
          return retour
      hidden: true
  ]
