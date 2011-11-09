class WithOrWithoutWWW
  
  def initialize(app, with=true)
    @app, @with = app, with
  end

  def call(env)
    req = Rack::Request.new(env)
    if !@with && req.host[/^www./]
      [301, {"Location" => req.url.sub("//www.", "//")}, self]
    elsif @with && !req.host[/^www./]
      [301, {"Location" => req.url.sub("//", "//www.")}, self]
    else
      @app.call(env)
    end
  end
  
  def each(&block); end
  
end