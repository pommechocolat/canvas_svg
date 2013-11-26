Ext.define 'SSudl.view.TabPanel',
  extend: 'Ext.tab.Panel'
  alias: 'widget.tab2'
    
  items: [
    title: 'Composantes et Laboratoires'
    xtype: 'listeCompLabo'
  ,
    title: 'Autres sites'
    xtype: 'listeAutres'
  ]
