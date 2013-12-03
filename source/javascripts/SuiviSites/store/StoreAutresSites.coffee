Ext.define 'SSudl.store.StoreAutresSites',
  extend: 'Ext.data.Store'
  fields: ['parent', 'supannTypeEntite', 'structure', 'Directeur', 'Statut', 'URL', 'techno', 'ServerAdmin', 'Alias', 'Commentaire', 'serveur', 'supannCodeEntite', 'Aspect_UL', 'urlEx', 'Techno', 'crdate', 'realisation', 'id_site']
  groupField: 'supannTypeEntite'
  autoLoad: true
  proxy:
    type: "jsonp"
    #url: "http://localhost/~metzger9/canvas_svg/php/query.php"
    api:
      read: 'http://localhost/~metzger9/canvas_svg/php/query.php'
      update: 'http://localhost/~metzger9/canvas_svg/php/update.php'
    reader:
      type: 'json'
      root: 'results'
    writer:
      type: 'json'
      root: 'results'
    extraParams:
      query: "Select pp.parent, pp.supannTypeEntite, pp.structure, e.Directeur, e.Statut, e.URL, concat(t.sit_engine,'-', t.sit_engine_version) as techno, t.sit_server_admin as ServerAdmin, t.sit_acces_url as Alias, e.Commentaire, e.serveur, pp.supannCodeEntite, e.Aspect_UL, e.urlEx, e.Techno, FROM_UNIXTIME(t.crdate, '%Y-%m') as crdate, e.realisation, id_site from sites_Excel e left join tx_waz_site t on t.sit_name=e.URL and t.sit_under_control=1 left join (select p.supannCodeEntite as codePArent, s.supannCodeEntite, s.commentaire, s.supannTypeEntite, p.eduOrgLegalName as parent, s.eduOrgLegalName as structure from sites_StructuresLDAP s left join sites_StructuresLDAP p on s.codeParent=p.supannCodeEntite) pp on pp.supannCodeEntite=e.code where pp.supannTypeEntite not in ('LABO', 'COMP ENS', 'FR', 'DIR') or pp.supannTypeEntite is null order by e.URL"
