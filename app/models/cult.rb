class Cult

    attr_reader :name, :location, :founding_year, :slogan

    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end

    def self.all
        @@all
    end

    def recruit_follower(follower, initiation_date)
        BloodOath.new(follower, self, initiation_date)
    end

    def followers
        cult_array = BloodOath.all.select {|oath| oath.cult == self}
        cult_array.map {|cult| cult.follower}
    end

    def cult_population
        self.followers.length
    end

    def self.find_by_name(name)
        self.all.select {|cult| cult.name == name}
    end

    def self.find_by_location(location)
        Cult.all.select {|cult| cult.location == location}
    end

    def self.find_by_founding_year(num)
        Cult.all.select {|cult| cult.founding_year == num}
    end

end