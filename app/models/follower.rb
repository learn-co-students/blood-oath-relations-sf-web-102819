class Follower

    attr_reader :name, :age
    attr_accessor :life_motto

    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def self.all
        @@all
    end

    def cults
        follower_array = BloodOath.all.select {|oath| oath.follower == self}
        follower_array.map {|follower| follower.cult}
    end

    def join_cult(cult, initiation_date)
        BloodOath.new(self, cult, initiation_date)
    end

    def self.of_a_certain_age(age)
        # self.all.select { |follower| follower.age >= age }

        self.all.map do |follower|
            if follower.age >= age
                follower
            end
        end



    end

end