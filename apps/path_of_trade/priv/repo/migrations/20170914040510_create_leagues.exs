defmodule PathOfTrade.Repo.Migrations.CreateLeagues do
  use Ecto.Migration

  def change do

    create table(:next_change_id, primary_key: false) do
      add :next_change_id, :char, null: false, primary_key: true, size: 24
      add :league_offset, :smallint, null: false, primary_key: true
    end

    create table(:league, primary_key: false) do
      add :id, :text, null: false, primary_key: true
      add :description, :text, null: false
      add :registerAt, :utc_datetime
      add :event, :boolean, null: false
      add :url, :text, null: false
      add :startAt, :utc_datetime, null: false
      add :endAt, :utc_datetime, null: false
    end

    create table(:rule, primary_key: false) do
      add :id, :integer, null: false, primary_key: true
      add :name, :text, null: false
      add :description, :text, null: false
    end

    create table(:league_rule) do
      add :league_id, references(:league, on_delete: :delete_all, type: :text), null: false
      add :rule_id, references(:rule, on_delete: :delete_all), null: false
    end

  end
end
