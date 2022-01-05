class Role < ActiveRecord::Base
    has_many :auditions
    
    def actors
        self.auditions.pluck(:actor)

    end

    def locations
        self.auditions.pluck(:location)
    end

    def lead
        has_lead = self.auditions.find do |audition|
            audition.hired
        end

        has_lead ? has_lead : 'no actor has been hired for this role'
    end

    def understudy
        has_understudy = self.auditions.filter do |audition|
            audition.hired
        end

        has_understudy[1] ?  has_understudy[1]: 'no actor has been hired for understudy for this role'
    end


  
end