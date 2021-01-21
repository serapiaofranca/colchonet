# encoding: utf-8
namespace :app do
    desc "Encrypt all passwords not processors in databank"
    task password_migration: :environment do
        unless User.attribute_names.include? "password"
            puts "Passwords exist and migrated"
            return
        end

        User.find_each do |user|
            puts "migration user ##{user.id} #{user.full_name}"
            unencripted_password = user.attributes["password"]

            user.password = unencripted_password
            user.password_confirmation = unencripted_password
            user.save!
        end
    end
end