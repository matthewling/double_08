module Middleware
  class Silly

    def initialize(app)
      @app = app
    end

    def call(env)
      p ' xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx '
      p @app
      p ' xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx '

      p ' yyyyyyyyyyyyyyyyyyyyyyyyyyyyyy '
      puts caller
      p ' yyyyyyyyyyyyyyyyyyyyyyyyyyyyyy '

      @app.call(env)
    end
  end
end
