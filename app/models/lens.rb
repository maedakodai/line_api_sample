class Lens < ApplicationRecord
  belongs_to :user

  # def self.check_and_notify
  #   # 今日が開封日からちょうど2週間後のレンズを検索
  #   lenses_to_notify = Lens.where(opening_date: 2.weeks.ago.to_date)

  #   lenses_to_notify.each do |lens|
  #     user = lens.user # userはLINEのユーザーIDを持aっていると仮定
  #     message = "コンタクト交換時期です"
  #     LineNotifier.send_line_notification(user.line_user_id, message)
  #   end
  # end

  def self.send_test_notification
    # ここでは実験的に固定のLINEユーザーIDを使用します
    test_user_line_id = ""
    message = "コンタクト交換時期です"
    LineNotifier.send_line_notification(test_user_line_id, message)
  end
end
