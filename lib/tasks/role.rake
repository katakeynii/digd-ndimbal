namespace :role do
  desc "TODO"
  task seed: :environment do

    roles = ["ADMIN", "AGENT", "SUPERVISEUR", "CONTRACTUEL", "CONTROLLEUR", "MANAGEUR", "COMMANDANT", "PRESIDENT"]
    roles.each do |role|
      rl =  Role.create! name: role
      UtilisateurRole.create! role: rl, utilisateur: Utilisateur.all.sample
      puts "... #{role} crée"
    end

  end

end
