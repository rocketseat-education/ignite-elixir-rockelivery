defmodule RockeliveryWeb.UsersViewTest do
  use RockeliveryWeb.ConnCase, async: true

  import Phoenix.View
  import Rockelivery.Factory

  alias RockeliveryWeb.UsersView

  test "renders create.json" do
    user = build(:user)
    token = "xpto1234"

    response = render(UsersView, "create.json", token: token, user: user)

    assert %{
             message: "User created!",
             token: "xpto1234",
             user: %Rockelivery.User{
               address: "Rua das bananeiras, 15",
               age: 27,
               cep: "12345678",
               cpf: "12345678901",
               email: "rafael@banana.com",
               id: "da804976-2ca9-43b0-a91e-74d7e916f142",
               inserted_at: nil,
               name: "Rafael",
               password: "123456",
               password_hash: nil,
               updated_at: nil
             }
           } = response
  end
end
