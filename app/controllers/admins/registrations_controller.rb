class Admins::RegistrationsController < Devise::RegistrationsController
    def new
        p "new called"
        super
    end

    def create
        params[:user][:type] = 'Fan'
        #p @user
        p "create called"
        super
    end

    def destroy
        p "destroy called"
    end
end