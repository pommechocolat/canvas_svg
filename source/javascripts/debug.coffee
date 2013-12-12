@moduleDebug = {}
moduleDebug.debug = (obj, seen=null)->
  #console.log("Debug de "+obj)
  printProps = (obj)->
    result = []
    for prop of obj
      type = typeof obj[prop]
      if type=='object'
        result.push(prop.toString()+": object")
      else
        #console.log(prop+": "+moduleDebug.debug(obj[prop], seen))
        result.push(prop.toString()+": "+moduleDebug.debug(obj[prop], seen))
    return result.join('\n')
#    #Edge case to handle is [1,2,3][9] = 'foo'
#    #Need to factor the conditional out to check if the prop is a number less
#    #than the array's length
#    return ((if ! /^\d+$/.test prop then prop + ": " + moduleDebug.debug(obj[prop], seen) else '') for prop of obj).join(', ')

  seen = seen or []
  if obj in seen
    return '[Circular]'
  seen.push obj
  switch typeof obj
    when 'boolean'
      return obj.toString()
    when 'number'
      return obj.toString()
    when 'string'
      return obj.toString()
    when 'undefined'
      return 'undefined'
    when 'function'
      #console.log("c'est une fonction: "+obj)
      source = obj.toString()
      return source.slice(0, source.indexOf('{'))+'{...}'
    when 'object'
      #console.log("C'est un objet "+obj.toString())
      if Object.prototype.toString.call(obj) == Object.prototype.toString.call([])
        console.log("protopype = "+obj)
        return '['+ ((moduleDebug.debug(item, seen) for item in obj).join(', ')) + ']' + printProps obj
      else
        #console.log("C'est un objet ")
        return (obj or 'null').toString() + printProps obj
    else
      console.log("type non traité : "+typeof obj)
      
moduleDebug.introspection = (obj) ->
  text = 'type: '+typeof obj+' - '
  for props, value of obj
    text=text+props+" : "+value+' ; '
  text
