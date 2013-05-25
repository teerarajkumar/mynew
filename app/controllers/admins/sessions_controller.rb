class Admins::SessionsController < Devise::SessionsController
    def new
        p "new called"
        super
    end

    def create
        p "create called"
        super
    end

    def destroy
        p "destroy called"
        super
    end
end