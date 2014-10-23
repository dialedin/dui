class TestcellCell < ::Cell::Base

  def show
    render
  end

  def show2
    @controller_name = params[:controller]
    @action_name = params[:action]
    render
  end

end
