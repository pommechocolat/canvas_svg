Ext.define 'SSudl.model.ModelSuiviSites',
  extend: 'Ext.data.Model'
  fields: ['parent', 'supannTypeEntite', 'structure', 'Directeur', 'Statut', 'URL', 'techno', 'ServerAdmin', 'Alias', 'Commentaire', 'serveur', 'supannCodeEntite', 'Aspect_UL', 'urlEx', 'Techno', 'crdate', 'realisation', 'id_site', 'aliasDomaines']
  proxy:
    type: "jsonp"
    api:
      read: 'http://localhost/~metzger9/canvas_svg/php/query.php'
      update: 'http://localhost/~metzger9/canvas_svg/php/update.php'
      create: 'http://localhost/~metzger9/canvas_svg/php/create.php'
    reader:
      type: 'json'
      root: 'results'
    writer:
      type: 'json'
      root: 'results'
  