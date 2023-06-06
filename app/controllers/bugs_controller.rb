class BugsController < ApplicationController
  
  def create
    @bug = current_tester.bugs.build(bug_params)
    if(@bug.save)
      flash[:succes] = "Bug added!"
    else 
      flash[:error] = "There was an error!"
    end
    redirect_to root_path
  end

  def edit
    @bug = Bug.find(params[:id])
  end

  def update
    @bug = Bug.find(params[:id])
    if @bug.update(bug_params)
      flash[:notice] = "Bug updated"
    else
      flash[:notice] = "Something went wrong"
    end
    redirect_to root_path
  end

  def update_status
    @bug = Bug.find(params[:bug][:id])
    if @bug.status == "unsolved"
      @bug.update(developer_id: current_developer.id)
    end
    if @bug.update(bug_params)
      flash[:notice] = "Bug updated"
    else
      flash[:notice] = "Something went wrong"
    end
    redirect_to root_path
  end

  def destroy
    @bug = Bug.find(params[:id])
    @bug.destroy
    flash[:success] = "Bug deleted"
    redirect_to root_url
  end

  private
    def bug_params
      params.require(:bug).permit(:id,:title, :status, :description,:developer_id)
    end

end
