class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :user_name
      t.text :introduce
      t.string :email

      # ログイン情報など
      t.string :crypted_password
      t.integer   :login_count, default: 0, null: false
      t.integer   :failed_login_count, default: 0, null: false

      t.timestamps
    end
  end
end
