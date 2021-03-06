module Doorkeeper
  module Orm
    module Sequel
      def self.initialize_models!
        require 'doorkeeper/orm/sequel/models/concerns/sequel_compat'
        require 'doorkeeper/orm/sequel/access_grant'
        require 'doorkeeper/orm/sequel/access_token'
        require 'doorkeeper/orm/sequel/application'
      end

      def self.initialize_application_owner!
        require 'doorkeeper/orm/sequel/models/concerns/ownership'

        Doorkeeper::Application.send :include, Doorkeeper::Orm::Sequel::Ownership
      end
    end
  end
end
