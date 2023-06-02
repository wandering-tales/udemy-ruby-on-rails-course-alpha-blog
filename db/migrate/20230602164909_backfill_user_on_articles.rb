class BackfillUserOnArticles < ActiveRecord::Migration[7.0]
  def up
    Article.update_all(user_id: User.create(username: 'michele.cardone', email: 'michele.cardone.82@proton.me').id)
  end

  def down
    Article.update_all(user_id: nil)
  end
end
