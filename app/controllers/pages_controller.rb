class PagesController < ApplicationController
  def home
    if tester_signed_in?
      @bugs = current_tester.bugs.order(status: :asc, created_at: :desc)
    end
    if developer_signed_in?
      @bugs = Bug.all.order(status: :asc, created_at: :desc)
    end
  end

  def test
  end
  
  def bug_form
    @tester = current_tester
  end
end
