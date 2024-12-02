class AddUserIdToPosts < ActiveRecord::Migration[7.0]
  def change
    add_reference :posts, :user, null: true, foreign_key: true

    # 既存のデータに対して user_id を設定
    reversible do |dir|
      dir.up do
        # ここでデフォルトのユーザーIDを設定する（例えば管理者ユーザーのID）
        # もしくは各ユーザーIDを手動で設定することも可能です
        default_user = User.first
        Post.update_all(user_id: default_user.id) if default_user.present?
      end
    end

    change_column_null :posts, :user_id, false
  end
end


