Ext.define('SSudl.store.storeRegions'
  extend: 'Ext.data.Store'
  fields: ['parent', 'supannTypeEntite', 'structure', 'Directeur', 'Statut', 'URL', 'techno', 'ServerAdmin', 'Alias', 'Commentaire', 'serveur', 'supannCodeEntite', 'Aspect_UL', 'urlEx', 'Techno', 'crdate', 'realisation']
  autoLoad: true
  proxy:
    type: "jsonp"
    url: "http://localhost/~metzger9/extJS/index.php"
    reader:
      type: 'json'
      root: 'results'
    extraParams:
      query: "Select pp.parent, pp.supannTypeEntite, pp.structure, e.Directeur, e.Statut, e.URL, concat(t.sit_engine,'-', t.sit_engine_version) as techno, t.sit_server_admin as ServerAdmin, t.sit_acces_url as Alias, e.Commentaire, e.serveur, pp.supannCodeEntite, e.Aspect_UL, e.urlEx, e.Techno,  FROM_UNIXTIME(t.crdate, '%m/%y') as crdate 
      from excel e 
      left join tx_waz_site t on t.sit_name=e.url and t.sit_under_control=1 
      left join (select p.supannCodeEntite as codePArent, s.supannCodeEntite, s.commentaire, s.supannTypeEntite, p.eduOrgLegalName as parent, s.eduOrgLegalName as structure from StructuresLDAP s join StructuresLDAP p on s.codeParent=p.supannCodeEntite) pp on pp.supannCodeEntite=e.code 
      where url is not null order by e.URL"
      
)
