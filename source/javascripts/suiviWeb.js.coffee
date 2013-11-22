Ext.define('SuiviModel'
  extend: 'Ext.data.Model'
  fields: ['parent', 'supannTypeEntite', 'structure', 'Directeur', 'Statut', 'URL', 'techno', 'ServerAdmin', 'Alias', 'Commentaire', 'serveur', 'supannCodeEntite', 'Aspect_UL', 'urlEx', 'Techno', 'crdate', 'realisation']
  #groupField: ['parent', 'supannTypeEntite']
)

Ext.create('Ext.data.Store'
  storeId: 'magasinSite'
  model: 'SuiviModel'
  proxy:
    #type: "ajax"
    #url: "test.json"
    type: "jsonp"
    url: "http://localhost/~metzger9/extJS/index.php"
    reader:
      type: 'json'
      root: 'results'
).load(
  params:
    query: "Select pp.parent, pp.supannTypeEntite, pp.structure, e.Directeur, e.Statut, e.URL, concat(t.sit_engine,'-', t.sit_engine_version) as techno, t.sit_server_admin as ServerAdmin, t.sit_acces_url as Alias, e.Commentaire, e.serveur, pp.supannCodeEntite, e.Aspect_UL, e.urlEx, e.Techno, FROM_UNIXTIME(t.crdate, '%m/%y') as crdate, e.realisation 
    from Excel e 
    left join tx_waz_site t on t.sit_name=e.URL and t.sit_under_control=1 
    left join (select p.supannCodeEntite as codePArent, s.supannCodeEntite, s.commentaire, s.supannTypeEntite, p.eduOrgLegalName as parent, s.eduOrgLegalName as structure from StructuresLDAP s left join StructuresLDAP p on s.codeParent=p.supannCodeEntite) pp on pp.supannCodeEntite=e.code 
    where url is not null order by e.URL"

    #query: "Select pp.parent, pp.supannTypeEntite, pp.structure, w.UrlReference, concat(t.sit_engine,'-', t.sit_engine_version) as techno, t.sit_server_admin as ServerAdmin, t.sit_acces_url as Alias, e.Statut, e.Directeur, pp.supannCodeEntite, e.Commentaire, e.serveur
#from Sites w 
#left join (select p.supannCodeEntite as codePArent, s.supannCodeEntite, s.commentaire, s.supannTypeEntite, p.eduOrgLegalName as parent, s.eduOrgLegalName as structure from StructuresLDAP s join StructuresLDAP p on s.codeParent=p.supannCodeEntite) pp on pp.supannCodeEntite=w.Structure 
    #left join tx_waz_site t on w.UrlReference=t.sit_name
    #left join Excel e on e.code=w.Structure
    #where pp.supannTypeEntite in ('COMP ENS', 'DIR', 'ED', 'FR', 'LABO') or w.UrlReference is not null and (t.sit_under_control = 1 or t.sit_under_control is null)"
)


Ext.create('Ext.grid.Panel'
  title: 'Suivi sites web UL'
  store: Ext.data.StoreManager.lookup('magasinSite')
  viewConfig: {
      enableTextSelection: true
    }
  features: [
    ftype: 'grouping'
  ]
  columns: [
    text: 'Parent'
    flex: 1
    dataIndex: 'parent'
    hidden: true
  ,
    text: 'TypeStructure'
    dataIndex: 'supannTypeEntite'
    width: 70
  ,
    text: 'Nom structure (composante/labo)'
    flex: 1
    dataIndex: 'structure'
    #hidden: true
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
      if value != null and value.indexOf(" ") < 0
        console.log('value='+value+" -- index "+value.indexOf(" "))
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
  ]
  renderTo: Ext.getBody()
)
