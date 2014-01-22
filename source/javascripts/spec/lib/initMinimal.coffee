window.onload = ->
  jasmine.getEnv().addReporter(new jasmine.HtmlReporter())
  jasmine.getEnv().execute()