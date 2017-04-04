module LoreIpsum
  class App < Padrino::Application
    use ConnectionPoolManagement
    register Padrino::Mailer
    register Padrino::Helpers
    enable :sessions

    register Padrino::Cache
    enable :caching
    set :cache, Padrino::Cache.new(:File, :dir => Padrino.root('tmp', app_name.to_s, 'cache'))
    error 404 do
      "Use a navigator -))"
    end
    error 500 do
      "Internal server error"
    end
  end
end
