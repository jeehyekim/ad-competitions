namespace :update do

  desc "Update to admin for admin email"
  task :admin_fix => :environment do
    User.where(:email => "art.design.competitions@gmail.com").each do |e|
      e.update_attributes(:admin => true)
    end
  end

end