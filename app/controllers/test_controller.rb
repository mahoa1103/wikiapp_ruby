class TestController < ApplicationController
  def index
    @test = Test.all
  end

  def show
    @test = Test.find(params[:id])
  end

  def new
    @test = Test.new
  end

  def create
    @test = Test.new(test_params)

    if @test.save
      redirect_to @test
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @test = Test.find(params[:id])
  end

  def update
    @test = Test.find(params[:id])

    if @test.update(test_params)
      redirect_to @test
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @test = Test.find(params[:id])
    @test.destroy

    redirect_to root_path, status: :see_other
  end

  private
  def test_params
    params.require(:test).permit(:title, :description, :typeof)
  end

end