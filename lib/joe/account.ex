defmodule Joe.Account do
  alias Joe.{
    User,
    Repo
  }

  # import Ecto.Query, warn: false

  def create_user(attrs) do
    %User{}
    |> User.changeset(attrs)
    |> Repo.insert()
  end

  def list_users do
    Repo.all(User)
  end
end
