defmodule Rockelivery.Factory do
  use ExMachina.Ecto, repo: Rockelivery.Repo

  alias Rockelivery.User

  def user_params_factory do
    %{
      age: 27,
      address: "Rua das bananeiras, 15",
      cep: "12345678",
      cpf: "12345678901",
      email: "rafael@banana.com",
      password: "123456",
      name: "Rafael"
    }
  end

  def user_factory do
    %User{
      age: 27,
      address: "Rua das bananeiras, 15",
      cep: "12345678",
      cpf: "12345678901",
      email: "rafael@banana.com",
      password: "123456",
      name: "Rafael",
      id: "da804976-2ca9-43b0-a91e-74d7e916f142"
    }
  end
end
