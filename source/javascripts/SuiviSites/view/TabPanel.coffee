Ext.define 'SSudl.view.TabPanel',
  extend: 'Ext.tab.Panel'
  alias: 'widget.tab2'
    
  items: [
    title: 'Composantes et Laboratoires'
    xtype: 'listeCompLabo'
  ,
    title: 'Autres sites'
    xtype: 'listeAutres'
  ,
    title: 'Demandes site'
    xtype : "component"
    autoEl:
      frameborder: 0
      tag: "iframe"
      src: "http://num-app1.univ-lorraine.fr/DemandeSite/admin"
  ,
    title: 'Web Admin Zone (WAZ)'
    xtype : "component"
    autoEl:
      frameborder: 0
      tag: "iframe"
      src: "https://websites.univ-lorraine.fr/index.php?id=24"
  , 
    title: 'Ajouter site'
    xtype: 'addSite'
  ]
