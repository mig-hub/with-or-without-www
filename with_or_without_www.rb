class WithOrWithoutWWW
  
  def initialize(app, with=true, excluded=['localhost'])
    @app, @with, @excluded = app, with, excluded
  end

  def call(env)
    req = Rack::Request.new(env)
    return @app.call(env) if @excluded.include?(req.host)
    if !@with && req.host[/^www./]
      [301, {"Location" => req.url.sub("//www.", "//"), 'Content-Type'=>'text/html'}, self]
    elsif @with && !req.host[/^www./]
      [301, {"Location" => req.url.sub("//", "//www."), 'Content-Type'=>'text/html'}, self]
    else
      @app.call(env)
    end
  end
  
  def each(&block); end
  
end