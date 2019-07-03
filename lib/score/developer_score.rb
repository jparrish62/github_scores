module Score
  class DeveloperScore

    def self.call(login)
      new(login).call
    end

    def initialize(login)
      @login = login
    end

    def call
      set_developer_score
    end

    def set_developer_score
      Developer.set_developer_data(developer)
    end

    def developer
      Developer.find_developer(login)
    end

    private
    attr_reader :login
  end
end

