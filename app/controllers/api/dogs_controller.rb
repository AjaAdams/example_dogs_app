class Api::DogsController < ApplicationController
  def create
    if current_user
      dog = Dog.new({
        name: params["name"],
        age: params["age"],
        breed: params["breed"],
      })
      dog.save
    else
      render json: { message: "Must be logged in to complete this action!" }, status: :unauthorized
    end
  end
end
