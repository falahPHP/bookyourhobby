class RegistrationsController <Devise::RegistrationsController
    protected
    def update_resource(resource,parms)
        resource.update_without_password(parms)
       
    end
end