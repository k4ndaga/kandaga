user = UserAdmin.find_or_create_by(email: 'admin@kandaga.com')
user.add_role :admin if user.roles.blank?
