class ListsController < ApplicationController
    
    # ActionController invalidauthenticitytokenエラーのための記述
    protect_from_forgery
    
    
  def new
    @list = List.new
  end

  def create
    # 引数のlist_paramsはストロングパラメータのメソッド
    list = List.new(list_params)
    
    list.save
    
    redirect_to list_path(list.id)
  end

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    list = List.find(params[:id])
    list.update(list_params)
    redirect_to list_path(list.id)
  end
  
  def destroy
    list = List.find(params[:id])
    list.destroy
    redirect_to "/lists"
  end
  
  private
    
  # ストロングパラメータ
  # ストロングパラメータは受け取る値に制限をかけている
  def list_params
    params.require(:list).permit(:title, :body, :image)
  end
end
