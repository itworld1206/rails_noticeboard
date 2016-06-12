class HomeController < ApplicationController
  def index
    
  end
  
  def write
    # post = Post.new
    # post.title   = params[:title]
    # post.content = params[:content]
    # post.save
    
    post = Post.new(title: params[:title], content: params[:content])
    uploader = MachineUploader.new
    uploader.store!(params[:pic])
    post.image_url = uploader.url
    
    if post.save
      redirect_to '/list'
    else 
      render :text => post.errors.messages[:title].first
    end
  end
  
  def list
    @posts = Post.all.order("id desc")
  end
  
  def reply_write
    reply = Reply.new
    reply.content = params[:content]
    reply.post_id = params[:id_of_post]
    reply.save
    
    redirect_to '/list'
  end
  
  def destroy
    one_post = Post.find(params[:post_id])
    one_post.destroy
    
    redirect_to '/list'
  end
  
  def update_view
    @one_post = Post.find(params[:post_id])
  end
  
  def update
    one_post = Post.find(params[:post_id])
    one_post.title   = params[:title]
    one_post.content = params[:content]
    one_post.save
    
    redirect_to '/list'
  end
end
