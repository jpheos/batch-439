user = User.create(email: 'chuck@norris.com', password: 'azertyuiop')
Restaurant.create(name: 'Mangia Bueno', address: 'Rue des capucins', user: user)
Restaurant.create(name: 'Bomp', address: 'Rue des capucins', user: user)
