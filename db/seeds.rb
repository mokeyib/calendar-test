if Rails.env.development?
  ENV['DEFAULT_PASSWORD'] ||= 'password'
else
  raise 'Need to set ENV var "DEFAULT_PASSWORD"' if ENV['DEFAULT_PASSWORD'].nil?
end

User.destroy_all

ingrid_biery = User.create!(name: 'Ingrid Biery', email: 'ingridbiery@gmail.com', password: ENV['DEFAULT_PASSWORD'])
cuco_help = User.create!(name: 'CUCO', email: 'cucohelp@gmail.com', password: ENV['DEFAULT_PASSWORD'])
