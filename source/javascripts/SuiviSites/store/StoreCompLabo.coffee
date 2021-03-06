Ext.define 'SSudl.store.StoreCompLabo',
  extend: 'Ext.data.Store'
  model: 'SSudl.model.ModelSuiviSites'
  groupField: 'supannTypeEntite'
  autoLoad: true
  proxy:
    type: "jsonp"
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
      query: "Select pp.parent, pp.supannTypeEntite, pp.udlShortLabel, pp.structure, e.directeur, e.adjoint, concat(e.Statut,' - ', e.Aspect_UL) as Statut, e.URL, concat(t.sit_engine,'-', t.sit_engine_version) as techno, t.sit_server_admin as ServerAdmin, t.sit_acces_url as Alias, e.Commentaire, ip.Localisation as serveur, pp.supannCodeEntite, e.urlEx, e.Techno, FROM_UNIXTIME(t.crdate, '%Y-%m') as crdate, e.realisation, e.id_site, group_concat(d.Nom order by d.Nom separator ', ') as aliasDomaines from sites_Excel e left join sites_Domaines ipd on ipd.Nom = e.URL left join sites_IP ip on ipd.IP=ip.IPv4 left join tx_waz_site t on t.sit_name=e.URL and t.sit_under_control=1 left join (select p.supannCodeEntite as codePArent, s.udlShortLabel, s.supannCodeEntite, s.commentaire, s.supannTypeEntite, p.eduOrgLegalName as parent, s.eduOrgLegalName as structure from sites_StructuresLDAP s left join sites_StructuresLDAP p on s.codeParent=p.supannCodeEntite) pp on pp.supannCodeEntite=e.code left join sites_Domaines d on d.Site=e.id_site and d.Nom not in (select ee.URL from sites_Excel ee join sites_Domaines dd on ee.URL=dd.Nom) where pp.supannTypeEntite in ('LABO', 'COMP ENS', 'FR', 'DIR') group by e.id_site order by e.URL"
  init: ->
    console.log('création du Store CompLabo')
      