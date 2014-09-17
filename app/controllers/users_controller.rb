class UsersController < ApplicationController
  layout 'application'

  def index
    @users=User.all
  end

  def new
    @user=User.new
  end

  def create
    User.create(params[:user])
    redirect_to(:action => 'index')
  end

  def edit
    @user=User.find(params[:id])
  end

  def update
    user=User.find(params[:id])
    user.update_attributes(params[:user])
    user.save
    redirect_to(:action => 'index')
  end

  def delete
    @user=User.find(params[:id])
  end

  def destroy
    user=User.find(params[:id])
    user.destroy
    redirect_to(:action => 'index')
  end
end
