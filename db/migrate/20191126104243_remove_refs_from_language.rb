class RemoveRefsFromLanguage < ActiveRecord::Migration[5.2]
  def change
    remove_reference :languages, :user, index: true
    remove_reference :languages, :language, index: true
  end
end
