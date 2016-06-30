
group = Group.create(name: 'test', capacity: 5)
group.users << User.create(name: 'hoge')
group.users << User.create(name: 'foo')
group.users << User.create(name: 'bar')
group.users << User.create(name: 'piyo')
group.users << User.create(name: 'fuga')

