class User < ApplicationRecord

    EMAIL_REGEXP = /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/

    validates_presence_of :email, :full_name, :location #, :password -> bcypty
    
    #validates_confirmation_of :password
    has_secure_password

    validate :email_format

    private
    #validates_format_of :email, with: EMAIL_REGEXP
    def email_format
        errors.add(:email, :invalid) unless email.match(EMAIL_REGEXP)
    end
end
