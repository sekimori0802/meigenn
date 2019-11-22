class GreatsController < ApplicationController
  def index
    @greats = Great.all.order("id DESC").page(params[:page]).per(3)
    @jobs = Great.all.where(tag: '仕事').length
    @loves = Great.all.where(tag: '恋愛').length
    @lifes = Great.all.where(tag: '人生').length
    @sports = Great.all.where(tag: 'スポーツ').length
    @historys = Great.all.where(tag: '歴史').length
    @animes = Great.all.where(tag: 'アニメ').length
    @dreams = Great.all.where(tag: '夢').length
    @like = Like.where(great_id: params[:id])
    @all_ranks = Great.find(Like.group(:great_id).order('count(great_id)desc').limit(3).pluck(:great_id))
    # def like_user(user_id)  
    #   likes.find_by(user_id: user_id)
    # end
  end
  def new
    @greats = Great.new
  end
  
  def create
    @greats = Great.new(create_params)
    if @greats.image.blank? or @greats.name.blank? or @greats.content.blank?
      redirect_to action: :new
    else 
      @greats.save
      redirect_to action: :index
    end
  end

  def show
    @greats = Great.find(params[:id])
    @jobs = Great.all.where(tag: '仕事').length
    @loves = Great.all.where(tag: '恋愛').length
    @lifes = Great.all.where(tag: '人生').length
    @sports = Great.all.where(tag: 'スポーツ').length
    @historys = Great.all.where(tag: '歴史').length
    @animes = Great.all.where(tag: 'アニメ').length
    @dreams = Great.all.where(tag: '夢').length
    @like = Like.where(great_id: params[:id])
    @all_ranks = Great.find(Like.group(:great_id).order('count(great_id)desc').limit(3).pluck(:great_id))
  end

  def edit
    @greats = Great.find(params[:id])
  end
  def update
    @greats = Great.find(params[:id])
    if @greats.image.blank? or @greats.name.blank? or @greats.content.blank?
      redirect_to action: :new
    else 
      @greats.update(update_params)
      redirect_to action: :index
    end
  end

  def destroy
   @greats = Great.find(params[:id])
    if @greats.destroy 
      redirect_to greats_path
    end
  end

  def job
    @greats = Great.all.where(tag: '仕事').order("id DESC").page(params[:page]).per(3)
    @jobs = Great.all.where(tag: '仕事').length
    @loves = Great.all.where(tag: '恋愛').length
    @lifes = Great.all.where(tag: '人生').length
    @sports = Great.all.where(tag: 'スポーツ').length
    @historys = Great.all.where(tag: '歴史').length
    @animes = Great.all.where(tag: 'アニメ').length
    @dreams = Great.all.where(tag: '夢').length
    @like = Like.where(great_id: params[:id])
    @all_ranks = Great.find(Like.group(:great_id).order('count(great_id)desc').limit(3).pluck(:great_id))
  end

  def love
    @greats = Great.all.where(tag: '恋愛').order("id DESC").page(params[:page]).per(3)
    @jobs = Great.all.where(tag: '仕事').length
    @loves = Great.all.where(tag: '恋愛').length
    @lifes = Great.all.where(tag: '人生').length
    @sports = Great.all.where(tag: 'スポーツ').length
    @historys = Great.all.where(tag: '歴史').length
    @animes = Great.all.where(tag: 'アニメ').length
    @dreams = Great.all.where(tag: '夢').length
    @like = Like.where(great_id: params[:id])
    @all_ranks = Great.find(Like.group(:great_id).order('count(great_id)desc').limit(3).pluck(:great_id))
  end

  def dream
    @greats = Great.all.where(tag: '夢').order("id DESC").page(params[:page]).per(3)
    @jobs = Great.all.where(tag: '仕事').length
    @loves = Great.all.where(tag: '恋愛').length
    @lifes = Great.all.where(tag: '人生').length
    @sports = Great.all.where(tag: 'スポーツ').length
    @historys = Great.all.where(tag: '歴史').length
    @animes = Great.all.where(tag: 'アニメ').length
    @dreams = Great.all.where(tag: '夢').length
    @like = Like.where(great_id: params[:id])
    @all_ranks = Great.find(Like.group(:great_id).order('count(great_id)desc').limit(3).pluck(:great_id))
  end

  def life
    @greats = Great.all.where(tag: '人生').order("id DESC").page(params[:page]).per(3)
    @jobs = Great.all.where(tag: '仕事').length
    @loves = Great.all.where(tag: '恋愛').length
    @lifes = Great.all.where(tag: '人生').length
    @sports = Great.all.where(tag: 'スポーツ').length
    @historys = Great.all.where(tag: '歴史').length
    @animes = Great.all.where(tag: 'アニメ').length
    @dreams = Great.all.where(tag: '夢').length
    @like = Like.where(great_id: params[:id])
    @all_ranks = Great.find(Like.group(:great_id).order('count(great_id)desc').limit(3).pluck(:great_id))
  end

  def sports
    @greats = Great.all.where(tag: 'スポーツ').order("id DESC").page(params[:page]).per(3)
    @jobs = Great.all.where(tag: '仕事').length
    @loves = Great.all.where(tag: '恋愛').length
    @lifes = Great.all.where(tag: '人生').length
    @sports = Great.all.where(tag: 'スポーツ').length
    @historys = Great.all.where(tag: '歴史').length
    @animes = Great.all.where(tag: 'アニメ').length
    @dreams = Great.all.where(tag: '夢').length
    @like = Like.where(great_id: params[:id])
    @all_ranks = Great.find(Like.group(:great_id).order('count(great_id)desc').limit(3).pluck(:great_id))
  end

  def history
    @greats = Great.all.where(tag: '歴史').order("id DESC").page(params[:page]).per(3)
    @jobs = Great.all.where(tag: '仕事').length
    @loves = Great.all.where(tag: '恋愛').length
    @lifes = Great.all.where(tag: '人生').length
    @sports = Great.all.where(tag: 'スポーツ').length
    @historys = Great.all.where(tag: '歴史').length
    @animes = Great.all.where(tag: 'アニメ').length
    @dreams = Great.all.where(tag: '夢').length
    @like = Like.where(great_id: params[:id])
    @all_ranks = Great.find(Like.group(:great_id).order('count(great_id)desc').limit(3).pluck(:great_id))
  end
  
  def anime
    @greats = Great.all.where(tag: 'アニメ').order("id DESC").page(params[:page]).per(3)
    @jobs = Great.all.where(tag: '仕事').length
    @loves = Great.all.where(tag: '恋愛').length
    @lifes = Great.all.where(tag: '人生').length
    @sports = Great.all.where(tag: 'スポーツ').length
    @historys = Great.all.where(tag: '歴史').length
    @animes = Great.all.where(tag: 'アニメ').length
    @dreams = Great.all.where(tag: '夢').length
    @like = Like.where(great_id: params[:id])
    @all_ranks = Great.find(Like.group(:great_id).order('count(great_id)desc').limit(3).pluck(:great_id))
  end

  def serach
    redirect_to greats_path if params[:keyword].blank?
    @greats = Great.where('name LIKE(?)', "%#{params[:keyword]}%").order("id DESC").page(params[:page]).per(3)
    @jobs = Great.all.where(tag: '仕事').length
    @loves = Great.all.where(tag: '恋愛').length
    @lifes = Great.all.where(tag: '人生').length
    @sports = Great.all.where(tag: 'スポーツ').length
    @historys = Great.all.where(tag: '歴史').length
    @animes = Great.all.where(tag: 'アニメ').length
    @dreams = Great.all.where(tag: '夢').length
    @like = Like.where(great_id: params[:id])
    @all_ranks = Great.find(Like.group(:great_id).order('count(great_id)desc').limit(3).pluck(:great_id))
  end
  
  def form
    @great = Great.find(params[:id])
    @user = User.find_by(id: @great.user_id)
    @greats = Great.where(user_id:@user.id).order("id DESC")
    # @form = @user.user
    @counts = @greats.length
    @like = Like.where(great_id: params[:id])
  end
  private
  def create_params
    params.require(:great).permit(:name, :image, :content, :content2, :content3,:explanation,:tag).merge(user_id: current_user.id)
  end

  def update_params
    params.require(:great).permit(:name, :image, :content, :content2, :content3,:explanation,:tag)
  end
end
