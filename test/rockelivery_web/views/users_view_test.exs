defmodule RockeliveryWeb.UsersViewTest do
  use RockeliveryWeb.ConnCase, async: true

  import Phoenix.View
  import Rockelivery.Factory

  alias RockeliveryWeb.UsersView

  test "renders create.json" do
    user = build(:user)

    response = render(UsersView, "create.json", user: user)

    assert %{
             message: "User created!",
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
