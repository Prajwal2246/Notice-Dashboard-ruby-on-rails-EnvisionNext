class NoticesController < ApplicationController
  before_action :set_notice, only: [:show, :destroy]

  # GET /notices
  def index
    @notices = Notice.ordered

    if params[:category].present?
      @notices = @notices.where(category: params[:category])
    end

    # Ensure pinned notices appear first, then newest first
    @notices = @notices.order(pinned: :desc, created_at: :desc)
  end

  # GET /notices/:id
  def show
  end

  # GET /notices/new
  def new
    @notice = Notice.new
  end

  # POST /notices
  def create
    @notice = Notice.new(notice_params)

    if @notice.save
      redirect_to notices_path, notice: "Notice was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # DELETE /notices/:id
  def destroy
    @notice.destroy
    redirect_to notices_path, notice: "Notice was successfully deleted."
  end

  private

  def set_notice
    @notice = Notice.find(params[:id])
  end

  def notice_params
    params.require(:notice).permit(
      :title,
      :body,
      :author_name,
      :category,
      :pinned
    )
  end
end