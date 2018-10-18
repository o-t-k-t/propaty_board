module PropatiesHelper
  def submit_button_name
    case action_name
    when 'new'
      '登録する'
    when 'edit', 'update'
      '更新する'
    else
      raise "called by unexpected action #{action_name}"
    end
  end
end
