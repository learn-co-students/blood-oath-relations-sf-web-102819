class BloodOath

    attr_accessor :follower, :cult, :initiation_date

    @@all = []

    def initialize(follower, cult, initiation_date = "2019-11-04")
        @follower = follower
        @cult = cult
        @initiation_date = initiation_date
        @@all << self
    end

    def self.all
        @@all
    end

end