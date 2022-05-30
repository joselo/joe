defmodule Joe.AccountTest do
  use Joe.DataCase

  alias Joe.{
    Account,
    User
  }

  test "create_account" do
    attrs = %{"name" => "Edu"}

    assert {:ok,  %User{name: "Edu"}} = Account.create_user(attrs)
  end
end
