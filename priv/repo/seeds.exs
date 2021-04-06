# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Rockelivery.Repo.insert!(%Rockelivery.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Rockelivery.{Item, Order, Repo, User}

user = %User{
  age: 27,
  address: "Rua das bananeiras, 15",
  cep: "12345678",
  cpf: "98765432102",
  email: "rafaelb@banana.com",
  password: "123456",
  name: "Rafael"
}

%User{id: user_id} = Repo.insert!(user)

item1 = %Item{
  category: :food,
  description: "banana cozida",
  price: Decimal.new("10.00"),
  photo: "/priv/photos/banana_cozida.jpg"
}

item2 = %Item{
  category: :food,
  description: "banana frita",
  price: Decimal.new("15.00"),
  photo: "/priv/photos/banana_frita.jpg"
}

%Item{id: item1_id} = Repo.insert!(item1)
%Item{id: item2_id} = Repo.insert!(item2)

order = %Order{
  user_id: user_id,
  items: [item1, item1, item2],
  address: "Rua das bananeiras, 15",
  comments: "sem canela na banana",
  payment_method: :money
}

Repo.insert!(order)
