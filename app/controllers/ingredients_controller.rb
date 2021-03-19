class IngredientsController < ApplicationController

    def show
        @ingredient = Ingredient.find(params[:id])
      end
    
      def index
        @ingredients = Ingredient.all
      end
    
      def new
        @ingredient = Ingredient.new
      end
    
      def create
        Ingredient.create(ingredient_params)
        redirect_to ingredients_path
      end


    private

    def ingredient_params
        params.require(:ingredient).permit(:name, :quantity, :recipe_id)
    end
end